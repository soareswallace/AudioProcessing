clear all
recObj = audiorecorder(44100, 16, 1);
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
myRecording = getaudiodata(recObj);
interval = 0:0.10:10;
exp_decay = exp(-interval);
echo_filter = [0,8*exp_decay zeros(1, 9000) 0,6*exp_decay zeros(1, 9000) 0,4*exp_decay zeros(1, 9000) 0,3*exp_decay zeros(1, 9000) 0,2*exp_decay zeros(1,9000) 0,1*exp_decay zeros(1, 9000)];
myRecording = transpose(myRecording);
y = conv(myRecording, echo_filter);

sound(y, 44100, 16);
figure(1);
plot(myRecording);
figure(2);
plot(y);
figure(3)
plot(echo_filter);
figure(4);
plot(exp_decay);
