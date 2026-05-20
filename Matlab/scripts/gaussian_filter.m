clc;
clear;
close all;

% Read image
img = imread('road.jpg');

% Convert to gray
gray = rgb2gray(img);

% Apply Gaussian filter
filtered = imgaussfilt(gray,2);

% Display
figure;

subplot(1,2,1);
imshow(gray);
title('Original');

subplot(1,2,2);
imshow(filtered);
title('Gaussian Filtered');