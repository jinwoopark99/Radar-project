





/**
 * Empty cell voltage (5C load)
 *
 * Defines the voltage where a single cell of battery 1 is considered empty.
 * The voltage should be chosen before the steep dropoff to 2.8V. A typical
 * lithium battery can only be discharged down to 10% before it drops off
 * to a voltage level damaging the cells.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT1_V_EMPTY, 3.5);

/**
 * Empty cell voltage (5C load)
 *
 * Defines the voltage where a single cell of battery 1 is considered empty.
 * The voltage should be chosen before the steep dropoff to 2.8V. A typical
 * lithium battery can only be discharged down to 10% before it drops off
 * to a voltage level damaging the cells.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT2_V_EMPTY, 3.5);

/**
 * Full cell voltage (5C load)
 *
 * Defines the voltage where a single cell of battery 1 is considered full
 * under a mild load. This will never be the nominal voltage of 4.2V
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT1_V_CHARGED, 4.05);

/**
 * Full cell voltage (5C load)
 *
 * Defines the voltage where a single cell of battery 1 is considered full
 * under a mild load. This will never be the nominal voltage of 4.2V
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT2_V_CHARGED, 4.05);

/**
 * Voltage drop per cell on full throttle
 *
 * This implicitely defines the internal resistance
 * to maximum current ratio for battery 1 and assumes linearity.
 * A good value to use is the difference between the
 * 5C and 20-25C load. Not used if BAT1_R_INTERNAL is
 * set.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @min 0.07
 * @max 0.5
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT1_V_LOAD_DROP, 0.3);

/**
 * Voltage drop per cell on full throttle
 *
 * This implicitely defines the internal resistance
 * to maximum current ratio for battery 1 and assumes linearity.
 * A good value to use is the difference between the
 * 5C and 20-25C load. Not used if BAT2_R_INTERNAL is
 * set.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @min 0.07
 * @max 0.5
 * @unit V
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT2_V_LOAD_DROP, 0.3);

/**
 * Explicitly defines the per cell internal resistance for battery 1
 *
 * If non-negative, then this will be used in place of
 * BAT1_V_LOAD_DROP for all calculations.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @min -1.0
 * @max 0.2
 * @unit Ohm
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT1_R_INTERNAL, -1.0);

/**
 * Explicitly defines the per cell internal resistance for battery 2
 *
 * If non-negative, then this will be used in place of
 * BAT2_V_LOAD_DROP for all calculations.
 * 
 *
 * @group Battery Calibration
 * @decimal 2
 * @increment 0.01
 * @min -1.0
 * @max 0.2
 * @unit Ohm
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT2_R_INTERNAL, -1.0);

/**
 * Number of cells for battery 1.
 *
 * Defines the number of cells the attached battery consists of.
 * 
 *
 * @group Battery Calibration
 * @value 2 2S Battery
 * @value 3 3S Battery
 * @value 4 4S Battery
 * @value 5 5S Battery
 * @value 6 6S Battery
 * @value 7 7S Battery
 * @value 8 8S Battery
 * @value 9 9S Battery
 * @value 10 10S Battery
 * @value 11 11S Battery
 * @value 12 12S Battery
 * @value 13 13S Battery
 * @value 14 14S Battery
 * @value 15 15S Battery
 * @value 16 16S Battery
 * @reboot_required True
 */
PARAM_DEFINE_INT32(BAT1_N_CELLS, 0);

/**
 * Number of cells for battery 2.
 *
 * Defines the number of cells the attached battery consists of.
 * 
 *
 * @group Battery Calibration
 * @value 2 2S Battery
 * @value 3 3S Battery
 * @value 4 4S Battery
 * @value 5 5S Battery
 * @value 6 6S Battery
 * @value 7 7S Battery
 * @value 8 8S Battery
 * @value 9 9S Battery
 * @value 10 10S Battery
 * @value 11 11S Battery
 * @value 12 12S Battery
 * @value 13 13S Battery
 * @value 14 14S Battery
 * @value 15 15S Battery
 * @value 16 16S Battery
 * @reboot_required True
 */
