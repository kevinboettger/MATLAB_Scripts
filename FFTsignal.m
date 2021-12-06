clear

Fs = 48000;
Ts = 1/Fs;
t = [0:Ts:1].';
f = 10;

x = sin(2*pi*f*t);
% [sf,Fs] = audioread('/Users/kevinboettger/Desktop/piano_Solo.mp3');


magX = abs(X);

X = fft(x);
plot(t,magX);