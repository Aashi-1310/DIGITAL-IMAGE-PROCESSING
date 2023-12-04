im=imread("C:\Users\aashi\Desktop\rose.png");
subplot(2,2,1);
imshow(im);
title("ORIGINAL IMAGE");
mat=[1 0 0;...
    0 1 0;...
    70 70 1];
t= imtransform(im,mat,'affine');
subplot(2,2,2);
imshow(t);
title("TRANSLATION");

mat=[2 0 0;...
    0 2 0;...
    0 0 1];
s= imtransform(im,mat,'affine');
subplot(2,2,3);
imshow(s);
title("SCALING");

mat=[cosd(30) sind(30) 0;...
    -sind(30) cosd(30) 0;...
    0 0 1];
r= imtransform(im,mat,'affine');
subplot(2,2,4);
imshow(r);
title("ROTATION");

