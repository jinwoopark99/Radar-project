#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped

def move_uav0():
    pub = rospy.Publisher('/uav0/mavros/setpoint_position/local', PoseStamped, queue_size=10)
    rospy.init_node('uav0_command', anonymous=True)
    rate = rospy.Rate(20)  # 20 Hz

    pose = PoseStamped()
    pose.pose.position.x = 3
    pose.pose.position.y = 3
    pose.pose.position.z = 3

    while not rospy.is_shutdown():
        pub.publish(pose)
        rospy.loginfo("Publishing position for uav0: ({}, {}, {})".format(pose.pose.position.x, pose.pose.position.y, pose.pose.position.z))
        rate.sleep()

if __name__ == '__main__':
    try:
        move_uav0()
    except rospy.ROSInterruptException:
        pass
