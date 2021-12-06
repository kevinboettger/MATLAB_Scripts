%serial filters LP then HP

Fs = 48000;
Ny = Fs/2;
Ts = 1/Fs;
t = [0:Ts:1].';
N = length(t);
x = randn(N,1);
w = zeros(N,1);
s1 = 0;

for n = 1:N
    w(n,1) = x(n,1)+s1;
    s1 = x(n,1);
end

freqz(w)

s1 = 0;

for n = 1:N
    y(n,1) = w(n,1)+(-1)*s1;
    s1=w(n,1);
end

figure;
freqz(y)
