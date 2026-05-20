clc;
clear;
close all;

% Read image
img = imread('parking.jpg');

% Resize image
img = imresize(img,[720 1280]);

% Convert to grayscale
gray = rgb2gray(img);

% Gaussian filtering
filtered = imgaussfilt(gray,2);

% Edge detection
edges = edge(filtered,'Sobel');

% Hough transform
[H,T,R] = hough(edges);

% Detect peaks
peaks = houghpeaks(H,5);

% Extract lines
lines = houghlines(edges,T,R,peaks);

% Display image
figure;
imshow(img);
hold on;

% Draw parking lines
for k = 1:length(lines)

    xy = [lines(k).point1;
          lines(k).point2];

    plot(xy(:,1),xy(:,2), ...
        'LineWidth',2, ...
        'Color','green');

end

title('Parking Slot Detection');

hold off;