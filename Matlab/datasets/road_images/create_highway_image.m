clc;
clear;
close all;

img = uint8(zeros(720,1280,3));

% Asphalt color
img(:,:,1) = 60;
img(:,:,2) = 60;
img(:,:,3) = 60;

% Draw lanes
for y = 300:719

    x1 = round(0.3*y);

    x2 = round(1280 - 0.3*y);

    img(y,x1:x1+6,:) = 255;

    img(y,x2:x2+6,:) = 255;

end

imshow(img);

imwrite(img,'Highway_Image.jpg');