PARAM_DEFINE_INT32(BAT2_N_CELLS, 0);

/**
 * Battery 1 capacity.
 *
 * Defines the capacity of battery 1 in mAh.
 * 
 *
 * @group Battery Calibration
 * @decimal 0
 * @increment 50
 * @min -1.0
 * @max 100000
 * @unit mAh
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT1_CAPACITY, -1.0);

/**
 * Battery 2 capacity.
 *
 * Defines the capacity of battery 2 in mAh.
 * 
 *
 * @group Battery Calibration
 * @decimal 0
 * @increment 50
 * @min -1.0
 * @max 100000
 * @unit mAh
 * @reboot_required True
 */
PARAM_DEFINE_FLOAT(BAT2_CAPACITY, -1.0);

/**
 * Battery 1 monitoring source.
 *
 * This parameter controls the source of battery data. The value 'Power Module'
 * means that measurements are expected to come from a power module. If the value is set to
 * 'External' then the system expects to receive mavlink battery status messages.
 * If the value is set to 'ESCs', the battery information are taken from the esc_status message.
 * This requires the ESC to provide both voltage as well as current.
 * 
 *
 * @group Battery Calibration
 * @value -1 Disabled
 * @value 0 Power Module
 * @value 1 External
 * @value 2 ESCs
 * @reboot_required True
 */
PARAM_DEFINE_INT32(BAT1_SOURCE, 0);

/**
 * Battery 2 monitoring source.
 *
 * This parameter controls the source of battery data. The value 'Power Module'
 * means that measurements are expected to come from a power module. If the value is set to
 * 'External' then the system expects to receive mavlink battery status messages.
 * If the value is set to 'ESCs', the battery information are taken from the esc_status message.
 * This requires the ESC to provide both voltage as well as current.
 * 
 *
 * @group Battery Calibration
 * @value -1 Disabled
 * @value 0 Power Module
 * @value 1 External
 * @value 2 ESCs
 * @reboot_required True
 */
PARAM_DEFINE_INT32(BAT2_SOURCE, -1);

/**
 * PWM channels used as ESC outputs
 *
 * Number representing the channels e.g. 134 - Channel 1, 3 and 4.
 * Global e.g. PWM_MAIN_MIN/MAX/DISARM limits only apply to these channels.
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 123456789
 */
PARAM_DEFINE_INT32(PWM_MAIN_OUT, 0);

