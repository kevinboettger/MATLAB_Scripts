% Sound Reversal

[sf,Fs] = audioread('/Users/kevinboettger/Desktop/speech-male.wav');

%absolute value of function
magSig = abs(sf);
%find the maximum value
maxValue = max(magSig)

plot (magSig);






