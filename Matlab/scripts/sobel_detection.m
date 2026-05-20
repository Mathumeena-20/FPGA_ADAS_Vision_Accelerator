clc;
clear;
close all;

img = imread('D:\VLSI\FPGA_ADAS_Vision_Accelerator\Software\python_tools\frames\frame_100.jpg');

gray = rgb2gray(img);

edges = edge(gray,'Sobel');

imshow(edges);

title('Sobel Edge Detection');