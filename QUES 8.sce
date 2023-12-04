image=imread("C:\Users\aashi\Desktop\rose.png");
img=imnoise(image,'gaussian');
subplot(2,2,1), imshow(img), title('Original Image');
avgImg=imfilter(img, fspecial('average',3));
subplot(2,2,2), imshow(avgImg), title('Average Filter Image');

//high pass filter - laplacian filter
//image=imread("C:\Users\aashi\Desktop\rose.png");
subplot(2,2,3), imshow(image), title('Original Image');
filterImg=imfilter(image, fspecial('laplacian'));
subplot(2,2,4), imshow(filterImg), title('Laplacian Filter Image');

