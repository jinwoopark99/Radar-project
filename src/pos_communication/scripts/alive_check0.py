#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import Bool

check_heartbeat_1 = True
check_heartbeat_2 = True
check_heartbeat_3 = True
last_msg_time_1 = None
last_msg_time_2 = None
last_msg_time_3 = None
MAX_MISSED_DURATION = 0.2

def uav1_time_check(data):
    global last_msg_time_1
    last_msg_time_1 = rospy.get_time()

def uav2_time_check(data):
    global last_msg_time_2
    last_msg_time_2 = rospy.get_time()

def uav3_time_check(data):
    global last_msg_time_3
    last_msg_time_3 = rospy.get_time()

def check_uav_alive():
    global check_heartbeat_1, check_heartbeat_2, check_heartbeat_3
    global last_msg_time_1, last_msg_time_2, last_msg_time_3
    rate = rospy.Rate(100)  # 100Hz
    while not rospy.is_shutdown():
        current_time = rospy.get_time()

        # Check UAV0
        if last_msg_time_1 and (current_time - last_msg_time_1 > MAX_MISSED_DURATION):
            check_heartbeat_1 = False
            #rospy.loginfo("Communication signal with uav1 lost")
        else:
            check_heartbeat_0 = True
        pub_1.publish(check_heartbeat_1)

        """ relay node를 사용해서 통신하고 있기 때문에 해당 부분 켜게 되면 uav2가 간헐적 무선통신 오류 겪는 상황 연출할 수가 없음
        # Check UAV2
        if last_msg_time_2 and (current_time - last_msg_time_2 > MAX_MISSED_DURATION):
            check_heartbeat_2 = False
            rospy.loginfo("Communication signal with uav2 lost")
        else:
            check_heartbeat_2 = True
        pub_2.publish(check_heartbeat_2)
        """

        # Check UAV3
        if last_msg_time_3 and (current_time - last_msg_time_3 > MAX_MISSED_DURATION):
            check_heartbeat_3 = False
            #rospy.loginfo("Communication signal with uav3 lost")
        else:
            check_heartbeat_3 = True
        pub_3.publish(check_heartbeat_3)

        rate.sleep()


if __name__ == '__main__':
    rospy.init_node('signal_check', anonymous=True)
    
    pub_1 = rospy.Publisher('/signal_check0-1', Bool, queue_size=10)
    #pub_2 = rospy.Publisher('/signal_check0-2', Bool, queue_size=10)
    pub_3 = rospy.Publisher('/signal_check0-3', Bool, queue_size=10)

    rospy.Subscriber('/uav1/mavros/setpoint_position/local', PoseStamped, uav1_time_check)
    rospy.Subscriber('/uav2/mavros/setpoint_position/local', PoseStamped, uav2_time_check)
    rospy.Subscriber('/uav3/mavros/setpoint_position/local', PoseStamped, uav3_time_check)

    check_uav_alive()
    

    rospy.spin()