/**
 * PWM main output frequency
 *
 * Set to 400 for industry default or 1000 for high frequency ESCs.
 * Set to 0 for Oneshot125.
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2000
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_MAIN_RATE, 400);

/**
 * PWM main minimum value
 *
 * Set to 1000 for industry default or 900 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 800
 * @max 1400
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN, 1000);

/**
 * PWM main maximum value
 *
 * Set to 2000 for industry default or 2100 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 1600
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX, 2000);

/**
 * PWM main disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * The main use of this parameter is to silence ESCs when they are disarmed.
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DISARM, 900);

/**
 * PWM main 1 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN1, -1);

/**
 * PWM main 2 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN2, -1);

/**
 * PWM main 3 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN3, -1);

/**
 * PWM main 4 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN4, -1);

/**
 * PWM main 5 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN5, -1);

/**
 * PWM main 6 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN6, -1);

/**
 * PWM main 7 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN7, -1);

/**
 * PWM main 8 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN8, -1);

/**
 * PWM main 9 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN9, -1);

/**
 * PWM main 10 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN10, -1);

/**
 * PWM main 11 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN11, -1);

/**
 * PWM main 12 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN12, -1);

/**
 * PWM main 13 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN13, -1);

/**
 * PWM main 14 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MIN14, -1);

/**
 * PWM main 1 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX1, -1);

/**
 * PWM main 2 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX2, -1);

/**
 * PWM main 3 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX3, -1);

/**
 * PWM main 4 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX4, -1);

/**
 * PWM main 5 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX5, -1);

/**
 * PWM main 6 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX6, -1);

/**
 * PWM main 7 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX7, -1);

/**
 * PWM main 8 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX8, -1);

/**
 * PWM main 9 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX9, -1);

/**
 * PWM main 10 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX10, -1);

/**
 * PWM main 11 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX11, -1);

/**
 * PWM main 12 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX12, -1);

/**
 * PWM main 13 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX13, -1);

/**
 * PWM main 14 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_MAIN_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_MAX14, -1);

/**
 * PWM main 1 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL1, -1);

/**
 * PWM main 2 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL2, -1);

/**
 * PWM main 3 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL3, -1);

/**
 * PWM main 4 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL4, -1);

/**
 * PWM main 5 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL5, -1);

/**
 * PWM main 6 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL6, -1);

/**
 * PWM main 7 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL7, -1);

/**
 * PWM main 8 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL8, -1);

/**
 * PWM main 9 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL9, -1);

/**
 * PWM main 10 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL10, -1);

/**
 * PWM main 11 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL11, -1);

/**
 * PWM main 12 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL12, -1);

/**
 * PWM main 13 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL13, -1);

/**
 * PWM main 14 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_FAIL14, -1);

/**
 * PWM main 1 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS1, -1);

/**
 * PWM main 2 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS2, -1);

/**
 * PWM main 3 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS3, -1);

/**
 * PWM main 4 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS4, -1);

/**
 * PWM main 5 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS5, -1);

/**
 * PWM main 6 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS6, -1);

/**
 * PWM main 7 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS7, -1);

/**
 * PWM main 8 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS8, -1);

/**
 * PWM main 9 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS9, -1);

/**
 * PWM main 10 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS10, -1);

/**
 * PWM main 11 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS11, -1);

/**
 * PWM main 12 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS12, -1);

/**
 * PWM main 13 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS13, -1);

/**
 * PWM main 14 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_MAIN_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_MAIN_DIS14, -1);

/**
 * PWM main 1 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM1, 0);

/**
 * PWM main 2 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM2, 0);

/**
 * PWM main 3 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM3, 0);

/**
 * PWM main 4 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM4, 0);

/**
 * PWM main 5 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM5, 0);

/**
 * PWM main 6 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM6, 0);

/**
 * PWM main 7 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM7, 0);

/**
 * PWM main 8 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM8, 0);

/**
 * PWM main 9 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM9, 0);

/**
 * PWM main 10 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM10, 0);

/**
 * PWM main 11 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM11, 0);

/**
 * PWM main 12 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM12, 0);

/**
 * PWM main 13 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM13, 0);

/**
 * PWM main 14 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_MAIN_TRIM14, 0);

/**
 * PWM main 1 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV1, 0);

/**
 * PWM main 2 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV2, 0);

/**
 * PWM main 3 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV3, 0);

/**
 * PWM main 4 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV4, 0);

/**
 * PWM main 5 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV5, 0);

/**
 * PWM main 6 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV6, 0);

/**
 * PWM main 7 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV7, 0);

/**
 * PWM main 8 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV8, 0);

/**
 * PWM main 9 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV9, 0);

/**
 * PWM main 10 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV10, 0);

/**
 * PWM main 11 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV11, 0);

/**
 * PWM main 12 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV12, 0);

/**
 * PWM main 13 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV13, 0);

/**
 * PWM main 14 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_MAIN_REV14, 0);

/**
 * PWM main 1 rate
 *
 * Set the default PWM output frequency for the main outputs
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 400
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_MAIN_RATE1, 50);

/**
 * PWM channels used as ESC outputs
 *
 * Number representing the channels e.g. 134 - Channel 1, 3 and 4.
 * Global e.g. PWM_AUX_MIN/MAX/DISARM limits only apply to these channels.
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 123456789
 */
PARAM_DEFINE_INT32(PWM_AUX_OUT, 0);

