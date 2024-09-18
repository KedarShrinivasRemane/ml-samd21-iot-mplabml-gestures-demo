#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk)" "nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk"
include nbproject/Makefile-local-SAMD21_IOT_WG_BMI160.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=SAMD21_IOT_WG_BMI160
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app_config/bmi160/bmi160_sensor.c ../application/sml_recognition_run.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../mplabml/src/array_contains.c ../mplabml/src/calc_area.c ../mplabml/src/column_to_row_complex.c ../mplabml/src/crossing_rate.c ../mplabml/src/dsp_dtw_distance.c ../mplabml/src/dsp_l1_distance.c ../mplabml/src/dsp_lsup_distance.c ../mplabml/src/fftr.c ../mplabml/src/fftr_utils.c ../mplabml/src/fg_frequency_dominant_frequency.c ../mplabml/src/fg_frequency_mfcc.c ../mplabml/src/fg_frequency_mfe.c ../mplabml/src/fg_frequency_power_spectrum.c ../mplabml/src/fixlog.c ../mplabml/src/imfcc.c ../mplabml/src/kb.c ../mplabml/src/kb_output.c ../mplabml/src/kb_pipeline.c ../mplabml/src/kb_post_processing.c ../mplabml/src/max_min_high_low_freq.c ../mplabml/src/ma_symmetric.c ../mplabml/src/mean.c ../mplabml/src/pme.c ../mplabml/src/pme_trained_neurons.c ../mplabml/src/ratio_diff_impl.c ../mplabml/src/rb.c ../mplabml/src/save_sensor_data.c ../mplabml/src/sf_downsample_by_averaging.c ../mplabml/src/sf_downsample_by_decimation.c ../mplabml/src/sg_windowing.c ../mplabml/src/sortarray.c ../mplabml/src/sorted_copy.c ../mplabml/src/stats_percentile_presorted.c ../mplabml/src/stat_mean.c ../mplabml/src/stat_moment.c ../mplabml/src/std.c ../mplabml/src/st_absolute_average.c ../mplabml/src/st_average.c ../mplabml/src/st_high_pass_filter.c ../mplabml/src/st_moving_average.c ../mplabml/src/sum.c ../mplabml/src/tr_min_max_scale.c ../mplabml/src/utils_array.c ../mplabml/src/utils_array_max_uint8.c ../mplabml/src/utils_bitwise_abs_val.c ../mplabml/src/utils_buffer_absmean.c ../mplabml/src/utils_buffer_abssum.c ../mplabml/src/utils_buffer_abs_max.c ../mplabml/src/utils_buffer_argmax.c ../mplabml/src/utils_buffer_autoscale.c ../mplabml/src/utils_buffer_cumsum.c ../mplabml/src/utils_buffer_max.c ../mplabml/src/utils_buffer_mean.c ../mplabml/src/utils_buffer_median.c ../mplabml/src/utils_buffer_min.c ../mplabml/src/utils_buffer_min_max.c ../mplabml/src/utils_buffer_pass_threshold.c ../mplabml/src/utils_buffer_std.c ../mplabml/src/utils_buffer_variance.c ../mplabml/src/utils_model_crossing_rate.c ../mplabml/src/utils_model_cross_column.c ../mplabml/src/utils_model_cross_difference.c ../mplabml/src/utils_model_mean_crossing_rate.c ../mplabml/src/utils_model_pct_time_over_sigma.c ../mplabml/src/utils_model_pct_time_over_threshold.c ../mplabml/src/utils_model_stats_max_min.c ../mplabml/src/utils_model_total_area.c ../mplabml/src/utils_model_total_energy.c ../mplabml/src/utils_tr_sensor.c ../src/main.c ../src/ringbuffer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/165749039/array_contains.o ${OBJECTDIR}/_ext/165749039/calc_area.o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ${OBJECTDIR}/_ext/165749039/fftr.o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/165749039/fixlog.o ${OBJECTDIR}/_ext/165749039/imfcc.o ${OBJECTDIR}/_ext/165749039/kb.o ${OBJECTDIR}/_ext/165749039/kb_output.o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ${OBJECTDIR}/_ext/165749039/mean.o ${OBJECTDIR}/_ext/165749039/pme.o ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ${OBJECTDIR}/_ext/165749039/rb.o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ${OBJECTDIR}/_ext/165749039/sortarray.o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ${OBJECTDIR}/_ext/165749039/stat_mean.o ${OBJECTDIR}/_ext/165749039/stat_moment.o ${OBJECTDIR}/_ext/165749039/std.o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ${OBJECTDIR}/_ext/165749039/st_average.o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ${OBJECTDIR}/_ext/165749039/sum.o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ${OBJECTDIR}/_ext/165749039/utils_array.o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d ${OBJECTDIR}/_ext/1301132388/bmi160.o.d ${OBJECTDIR}/_ext/913417575/plib_clock.o.d ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/445497352/plib_port.o.d ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/982468349/plib_systick.o.d ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d ${OBJECTDIR}/_ext/1503348509/initialization.o.d ${OBJECTDIR}/_ext/1503348509/interrupts.o.d ${OBJECTDIR}/_ext/1503348509/exceptions.o.d ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d ${OBJECTDIR}/_ext/165749039/array_contains.o.d ${OBJECTDIR}/_ext/165749039/calc_area.o.d ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d ${OBJECTDIR}/_ext/165749039/fftr.o.d ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d ${OBJECTDIR}/_ext/165749039/fixlog.o.d ${OBJECTDIR}/_ext/165749039/imfcc.o.d ${OBJECTDIR}/_ext/165749039/kb.o.d ${OBJECTDIR}/_ext/165749039/kb_output.o.d ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d ${OBJECTDIR}/_ext/165749039/mean.o.d ${OBJECTDIR}/_ext/165749039/pme.o.d ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o.d ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d ${OBJECTDIR}/_ext/165749039/rb.o.d ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d ${OBJECTDIR}/_ext/165749039/sortarray.o.d ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d ${OBJECTDIR}/_ext/165749039/stat_mean.o.d ${OBJECTDIR}/_ext/165749039/stat_moment.o.d ${OBJECTDIR}/_ext/165749039/std.o.d ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d ${OBJECTDIR}/_ext/165749039/st_average.o.d ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d ${OBJECTDIR}/_ext/165749039/sum.o.d ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d ${OBJECTDIR}/_ext/165749039/utils_array.o.d ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ${OBJECTDIR}/_ext/1301132388/bmi160.o ${OBJECTDIR}/_ext/913417575/plib_clock.o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ${OBJECTDIR}/_ext/445497352/plib_port.o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ${OBJECTDIR}/_ext/982468349/plib_systick.o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ${OBJECTDIR}/_ext/1503348509/initialization.o ${OBJECTDIR}/_ext/1503348509/interrupts.o ${OBJECTDIR}/_ext/1503348509/exceptions.o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ${OBJECTDIR}/_ext/165749039/array_contains.o ${OBJECTDIR}/_ext/165749039/calc_area.o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ${OBJECTDIR}/_ext/165749039/fftr.o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ${OBJECTDIR}/_ext/165749039/fixlog.o ${OBJECTDIR}/_ext/165749039/imfcc.o ${OBJECTDIR}/_ext/165749039/kb.o ${OBJECTDIR}/_ext/165749039/kb_output.o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ${OBJECTDIR}/_ext/165749039/mean.o ${OBJECTDIR}/_ext/165749039/pme.o ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ${OBJECTDIR}/_ext/165749039/rb.o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ${OBJECTDIR}/_ext/165749039/sortarray.o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ${OBJECTDIR}/_ext/165749039/stat_mean.o ${OBJECTDIR}/_ext/165749039/stat_moment.o ${OBJECTDIR}/_ext/165749039/std.o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ${OBJECTDIR}/_ext/165749039/st_average.o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ${OBJECTDIR}/_ext/165749039/sum.o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ${OBJECTDIR}/_ext/165749039/utils_array.o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o

