#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
import random
import threading

class RelayNode:
    def __init__(self):
        self.active = True
        self.sub = rospy.Subscriber('/uav0/mavros/setpoint_position/local', PoseStamped, self.callback)
        self.pub = rospy.Publisher('/uav0/relay/setpoint_position/local', PoseStamped, queue_size=10)
        self.thread = threading.Thread(target=self.toggle_relay)
        self.thread.start()

    def callback(self, msg):
        if self.active:
            self.pub.publish(msg)

    def toggle_relay(self):
        while not rospy.is_shutdown():
            # 랜덤 시간 동안 대기 (5초에서 15초 사이)
            random_wait = random.uniform(0, 5)
            random_timeout = random.uniform(0, 5)
            rospy.sleep(random_wait)
            
            # 릴레이 중단 (10초 동안)
            self.active = False
            rospy.logwarn(f"Relay node deactivated for {random_timeout} seconds")
            rospy.sleep(random_timeout)
            
            # 릴레이 재활성화
            self.active = True
            rospy.loginfo("Relay node reactivated")

if __name__ == '__main__':
    rospy.init_node('relay_node', anonymous=True)
    relay_node = RelayNode()
    rate = rospy.Rate(100)
    rospy.spin()
