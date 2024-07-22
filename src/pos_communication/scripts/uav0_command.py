#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool


current_position = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start_0', Bool, queue_size=100)

#drone follows the given trajectory
def generate_trajectory():
    waypoints = [
        (0, 0, 10),
        (5, -5, 10),
        (10, 5, 10),
        (15, -5, 10),
        (20, 5, 10),
        (25, -5, 10),
        (30, 0, 10),
        #(5, 5, 10),
        (0, 30, 10),
        #(5, 10, 10),
        (30, 30, 10),
        #(5, 5, 10),
        (0, 0, 10),
    ]
    return waypoints

def current_pose_callback(data):
    global current_position
    current_position = data

def move_uav0():
    pub = rospy.Publisher('/uav0/mavros/setpoint_position/local', PoseStamped, queue_size=100)
    rospy.init_node('uav0_command', anonymous=True)
    rospy.Subscriber('/uav0/mavros/local_position/pose', PoseStamped, current_pose_callback)
    rate = rospy.Rate(100)  # 500Hz

    waypoints = generate_trajectory()

    for waypoint in waypoints:
        target_position = PoseStamped()
        target_position.pose.position.x = waypoint[0]
        target_position.pose.position.y = waypoint[1]
        target_position.pose.position.z = waypoint[2]
        
        pos_flag_x = True
        pos_flag_y = True
        pos_flag_z = True

        while (pos_flag_x or pos_flag_y or pos_flag_z):
            pub.publish(target_position)
            mission_start_pub.publish(True)
            #print("Mission start signal for uav0 sent")
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

            #print(f"published data: {target_position.pose.position.x}, {target_position.pose.position.y}, {target_position.pose.position.z}")
            #print(f"current data: {current_position.pose.position.x}, {current_position.pose.position.y}, {current_position.pose.position.z}")        
        #for _ in range(500):  # 5 seconds at 100Hz
            #pub.publish(target_position)
            #rate.sleep()
        
        

if __name__ == '__main__':
    for i in range(5):
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