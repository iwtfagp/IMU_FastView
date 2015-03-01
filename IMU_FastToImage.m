close all;clear all;clc;
list = dir('*.txt');
header={'Left Hip','Right Hip','Left Knee','Right Knee',    ...
'Back Roll','Back yaw','Back Pitch',                        ...
'Left Thigh Roll','Left Thigh yaw','Left Thigh Pitch',      ...
'Right Thigh Roll','Right Thigh yaw','Right Thigh Pitch',   ...
'Left Shank Roll','Left Shank yaw','Left Shank Pitch',      ...
'Right Shank Roll','Right Shank yaw','Right Shank Pitch'}

for fileNum = 1:size(list)
    FileName = list(fileNum).name;
    data=load(FileName);

    for i = 1:4
        set(gcf,'numbertitle','off')      
        set(gcf,'name',FileName)
        subplot(2,2, i)
        plot(data(:,i))
        title(header(i))
    end
    saveas(gcf,[strtok(FileName, '.'),'.jpg']);
end
close all;