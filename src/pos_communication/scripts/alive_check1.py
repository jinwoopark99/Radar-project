#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool

check_heartbeat_0 = True
check_heartbeat_2 = True
check_heartbeat_3 = True
last_msg_time_0 = None
last_msg_time_2 = None
last_msg_time_3 = None
MAX_MISSED_DURATION = 0.8

def uav0_time_check(data):
    global last_msg_time_0
    last_msg_time_0 = rospy.get_time()

def uav2_time_check(data):
    global last_msg_time_2
    last_msg_time_2 = rospy.get_time()

def uav3_time_check(data):
    global last_msg_time_3
    last_msg_time_3 = rospy.get_time()

def check_uav_alive():
    global check_heartbeat_0, check_heartbeat_2, check_heartbeat_3
    global last_msg_time_0, last_msg_time_2, last_msg_time_3
    rate = rospy.Rate(100)  # 100Hz
    while not rospy.is_shutdown():
        current_time = rospy.get_time()

        # Check UAV0
        if last_msg_time_0 and (current_time - last_msg_time_0 > MAX_MISSED_DURATION):
            check_heartbeat_0 = False
            rospy.loginfo("Communication signal with uav0 lost")
        else:
            check_heartbeat_0 = True
        pub_0.publish(check_heartbeat_0)

        # Check UAV2
        if last_msg_time_2 and (current_time - last_msg_time_2 > MAX_MISSED_DURATION):
            check_heartbeat_2 = False
            rospy.loginfo("Communication signal with uav2 lost")
        else:
            check_heartbeat_2 = True
        pub_2.publish(check_heartbeat_2)

        # Check UAV3
        if last_msg_time_3 and (current_time - last_msg_time_3 > MAX_MISSED_DURATION):
            check_heartbeat_3 = False
            rospy.loginfo("Communication signal with uav3 lost")
        else:
            check_heartbeat_3 = True
        pub_3.publish(check_heartbeat_3)

        rate.sleep()


if __name__ == '__main__':
    rospy.init_node('signal_check', anonymous=True)
    
    pub_0 = rospy.Publisher('/signal_check0-1', Bool, queue_size=10)
    pub_2 = rospy.Publisher('/signal_check1-2', Bool, queue_size=10)
    pub_3 = rospy.Publisher('/signal_check1-3', Bool, queue_size=10)

    rospy.Subscriber('/uav0/mavros/setpoint_position/local', PoseStamped, uav0_time_check)
    rospy.Subscriber('/uav2/mavros/setpoint_position/local', PoseStamped, uav2_time_check)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_time_check)

    check_uav_alive()
    

    rospy.spin()