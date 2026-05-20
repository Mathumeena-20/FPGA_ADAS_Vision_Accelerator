clc;
clear;
close all;

% Read image
img = imread('road.jpg');

% Image size
[rows, cols, ~] = size(img);

% ROI mask
mask = poly2mask( ...
    [1 cols cols*0.6 cols*0.4], ...
    [rows rows rows*0.6 rows*0.6], ...
    rows, cols);

% Apply mask
roi = img;

roi(repmat(~mask,[1 1 3])) = 0;

% Display
figure;
imshow(roi);

title('ROI Extraction');