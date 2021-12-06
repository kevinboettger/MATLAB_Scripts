% IIR Filters

clc;clear;

%butterworth filters
% n = 4; %order of the filter, # of samples of delay for feed back and feedforward paths
% Wn = [0.25,0.75]; %normalized cutoff frequency. min value of 0. 1 is nyquist.  so we are half nyquist
% 
% 
% 
% [b,a] = butter(n,Wn,'stop');
% 
% freqz(b,a)


%elliptic Filter
% n = 8;
% Rs = 60; %positive number of attenuation
% Rp = 6; %6db of ripple
% Wp = 0.5;
% 
% [b,a] = ellip(n,Rp,Rs,Wp);
% 
% freqz(b,a)

%kev basic feedback filter

Fs = 48000;
Ts = 1/Fs;
nyq = Fs/2;
t = [0:Ts:1].';
N = length(t);
x = randn(N,1);
y = zeros(N,1);
s0 = 1;
s1 = 0;

for n = 1:N
    
    y(n,1) = x(n,1)+s0+s1;
    s0 = x(n,1);
    s1 = y(n,1);
end


freqz(y)

