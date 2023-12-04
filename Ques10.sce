image=imread("C:\Users\aashi\Desktop\rose.png");
img=rgb2gray(image);
img1=edge(img,'sobel',0.55);
img2=edge(img,'prewitt',0.1);
img3=edge(img,'log',0.1);

subplot(2, 2, 1), imshow(img), title('Original Image');
subplot(2, 2, 2), imshow(img1), title('Sobel');
subplot(2, 2, 3), imshow(img2), title('Prewitt');
subplot(2, 2, 4), imshow(img3), title('Log');
