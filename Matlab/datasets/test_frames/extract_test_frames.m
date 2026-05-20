clc;
clear;
close all;

% Read input video
video = VideoReader('road_video.mp4');

% Create output folder
output_folder = 'test_frames';

if ~exist(output_folder,'dir')
    mkdir(output_folder);
end

frame_count = 1;

while hasFrame(video)

    % Read frame
    frame = readFrame(video);

    % Resize frame
    frame = imresize(frame,[480 640]);

    % Generate filename
    filename = sprintf('frame_%03d.jpg',frame_count);

    % Full path
    full_path = fullfile(output_folder,filename);

    % Save frame
    imwrite(frame,full_path);

    fprintf('Saved %s\\n',filename);

    frame_count = frame_count + 1;

end

disp('All frames extracted successfully');