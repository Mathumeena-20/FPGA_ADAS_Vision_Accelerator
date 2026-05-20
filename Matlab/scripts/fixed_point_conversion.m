clc;
clear;
close all;

% Floating-point value
a = 3.14159;

% Convert to fixed point
fixed_data = fi(a,1,16,8);

disp('Fixed Point Value');

disp(fixed_data);