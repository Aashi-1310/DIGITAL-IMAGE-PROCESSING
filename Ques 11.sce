image=imread("C:\Users\aashi\Desktop\images.png");
img=rgb2gray(image);
s1=imcreatese('rect',4,4);
s2=imcreatese('cross',7,7);
/*dial1=imdilate(img,s1);
dial2=imdilate(img,s2);
subplot(2, 2, 1), imshow(img), title('Original Image');
subplot(2, 2, 2), imshow(dial1), title('Rectangle Structuring element');
subplot(2, 2, 3), imshow(dial2), title('Cross Structuring element');
*/

er1=imerode(img,s1);
er2=imerode(img,s2);
subplot(2, 2, 1), imshow(img), title('Original Image');
subplot(2, 2, 2), imshow(er1), title('Rectangle Structuring element');
subplot(2, 2, 3), imshow(er2), title('Cross Structuring element');
