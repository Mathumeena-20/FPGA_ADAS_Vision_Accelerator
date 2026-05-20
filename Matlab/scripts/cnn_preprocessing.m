clc;
clear;
close all;

% Read image
img = imread('road.jpg');

% Resize image
resized = imresize(img,[224 224]);

% Normalize
normalized = double(resized)/255;

% Display
figure;

subplot(1,2,1);
imshow(resized);
title('Resized Image');

subplot(1,2,2);
imshow(normalized);
title('Normalized Image');