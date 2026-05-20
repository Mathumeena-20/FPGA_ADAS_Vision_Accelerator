# 🚗 FPGA ADAS Vision Accelerator

![GitHub stars](https://img.shields.io/github/stars/Mathumeena-20/FPGA_ADAS_Vision_Accelerator?style=social)
![GitHub forks](https://img.shields.io/github/forks/Mathumeena-20/FPGA_ADAS_Vision_Accelerator?style=social)
![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![Language](https://img.shields.io/badge/language-SystemVerilog-orange.svg)
![FPGA](https://img.shields.io/badge/target-CycloneV-green.svg)
![Vision](https://img.shields.io/badge/vision-ADAS-red.svg)
![Simulation](https://img.shields.io/badge/simulation-ModelSim-blue)
![Synthesis](https://img.shields.io/badge/synthesis-Quartus-success)
![MATLAB](https://img.shields.io/badge/tool-MATLAB-yellow)
![OpenCV](https://img.shields.io/badge/tool-OpenCV-purple)

---

# 🚀 FPGA-Based ADAS Vision Accelerator

## SystemVerilog | FPGA | Computer Vision | Ultrasonic Sensor Fusion

---

# 📑 Table of Contents

* Introduction
* Features
* Technologies
* System Architecture
* Image Processing Pipeline
* Parking Detection
* Ultrasonic Obstacle Detection
* PWM Audio Alert
* MATLAB/OpenCV Integration
* FPGA Flow
* Simulation Flow
* Timing Analysis
* Waveform Verification
* Project Structure
* Results
* Future Improvements
* Conclusion

---

# 📖 Introduction

The FPGA ADAS Vision Accelerator is a SystemVerilog-based Advanced Driver Assistance System (ADAS) implemented on FPGA hardware.

The project demonstrates a complete RTL-to-FPGA computer vision pipeline including:

* Real-time image processing
* Edge detection pipeline
* Parking slot detection
* Ultrasonic sensor fusion
* PWM-based audio alert system
* MATLAB/OpenCV preprocessing
* FPGA synthesis and timing analysis

This project showcases practical FPGA/VLSI front-end design flow:

✅ RTL Design
✅ Functional Simulation
✅ MATLAB Verification
✅ OpenCV Dataset Processing
✅ ModelSim Waveform Debugging
✅ Quartus FPGA Synthesis
✅ Static Timing Analysis

---

# ✨ Features

The FPGA ADAS system supports:

---

## 🧠 Vision Processing Features

* RGB to Grayscale Conversion
* Gaussian Blur Filtering
* Sobel Edge Detection
* Threshold Detection
* Lane Edge Extraction
* Real-Time Pixel Pipeline
* MATLAB Vector-Based Simulation

---

## 🚗 Parking Assistance Features

* Parking Slot Detection
* Edge-Based Parking Classification
* Parking Boundary Tracking
* Parking Occupancy Logic

---

## 📡 Ultrasonic Features

* Multi-Directional Obstacle Detection
* Front Distance Monitoring
* Sensor Fusion Logic
* Obstacle Direction Detection

---

## 🔊 Audio Alert Features

* PWM Buzzer Generation
* Collision Warning Alert
* Obstacle Triggered Audio Output

---

## ⚡ FPGA Features

* Quartus Prime FPGA Compilation
* RTL Viewer
* Timing Closure
* Static Timing Analysis
* Cyclone V FPGA Support
* Modular RTL Architecture

---

# 🛠️ Technologies

| Technology         | Usage                 |
| ------------------ | --------------------- |
| SystemVerilog      | RTL Design            |
| MATLAB             | Image Processing      |
| OpenCV             | Dataset Preprocessing |
| Python             | Frame Generation      |
| ModelSim           | Functional Simulation |
| Quartus Prime      | FPGA Synthesis        |
| TimeQuest Analyzer | Timing Analysis       |
| GitHub             | Version Control       |

---

# 🧠 System Architecture

## 🚗 High-Level ADAS Architecture

```text
                 +--------------------------------+
                 |      CAMERA INPUT FRAME        |
                 +---------------+----------------+
                                 |
                                 v

                 +-------------------------------+
                 |        RGB TO GRAYSCALE       |
                 +---------------+---------------+
                                 |
                                 v

                 +-------------------------------+
                 |        GAUSSIAN FILTER        |
                 +---------------+---------------+
                                 |
                                 v

                 +-------------------------------+
                 |        SOBEL FILTER           |
                 +---------------+---------------+
                                 |
                                 v

                 +-------------------------------+
                 |      THRESHOLD DETECTOR       |
                 +---------------+---------------+
                                 |
              ----------------------------------
              |                                |
              v                                v

+--------------------------+      +--------------------------+
| PARKING SLOT DETECTOR    |      | ULTRASONIC SENSOR FUSION|
+-------------+------------+      +-------------+------------+
              |                                 |
              -----------------------------------
                              |
                              v

                 +-------------------------------+
                 |      PWM BUZZER ALERT         |
                 +-------------------------------+
```

---

# 🧠 Image Processing Pipeline

The FPGA image-processing pipeline contains:

| Stage              | Function                 |
| ------------------ | ------------------------ |
| RGB2Gray           | Convert RGB to grayscale |
| Gaussian Filter    | Blur noise reduction     |
| Sobel Filter       | Edge extraction          |
| Threshold Detector | Binary edge map          |

---

## 🔹 RGB to Grayscale

Converts RGB pixels into grayscale intensity.

### Formula

Gray = \frac{R + G + B}{3}

---

## 🔹 Sobel Edge Detection

Detects lane boundaries and parking edges.

### Edge Gradient

G = |P_{current} - P_{previous}|

---

# 🚗 Parking Slot Detection

The parking module detects parking boundaries using edge continuity logic.

---

## Parking Logic

```systemverilog
if(edge_pixel == 8'hFF)
    edge_counter <= edge_counter + 1;
else
    edge_counter <= 0;
```

---

## Parking Detection Rule

```text
Continuous edges
        ↓
Parking boundary detected
```

---

# 📡 Ultrasonic Obstacle Detection

The ultrasonic subsystem supports:

* Front obstacle detection
* Rear obstacle detection
* Left/right obstacle tracking
* Obstacle direction identification

---

## Obstacle Detection Logic

```systemverilog
if(front_distance < 20)
    obstacle_detected <= 1'b1;
```

---

## Distance Threshold

Distance < 20\ cm

---

# 🔊 PWM Audio Alert

The system generates PWM buzzer signals when obstacles are detected.

---

## PWM Logic

```systemverilog
pwm_out <= counter[7];
```

---

## PWM Frequency Concept

f_{PWM} = \frac{f_{clk}}{2^N}

---

# 🧪 MATLAB & OpenCV Integration

The software preprocessing pipeline uses:

| Tool   | Function               |
| ------ | ---------------------- |
| OpenCV | Video frame extraction |
| Python | Frame generation       |
| MATLAB | Image preprocessing    |
| RTL    | FPGA simulation        |

---

## MATLAB Flow

```text
Road Video
     ↓
OpenCV Frame Extraction
     ↓
MATLAB Edge Detection
     ↓
input_pixels.txt
     ↓
RTL Simulation
```

---

# ⚙️ FPGA Flow

## Complete FPGA Implementation Flow

### 1️⃣ RTL Design

SystemVerilog RTL implementation.

### 2️⃣ Functional Simulation

ModelSim waveform verification.

### 3️⃣ MATLAB Verification

Image-processing reference generation.

### 4️⃣ Quartus Synthesis

RTL synthesis and FPGA mapping.

### 5️⃣ Place & Route

FPGA resource placement.

### 6️⃣ Static Timing Analysis

Setup/Hold timing verification.

### 7️⃣ Bitstream Generation

FPGA `.sof` programming file generation.

---

# 🚀 Quickstart

## 1️⃣ Clone Repository

```bash
git clone https://github.com/Mathumeena-20/FPGA_ADAS_Vision_Accelerator.git

cd FPGA_ADAS_Vision_Accelerator
```

---

## 2️⃣ Run MATLAB Processing

```matlab
lane_detection
```

---

## 3️⃣ Run Python OpenCV

```bash
python frame_generator.py
```

---

## 4️⃣ Compile RTL

```tcl
do compile.do
```

---

## 5️⃣ Start Simulation

```tcl
vsim work.tb_adas_pipeline
```

---

## 6️⃣ Add Waveforms

```tcl
add wave -r sim:/tb_adas_pipeline/*
```

---

## 7️⃣ Run Simulation

```tcl
run 10 us
```

---

# 📊 FPGA Synthesis Flow

## Quartus Steps

### Create Quartus Project

Add all RTL `.sv` files.

---

### Set Top-Level Entity

```text
adas_pipeline_top
```

---

### Add Timing Constraints

```tcl
create_clock -name clk -period 10.0 [get_ports clk]
```

---

### Compile Design

```text
Processing
→ Start Compilation
```

---

# ⏱️ Timing Analysis

## Setup/Hold Timing

### Timing Equation

Slack = Required\ Time - Arrival\ Time

---

## Clock Frequency

```text
100 MHz
```

---

# 🔍 Waveform Verification

Waveforms verify:

✅ RGB Frame Input
✅ Grayscale Conversion
✅ Gaussian Filtering
✅ Sobel Edge Detection
✅ Threshold Detection
✅ Parking Detection
✅ Obstacle Detection
✅ PWM Buzzer Output
✅ MATLAB Pixel Feeding

---

# 📁 Project Structure

```text
FPGA_ADAS_Vision_Accelerator/
│
├── rtl/
│   ├── common/
│   ├── image_processing/
│   │   ├── rgb2gray/
│   │   ├── gaussian_filter/
│   │   ├── sobel_filter/
│   │   └── threshold/
│   │
│   ├── parking/
│   │
│   ├── ultrasonic/
│   │
│   ├── audio/
│   │
│   └── top/
│
├── matlab/
│   ├── lane_detection.m
│   ├── hough_transform.m
│   └── datasets/
│
├── software/
│   └── python_tools/
│       └── frame_generator.py
│
├── verification/
│   ├── TESTBENCH/
│   ├── scripts/
│   └── vectors/
│
├── constraints/
│
├── docs/
│
└── README.md
```

---

# 📈 Results

✅ Functional Simulation Successful
✅ MATLAB Verification Successful
✅ OpenCV Frame Generation Successful
✅ Sobel Edge Detection Verified
✅ Parking Detection Verified
✅ Ultrasonic Obstacle Detection Verified
✅ PWM Buzzer Working
✅ Quartus Compilation Successful
✅ Timing Analysis Verified
✅ FPGA RTL Flow Verified

---

# 🚀 Future Improvements

Future upgrades planned:

* Real-Time HDMI Camera Interface
* CNN-Based Object Detection
* YOLO FPGA Acceleration
* DDR Memory Controller
* AXI4 Streaming Interface
* Multi-Camera Fusion
* Autonomous Steering Logic
* Real-Time Lane Tracking
* FPGA Hardware Acceleration Optimization
* Full UVM Verification

---

# ⭐ Conclusion

This project demonstrates a complete FPGA-based ADAS accelerator using:

* SystemVerilog RTL Design
* MATLAB/OpenCV preprocessing
* FPGA image-processing pipeline
* Parking slot detection
* Ultrasonic sensor fusion
* PWM audio alert system
* FPGA synthesis and timing analysis

The design provides practical experience in:

* FPGA Design Flow
* Computer Vision Acceleration
* RTL Verification
* Timing Closure
* ModelSim Debugging
* Quartus FPGA Synthesis
* Real-Time Embedded Vision Systems

