% Basic Filter.m

Fs = 48000;
Ts = 1/Fs;
f = 8000;
t = [0:Ts:1].';
x = sin(2*pi*f*t);


%filter coeficients
b0 = 0.5;
b1 = -0.5;


N = length(x);

%state variable
s1 = 0;



for n=1:N
    
    % y[n] =   0.5*x[n] + 0.5*x[n-1]
    
    y(n,1)=  b0 * x(n,1) + b1 * s1;
    s1 = x(n,1)
    
end
%plot windows
b = [b0,b1];
B0=0.333333;
B1=0.333333;
B2=0.333333;
s1 = 0;
s2 = 0;

for n=1:N
    
    % y[n] =   0.5*x[n] + 0.5*x[n-1]
    
    y(n,1)=  B0 * x(n,1) + B1 * s1 + B2 *s2;
    s2 = s1;
    s1 = x(n,1);
    
    
end
%plot (t,x,t,y);

 %B = [B0,B1,B2]; 
 %freqz(B);
 
 
 %%% IIR Filter
 s1 = 0;
 b0=0.5;
 a1=0.5;
 
 for n=1:N 
     
     %y[n] = b0*x[n]+ a0 *y[n-1]
    y(n,1) = b0 *x(n,1) +a1* s1;
    s1 = y(n,1);
     
 end
 b = b0;
 a = [1,-a1];
 
freqz(b,a);