# Source Files
SOURCEFILES=../src/app_config/bmi160/bmi160_sensor.c ../application/sml_recognition_run.c ../bmi160/bmi160.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c ../src/config/SAMD21_IOT_WG_BMI160/initialization.c ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c ../mplabml/src/array_contains.c ../mplabml/src/calc_area.c ../mplabml/src/column_to_row_complex.c ../mplabml/src/crossing_rate.c ../mplabml/src/dsp_dtw_distance.c ../mplabml/src/dsp_l1_distance.c ../mplabml/src/dsp_lsup_distance.c ../mplabml/src/fftr.c ../mplabml/src/fftr_utils.c ../mplabml/src/fg_frequency_dominant_frequency.c ../mplabml/src/fg_frequency_mfcc.c ../mplabml/src/fg_frequency_mfe.c ../mplabml/src/fg_frequency_power_spectrum.c ../mplabml/src/fixlog.c ../mplabml/src/imfcc.c ../mplabml/src/kb.c ../mplabml/src/kb_output.c ../mplabml/src/kb_pipeline.c ../mplabml/src/kb_post_processing.c ../mplabml/src/max_min_high_low_freq.c ../mplabml/src/ma_symmetric.c ../mplabml/src/mean.c ../mplabml/src/pme.c ../mplabml/src/pme_trained_neurons.c ../mplabml/src/ratio_diff_impl.c ../mplabml/src/rb.c ../mplabml/src/save_sensor_data.c ../mplabml/src/sf_downsample_by_averaging.c ../mplabml/src/sf_downsample_by_decimation.c ../mplabml/src/sg_windowing.c ../mplabml/src/sortarray.c ../mplabml/src/sorted_copy.c ../mplabml/src/stats_percentile_presorted.c ../mplabml/src/stat_mean.c ../mplabml/src/stat_moment.c ../mplabml/src/std.c ../mplabml/src/st_absolute_average.c ../mplabml/src/st_average.c ../mplabml/src/st_high_pass_filter.c ../mplabml/src/st_moving_average.c ../mplabml/src/sum.c ../mplabml/src/tr_min_max_scale.c ../mplabml/src/utils_array.c ../mplabml/src/utils_array_max_uint8.c ../mplabml/src/utils_bitwise_abs_val.c ../mplabml/src/utils_buffer_absmean.c ../mplabml/src/utils_buffer_abssum.c ../mplabml/src/utils_buffer_abs_max.c ../mplabml/src/utils_buffer_argmax.c ../mplabml/src/utils_buffer_autoscale.c ../mplabml/src/utils_buffer_cumsum.c ../mplabml/src/utils_buffer_max.c ../mplabml/src/utils_buffer_mean.c ../mplabml/src/utils_buffer_median.c ../mplabml/src/utils_buffer_min.c ../mplabml/src/utils_buffer_min_max.c ../mplabml/src/utils_buffer_pass_threshold.c ../mplabml/src/utils_buffer_std.c ../mplabml/src/utils_buffer_variance.c ../mplabml/src/utils_model_crossing_rate.c ../mplabml/src/utils_model_cross_column.c ../mplabml/src/utils_model_cross_difference.c ../mplabml/src/utils_model_mean_crossing_rate.c ../mplabml/src/utils_model_pct_time_over_sigma.c ../mplabml/src/utils_model_pct_time_over_threshold.c ../mplabml/src/utils_model_stats_max_min.c ../mplabml/src/utils_model_total_area.c ../mplabml/src/utils_model_total_energy.c ../mplabml/src/utils_tr_sensor.c ../src/main.c ../src/ringbuffer.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-SAMD21_IOT_WG_BMI160.mk ${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\SAMD21_IOT_WG_BMI160\ATSAMD21G18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2a38ffac8c48b45bbcb359439854adfaa9cb700c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c4430e79e5eb7ea7ac2a4f55b54f805719eb3329 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fca24314184646dd49cca4d5275a294336b1ce4f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/45809c2cae60a11398ba12dae52b1b3314f1ba90 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/37fb1fe4eb6a674ad50939fa6f9af58c3fef160e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d7d06553a01b5b98d9d69ffdc295225687edc796 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3619486d51fa164f5ffd9d4d45d8b5ee6e8351d9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cf945f40352a3d4204f0838eaa5b32265c5d022c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f9b83c7d73f2d5d031379098133df4a06bfc6dbd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2c697c9d5f6c1eef266c47c5104bc3068431b137 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4e3ae01d40465650c5a11564f944b3f3cf9a805e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/583b23d91aa0ec06942ff00412275603b34c7385 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/281b18e296a060ca0d8bcfc0ed011627e20889d4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6771106b98a3aab33c3d926552b422be145ec4a6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/deba6476751c2fa5d49b7fc4413576829b84abad .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6e6b880703490f40aae5987502d97ed284c71165 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b630f0c0059553c640e2d211f8513f17c697f27f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d04ad81cb67c4b4c6c14b20bf19abdf20200f9bf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fbc4c2e21397461e17d52e948c0c955264ff46bb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6bf527c1009f9a570d55f8c60dfe0f0ddced1887 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/711b738c0f43efa4c52b71ff0d6c42d32383e2f8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/544a5bf6e9f2c5bf9ff28ab173fbfaa688b8545 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/53d4c655f4b3d82f66c8060843d189e2c970538d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/15093b220c751f30b494902894455043b936a8be .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/13ea863053a6dbb1706324b9dd601ac62a383159 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/36c2de7d801eebaf695bb7cc7a0a6955b125f06b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c26a852930fdb10d78945a1fd86aab68e5406af5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/969e98bed9473536058df70e8f4b95672abf00b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o: ../mplabml/src/fg_frequency_dominant_frequency.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fd4cbd2f3cd9da83e6657093e9702843802209b1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o ../mplabml/src/fg_frequency_dominant_frequency.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o: ../mplabml/src/fg_frequency_mfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/44acb88a8820c579c30cd8fe3d6bfc2aed0f7a61 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o ../mplabml/src/fg_frequency_mfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/416395b8ded54450a28c3a2e31bdd0703fc96834 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/11f761acb0d1fa99627ab77f8176d052f8260722 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f8d106307cd36452b931b7d9b8713a9d5a2f3cd6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3439970f00524946bccced22048a552d15cdcb84 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a469d5b745919b4dbed127b2e81b01e67bb6b973 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f524f65ee598eb89c7574f52829b6dcee04f8deb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b364a870ffde2a176ebfed89cdb4a73e012f0b1c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dc218f313b5269938c82c0e5d953712f7527ab04 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/82f276afdc0a3a656dfb82ff918f717ed41e2f3f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5fb692e21a6d6d84965b83bd1189499d0ae2578c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/17902486c516012d09ddafbe3a92ae631eb37579 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/pme.o: ../mplabml/src/pme.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/25d0fde1b2f6fca655be999e374261f65813bdc5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/pme.o.d" -o ${OBJECTDIR}/_ext/165749039/pme.o ../mplabml/src/pme.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o: ../mplabml/src/pme_trained_neurons.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a9dfa4de42dd1c7db7b4ae53322cd8e60670ac8d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o.d" -o ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o ../mplabml/src/pme_trained_neurons.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/57070e03b9ac891c90541d2e11d65e11e6156053 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/eaf11140c152c47d6a38547ddcb46ae14d8a7033 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a40d87fedd5af201e77c40621b753aa0dd1cb9d6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/882f4c1b7a0b3e0084d56690ad7270a3eaee2bc4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ccf16df6430b5541e538ba33e65a2ca38a1191f9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/97bc613c5e5a2b523c313a6dbd96568a36191f9d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1dba2eec50362aacbebde24e3af9deec3c29cec7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/699f8c40e9eb6d150d90c76943e6b2daff54d7fe .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/81893528849ee7ffa0e93142ec51af9f9dc6daff .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bc2e2d38c72932ac9551c007bbfd6dd8d533fbb9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e408c1e8dae46c781aa40ce10c339f318a2a368e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8970ffe9cad1db906c13b49e4e21ae3871076e31 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8f344c378047ef5981fc00c46cbe23f1b931fef3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/501ef3fd4d107a541241a27e52e008d1a82fa3ca .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/726d61146451d364221e7e44c77735264de52fe5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/33fa88156f1d46fa5e63b9cb0800e339ea44a0fa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fa535bc53108fe380d0d3ba61a1cf2be92a86a09 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e05a6479491a694e3c49a2a948255bbd64cc3ab7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/84414d39af7cdc9e56ffe6f66c44c2202504cff4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2af4eb5c3f23fa2f6d0fd19a087a12451ab626b2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/cda81317a6d2ce5cc760f363601757fa1ab7504f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8fea8dd9a07a1efce3e5fb8b100d088afa484043 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/63f5ad49679d089a6d018da7e39a7bc61450f5cb .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b96f871d1146e9810609296916baad8efa26403b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3f89b8d1eeed6298e0e2c3084bd5d55cbb636c4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d7fac655fb92282805214bec62a37e6c2010f5c9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dde5c45fb48a02acb158765b1d143eb7dafee217 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/edab7c1d9c44a316a3fc50c56dd0f0e41a46ab5b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b28d7600b8283e0809e270614a14e790e3503f52 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/400f5795369fbffd4b3e8ec83290ad7d91b406fd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/edc0976340a186de0139d14d121c8ef471a76f0c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d22cc6a825a3760d82d7e47a3dcf977f4ce849e8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3fcfc2131ebd1a9bdfa4973b16b41ca3a87ac2aa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c29781ea3c8fce3352c62b652ddbcc9c6a7d6361 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/891c0a01ce4ebc85a710cff4b4d4632827ba4356 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f8e82eb8c6a9902f49dae9bf2338178acdcf7617 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/832979cf77786eda5205c4a0f358b262a0864843 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/57b84b01772e342f46af3cbdf320158e0b3a30d3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c45149a18efa2205f7682a71cc5b7bcd2dce0f49 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c745178231281c29c162a2e22eede09ee5caf4d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d1b15cd7f3851474b82c77bac8e7eb89e67fc706 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ccb4f5a3f0166f6a8c89cf35fec2fd032e02acd3 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/389edf6bccc01a419e154fa300eeda5b426068c0 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/327e00d66b5ef027fc768ba0ec42179b3519840d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1eacc1819a671e9c2315fde58996f4802579144d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f1f5ecf226c937210973af5229a39c42f1b2c427 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fcaf9ab3a490c8e62364b80a0e80fa2986acb0ed .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/21102530/bmi160_sensor.o: ../src/app_config/bmi160/bmi160_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/673673ccfd3b2555bb2f9af7fdd79cd11e189bd4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/21102530" 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/21102530/bmi160_sensor.o.d" -o ${OBJECTDIR}/_ext/21102530/bmi160_sensor.o ../src/app_config/bmi160/bmi160_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/933676929/sml_recognition_run.o: ../application/sml_recognition_run.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ef9b0ba1be97610be9cadae052f3c69385139e09 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/933676929" 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d 
	@${RM} ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/933676929/sml_recognition_run.o.d" -o ${OBJECTDIR}/_ext/933676929/sml_recognition_run.o ../application/sml_recognition_run.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1301132388/bmi160.o: ../bmi160/bmi160.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8a46cc993e451475857e15ed1d2e45b5906bec7b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1301132388" 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o.d 
	@${RM} ${OBJECTDIR}/_ext/1301132388/bmi160.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1301132388/bmi160.o.d" -o ${OBJECTDIR}/_ext/1301132388/bmi160.o ../bmi160/bmi160.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/913417575/plib_clock.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/45aa733633e6d2c7abe959ec7def658a54242a39 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/913417575" 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/913417575/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/913417575/plib_clock.o.d" -o ${OBJECTDIR}/_ext/913417575/plib_clock.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/clock/plib_clock.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1538380760/plib_eic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e2bd9d9b1c3f95fb2478c7483a813b68f6f3c733 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1538380760" 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1538380760/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1538380760/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1538380760/plib_eic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/eic/plib_eic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/915567061/plib_evsys.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e7dd4f11c18133caca62b3bdfc5052bf77fa5853 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/915567061" 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/915567061/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/915567061/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/915567061/plib_evsys.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/evsys/plib_evsys.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445444201/plib_nvic.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ee24f1f7d0d1f14545510187935e2f587bda14b2 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445444201" 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/445444201/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445444201/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/445444201/plib_nvic.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvic/plib_nvic.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/81107fbefb1421047f30682fe0f1594843f05279 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1216943447" 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1216943447/plib_nvmctrl.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/445497352/plib_port.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2fecbcf23cd653389a8865a209ef267ef9956538 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/445497352" 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/445497352/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/445497352/plib_port.o.d" -o ${OBJECTDIR}/_ext/445497352/plib_port.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/port/plib_port.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7eedd9397729542957d4f886d24cdc08bc976b35 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001189678" 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o.d" -o ${OBJECTDIR}/_ext/2001189678/plib_sercom1_i2c_master.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/i2c_master/plib_sercom1_i2c_master.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/92eaf873632b5a1996d8adf2c13f60eb35a7bbfd .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2012233442" 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/2012233442/plib_sercom5_usart.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/982468349/plib_systick.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e021ab9515de45d68716fc816de1abdc993dc90e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/982468349" 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/982468349/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/982468349/plib_systick.o.d" -o ${OBJECTDIR}/_ext/982468349/plib_systick.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/systick/plib_systick.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465267638/plib_tc3.o: ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/29d30ae4a98abc34859a44b2afdbfabfb87eba8c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/465267638" 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/465267638/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465267638/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/465267638/plib_tc3.o ../src/config/SAMD21_IOT_WG_BMI160/peripheral/tc/plib_tc3.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/81778269/xc32_monitor.o: ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/dc6c4154fd3b008a23f34b1b3eccdb33f1e0350 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/81778269" 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/81778269/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/81778269/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/81778269/xc32_monitor.o ../src/config/SAMD21_IOT_WG_BMI160/stdio/xc32_monitor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/initialization.o: ../src/config/SAMD21_IOT_WG_BMI160/initialization.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6faf5b73cd19093b746fe7688b43a6cb9459d7b9 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/initialization.o.d" -o ${OBJECTDIR}/_ext/1503348509/initialization.o ../src/config/SAMD21_IOT_WG_BMI160/initialization.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/interrupts.o: ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/6d9bc9d81ade4df445510fdf8610fe090b4c712f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/interrupts.o.d" -o ${OBJECTDIR}/_ext/1503348509/interrupts.o ../src/config/SAMD21_IOT_WG_BMI160/interrupts.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/exceptions.o: ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/feecb01aba0f111da62b641e460721c88a921fc8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/exceptions.o.d" -o ${OBJECTDIR}/_ext/1503348509/exceptions.o ../src/config/SAMD21_IOT_WG_BMI160/exceptions.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/startup_xc32.o: ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fd003214ffef86d4fb63d30ba1dcf36fc9f627ba .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1503348509/startup_xc32.o ../src/config/SAMD21_IOT_WG_BMI160/startup_xc32.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1503348509/libc_syscalls.o: ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/32c95484eb5f2805e6f4d0d6c010a73fadad813c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1503348509" 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1503348509/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1503348509/libc_syscalls.o ../src/config/SAMD21_IOT_WG_BMI160/libc_syscalls.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/array_contains.o: ../mplabml/src/array_contains.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d005d9172565dbb87793da3c0af43455401b32a6 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/array_contains.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/array_contains.o.d" -o ${OBJECTDIR}/_ext/165749039/array_contains.o ../mplabml/src/array_contains.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/calc_area.o: ../mplabml/src/calc_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e3847cf5be3129ffd905194d24ad3303deba08de .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/calc_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/calc_area.o.d" -o ${OBJECTDIR}/_ext/165749039/calc_area.o ../mplabml/src/calc_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/column_to_row_complex.o: ../mplabml/src/column_to_row_complex.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/81a75e0aeaea356d82aad63bb657171801727895 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/column_to_row_complex.o.d" -o ${OBJECTDIR}/_ext/165749039/column_to_row_complex.o ../mplabml/src/column_to_row_complex.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/crossing_rate.o: ../mplabml/src/crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d0defcfeb03627f4c5d00707411a93da43557d1f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/crossing_rate.o ../mplabml/src/crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o: ../mplabml/src/dsp_dtw_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e1881c0aaa8f3d09d1410b1a5175c7e72a0ea6ec .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_dtw_distance.o ../mplabml/src/dsp_dtw_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o: ../mplabml/src/dsp_l1_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/60d41a54dd530397313cfa43826a9d67c232176f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_l1_distance.o ../mplabml/src/dsp_l1_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o: ../mplabml/src/dsp_lsup_distance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/33bda2057d176137ce3452aeb0308afcdf9b60d7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o.d" -o ${OBJECTDIR}/_ext/165749039/dsp_lsup_distance.o ../mplabml/src/dsp_lsup_distance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr.o: ../mplabml/src/fftr.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b77efa50c2f2c9801952949e702f002d08a53d97 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr.o ../mplabml/src/fftr.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fftr_utils.o: ../mplabml/src/fftr_utils.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b21fbfe6d2ab40882f26eb8d7869bc21e8e9a331 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fftr_utils.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fftr_utils.o.d" -o ${OBJECTDIR}/_ext/165749039/fftr_utils.o ../mplabml/src/fftr_utils.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o: ../mplabml/src/fg_frequency_dominant_frequency.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ce2773f2046304419c242cbdd203f6f283062c3b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_dominant_frequency.o ../mplabml/src/fg_frequency_dominant_frequency.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o: ../mplabml/src/fg_frequency_mfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8773975ba7412ae7dd7c8a0fd4cbb058d9c319d5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfcc.o ../mplabml/src/fg_frequency_mfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o: ../mplabml/src/fg_frequency_mfe.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/84f1d00b012c34c37fa885b90bfd0d26e9ecdb99 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_mfe.o ../mplabml/src/fg_frequency_mfe.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o: ../mplabml/src/fg_frequency_power_spectrum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/d979a36890c95ec463bf98d46195076487e9150f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o.d" -o ${OBJECTDIR}/_ext/165749039/fg_frequency_power_spectrum.o ../mplabml/src/fg_frequency_power_spectrum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/fixlog.o: ../mplabml/src/fixlog.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/afd523f75b050260b8f3d95bdbc4984794b23e1f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/fixlog.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/fixlog.o.d" -o ${OBJECTDIR}/_ext/165749039/fixlog.o ../mplabml/src/fixlog.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/imfcc.o: ../mplabml/src/imfcc.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/77df25c6472e3a3632aae6fc7e0a4d4b2dbcd93c .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/imfcc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/imfcc.o.d" -o ${OBJECTDIR}/_ext/165749039/imfcc.o ../mplabml/src/imfcc.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb.o: ../mplabml/src/kb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4fade5bf4ee4af11c3ed7e560ebc9df2c0ecfb7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb.o.d" -o ${OBJECTDIR}/_ext/165749039/kb.o ../mplabml/src/kb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_output.o: ../mplabml/src/kb_output.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/406e89ddf697146a0d7b348949d4d8e432c2aa06 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_output.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_output.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_output.o ../mplabml/src/kb_output.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_pipeline.o: ../mplabml/src/kb_pipeline.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b1a0b46d7670059bc005fcf448e79001642e23f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_pipeline.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_pipeline.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_pipeline.o ../mplabml/src/kb_pipeline.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/kb_post_processing.o: ../mplabml/src/kb_post_processing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/506c765d8be100835a4053b3388d7db0f82d238 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/kb_post_processing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/kb_post_processing.o.d" -o ${OBJECTDIR}/_ext/165749039/kb_post_processing.o ../mplabml/src/kb_post_processing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o: ../mplabml/src/max_min_high_low_freq.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9a9038113524c2670984b04344b3f50abf700248 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o.d" -o ${OBJECTDIR}/_ext/165749039/max_min_high_low_freq.o ../mplabml/src/max_min_high_low_freq.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ma_symmetric.o: ../mplabml/src/ma_symmetric.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b1bde13f10096116759580feca70d61d3f6891be .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ma_symmetric.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ma_symmetric.o.d" -o ${OBJECTDIR}/_ext/165749039/ma_symmetric.o ../mplabml/src/ma_symmetric.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/mean.o: ../mplabml/src/mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/655bbfac98fea6093e7eae7c73609aca5b7254ac .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/mean.o.d" -o ${OBJECTDIR}/_ext/165749039/mean.o ../mplabml/src/mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/pme.o: ../mplabml/src/pme.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2c09f32936ce298420c88281876a782549edb12b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/pme.o.d" -o ${OBJECTDIR}/_ext/165749039/pme.o ../mplabml/src/pme.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o: ../mplabml/src/pme_trained_neurons.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e978e1612ac2d3489e6a74609ff577f33718db19 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o.d" -o ${OBJECTDIR}/_ext/165749039/pme_trained_neurons.o ../mplabml/src/pme_trained_neurons.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o: ../mplabml/src/ratio_diff_impl.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/557efd80fc1604433a196066086c433b61ae18b8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o.d" -o ${OBJECTDIR}/_ext/165749039/ratio_diff_impl.o ../mplabml/src/ratio_diff_impl.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/rb.o: ../mplabml/src/rb.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/925d77abbdd104a506f5983ea22485e1c63e754f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/rb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/rb.o.d" -o ${OBJECTDIR}/_ext/165749039/rb.o ../mplabml/src/rb.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/save_sensor_data.o: ../mplabml/src/save_sensor_data.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b428063be86de8f11ab3cd797982e3ad79c6b3a5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/save_sensor_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/save_sensor_data.o.d" -o ${OBJECTDIR}/_ext/165749039/save_sensor_data.o ../mplabml/src/save_sensor_data.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o: ../mplabml/src/sf_downsample_by_averaging.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fc3aabcf275e6ef59cc9be57f035623d52f5ddcf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_averaging.o ../mplabml/src/sf_downsample_by_averaging.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o: ../mplabml/src/sf_downsample_by_decimation.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/3ca90255dff869eda97d6eb5911dd2de2ea44093 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o.d" -o ${OBJECTDIR}/_ext/165749039/sf_downsample_by_decimation.o ../mplabml/src/sf_downsample_by_decimation.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sg_windowing.o: ../mplabml/src/sg_windowing.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4726658fb734fcfc4597028d7a5f8bcb028e54d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sg_windowing.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sg_windowing.o.d" -o ${OBJECTDIR}/_ext/165749039/sg_windowing.o ../mplabml/src/sg_windowing.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sortarray.o: ../mplabml/src/sortarray.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/93d9d4fc0f719520a9f1d3ebf12b36f56540790d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sortarray.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sortarray.o.d" -o ${OBJECTDIR}/_ext/165749039/sortarray.o ../mplabml/src/sortarray.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sorted_copy.o: ../mplabml/src/sorted_copy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/49e20185542d4bda741191a6889e79eea447b8a5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sorted_copy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sorted_copy.o.d" -o ${OBJECTDIR}/_ext/165749039/sorted_copy.o ../mplabml/src/sorted_copy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o: ../mplabml/src/stats_percentile_presorted.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/f166813dcec85f9db638ab05cefb47f289273ab8 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o.d" -o ${OBJECTDIR}/_ext/165749039/stats_percentile_presorted.o ../mplabml/src/stats_percentile_presorted.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_mean.o: ../mplabml/src/stat_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/8d914cee4c1b6794181659a822a22536c15c233d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_mean.o ../mplabml/src/stat_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/stat_moment.o: ../mplabml/src/stat_moment.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b867c19efaa769dc63cb03d65a1c8805d0be7466 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/stat_moment.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/stat_moment.o.d" -o ${OBJECTDIR}/_ext/165749039/stat_moment.o ../mplabml/src/stat_moment.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/std.o: ../mplabml/src/std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/db6995f3d717f20009d4008849ddfdd9f3a06ed .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/std.o.d" -o ${OBJECTDIR}/_ext/165749039/std.o ../mplabml/src/std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_absolute_average.o: ../mplabml/src/st_absolute_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/39808727bf39bad4c4ab14df4dc5d40cb4ee335f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_absolute_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_absolute_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_absolute_average.o ../mplabml/src/st_absolute_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_average.o: ../mplabml/src/st_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ab3b1865ac60a000d36da79a8d520eed9fa3f19d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_average.o ../mplabml/src/st_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o: ../mplabml/src/st_high_pass_filter.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e942131198208b476d8c48e9dc1a5701f8ae540b .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o.d" -o ${OBJECTDIR}/_ext/165749039/st_high_pass_filter.o ../mplabml/src/st_high_pass_filter.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/st_moving_average.o: ../mplabml/src/st_moving_average.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e5cefaed7f91bb8230d555c19da57305a5418c69 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/st_moving_average.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/st_moving_average.o.d" -o ${OBJECTDIR}/_ext/165749039/st_moving_average.o ../mplabml/src/st_moving_average.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/sum.o: ../mplabml/src/sum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2f1895684d33a3744c2b96c7926a2b38362feab5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/sum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/sum.o.d" -o ${OBJECTDIR}/_ext/165749039/sum.o ../mplabml/src/sum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o: ../mplabml/src/tr_min_max_scale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/4edcdb8672d68b77ed9c4cc982a038e3447795a5 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o.d" -o ${OBJECTDIR}/_ext/165749039/tr_min_max_scale.o ../mplabml/src/tr_min_max_scale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array.o: ../mplabml/src/utils_array.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1047009ecdc3bf7e070d59571f467112278e52dc .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array.o ../mplabml/src/utils_array.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o: ../mplabml/src/utils_array_max_uint8.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ff3e3f653ad6abb9c0f7f5cbeb32c5fe86740aad .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_array_max_uint8.o ../mplabml/src/utils_array_max_uint8.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o: ../mplabml/src/utils_bitwise_abs_val.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7dad3174b8ddb6c4045b4b3e3a53b4cc31684b43 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_bitwise_abs_val.o ../mplabml/src/utils_bitwise_abs_val.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o: ../mplabml/src/utils_buffer_absmean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b4d5aedfc70416a7be7a25a18cc77ec9193e8fc7 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_absmean.o ../mplabml/src/utils_buffer_absmean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o: ../mplabml/src/utils_buffer_abssum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/b9ca171bfdab5c0bbe6d42e17770e11e72a75aa4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abssum.o ../mplabml/src/utils_buffer_abssum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o: ../mplabml/src/utils_buffer_abs_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/304e439fad5ac56a0655ef4097dbac2c23f39b33 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_abs_max.o ../mplabml/src/utils_buffer_abs_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o: ../mplabml/src/utils_buffer_argmax.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/28a3825707501ea8a9cf1082529416ea6ca9e460 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_argmax.o ../mplabml/src/utils_buffer_argmax.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o: ../mplabml/src/utils_buffer_autoscale.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ba2ec108ef4e80334d01ec4a07dc8d209620ac10 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_autoscale.o ../mplabml/src/utils_buffer_autoscale.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o: ../mplabml/src/utils_buffer_cumsum.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/ee8bb6c265683df7bb13cfb4d73112727a263195 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_cumsum.o ../mplabml/src/utils_buffer_cumsum.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_max.o: ../mplabml/src/utils_buffer_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5cee9faf9af0fa1083d4ac0de505b499cf80e357 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_max.o ../mplabml/src/utils_buffer_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o: ../mplabml/src/utils_buffer_mean.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/a3eda354a879ff467fda6f5267ee632419d263d4 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_mean.o ../mplabml/src/utils_buffer_mean.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_median.o: ../mplabml/src/utils_buffer_median.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/bdca79b954056388c3e84d8cf54e65768ee3741e .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_median.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_median.o ../mplabml/src/utils_buffer_median.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min.o: ../mplabml/src/utils_buffer_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/1a11f2e98e88957135e3a6e21806e1a3cb24e0aa .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min.o ../mplabml/src/utils_buffer_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o: ../mplabml/src/utils_buffer_min_max.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/66c66e524fb93e88e00bf1f66c885b89e1db45ee .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_min_max.o ../mplabml/src/utils_buffer_min_max.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o: ../mplabml/src/utils_buffer_pass_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/be8a65415b6d8fd00c3008f21fa67f683158e6cf .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_pass_threshold.o ../mplabml/src/utils_buffer_pass_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_std.o: ../mplabml/src/utils_buffer_std.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2bc155d14e8bd80ebb022d5efc47721db4fad993 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_std.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_std.o ../mplabml/src/utils_buffer_std.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o: ../mplabml/src/utils_buffer_variance.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/52e7246ad29e514d3601972acb15e98f45cc4579 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_buffer_variance.o ../mplabml/src/utils_buffer_variance.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o: ../mplabml/src/utils_model_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/fd50fc3f27c4c3d4a9b5476957d5dcfe5bb9c16f .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_crossing_rate.o ../mplabml/src/utils_model_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o: ../mplabml/src/utils_model_cross_column.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/9771e653d2428e5972e40e5eaf2467c5487ea587 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_column.o ../mplabml/src/utils_model_cross_column.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o: ../mplabml/src/utils_model_cross_difference.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/113fef46d110f45c9fe0ddfa08755e8e929a5d41 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_cross_difference.o ../mplabml/src/utils_model_cross_difference.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o: ../mplabml/src/utils_model_mean_crossing_rate.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/40a053a42fceca21210d1874275e68ea8584533a .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_mean_crossing_rate.o ../mplabml/src/utils_model_mean_crossing_rate.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o: ../mplabml/src/utils_model_pct_time_over_sigma.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/5c49539f0e4341dd3a64e191d0371e6184c27f11 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_sigma.o ../mplabml/src/utils_model_pct_time_over_sigma.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o: ../mplabml/src/utils_model_pct_time_over_threshold.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/2fef5f991ae99a730cc3c93dad77abbacd1f625d .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_pct_time_over_threshold.o ../mplabml/src/utils_model_pct_time_over_threshold.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o: ../mplabml/src/utils_model_stats_max_min.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/76482be3a2dd0ee2c706193ac35dce8ce1b85d99 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_stats_max_min.o ../mplabml/src/utils_model_stats_max_min.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_area.o: ../mplabml/src/utils_model_total_area.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/7e0da0572fe2bd85797e683a97590669e8f96b16 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_area.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_area.o ../mplabml/src/utils_model_total_area.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o: ../mplabml/src/utils_model_total_energy.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/533074249d75567c7bec4fd3e39eb6d4aca1bd85 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_model_total_energy.o ../mplabml/src/utils_model_total_energy.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o: ../mplabml/src/utils_tr_sensor.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/e48d415b89cb792a996c86f6ea09d4c5708389ca .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165749039" 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o.d" -o ${OBJECTDIR}/_ext/165749039/utils_tr_sensor.o ../mplabml/src/utils_tr_sensor.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/103615a140f6236521b16e1f236c92aa8dc7c3c1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ringbuffer.o: ../src/ringbuffer.c  .generated_files/flags/SAMD21_IOT_WG_BMI160/c586f051e77ff56c13d06aea816e867c36a0c9e1 .generated_files/flags/SAMD21_IOT_WG_BMI160/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ringbuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../bmi160" -I"../knowledgepack/mplabml/inc" -I"../knowledgepack/knowledgepack_project" -O2 -fno-common -DSNSR_TYPE_BMI160=1 -I"../src" -I"../src/config/SAMD21_IOT_WG_BMI160" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ringbuffer.o.d" -o ${OBJECTDIR}/_ext/1360937237/ringbuffer.o ../src/ringbuffer.c    -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/mplabml/lib/libmplabml.a  ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../knowledgepack/mplabml/lib/libmplabml.a ../src/config/SAMD21_IOT_WG_BMI160/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\knowledgepack\mplabml\lib\libmplabml.a      -DXPRJ_SAMD21_IOT_WG_BMI160=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml,-u,_printf_float -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/samd21-iot-mplabml-gestures-demo.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
