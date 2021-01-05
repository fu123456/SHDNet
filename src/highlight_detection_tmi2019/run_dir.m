clear all;
close all;
clc;

% set your data dir
DATA_DIR='./';

% result dir
if ~exist('results_all')
    mkdir('results_all')
end
% all subdirs of DATA_DIR
names{1}='data';

% parameter
Ts=0.35;
Tv=0.85;

for i=1:numel(names)
    dataDIR=fullfile(DATA_DIR,names{i});
    dataFiles=dir(fullfile(dataDIR,'*.png'));
    for j=1:numel(dataFiles)
        [~,name,~]=fileparts(fullfile(dataDIR,dataFiles(j).name));
        disp(name);
        img=im2double(imread(fullfile(dataDIR,dataFiles(j).name)));
        mask=sh_detection(img,Ts,Tv);
        result_path=['results_temp/' names{i} '_' 'Ts' num2str(Ts) '_' 'Tv' num2str(Tv)];
        if ~exist(result_path)
            mkdir(result_path)
        end
        imwrite(mask,[result_path '/' name '.png']);
    end
end
