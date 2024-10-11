#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool
import tf
import math


current_position = PoseStamped()
current_yaw = 0.0
mission_start_pub = rospy.Publisher('/mission_start_0', Bool, queue_size=100)
uav1_alive = True
uav2_alive = True
uav3_alive = True
uav1_checkpoint_arrive = False
uav2_checkpoint_arrive = False
uav3_checkpoint_arrive = False
uav2_deviation = False
mission_land = False


#drone follows the given trajectory
def generate_trajectory():
    waypoints = [
        (0, 0, 10, -30),
        (0, 0, 10, 30),
        (5, -5, 10, 30),
        (5, -5, 10, -30),
        (10, 5, 10, -30),
        (10, 5, 10, 30),
        (15, -5, 10, 30),
        (15, -5, 10, -30),
        (20, 5, 10, -30),
        (20, 5, 10, 30),
        (25, -5, 10, 30),
        (25, -5, 10, 0),
        (30, 0, 10, 0),
        (0, 30, 10, 0),
        (30, 30, 10, 0),
        (0, 0, 10, 0),
    ]
    return waypoints

def current_pose_callback(data):
    global current_position, current_yaw
    current_position = data
    
    orientation_q = current_position.pose.orientation
    orientation_list = [orientation_q.x, orientation_q.y, orientation_q.z, orientation_q.w]

    (roll, pitch, yaw) = tf.transformations.euler_from_quaternion(orientation_list)
    current_yaw = yaw


def uav1_alive_callback(data):
    global uav1_alive
    uav1_alive = data.data

def uav2_alive_callback(data):
    global uav2_alive
    uav2_alive = data.data

def uav3_alive_callback(data):
    global uav3_alive
    uav3_alive = data.data

def uav1_checkpoint_arrive_callback(data):
    global uav1_checkpoint_arrive
    uav1_checkpoint_arrive = data.data

def uav2_checkpoint_arrive_callback(data):
    global uav2_checkpoint_arrive
    uav2_checkpoint_arrive = data.data

def uav3_checkpoint_arrive_callback(data):
    global uav3_checkpoint_arrive
    uav3_checkpoint_arrive = data.data

def uav2_deviation_callback(data):
    global uav2_deviation
    uav2_deviation = data.data

def quaternion_from_yaw(yaw):
    return tf.transformations.quaternion_from_euler(0, 0, yaw)

def mission_complete():
    global mission_land
    mission_land = True

def move_uav0():
    global uav1_alive, uav2_alive, uav3_alive, uav2_deviation
    global uav1_checkpoint_arrive, uav2_checkpoint_arrive, uav3_checkpoint_arrive
    global mission_land, current_yaw, current_position
    
    rospy.init_node('uav0_command', anonymous=True)
    rospy.Subscriber('/uav0/mavros/local_position/pose', PoseStamped, current_pose_callback)

    rospy.Subscriber('/signal_check0-1', Bool, uav1_alive_callback)
    rospy.Subscriber('/signal_check0-2', Bool, uav2_alive_callback)
    rospy.Subscriber('/signal_check0-3', Bool, uav3_alive_callback)
    rospy.Subscriber('/checkpoint_arrive_1', Bool, uav1_checkpoint_arrive_callback)
    rospy.Subscriber('/checkpoint_arrive_2', Bool, uav2_checkpoint_arrive_callback)
    rospy.Subscriber('/checkpoint_arrive_3', Bool, uav3_checkpoint_arrive_callback)
    rospy.Subscriber('/uav2_deviation', Bool, uav2_deviation_callback)

    pub = rospy.Publisher('/uav0/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)

    rate = rospy.Rate(100)  # 500Hz

    waypoints = generate_trajectory()

    while (uav1_alive or uav2_alive or uav3_alive) and not mission_land:
        for waypoint in waypoints:
            if (not (uav1_alive or uav2_alive or uav3_alive)) or mission_land:
                    break
            #while (not uav1_checkpoint_arrive) or (not uav2_checkpoint_arrive) or (not uav3_checkpoint_arrive):
            #if (not (uav1_alive or uav2_alive or uav3_alive)) or mission_land:
            #    break 
            #if (uav1_checkpoint_arrive and uav2_checkpoint_arrive and uav3_checkpoint_arrive):
                #break           

            target_position = PoseStamped()
            target_position.pose.position.x = waypoint[0]
            target_position.pose.position.y = waypoint[1]
            target_position.pose.position.z = waypoint[2]

            #caluculate target yaw
            target_yaw = math.radians(waypoint[3])
            target_orientation = quaternion_from_yaw(target_yaw)
            target_position.pose.orientation.x = target_orientation[0]
            target_position.pose.orientation.y = target_orientation[1]
            target_position.pose.orientation.z = target_orientation[2]
            target_position.pose.orientation.w = target_orientation[3]
            
            pos_flag_x = True
            pos_flag_y = True
            pos_flag_z = True
            pos_flag_yaw = True

            while (pos_flag_x or pos_flag_y or pos_flag_z or pos_flag_yaw) or (not (uav1_checkpoint_arrive and uav2_checkpoint_arrive and uav3_checkpoint_arrive)):
                if (not (uav1_alive or uav2_alive or uav3_alive)) or mission_land:
                    break

                if (uav2_deviation == True):
                    #waiting_position = PoseStamped()
                    #waiting_position = current_position
                    pub.publish(current_position)
                    print("Waiting for uav2")
                    rate.sleep()
                    if (mission_land == True):
                        pub_land.publish(mission_land)
                        break
                    continue

                pub.publish(target_position)
                mission_start_pub.publish(True)
                rate.sleep()

                pos_err_x = abs(target_position.pose.position.x - current_position.pose.position.x)
                pos_err_y = abs(target_position.pose.position.y - current_position.pose.position.y)
                pos_err_z = abs(target_position.pose.position.z - current_position.pose.position.z)
                pos_err_yaw = abs(target_yaw - current_yaw)
                #print(f"current yaw: {current_yaw}")

                if (pos_err_x < 0.1):
                    pos_flag_x = False
                if (pos_err_y < 0.1):
                    pos_flag_y = False
                if (pos_err_z < 0.1):
                    pos_flag_z = False
                if (pos_err_yaw < 0.1):
                    pos_flag_yaw = False
                

        if waypoint == waypoints[-1]:
            rospy.loginfo("All waypoints completed.")
            break
    
    if (not (uav1_alive or uav2_alive or uav3_alive)):
        mission_land = True
        #rospy.loginfo("Connections lost")
        #pub_land.publish(mission_land)

    if mission_land == True:
        pub_land.publish(mission_land)
    

if __name__ == '__main__':
    try:
        for i in range(10):
            move_uav0()
    except:
        mission_start_pub.publish(False)
        pass
    mission_complete()
    move_uav0()
"""
#position input is given by the user
def move_uav0():
    pub = rospy.Publisher('/uav0/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    rospy.init_node('uav0_command', anonymous=True)
    rate = rospy.Rate(100)  # 100Hz

    while not rospy.is_shutdown():
        try:
            x = float(input("Enter target x: "))
            y = float(input("Enter target y: "))
            z = float(input("Enter target z: "))

            target_position = PoseStamped()
            target_position.pose.position.x = x
            target_position.pose.position.y = y
            target_position.pose.position.z = z

            for _ in range(500):  # 5 seconds at 100Hz
                pub.publish(target_position)
                rate.sleep()
        except ValueError:
            print("Please enter valid numeric values for x, y, and z.")

if __name__ == '__main__':
    try:
        move_uav0()
    except rospy.ROSInterruptException:
        pass
"""