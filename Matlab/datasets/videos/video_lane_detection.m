clc;
clear;
close all;

% Load video
video = VideoReader('road_video.mp4');

% Create video player
player = vision.VideoPlayer;

while hasFrame(video)

    % Read frame
    frame = readFrame(video);

    % Convert to grayscale
    gray = rgb2gray(frame);

    % Gaussian filtering
    blur = imgaussfilt(gray,2);

    % Edge detection
    edges = edge(blur,'Canny');

    % Hough transform
    [H,T,R] = hough(edges);

    % Detect peaks
    P = houghpeaks(H,5);

    % Detect lines
    lines = houghlines(edges,T,R,P);

    % Display original frame
    imshow(frame);
    hold on;

    % Draw lane lines
    for k = 1:length(lines)

        xy = [lines(k).point1; lines(k).point2];

        plot(xy(:,1),xy(:,2), ...
            'LineWidth',3, ...
            'Color','yellow');

    end

    hold off;

    % Show video frame
    step(player,getframe(gca).cdata);

end

release(player);