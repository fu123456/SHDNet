% clear old variables
clear all;
close all;
clc;

if ~exist('results')
    mkdir('results')
end

img=im2double(imread('data/03449.png'));

% The two parameters are key to obtain better masks.
% Different values of Ts and Tv are often set to produce good results.
% Ts is the threshold value for Saturation channel; Tv is the threshold value for
% Value channel.
% If you want to obtain better results, please modify the following parameters by yourself.

Ts=0.35;
Tv=0.85;

mask=sh_detection(img,Ts,Tv);

% show result
figure(1);imshow(img);title('input image');
figure(2);imshow(mask);title('mask map');

% save results
% imwrite(mask,'/home/fg/Nutstore_files/Nutstore/ACMMM2020/images/results_on_testing_dataset/results/tmi2019/00079_temp.png');
