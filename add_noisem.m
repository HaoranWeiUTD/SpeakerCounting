function [Y,NOISE] = add_noisem(X,filepath_name,SNR,fs)
%Modifyed by Haoran Wei on Feb 7, 2018
% add_noisem add determinated noise to a signal.
% X is signal, and its sample frequency is fs;
% filepath_name is NOISE's path and name, and the SNR is signal to noise ratio in dB.
%����X�Ǵ��źţ�filepath_name��ָ�������ļ���.wav����·�����ļ�����SNR��Ҫ�������ȣ�fs���ź�X�Ĳ���Ƶ�ʣ�Y�Ǵ����źţ�NOISE�ǵ������ź��ϵ�������
%�������������ź��ĸ����������Դ���audioread�滻��waveread��
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