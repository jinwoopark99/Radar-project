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

/* Auto-generated by genmsg_cpp from file tecs_status.msg */


#include <inttypes.h>
#include <px4_platform_common/log.h>
#include <px4_platform_common/defines.h>
#include <uORB/topics/tecs_status.h>
#include <uORB/topics/uORBTopics.hpp>
#include <drivers/drv_hrt.h>
#include <lib/drivers/device/Device.hpp>
#include <lib/matrix/matrix/math.hpp>
#include <lib/mathlib/mathlib.h>

constexpr char __orb_tecs_status_fields[] = "uint64_t timestamp;float altitude_sp;float altitude_filtered;float height_rate_setpoint;float height_rate;float equivalent_airspeed_sp;float true_airspeed_sp;float true_airspeed_filtered;float true_airspeed_derivative_sp;float true_airspeed_derivative;float true_airspeed_derivative_raw;float true_airspeed_innovation;float total_energy_error;float energy_distribution_error;float total_energy_rate_error;float energy_distribution_rate_error;float total_energy;float total_energy_rate;float total_energy_balance;float total_energy_balance_rate;float total_energy_sp;float total_energy_rate_sp;float total_energy_balance_sp;float total_energy_balance_rate_sp;float throttle_integ;float pitch_integ;float throttle_sp;float pitch_sp_rad;uint8_t mode;uint8_t[3] _padding0;";

ORB_DEFINE(tecs_status, struct tecs_status_s, 117, __orb_tecs_status_fields, static_cast<uint8_t>(ORB_ID::tecs_status));


void print_message(const tecs_status_s &message)
{

	PX4_INFO_RAW(" tecs_status_s\n");

	const hrt_abstime now = hrt_absolute_time();

	if (message.timestamp != 0) {
		PX4_INFO_RAW("\ttimestamp: %" PRIu64 "  (%.6f seconds ago)\n", message.timestamp, (now - message.timestamp) / 1e6);
	} else {
		PX4_INFO_RAW("\n");
	}
	PX4_INFO_RAW("\taltitude_sp: %.4f\n", (double)message.altitude_sp);
	PX4_INFO_RAW("\taltitude_filtered: %.4f\n", (double)message.altitude_filtered);
	PX4_INFO_RAW("\theight_rate_setpoint: %.4f\n", (double)message.height_rate_setpoint);
	PX4_INFO_RAW("\theight_rate: %.4f\n", (double)message.height_rate);
	PX4_INFO_RAW("\tequivalent_airspeed_sp: %.4f\n", (double)message.equivalent_airspeed_sp);
	PX4_INFO_RAW("\ttrue_airspeed_sp: %.4f\n", (double)message.true_airspeed_sp);
	PX4_INFO_RAW("\ttrue_airspeed_filtered: %.4f\n", (double)message.true_airspeed_filtered);
	PX4_INFO_RAW("\ttrue_airspeed_derivative_sp: %.4f\n", (double)message.true_airspeed_derivative_sp);
	PX4_INFO_RAW("\ttrue_airspeed_derivative: %.4f\n", (double)message.true_airspeed_derivative);
	PX4_INFO_RAW("\ttrue_airspeed_derivative_raw: %.4f\n", (double)message.true_airspeed_derivative_raw);
	PX4_INFO_RAW("\ttrue_airspeed_innovation: %.4f\n", (double)message.true_airspeed_innovation);
	PX4_INFO_RAW("\ttotal_energy_error: %.4f\n", (double)message.total_energy_error);
	PX4_INFO_RAW("\tenergy_distribution_error: %.4f\n", (double)message.energy_distribution_error);
	PX4_INFO_RAW("\ttotal_energy_rate_error: %.4f\n", (double)message.total_energy_rate_error);
	PX4_INFO_RAW("\tenergy_distribution_rate_error: %.4f\n", (double)message.energy_distribution_rate_error);
	PX4_INFO_RAW("\ttotal_energy: %.4f\n", (double)message.total_energy);
	PX4_INFO_RAW("\ttotal_energy_rate: %.4f\n", (double)message.total_energy_rate);
	PX4_INFO_RAW("\ttotal_energy_balance: %.4f\n", (double)message.total_energy_balance);
	PX4_INFO_RAW("\ttotal_energy_balance_rate: %.4f\n", (double)message.total_energy_balance_rate);
	PX4_INFO_RAW("\ttotal_energy_sp: %.4f\n", (double)message.total_energy_sp);
	PX4_INFO_RAW("\ttotal_energy_rate_sp: %.4f\n", (double)message.total_energy_rate_sp);
	PX4_INFO_RAW("\ttotal_energy_balance_sp: %.4f\n", (double)message.total_energy_balance_sp);
	PX4_INFO_RAW("\ttotal_energy_balance_rate_sp: %.4f\n", (double)message.total_energy_balance_rate_sp);
	PX4_INFO_RAW("\tthrottle_integ: %.4f\n", (double)message.throttle_integ);
	PX4_INFO_RAW("\tpitch_integ: %.4f\n", (double)message.pitch_integ);
	PX4_INFO_RAW("\tthrottle_sp: %.4f\n", (double)message.throttle_sp);
	PX4_INFO_RAW("\tpitch_sp_rad: %.4f\n", (double)message.pitch_sp_rad);
	PX4_INFO_RAW("\tmode: %u\n", message.mode);
	
}
