clc;
clear;
close all;

img = uint8(zeros(480,640,3));

% Road background
img(:,:,1) = 60;
img(:,:,2) = 60;
img(:,:,3) = 60;

% Draw car 1
img(300:380,150:250,1) = 255;

% Draw car 2
img(250:340,350:470,2) = 255;

imshow(img);

imwrite(img,'Cars.jpg');