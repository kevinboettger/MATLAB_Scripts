%digital summing

%initial perameters

Fs= 48000;
Ts = 1/Fs;
t = 0:Ts:1;  t=t(:);
t1 = 0:Ts:2; t1=t1(:);

%frequencies
f1 = 440;
f2 = 880;

%synthesis

sig1 = 0.5*sin(2*pi*f1*t);
sig2 = 0.5*sin(2*pi*f2*t1);




for n = 1:length(sig1)
    
    y(n,1) = sig1(n,1)*sig2(n,1);
    
end

sound(y,Fs);
plot(t,y);



