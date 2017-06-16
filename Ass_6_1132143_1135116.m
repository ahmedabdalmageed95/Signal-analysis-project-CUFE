n=[10,20,100,1000];
for i=1:length(n)
if (i==1)
x=-3:13;
y=1:17;
z=17;
elseif(i==2)
 x=-3:25;
y=1:29 ;
z=29;
elseif(i==3)
 x=-3:103;
y=1:107 ;
z=107;
elseif(i==4)
 x=-3:1005;
y=1:1009; 
z=1009; 
end

for q=1:z
if ((x(q)>=-2&&x(q)<=2) ||(x(q)>=n(i)-2&&x(q)<=n(i)+2))
    y(q)=1;
else
    y(q)=0;
end
end
q=fft(y)/n(i);
subplot(4,2,i)
stem(x,y)
subplot(4,2,i+4)
stem(x,q)
end

%the signal becomes closer to a continious signal as N increases 
% the amplitude decreases

