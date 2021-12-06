%linear Fade

Fs = 48000;
numOfSamples = Fs*1; % 1 second signal

%Generate White Noise

noise = 0.2*randn(numOfSamples,1);


% %create linear fade in
% linFadeIn = linspace(0,1,numOfSamples/4);
% linFadeIn = linFadeIn(:);
% 
% %create linear fade out
% linFadeOut = linspace(1,0,numOfSamples);
% linFadeOut = linFadeOut(:);


%create quadratic fade in
quadFadeIn = [linspace(0,1,numOfSamples)].^(1/2);
quadFadeIn = quadFadeIn(:);

out = noise;
for sample = 1:length(quadFadeIn)
    
    out(sample,1) = noise(sample,1)*quadFadeIn(sample,1);    
    
end

plot(out);
sound (out);

