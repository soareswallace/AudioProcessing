% Record your voice for 5 seconds.
%audiorecorder(Fs,nBits,nChannels) 
%sets the sample rate Fs (in Hz), the sample size nBits, and the number of channels nChannels
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
myRecording = getaudiodata(recObj);
plot(myRecording);