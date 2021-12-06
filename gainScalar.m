%gain scalar + polarity invert

Fs = 48000;
Ts = 1/Fs;
f = 10;
t = [0:Ts:1].';
x = sin(2*pi*f*t);
N = length(x);
s1 = 0;
b0 = 0.5;
b1 = 0.5;

%amp
dB = -6;
amp = 10^(dB/20);

%dc offset
offset = 0.5;

%polarity change
invert = -1;

for n=1:N
    y(n,1) = x(n,1)*amp*invert;   
end
plot (t,x,t,y);