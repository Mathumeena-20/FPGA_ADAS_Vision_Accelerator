clc;
clear;
close all;

% Read image
img = imread('road.jpg');

% Convert to grayscale
gray = rgb2gray(img);

% Gaussian filtering
blur = imgaussfilt(gray,2);

% Edge detection
edges = edge(blur,'Sobel');

% Save outputs
imwrite(gray,'gray_output.jpg');

imwrite(blur,'gaussian_output.jpg');

imwrite(edges,'edge_output.jpg');

disp('Reference outputs generated');