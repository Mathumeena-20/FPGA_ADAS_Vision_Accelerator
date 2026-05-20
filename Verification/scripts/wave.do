add wave sim:/tb_adas_pipeline/*

# Clock and Reset
add wave sim:/tb_adas_pipeline/clk
add wave sim:/tb_adas_pipeline/rst_n

# Camera Input
add wave sim:/tb_adas_pipeline/camera_pixel

# Edge Detection
add wave sim:/tb_adas_pipeline/edge_out

# Buzzer
add wave sim:/tb_adas_pipeline/buzzer

# Ultrasonic Signals
add wave sim:/tb_ultrasonic/echo
add wave sim:/tb_ultrasonic/trigger
add wave sim:/tb_ultrasonic/distance_cm

# Parking Alert Signals
add wave sim:/tb_parking_alert/distance_cm
add wave sim:/tb_parking_alert/buzzer
add wave -r sim:/tb_adas_pipeline/DUT/*

run -all