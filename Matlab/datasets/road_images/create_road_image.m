clc;
clear;
close all;

img = uint8(zeros(480,640,3));

% Road background
img(:,:,1) = 50;
img(:,:,2) = 50;
img(:,:,3) = 50;

% Left lane
for y = 200:479

    x = round(0.4*y - 50);

    img(y,x:x+5,:) = 255;

end

% Right lane
for y = 200:479

    x = round(-0.4*y + 650);

    img(y,x:x+5,:) = 255;

end

imshow(img);

imwrite(img,'Road_Image.jpg');