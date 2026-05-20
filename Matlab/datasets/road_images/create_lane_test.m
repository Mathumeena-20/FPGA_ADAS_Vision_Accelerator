clc;
clear;
close all;

img = uint8(zeros(480,640,3));

% Background
img(:,:,1) = 40;
img(:,:,2) = 40;
img(:,:,3) = 40;

% Lane lines
for i = 1:300

    img(480-i,200+i,:) = 255;

    img(480-i,440-i,:) = 255;

end

imshow(img);

imwrite(img,'Lane_Image.jpg');