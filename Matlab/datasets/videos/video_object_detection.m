clc;
clear;
close all;

% Read video
video = VideoReader('highway_drive.mp4');

% Vehicle detector
detector = vision.CascadeObjectDetector();

% Video player
player = vision.VideoPlayer;

while hasFrame(video)

    % Read frame
    frame = readFrame(video);

    % Detect vehicles
    bbox = step(detector,frame);

    % Draw bounding boxes
    result = insertShape(frame, ...
        'Rectangle', ...
        bbox, ...
        'Color','green', ...
        'LineWidth',3);

    % Display result
    step(player,result);

end

release(player);