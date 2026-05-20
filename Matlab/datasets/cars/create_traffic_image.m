clc;
clear;
close all;

img = uint8(zeros(720,1280,3));

% Road background
img(:,:,1) = 50;
img(:,:,2) = 50;
img(:,:,3) = 50;

% Vehicle 1
img(500:620,200:320,1) = 255;

% Vehicle 2
img(450:580,500:650,2) = 255;

% Vehicle 3
img(400:520,850:1000,3) = 255;

imshow(img);

imwrite(img,'Traffic.jpg');