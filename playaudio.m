% [duke,Fs] = audioread('audio_duke.wav');
% 
% 
% duke_rev = duke(end:-1:1);
% plot(duke);
% 
% duke_fft = fft(duke,Fs);
% plot(duke_fft);
Fs = 48000;
f = 440;
t = 1000;

simple_sin = sin(2*pi*f*t);

plot(simple_sin,1)