/****************************************************************************
 *
 *   Copyright (C) 2013-2016 PX4 Development Team. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

/* Auto-generated by genmsg_cpp from file gimbal_manager_information.msg */


#include <inttypes.h>
#include <px4_platform_common/log.h>
#include <px4_platform_common/defines.h>
#include <uORB/topics/gimbal_manager_information.h>
#include <uORB/topics/uORBTopics.hpp>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>
#include <lib/matrix/matrix/math.hpp>
#include <lib/mathlib/mathlib.h>

constexpr char __orb_gimbal_manager_information_fields[] = "uint64_t timestamp;uint32_t cap_flags;float roll_min;float roll_max;float pitch_min;float pitch_max;float yaw_min;float yaw_max;uint8_t gimbal_device_id;uint8_t[3] _padding0;";

ORB_DEFINE(gimbal_manager_information, struct gimbal_manager_information_s, 37, __orb_gimbal_manager_information_fields, static_cast<uint8_t>(ORB_ID::gimbal_manager_information));


void print_message(const gimbal_manager_information_s &message)
{

	PX4_INFO_RAW(" gimbal_manager_information_s\n");

	const hrt_abstime now = hrt_absolute_time();

	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, (now - message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\tcap_flags: %" PRIu32 " (0b", message.cap_flags);
	for (int i = (sizeof(message.cap_flags) * 8) - 1; i >= 0; i--) { PX4_INFO_RAW("%lu%s", (unsigned long) message.cap_flags >> i & 1, ((unsigned)i < (sizeof(message.cap_flags) * 8) - 1 && i % 4 == 0 && i > 0) ? "'" : ""); }
	PX4_INFO_RAW(")\n");
	PX4_INFO_RAW("\troll_min: %.4f\n", (double)message.roll_min);
	PX4_INFO_RAW("\troll_max: %.4f\n", (double)message.roll_max);
	PX4_INFO_RAW("\tpitch_min: %.4f\n", (double)message.pitch_min);
	PX4_INFO_RAW("\tpitch_max: %.4f\n", (double)message.pitch_max);
	PX4_INFO_RAW("\tyaw_min: %.4f\n", (double)message.yaw_min);
	PX4_INFO_RAW("\tyaw_max: %.4f\n", (double)message.yaw_max);
	PX4_INFO_RAW("\tgimbal_device_id: %u\n", message.gimbal_device_id);
	
}
