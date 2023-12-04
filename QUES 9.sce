img1=imread("C:\Users\aashi\Desktop\rose.png");
img=im2double(img1);
fftImg = fft2(im2double(img1));
//subplot(2, 2, 1), imshow(img), title('Original Image');
//subplot(2, 2, 2);
//imshow((log(1 + abs(fftshift(fftImg)))));
//title('Fourier Transformation of the Image');

f1=fspecial('gaussian', 0.5);
f2=fspecial('butterworth1', 0.5);
f3=mkfftfilter(img, 'binary', 0.5);


//lowpasss
f1_imgl=fftshift(f1).*fftImg;
f2_imgl=fftshift(f2).*fftImg;
f3_imgl=fftshift(f3).*fftImg ;

//highpass
f1_imgh=fftshift(1-f1).*fftImg ;
f2_imgh=fftshift(1-f2).*fftImg ;
f3_imgh=fftshift(1-f3).*fftImg ;


//ifft
guassImgl=real(ifft(f1_imgl));
butterImgl=real(ifft(f1_imgl));
binaryImgl=real(ifft(f1_imgl));
guassImgh=real(ifft(f1_imgh));
butterImgh=real(ifft(f1_imgh));
binaryImgh=real(ifft(f1_imgh));


subplot(3, 3, 1), imshow(img1), title('Original Image');
subplot(3, 3, 2);
imshow((log(1 + abs(fftshift(fftImg)))));
title('Fourier Transformation of the Image');
subplot(3,3,3), imshow(gaussImgl), title('Low Pass Gauss');
subplot(3,3,4), imshow(butterImgl), title('Low Pass Butterworth');
subplot(3,3,5), imshow(binaryImgl), title('Low Pass Binary');
subplot(3,3,6), imshow(gaussImgh), title('High Pass Gauss');
subplot(3,3,7), imshow(butterImgh), title('High Pass Butterworth');
subplot(3,3,8), imshow(binaryImgh), title('High Pass Binary');