/**
 * PWM aux output frequency
 *
 * Set to 400 for industry default or 1000 for high frequency ESCs.
 * Set to 0 for Oneshot125.
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2000
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_AUX_RATE, 50);

/**
 * PWM aux minimum value
 *
 * Set to 1000 for industry default or 900 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 800
 * @max 1400
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN, 1000);

/**
 * PWM aux maximum value
 *
 * Set to 2000 for industry default or 2100 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 1600
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX, 2000);

/**
 * PWM aux disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * The main use of this parameter is to silence ESCs when they are disarmed.
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DISARM, 1500);

/**
 * PWM aux 1 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN1, -1);

/**
 * PWM aux 2 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN2, -1);

/**
 * PWM aux 3 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN3, -1);

/**
 * PWM aux 4 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN4, -1);

/**
 * PWM aux 5 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN5, -1);

/**
 * PWM aux 6 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN6, -1);

/**
 * PWM aux 7 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN7, -1);

/**
 * PWM aux 8 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MIN8, -1);

/**
 * PWM aux 1 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX1, -1);

/**
 * PWM aux 2 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX2, -1);

/**
 * PWM aux 3 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX3, -1);

/**
 * PWM aux 4 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX4, -1);

/**
 * PWM aux 5 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX5, -1);

/**
 * PWM aux 6 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX6, -1);

/**
 * PWM aux 7 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX7, -1);

/**
 * PWM aux 8 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_AUX_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_MAX8, -1);

/**
 * PWM aux 1 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL1, -1);

/**
 * PWM aux 2 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL2, -1);

/**
 * PWM aux 3 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL3, -1);

/**
 * PWM aux 4 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL4, -1);

/**
 * PWM aux 5 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL5, -1);

/**
 * PWM aux 6 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL6, -1);

/**
 * PWM aux 7 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL7, -1);

/**
 * PWM aux 8 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_FAIL8, -1);

/**
 * PWM aux 1 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS1, -1);

/**
 * PWM aux 2 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS2, -1);

/**
 * PWM aux 3 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS3, -1);

/**
 * PWM aux 4 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS4, -1);

/**
 * PWM aux 5 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS5, -1);

/**
 * PWM aux 6 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS6, -1);

/**
 * PWM aux 7 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS7, -1);

/**
 * PWM aux 8 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_AUX_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_AUX_DIS8, -1);

/**
 * PWM aux 1 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM1, 0);

/**
 * PWM aux 2 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM2, 0);

/**
 * PWM aux 3 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM3, 0);

/**
 * PWM aux 4 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM4, 0);

/**
 * PWM aux 5 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM5, 0);

/**
 * PWM aux 6 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM6, 0);

/**
 * PWM aux 7 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM7, 0);

/**
 * PWM aux 8 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_AUX_TRIM8, 0);

/**
 * PWM aux 1 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV1, 0);

/**
 * PWM aux 2 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV2, 0);

/**
 * PWM aux 3 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV3, 0);

/**
 * PWM aux 4 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV4, 0);

/**
 * PWM aux 5 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV5, 0);

/**
 * PWM aux 6 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV6, 0);

/**
 * PWM aux 7 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV7, 0);

/**
 * PWM aux 8 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_AUX_REV8, 0);

/**
 * PWM aux 1 rate
 *
 * Set the default PWM output frequency for the aux outputs
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 400
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_AUX_RATE1, 50);

/**
 * PWM extra output frequency
 *
 * Set to 400 for industry default or 1000 for high frequency ESCs.
 * Set to 0 for Oneshot125.
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2000
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_EXTRA_RATE, 50);

/**
 * PWM extra minimum value
 *
 * Set to 1000 for industry default or 900 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 800
 * @max 1400
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN, 1000);

/**
 * PWM extra maximum value
 *
 * Set to 2000 for industry default or 2100 to increase servo travel.
 * 
 *
 * @group PWM Outputs
 * @min 1600
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX, 2000);

/**
 * PWM extra disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * The main use of this parameter is to silence ESCs when they are disarmed.
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2200
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DISARM, 1500);

/**
 * PWM extra 1 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN1, -1);

/**
 * PWM extra 2 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN2, -1);

/**
 * PWM extra 3 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN3, -1);

/**
 * PWM extra 4 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN4, -1);

/**
 * PWM extra 5 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN5, -1);

/**
 * PWM extra 6 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN6, -1);

/**
 * PWM extra 7 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN7, -1);

/**
 * PWM extra 8 minimum value
 *
 * This is the minimum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MIN will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 1600
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MIN8, -1);

/**
 * PWM extra 1 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX1, -1);

/**
 * PWM extra 2 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX2, -1);

/**
 * PWM extra 3 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX3, -1);

/**
 * PWM extra 4 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX4, -1);

/**
 * PWM extra 5 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX5, -1);

/**
 * PWM extra 6 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX6, -1);

/**
 * PWM extra 7 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX7, -1);

/**
 * PWM extra 8 maximum value
 *
 * This is the maximum PWM pulse the autopilot is allowed to output.
 * When set to -1 the value for PWM_EXTRA_MAX will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_MAX8, -1);

/**
 * PWM extra 1 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL1, 0);

/**
 * PWM extra 2 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL2, 0);

/**
 * PWM extra 3 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL3, 0);

/**
 * PWM extra 4 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL4, 0);

/**
 * PWM extra 5 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL5, 0);

/**
 * PWM extra 6 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL6, 0);

/**
 * PWM extra 7 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL7, 0);

/**
 * PWM extra 8 failsafe value
 *
 * This is the PWM pulse the autopilot is outputting if in failsafe mode.
 * When set to -1 the value is set automatically depending if the actuator
 * is a motor (900us) or a servo (1500us)
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_FAIL8, 0);

/**
 * PWM extra 1 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS1, -1);

/**
 * PWM extra 2 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS2, -1);

/**
 * PWM extra 3 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS3, -1);

/**
 * PWM extra 4 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS4, -1);

/**
 * PWM extra 5 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS5, -1);

/**
 * PWM extra 6 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS6, -1);

/**
 * PWM extra 7 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS7, -1);

/**
 * PWM extra 8 disarmed value
 *
 * This is the PWM pulse the autopilot is outputting if not armed.
 * When set to -1 the value for PWM_EXTRA_DISARM will be used
 * 
 *
 * @group PWM Outputs
 * @min -1
 * @max 2150
 * @unit us
 */
