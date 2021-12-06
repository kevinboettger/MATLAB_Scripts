% creation of a basic filter

% start with white noise

Fs = 48000;
Ts = 1/Fs;
f = 23000;
t = [0:Ts:1].';
x = sin(2*pi*f*t);
N = length(x);
a1 = 0.5;
b1 = 0.5;
s1 = 0;





%Impulse Input
% x = [1;0;0;0;0];
% N = 5;

y = zeros(N,1);
% 
% prevSample = 0;
% 
for n = 1:N
    
        y(n,1) = a1 * x(n,1) + b1*s1;
        s1 = x(n,1);

    
end
%impulse response
% h = [0.5,0.5];
% 
% y = conv(x,h);
% 
% freqz(h);

plot(t,x,'-b',t,y,'-r');




    









