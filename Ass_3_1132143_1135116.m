x=-4:4;
y=[0,0,0,0,1,1,1,1,1];
subplot(4,1,1);
stem(x,y);
xlabel('n');
ylabel('x(n)');
p=fliplr(y);
subplot(4,1,2);
stem(x,p);
xlabel('n');
ylabel('x(-n)');
xe=0.5*(y+p);
subplot(4,1,3);
stem(x,xe);
xlabel('n');
ylabel('xeven(n)');
xo=0.5*(y-p);
subplot(4,1,4);
stem(x,xo);
xlabel('n');
ylabel('xodd(n)');