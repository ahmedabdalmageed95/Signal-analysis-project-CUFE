[y,fs]=audioread('C:\Users\Ahmed Abd El Magid\Downloads\signals prj\hidden_message.wav');
disp(fs);
sound (y,fs);
plot(y);
z=flipud(y);
yo=0.5*(y-z);
hyo=200*yo([1:26978]);
pause
sound(hyo,fs);