close all;clear all;clc;

[FileName, PathName, FilterIndex] = uigetfile('.txt');
FileName=[PathName FileName];

data=load(FileName);

%fid=fopen(FileName);
%d=textread(FileName,'','headerlines',10);
%data=textscan(fid,'%s%s%s%s%s%s%s%s%s%s%s%s');

header={'Left Hip','Right Hip','Left Knee','Right Knee',    ...
'Back Roll','Back yaw','Back Pitch',                        ...
'Left Thigh Roll','Left Thigh yaw','Left Thigh Pitch',      ...
'Right Thigh Roll','Right Thigh yaw','Right Thigh Pitch',   ...
'Left Shank Roll','Left Shank yaw','Left Shank Pitch',      ...
'Right Shank Roll','Right Shank yaw','Right Shank Pitch'}

for i = 1:4
%     subplot(2,i/2+1, mod(i,2)+1)
%     plot(data(:,i))
%     title(header(i))
i/2+1
end


