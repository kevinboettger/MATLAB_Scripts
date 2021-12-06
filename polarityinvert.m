

%sampling rate
Fs = 48000;

%timeperiod

t = 0:1/Fs:1;

%scalar
a = 1;
b = 2;

%phase
phi = 0;

%frequency
f = 400;


%sin1
s1 = a*sin(2*pi*f*t+0);
%sin2
s2 = b*sin(2*pi*f*t+pi);


%summation of signal

s3 = s1+s2;

%should result in 0 line
% 
% plot(t,s1,t,s2,t,s3);
% xlabel('Time(sec)');
% ylabel('Amplitude');
% title('Image of two sine waves with invert polarity');
% legend('s1','s2','s3');

X = fft(s1);

plot(f,X);