PARAM_DEFINE_INT32(PWM_EXTRA_DIS8, -1);

/**
 * PWM extra 1 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM1, 0);

/**
 * PWM extra 2 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM2, 0);

/**
 * PWM extra 3 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM3, 0);

/**
 * PWM extra 4 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM4, 0);

/**
 * PWM extra 5 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM5, 0);

/**
 * PWM extra 6 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM6, 0);

/**
 * PWM extra 7 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM7, 0);

/**
 * PWM extra 8 trim value
 *
 * Set to normalized offset
 * 
 *
 * @group PWM Outputs
 * @decimal 2
 * @min -0.2
 * @max 0.2
 */
PARAM_DEFINE_FLOAT(PWM_EXTRA_TRIM8, 0);

/**
 * PWM extra 1 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV1, 0);

/**
 * PWM extra 2 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV2, 0);

/**
 * PWM extra 3 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV3, 0);

/**
 * PWM extra 4 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV4, 0);

/**
 * PWM extra 5 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV5, 0);

/**
 * PWM extra 6 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV6, 0);

/**
 * PWM extra 7 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV7, 0);

/**
 * PWM extra 8 reverse value
 *
 * Enable to invert the channel.
 * Warning: Use this parameter when connected to a servo only.
 * For a brushless motor, invert manually two phases to reverse the direction.
 * 
 *
 * @group PWM Outputs
 * @boolean
 */
PARAM_DEFINE_INT32(PWM_EXTRA_REV8, 0);

