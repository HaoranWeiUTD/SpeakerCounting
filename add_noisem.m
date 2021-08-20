function [Y,NOISE] = add_noisem(X,filepath_name,SNR,fs)
%Modifyed by Haoran Wei on Feb 7, 2018
% add_noisem add determinated noise to a signal.
% X is signal, and its sample frequency is fs;
% filepath_name is NOISE's path and name, and the SNR is signal to noise ratio in dB.
%其中X是纯信号，filepath_name是指定噪声文件（.wav）的路径和文件名，SNR是要求的信噪比，fs是信号X的采样频率，Y是带噪信号，NOISE是叠加在信号上的噪声。
%无论噪声、纯信号哪个长，都可以处理；audioread替换了waveread；
[wavin,fs1]=audioread(filepath_name);
if fs1~=fs
    wavin=resample(wavin,fs,fs1);
end
nx=size(X,1);
NOISE = [];
if nx<=length(wavin)
    NOISE=wavin(1:nx);
else
    num = fix(nx/length(wavin));
    left = rem(nx,length(wavin));
    for i=1:num
    NOISE = [NOISE;wavin];
    end
    NOISE = [NOISE;wavin(1:left)];
end
NOISE=NOISE-mean(NOISE);
signal_power = 1/nx*sum(X.*X);
noise_variance = signal_power / ( 10^(SNR/10) );
NOISE=sqrt(noise_variance)/std(NOISE)*NOISE;
Y=X+NOISE;