clc;
clear;
close all;

% Read image
img = imread('road.jpg');

% Convert to gray
gray = rgb2gray(img);

% Edge detection
edges = edge(gray,'Sobel');

% Display
figure;

subplot(1,2,1);
imshow(gray);
title('Gray Image');

subplot(1,2,2);
imshow(edges);
title('Sobel Edge Detection');