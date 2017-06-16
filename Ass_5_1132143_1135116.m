a =imread('C:\Users\Ahmed Abd El Magid\Downloads\signals prj\hidden_img.png');
b=flip(a,2);
ao=0.5*(a-b) ;
hao= 10*ao([1:1544],[1:1570],[1:3]);
subplot(1,2,1);
image(a);
subplot(1,2,2);
image(hao);