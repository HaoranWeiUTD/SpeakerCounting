clear all; 
close all;

fileFolder=fullfile('D:\DATA\SpeechOcean\USandUKSpeaker');
dirOutput=dir(fullfile(fileFolder,'*'));%如果存在不同类型的文件，用‘*’读取所有，如果读取特定类型文件，'.'加上文件类型，例如用‘.jpg’
DeviceNames={dirOutput.name}';
DeviceNames(1)=[];DeviceNames(1)=[];
for i=1:length(DeviceNames)
    fileFolder=fullfile('D:\DATA\SpeechOcean\USandUKSpeaker\',DeviceNames{i});
    dirOutput=dir(fullfile(fileFolder,'*'));
    Speaker={dirOutput.name}';
    Speaker(1)=[];Speaker(1)=[];
    for j=1:length(Speaker)
        fileFolder=fullfile('D:\DATA\SpeechOcean\USandUKSpeaker\',DeviceNames{i},'\',Speaker{j});
        dirOutput=dir(fullfile(fileFolder,'*'));
        Audio={dirOutput.name}';
        Audio(1)=[];Audio(1)=[];
        a=[];
        for m=1:length(Audio)
            [temp_audio,Fs] = audioread(['D:\DATA\SpeechOcean\USandUKSpeaker\',DeviceNames{i},'\',Speaker{j},'\',Audio{m}]);
            temp_audio=resample(temp_audio,8000,Fs);
            a = [a; temp_audio]; 
        end
        a = a(1:8000*60*20);
        filename = [DeviceNames{i},'_',Speaker{j},'.wav'];  
        audiowrite(filename,a,8000);  
        clear a Fs;              
    end        
end