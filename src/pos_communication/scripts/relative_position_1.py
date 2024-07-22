#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool

setpoint_position = PoseStamped()
mission_start_pub = rospy.Publisher('/mission_start', Bool, queue_size=100)

def setpoint_pose_callback(data):
    global setpoint_position
    setpoint_position = data

def move_uav1():
    rospy.init_node('uav1_command', anonymous=True)
    rospy.Subscriber('/uav0/mavros/setpoint_position/local', PoseStamped, setpoint_pose_callback)
    pub = rospy.Publisher('/uav1/mavros/setpoint_position/local', PoseStamped, queue_size=100)
    rate = rospy.Rate(100)  # 500Hz

    while not rospy.is_shutdown():
        relative_position = PoseStamped()
        relative_position.pose.position.x = setpoint_position.pose.position.x + 1  # Relative offset
        relative_position.pose.position.y = setpoint_position.pose.position.y
        relative_position.pose.position.z = setpoint_position.pose.position.z
        pub.publish(relative_position)
        mission_start_pub.publish(True)
        #print("Mission start signal for uav 1 sent")
        
        #print("Publishing relative position for uav1: ({}, {}, {})".format(relative_position.pose.position.x, relative_position.pose.position.y, relative_position.pose.position.z))
        rate.sleep()

if __name__ == '__main__':
    try:
        move_uav1()
    except rospy.ROSInterruptException:
        mission_start_pub.publish(False)
        pass
