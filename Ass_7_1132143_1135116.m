[y,fs]=audioread('C:\Users\Ahmed Abd El Magid\Downloads\signals prj\noisy.wav');
subplot(4,1,1);
plot(y);
%sound(y,fs);
x=fft(y);
fsc=(1/40000)*x;
x_mag=abs(x);
fsc_mag=abs(fsc);
subplot(4,1,3);
plot(fsc_mag);
for i= 1:40000
    if(abs(x(i))>100)
        x(i)=0;
        x_mag(i)=0;
        fsc_mag(i)=0;
    end
end
subplot(4,1,4);
plot(fsc_mag);
z=100*ifft(x);
subplot(4,1,2);
plot(z);
sound(z,fs);