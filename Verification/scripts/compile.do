vlib work

#################################################
# Common Files
#################################################

vlog ../../rtl/common/definitions.svh
vlog ../../rtl/common/parameters.svh
vlog ../../rtl/common/typedefs.svh
vlog ../../rtl/common/macros.svh

#################################################
# Frame Buffer
#################################################

vlog ../../rtl/image_processing/frame_buffer/frame_buffer.sv
vlog ../../rtl/image_processing/frame_buffer/dual_port_ram.sv
vlog ../../rtl/image_processing/frame_buffer/fifo_sync.sv
vlog ../../rtl/image_processing/frame_buffer/line_buffer.sv
vlog ../../rtl/image_processing/frame_buffer/image_memory.sv

#################################################
# Audio
#################################################

vlog ../../rtl/audio/pwm_generator.sv
vlog ../../rtl/audio/buzzer_controller.sv
vlog ../../rtl/audio/alert_controller.sv

#################################################
# RGB to Gray
#################################################

vlog ../../rtl/image_processing/rgb2gray/rgb2gray.sv

#################################################
# Gaussian Filter
#################################################

vlog ../../rtl/image_processing/gaussian_filter/gaussian_filter.sv
vlog ../../rtl/image_processing/gaussian_filter/gaussian_kernel.sv
vlog ../../rtl/image_processing/gaussian_filter/line_buffer.sv

#################################################
# Sobel Filter
#################################################

vlog ../../rtl/image_processing/sobel_filter/convolution_core.sv
vlog ../../rtl/image_processing/sobel_filter/edge_threshold.sv
vlog ../../rtl/image_processing/sobel_filter/gradient_calc.sv
vlog ../../rtl/image_processing/sobel_filter/sobel_filter.sv

#################################################
# Threshold Detector
#################################################

vlog ../../rtl/image_processing/threshold/threshold_detector.sv

#################################################
# Lane Detection
#################################################

vlog ../../rtl/lane_detection/lane_tracker.sv
vlog ../../rtl/lane_detection/roi_selector.sv
vlog ../../rtl/lane_detection/lane_classifier.sv
vlog ../../rtl/lane_detection/steering_estimator.sv

#################################################
# Ultrasonic Modules
#################################################

vlog ../../rtl/ultrasonic/ultrasonic_controller.sv
vlog ../../rtl/ultrasonic/echo_timer.sv
vlog ../../rtl/ultrasonic/distance_calculator.sv
vlog ../../rtl/ultrasonic/sensor_fusion.sv

#################################################
# Parking Modules
#################################################

vlog ../../rtl/parking/parking_slot_detector.sv
vlog ../../rtl/parking/line_classifier.sv
vlog ../../rtl/parking/parking_controller.sv

#################################################
# Display
#################################################
vlog ../../rtl/display/vga_controller.sv
vlog ../../rtl/display/hdmi_controller.sv

###################################################
# window_generator
###################################################
vlog ../../rtl/window_generator/window_generator.sv

#################################################
# Top Modules
#################################################

vlog ../../rtl/top/camera_pipeline_top.sv
vlog ../../rtl/top/adas_pipeline_top.sv
vlog ../../rtl/top/fpga_top.sv

#################################################
# Testbenches
#################################################

vlog ../TESTBENCH/tb_sobel.sv
vlog ../TESTBENCH/tb_lane_detection.sv
vlog ../TESTBENCH/tb_ultrasonic.sv
vlog ../TESTBENCH/tb_parking_alert.sv
vlog ../TESTBENCH/tb_adas_pipeline.sv
vlog ../TESTBENCH/tb_window_generator.sv
vlog ../TESTBENCH/tb_vga_controller.sv
vlog ../TESTBENCH/tb_hdmi_controller.sv