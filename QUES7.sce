//image restoration
image=imread("C:\Users\aashi\Desktop\landscape.jpg");
img=rgb2gray(image);
noise=imnoise(img,'speckle');
medImg=immedian(noise,3);
subplot(2,2,1), imshow(image), title('Original Image');          //original image
subplot(2,2,2), imshow(img), title('Grayscale Image');           //grayscale image
subplot(2,2,3), imshow(noise), title('Noisy Image');
subplot(2,2,4), imshow(medImg), title('Median Filter Image');

//salt and pepper noise
image=imread("C:\Users\aashi\Desktop\blue flower.jpeg");
subplot(2,2,1), imshow(image), title('Original Image');
img=rgb2gray(image);
subplot(2,2,2), imshow(img), title('Grayscale Image');
noise=imnoise(img,'salt & pepper');
subplot(2,2,3), imshow(noise), title('Noisy Image');
avgImg=imfilter(noise, fspecial('average',3));
subplot(2,2,4), imshow(gausImg), title('Average Filter Image');

//median filter
image=imread("C:\Users\aashi\Desktop\blue flower.jpeg");
subplot(2,2,1), imshow(image), title('Original Image');
img=rgb2gray(image);
subplot(2,2,2), imshow(img), title('Grayscale Image');
noise=imnoise(img,'salt & pepper');
subplot(2,2,3), imshow(noise), title('Noisy Image');
gausImg=immedian(noise,3);
subplot(2,2,4), imshow(gausImg), title('Median Filter Image');

//gaussian filter
image=imread("C:\Users\aashi\Desktop\blue flower.jpeg");
subplot(2,2,1), imshow(image), title('Original Image');
img=rgb2gray(image);
subplot(2,2,2), imshow(img), title('Grayscale Image');
noise=imnoise(img,'gaussian');
subplot(2,2,3), imshow(noise), title('Noisy Image');
gausImg=imfilter(noise, fspecial('gaussian',3));
subplot(2,2,4), imshow(gausImg), title('Gaussian Filter Image');
