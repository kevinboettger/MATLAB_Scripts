%sinusoid

%variables
%sampling Rate
Fs = 48000;
%sampling Period
Ts = 1/Fs;
%frequency
f = 3;
%dB  gain value


%static amplitude
amp = 0.5;
%time from 0 to 1 samples every Ts sampling period
t = 0:Ts:1; 




%Sine Wave Signal
in = sin(2*pi*f*t);

for sample = 1:length(in)
    out(sample,1) = in(sample,1);
end


%plot function

plot (t,out);