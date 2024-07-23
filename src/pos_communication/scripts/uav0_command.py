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
mission_land = False
MAX_MISSED_DURATION = 0.8


#drone follows the given trajectory
def generate_trajectory():
    waypoints = [
        (0, 0, 10, -30),
        (5, -5, 10, -30),
        (10, 5, 10, -30),
        (15, -5, 10, -30),
        (20, 5, 10, -30),
        (25, -5, 10, -30),
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

def quaternion_from_yaw(yaw):
    return tf.transformations.quaternion_from_euler(0, 0, yaw)

def move_uav0():
    global uav1_alive, uav2_alive, uav3_alive, mission_land
    
    rospy.init_node('uav0_command', anonymous=True)
    rospy.Subscriber('/uav0/mavros/local_position/pose', PoseStamped, current_pose_callback)

    rospy.Subscriber('/signal_check0-1', Bool, uav1_alive_callback)
    rospy.Subscriber('/signal_check0-2', Bool, uav2_alive_callback)
    rospy.Subscriber('/signal_check0-3', Bool, uav3_alive_callback)

    pub = rospy.Publisher('/uav0/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    pub_land = rospy.Publisher('/mission_land', Bool, queue_size=10)

    rate = rospy.Rate(100)  # 500Hz

    waypoints = generate_trajectory()

    while (uav1_alive or uav2_alive or uav3_alive) and not mission_land:
        for waypoint in waypoints:
            if (not (uav1_alive or uav2_alive or uav3_alive)) or mission_land:
                break

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

            while (pos_flag_x or pos_flag_y or pos_flag_z):
                if (not (uav1_alive or uav2_alive or uav3_alive)) or mission_land:
                    break
                pub.publish(target_position)
                mission_start_pub.publish(True)
                rate.sleep()

                pos_err_x = abs(target_position.pose.position.x - current_position.pose.position.x)
                pos_err_y = abs(target_position.pose.position.y - current_position.pose.position.y)
                pos_err_z = abs(target_position.pose.position.z - current_position.pose.position.z)

                if (pos_err_x < 0.1):
                    pos_flag_x = False
                if (pos_err_y < 0.1):
                    pos_flag_y = False
                if (pos_err_z < 0.1):
                    pos_flag_z = False

        if not (pos_flag_x or pos_flag_y or pos_flag_z):
            rospy.loginfo("All waypoints completed.")
            break
    
    mission_land = True
    #rospy.loginfo("Connections lost")
    pub_land.publish(mission_land)
    

if __name__ == '__main__':
    for i in range(1):
        try:
            move_uav0()
        except:
            mission_start_pub.publish(False)
            pass
    mission_start_pub.publish(False)
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