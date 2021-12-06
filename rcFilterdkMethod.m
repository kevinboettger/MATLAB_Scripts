% analog modeled lopass filter with DK method

Fs =48000;

Ts = 1/Fs;

%Components

C1 = 82*10^-12;
R1 = Ts/(2*C1);
R2 = 240*10^3;

fc = 1/(2*pi*R2*C1);

Vi = [1;zeros(2047,1)];
N = length(Vi);
G = (1/R1+1/R2);

%filter coefficients
b0 =1/(G*R2);
b1 = 1/G;

%state
x1 = 0;




for n=1:N
    
    Vo(n,1) = b0*Vi(n,1)+b1*x1;
    x1 = (2/R1)*Vo(n,1) - x1;
    
end

freqz(Vo);
