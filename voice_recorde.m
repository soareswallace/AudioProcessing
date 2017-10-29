% Record your voice for 5 seconds.
%audiorecorder(Fs,nBits,nChannels) 
%sets the sample rate Fs (in Hz), the sample size nBits, and the number of channels nChannels
%creates an 8000 Hz, 8-bit, 1-channel audiorecorder object.
%if we divide the length of the audio by the record sample rate, that is
%8000 we will get the durati=on of the recording.
recObj = audiorecorder(44100, 16, 2);
disp('Start speaking.')
recordblocking(recObj, 10);
play(recObj);
disp('End of Recording.');
myRecording = getaudiodata(recObj);
plot(myRecording);