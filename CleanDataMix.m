clear all; 
close all;
fileFolder=fullfile('D:\DATA\BabbleDensityData40Person\Train');
dirOutput=dir(fullfile(fileFolder,'*'));
Audio={dirOutput.name}';
Audio(1)=[];Audio(1)=[];
for i= 1:length(Audio)
a = audioread(['D:\DATA\BabbleDensityData40Person\Train\',Audio{i}]);
audio_name = [Audio{i}(1:end-4)];
eval([audio_name '=a;']);
clear a audio_name;
end
for j=1:length(Audio)/2
    a = eval(Audio{j}(1:end-4))+eval(Audio{length(Audio)+1-j}(1:end-4));
    filename = [Audio{j}(1:end-4),'&',Audio{length(Audio)+1-j}(1:end-4),'.wav'];  
    audiowrite(filename,a,8000);  
    clear a;              
end
for j=1:2:length(Audio)
    a = eval(Audio{j}(1:end-4))+eval(Audio{j+1}(1:end-4));
    filename = [Audio{j}(1:end-4),'&',Audio{j+1}(1:end-4),'.wav'];  
    audiowrite(filename,a,8000);  
    clear a;              
end
%8 people
a = eval(Audio{1}(1:end-4))+eval(Audio{2}(1:end-4))+eval(Audio{3}(1:end-4))+eval(Audio{4}(1:end-4))+eval(Audio{5}(1:end-4))+eval(Audio{6}(1:end-4))+eval(Audio{7}(1:end-4))+eval(Audio{8}(1:end-4));
filename = [Audio{1}(1:end-4),'&',Audio{2}(1:end-4),'&',Audio{3}(1:end-4),'&',Audio{4}(1:end-4),'&',Audio{5}(1:end-4),'&',Audio{6}(1:end-4),'&',Audio{7}(1:end-4),'&',Audio{8}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;   
a = eval(Audio{9}(1:end-4))+eval(Audio{10}(1:end-4))+eval(Audio{11}(1:end-4))+eval(Audio{12}(1:end-4))+eval(Audio{13}(1:end-4))+eval(Audio{14}(1:end-4))+eval(Audio{15}(1:end-4))+eval(Audio{16}(1:end-4));
filename = [Audio{9}(1:end-4),'&',Audio{10}(1:end-4),'&',Audio{11}(1:end-4),'&',Audio{12}(1:end-4),'&',Audio{13}(1:end-4),'&',Audio{14}(1:end-4),'&',Audio{15}(1:end-4),'&',Audio{16}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename;   
a = eval(Audio{17}(1:end-4))+eval(Audio{18}(1:end-4))+eval(Audio{19}(1:end-4))+eval(Audio{20}(1:end-4))+eval(Audio{21}(1:end-4))+eval(Audio{22}(1:end-4))+eval(Audio{23}(1:end-4))+eval(Audio{24}(1:end-4));
filename = [Audio{17}(1:end-4),'&',Audio{18}(1:end-4),'&',Audio{19}(1:end-4),'&',Audio{20}(1:end-4),'&',Audio{21}(1:end-4),'&',Audio{22}(1:end-4),'&',Audio{23}(1:end-4),'&',Audio{24}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename;   
a = eval(Audio{25}(1:end-4))+eval(Audio{26}(1:end-4))+eval(Audio{27}(1:end-4))+eval(Audio{28}(1:end-4))+eval(Audio{29}(1:end-4))+eval(Audio{30}(1:end-4))+eval(Audio{31}(1:end-4))+eval(Audio{32}(1:end-4));
filename = [Audio{25}(1:end-4),'&',Audio{26}(1:end-4),'&',Audio{27}(1:end-4),'&',Audio{28}(1:end-4),'&',Audio{29}(1:end-4),'&',Audio{30}(1:end-4),'&',Audio{31}(1:end-4),'&',Audio{32}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename;   
 %7people
a = eval(Audio{end}(1:end-4))+eval(Audio{2}(1:end-4))+eval(Audio{3}(1:end-4))+eval(Audio{4}(1:end-4))+eval(Audio{5}(1:end-4))+eval(Audio{6}(1:end-4))+eval(Audio{7}(1:end-4));
filename = [Audio{end}(1:end-4),'&',Audio{2}(1:end-4),'&',Audio{3}(1:end-4),'&',Audio{4}(1:end-4),'&',Audio{5}(1:end-4),'&',Audio{6}(1:end-4),'&',Audio{7}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{9}(1:end-4))+eval(Audio{10}(1:end-4))+eval(Audio{11}(1:end-4))+eval(Audio{12}(1:end-4))+eval(Audio{13}(1:end-4))+eval(Audio{14}(1:end-4))+eval(Audio{15}(1:end-4));
filename = [Audio{9}(1:end-4),'&',Audio{10}(1:end-4),'&',Audio{11}(1:end-4),'&',Audio{12}(1:end-4),'&',Audio{13}(1:end-4),'&',Audio{14}(1:end-4),'&',Audio{15}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename;   
a = eval(Audio{17}(1:end-4))+eval(Audio{18}(1:end-4))+eval(Audio{19}(1:end-4))+eval(Audio{20}(1:end-4))+eval(Audio{21}(1:end-4))+eval(Audio{22}(1:end-4))+eval(Audio{23}(1:end-4));
filename = [Audio{17}(1:end-4),'&',Audio{18}(1:end-4),'&',Audio{19}(1:end-4),'&',Audio{20}(1:end-4),'&',Audio{21}(1:end-4),'&',Audio{22}(1:end-4),'&',Audio{23}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename;   
a = eval(Audio{25}(1:end-4))+eval(Audio{26}(1:end-4))+eval(Audio{27}(1:end-4))+eval(Audio{28}(1:end-4))+eval(Audio{29}(1:end-4))+eval(Audio{30}(1:end-4))+eval(Audio{31}(1:end-4));
filename = [Audio{25}(1:end-4),'&',Audio{26}(1:end-4),'&',Audio{27}(1:end-4),'&',Audio{28}(1:end-4),'&',Audio{29}(1:end-4),'&',Audio{30}(1:end-4),'&',Audio{31}(1:end-4),'.wav'];  
audiowrite(filename,a,8000); 
clear a filename; 
%6people
a = eval(Audio{end}(1:end-4))+eval(Audio{end-1}(1:end-4))+eval(Audio{end-2}(1:end-4))+eval(Audio{end-3}(1:end-4))+eval(Audio{end-14}(1:end-4))+eval(Audio{1}(1:end-4));
filename = [Audio{end}(1:end-4),'&',Audio{end-1}(1:end-4),'&',Audio{end-2}(1:end-4),'&',Audio{end-3}(1:end-4),'&',Audio{end-14}(1:end-4),'&',Audio{1}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{end-3}(1:end-4))+eval(Audio{end-4}(1:end-4))+eval(Audio{end-5}(1:end-4))+eval(Audio{end-7}(1:end-4))+eval(Audio{end-13}(1:end-4))+eval(Audio{10}(1:end-4));
filename = [Audio{end-3}(1:end-4),'&',Audio{end-4}(1:end-4),'&',Audio{end-5}(1:end-4),'&',Audio{end-7}(1:end-4),'&',Audio{end-13}(1:end-4),'&',Audio{10}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{end-6}(1:end-4))+eval(Audio{end-7}(1:end-4))+eval(Audio{end-8}(1:end-4))+eval(Audio{end-9}(1:end-4))+eval(Audio{end-15}(1:end-4))+eval(Audio{11}(1:end-4));
filename = [Audio{end-6}(1:end-4),'&',Audio{end-7}(1:end-4),'&',Audio{end-8}(1:end-4),'&',Audio{end-9}(1:end-4),'&',Audio{end-15}(1:end-4),'&',Audio{11}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{end-9}(1:end-4))+eval(Audio{end-10}(1:end-4))+eval(Audio{end-11}(1:end-4))+eval(Audio{end-13}(1:end-4))+eval(Audio{end-16}(1:end-4))+eval(Audio{12}(1:end-4));
filename = [Audio{end-9}(1:end-4),'&',Audio{end-10}(1:end-4),'&',Audio{end-11}(1:end-4),'&',Audio{end-13}(1:end-4),'&',Audio{end-16}(1:end-4),'&',Audio{12}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
%5people
a =eval(Audio{end-1}(1:end-4))+eval(Audio{end-2}(1:end-4))+eval(Audio{end-3}(1:end-4))+eval(Audio{end-4}(1:end-4))+eval(Audio{2}(1:end-4));
filename = [Audio{end-1}(1:end-4),'&',Audio{end-2}(1:end-4),'&',Audio{end-3}(1:end-4),'&',Audio{end-4}(1:end-4),'&',Audio{2}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a =eval(Audio{end-5}(1:end-4))+eval(Audio{end-6}(1:end-4))+eval(Audio{end-7}(1:end-4))+eval(Audio{end-8}(1:end-4))+eval(Audio{3}(1:end-4));
filename = [Audio{end-5}(1:end-4),'&',Audio{end-6}(1:end-4),'&',Audio{end-7}(1:end-4),'&',Audio{end-8}(1:end-4),'&',Audio{3}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a =eval(Audio{end-9}(1:end-4))+eval(Audio{end-10}(1:end-4))+eval(Audio{end-11}(1:end-4))+eval(Audio{end-12}(1:end-4))+eval(Audio{4}(1:end-4));
filename = [Audio{end-9}(1:end-4),'&',Audio{end-10}(1:end-4),'&',Audio{end-11}(1:end-4),'&',Audio{end-12}(1:end-4),'&',Audio{4}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a =eval(Audio{end-13}(1:end-4))+eval(Audio{end-14}(1:end-4))+eval(Audio{end-15}(1:end-4))+eval(Audio{end-16}(1:end-4))+eval(Audio{5}(1:end-4));
filename = [Audio{end-13}(1:end-4),'&',Audio{end-14}(1:end-4),'&',Audio{end-15}(1:end-4),'&',Audio{end-16}(1:end-4),'&',Audio{5}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
%4people
a = eval(Audio{1}(1:end-4))+eval(Audio{3}(1:end-4))+eval(Audio{5}(1:end-4))+eval(Audio{7}(1:end-4));
filename = [Audio{1}(1:end-4),'&',Audio{3}(1:end-4),'&',Audio{5}(1:end-4),'&',Audio{7}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{2}(1:end-4))+eval(Audio{4}(1:end-4))+eval(Audio{6}(1:end-4))+eval(Audio{8}(1:end-4));
filename = [Audio{2}(1:end-4),'&',Audio{4}(1:end-4),'&',Audio{6}(1:end-4),'&',Audio{8}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{1}(1:end-4))+eval(Audio{2}(1:end-4))+eval(Audio{3}(1:end-4))+eval(Audio{4}(1:end-4));
filename = [Audio{1}(1:end-4),'&',Audio{2}(1:end-4),'&',Audio{3}(1:end-4),'&',Audio{4}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{end}(1:end-4))+eval(Audio{end-1}(1:end-4))+eval(Audio{end-2}(1:end-4))+eval(Audio{end-3}(1:end-4));
filename = [Audio{end}(1:end-4),'&',Audio{end-1}(1:end-4),'&',Audio{end-2}(1:end-4),'&',Audio{end-3}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{9}(1:end-4))+eval(Audio{11}(1:end-4))+eval(Audio{13}(1:end-4))+eval(Audio{15}(1:end-4));
filename = [Audio{9}(1:end-4),'&',Audio{11}(1:end-4),'&',Audio{13}(1:end-4),'&',Audio{15}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{10}(1:end-4))+eval(Audio{12}(1:end-4))+eval(Audio{14}(1:end-4))+eval(Audio{16}(1:end-4));
filename = [Audio{10}(1:end-4),'&',Audio{12}(1:end-4),'&',Audio{14}(1:end-4),'&',Audio{16}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{5}(1:end-4))+eval(Audio{6}(1:end-4))+eval(Audio{7}(1:end-4))+eval(Audio{8}(1:end-4));
filename = [Audio{5}(1:end-4),'&',Audio{6}(1:end-4),'&',Audio{7}(1:end-4),'&',Audio{8}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{end-4}(1:end-4))+eval(Audio{end-5}(1:end-4))+eval(Audio{end-6}(1:end-4))+eval(Audio{end-7}(1:end-4));
filename = [Audio{end-4}(1:end-4),'&',Audio{end-5}(1:end-4),'&',Audio{end-6}(1:end-4),'&',Audio{end-7}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
%3people
a = eval(Audio{1}(1:end-4))+eval(Audio{3}(1:end-4))+eval(Audio{5}(1:end-4));
filename = [Audio{1}(1:end-4),'&',Audio{3}(1:end-4),'&',Audio{5}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{2}(1:end-4))+eval(Audio{4}(1:end-4))+eval(Audio{6}(1:end-4));
filename = [Audio{2}(1:end-4),'&',Audio{4}(1:end-4),'&',Audio{6}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
a = eval(Audio{1}(1:end-4))+eval(Audio{end-2}(1:end-4))+eval(Audio{end-4}(1:end-4));
filename = [Audio{1}(1:end-4),'&',Audio{end-2}(1:end-4),'&',Audio{end-4}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
a = eval(Audio{end-1}(1:end-4))+eval(Audio{end-3}(1:end-4))+eval(Audio{end-5}(1:end-4));
filename = [Audio{end-1}(1:end-4),'&',Audio{end-3}(1:end-4),'&',Audio{end-5}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
a = eval(Audio{7}(1:end-4))+eval(Audio{9}(1:end-4))+eval(Audio{11}(1:end-4));
filename = [Audio{7}(1:end-4),'&',Audio{9}(1:end-4),'&',Audio{11}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename;  
a = eval(Audio{8}(1:end-4))+eval(Audio{10}(1:end-4))+eval(Audio{12}(1:end-4));
filename = [Audio{8}(1:end-4),'&',Audio{10}(1:end-4),'&',Audio{12}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
a = eval(Audio{11}(1:end-4))+eval(Audio{end-12}(1:end-4))+eval(Audio{end-14}(1:end-4));
filename = [Audio{11}(1:end-4),'&',Audio{end-12}(1:end-4),'&',Audio{end-14}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 
a = eval(Audio{end-11}(1:end-4))+eval(Audio{end-13}(1:end-4))+eval(Audio{end-15}(1:end-4));
filename = [Audio{end-11}(1:end-4),'&',Audio{end-13}(1:end-4),'&',Audio{end-15}(1:end-4),'.wav'];  
audiowrite(filename,a,8000);  
clear a filename; 