/**
 * PWM extra 1 rate
 *
 * Set the default PWM output frequency for the main outputs
 * 
 *
 * @group PWM Outputs
 * @min 0
 * @max 400
 * @unit Hz
 */
PARAM_DEFINE_INT32(PWM_EXTRA_RATE1, 50);

/**
 * MAVLink Mode for instance 0
 *
 * The MAVLink Mode defines the set of streamed messages (for example the
 * vehicle's attitude) and their sending rates.
 * 
 *
 * @group MAVLink
 * @value 0 Normal
 * @value 1 Custom
 * @value 2 Onboard
 * @value 3 OSD
 * @value 4 Magic
 * @value 5 Config
 * @value 7 Minimal
 * @value 8 External Vision
 * @value 10 Gimbal
 * @value 11 Onboard Low Bandwidth
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_MODE, 0);

/**
 * MAVLink Mode for instance 1
 *
 * The MAVLink Mode defines the set of streamed messages (for example the
 * vehicle's attitude) and their sending rates.
 * 
 *
 * @group MAVLink
 * @value 0 Normal
 * @value 1 Custom
 * @value 2 Onboard
 * @value 3 OSD
 * @value 4 Magic
 * @value 5 Config
 * @value 7 Minimal
 * @value 8 External Vision
 * @value 10 Gimbal
 * @value 11 Onboard Low Bandwidth
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_MODE, 2);

/**
 * MAVLink Mode for instance 2
 *
 * The MAVLink Mode defines the set of streamed messages (for example the
 * vehicle's attitude) and their sending rates.
 * 
 *
 * @group MAVLink
 * @value 0 Normal
 * @value 1 Custom
 * @value 2 Onboard
 * @value 3 OSD
 * @value 4 Magic
 * @value 5 Config
 * @value 7 Minimal
 * @value 8 External Vision
 * @value 10 Gimbal
 * @value 11 Onboard Low Bandwidth
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_MODE, 0);

/**
 * Maximum MAVLink sending rate for instance 0
 *
 * Configure the maximum sending rate for the MAVLink streams in Bytes/sec.
 * If the configured streams exceed the maximum rate, the sending rate of
 * each stream is automatically decreased.
 * 
 * If this is set to 0 a value of half of the theoretical maximum bandwidth is used.
 * This corresponds to baudrate/20 Bytes/s (baudrate/10 = maximum data rate on 
 * 8N1-configured links).
 * 
 *
 * @group MAVLink
 * @min 0
 * @unit B/s
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_RATE, 1200);

/**
 * Maximum MAVLink sending rate for instance 1
 *
 * Configure the maximum sending rate for the MAVLink streams in Bytes/sec.
 * If the configured streams exceed the maximum rate, the sending rate of
 * each stream is automatically decreased.
 * 
 * If this is set to 0 a value of half of the theoretical maximum bandwidth is used.
 * This corresponds to baudrate/20 Bytes/s (baudrate/10 = maximum data rate on 
 * 8N1-configured links).
 * 
 *
 * @group MAVLink
 * @min 0
 * @unit B/s
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_RATE, 0);

/**
 * Maximum MAVLink sending rate for instance 2
 *
 * Configure the maximum sending rate for the MAVLink streams in Bytes/sec.
 * If the configured streams exceed the maximum rate, the sending rate of
 * each stream is automatically decreased.
 * 
 * If this is set to 0 a value of half of the theoretical maximum bandwidth is used.
 * This corresponds to baudrate/20 Bytes/s (baudrate/10 = maximum data rate on 
 * 8N1-configured links).
 * 
 *
 * @group MAVLink
 * @min 0
 * @unit B/s
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_RATE, 0);

/**
 * Enable MAVLink Message forwarding for instance 0
 *
 * If enabled, forward incoming MAVLink messages to other MAVLink ports if the
 * message is either broadcast or the target is not the autopilot.
 * 
 * This allows for example a GCS to talk to a camera that is connected to the
 * autopilot via MAVLink (on a different link than the GCS).
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_FORWARD, 1);

/**
 * Enable MAVLink Message forwarding for instance 1
 *
 * If enabled, forward incoming MAVLink messages to other MAVLink ports if the
 * message is either broadcast or the target is not the autopilot.
 * 
 * This allows for example a GCS to talk to a camera that is connected to the
 * autopilot via MAVLink (on a different link than the GCS).
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_FORWARD, 0);

/**
 * Enable MAVLink Message forwarding for instance 2
 *
 * If enabled, forward incoming MAVLink messages to other MAVLink ports if the
 * message is either broadcast or the target is not the autopilot.
 * 
 * This allows for example a GCS to talk to a camera that is connected to the
 * autopilot via MAVLink (on a different link than the GCS).
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_FORWARD, 0);

/**
 * Enable software throttling of mavlink on instance 0
 *
 * If enabled, MAVLink messages will be throttled according to
 * `txbuf` field reported by radio_status.
 * 
 * Requires a radio to send the mavlink message RADIO_STATUS.
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_RADIO_CTL, 1);

/**
 * Enable software throttling of mavlink on instance 1
 *
 * If enabled, MAVLink messages will be throttled according to
 * `txbuf` field reported by radio_status.
 * 
 * Requires a radio to send the mavlink message RADIO_STATUS.
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_RADIO_CTL, 1);

/**
 * Enable software throttling of mavlink on instance 2
 *
 * If enabled, MAVLink messages will be throttled according to
 * `txbuf` field reported by radio_status.
 * 
 * Requires a radio to send the mavlink message RADIO_STATUS.
 * 
 *
 * @group MAVLink
 * @boolean
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_RADIO_CTL, 1);

/**
 * MAVLink Network Port for instance 0
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 0, 
 * selected udp port will be set and used in MAVLink instance 0.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_UDP_PRT, 14556);

/**
 * MAVLink Network Port for instance 1
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 1, 
 * selected udp port will be set and used in MAVLink instance 1.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_UDP_PRT, 0);

/**
 * MAVLink Network Port for instance 2
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 2, 
 * selected udp port will be set and used in MAVLink instance 2.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_UDP_PRT, 0);

/**
 * MAVLink Remote Port for instance 0
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 0, 
 * selected remote port will be set and used in MAVLink instance 0.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_0_REMOTE_PRT, 14550);

/**
 * MAVLink Remote Port for instance 1
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 1, 
 * selected remote port will be set and used in MAVLink instance 1.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_1_REMOTE_PRT, 0);

/**
 * MAVLink Remote Port for instance 2
 *
 * If ethernet enabled and selected as configuration for MAVLink instance 2, 
 * selected remote port will be set and used in MAVLink instance 2.
 * 
 *
 * @group MAVLink
 * @reboot_required True
 */
PARAM_DEFINE_INT32(MAV_2_REMOTE_PRT, 0);

/**
 * Broadcast heartbeats on local network for MAVLink instance 0
 *
 * This allows a ground control station to automatically find the drone 
 * on the local network.
 * 
 *
 * @group MAVLink
 * @value 0 Never broadcast
 * @value 1 Always broadcast
 * @value 2 Only multicast
 */
PARAM_DEFINE_INT32(MAV_0_BROADCAST, 1);

/**
 * Broadcast heartbeats on local network for MAVLink instance 1
 *
 * This allows a ground control station to automatically find the drone 
 * on the local network.
 * 
 *
 * @group MAVLink
 * @value 0 Never broadcast
 * @value 1 Always broadcast
 * @value 2 Only multicast
 */
PARAM_DEFINE_INT32(MAV_1_BROADCAST, 0);

/**
 * Broadcast heartbeats on local network for MAVLink instance 2
 *
 * This allows a ground control station to automatically find the drone 
 * on the local network.
 * 
 *
 * @group MAVLink
 * @value 0 Never broadcast
 * @value 1 Always broadcast
 * @value 2 Only multicast
 */
PARAM_DEFINE_INT32(MAV_2_BROADCAST, 0);

