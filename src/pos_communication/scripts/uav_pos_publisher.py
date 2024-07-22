#!/usr/bin/env python
import rospy
from geometry_msgs.msg import PoseStamped

def talker():
    pub = rospy.Publisher('/uav0/mavros/local_position/pose', PoseStamped, queue_size=10)
    rospy.init_node('uav0_publisher', anonymous=True)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        pose = PoseStamped()
        # Fill in pose details
        pub.publish(pose)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
