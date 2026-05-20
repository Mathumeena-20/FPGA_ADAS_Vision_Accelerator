clc;
clear;
close all;

% Read image
img = imread('cars.jpg');

% Create detector
detector = vision.CascadeObjectDetector();

% Detect objects
bbox = step(detector,img);

% Insert bounding boxes
result = insertShape(img, ...
    'Rectangle', ...
    bbox, ...
    'Color','green', ...
    'LineWidth',3);

% Display
figure;
imshow(result);

title('Object Detection');