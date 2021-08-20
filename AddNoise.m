clear all; 
close all;
SNR =5;%%
fileFolder=fullfile('Train\Clean'); %%
dirOutput=dir(fullfile(fileFolder,'*'));
Audio={dirOutput.name}';
Audio(1)=[];Audio(1)=[];
filepath_name = 'factory.wav';
for i= 1:length(Audio)
[X fs]=audioread(['Train\Clean\',Audio{i}]);%%
[Y,NOISE] = add_noisem(X,filepath_name,SNR,fs);
audiowrite(Audio{i},Y,8000);  
clear X fs Y NOISE audio_name;
end