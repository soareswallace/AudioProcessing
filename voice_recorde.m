% Record your voice for 5 seconds.
%audiorecorder(Fs,nBits,nChannels) 
%sets the sample rate Fs (in Hz), the sample size nBits, and the number of channels nChannels
%creates an 8000 Hz, 8-bit, 1-channel audiorecorder object.
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
myRecording = getaudiodata(recObj);
plot(myRecording);
%if we divide the length of the audio by the record sample rate, that is
%8000 we will get the duration of the recording.
length(myRecording)/8000;
segment = myRecording(8000*2 : 8000*4);
plot(segment);