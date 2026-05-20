do compile.do

vsim tb_lane_detection
run -all

vsim tb_ultrasonic
run -all

vsim tb_parking_alert
run -all

vsim tb_adas_pipeline
run -all