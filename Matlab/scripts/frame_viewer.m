clc;
clear;
close all;

folder = 'D:\VLSI\FPGA_ADAS_Vision_Accelerator\Software\python_tools\frames';

files = dir(fullfile(folder,'*.jpg'));

for k = 1:length(files)

    filename = fullfile(folder, files(k).name);

    img = imread(filename);

    imshow(img);

    title(['Frame Number: ', num2str(k)]);

    pause(0.03);

end