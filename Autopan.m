clear; clc;

dukeFile = 'audio_duke.wav'
[sig,Fs]=audioread(dukeFile);

%sound(sig,Fs,24);
%plot(sig);
f = 1; %frequency of lfo
t = [0:length(sig)-1]*(1/Fs); %time of the length of our signal -1 sample
t=t(:); %makes it a column vector

%panvalues 
% 0 = center
%-100 = hard left
%100 = hard right

%panValue = 100; % if panValue is a scalar, constant panning
panValue = 100*sin(2*pi*f*t); % if pan value is an array, we can create autopan effect
x = panValue/200+0.5;

%squarelaw panning

rightAmp = sqrt(x);
leftAmp = sqrt(1-x);


%create output signal
stereoSig = [leftAmp.*sig,rightAmp.*sig];
sound(stereoSig,Fs,24);



