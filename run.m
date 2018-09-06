%Initialization
clear ; close all; clc

load(fullfile('States','initial.txt'));
load(fullfile('States','final.txt'));

[path, steps] = IDA_star( initial, final );
fprintf('Steps from Initial to Final: \n');
disp(steps);
fprintf('Path from Initial to Final: \n');
disp(path);