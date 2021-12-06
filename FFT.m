%FFT of Simple Sinusoid

%Parameters:



N=64;  


zpf=8;
T =1;   %Sampling Rate
A =1;   %amplitude
phi = 0;
f = 0.25+0.5/N;
n = [0:N-1];

% x = cos(wxnT)
x = [cos(2*pi*f*n*T),zeros(1,(zpf-1)*N)];

X = fft(x);

%plot time date:

% figure(1);
% subplot(3,1,1);
% plot(n,x,'*k');
% nfft = zpf*N;
% fni = [0:1.0/nfft:1-1.0/nfft];  %interpolate time axis
% hold on;
% plot(ni,A*cos(2*pi*f*fni*T+phi),'-k');grid off;
% title('Sinusoid at 1/4 the Smapling Rate');
% xlabel('Time(samples)');
% ylabel('Amplitude');
% text (-8,1,'a)');
% hold off;

%plot spectral magnitude:

magX=abs(X);
fn = [0:1/N:1-1/N];
subplot(3,1,2);
plot(fni,magX,'ok');grid on;
xlabel('Normalized Frequency(cycles per sample))');
ylabel('Magnitude(Linear)');
text(-.11,40,'b)');


