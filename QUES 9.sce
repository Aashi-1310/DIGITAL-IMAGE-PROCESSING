//a. Apply FFT on given image 

img = imread("C:\Users\aashi\Desktop\rose.png"); 
a=rgb2gray(img) 
subplot(3,3,1) 
title('Original Image') 
imshow(a); 
af=fft2(im2double(a)); 
subplot(3,3,2); 
imshow(mat2gray(log(1+abs(fftshift(af))))); 
title('Fourier Transformation of the Image'); 

//b. Perform low pass and high pass filtering in frequency domain 

f=mkfftfilter(a,'gauss',0.5) 
f1=mkfftfilter(a,'butterworth1',0.4) 
f2=mkfftfilter(a,'binary',0.2) 
//low pass 
l1=fftshift(f).*af; 
l2=fftshift(f1).*af; 
l3=fftshift(f2).*af; 
//high pass 
hf=mkfftfilter(a,'gauss',0.1) 
hf1=mkfftfilter(a,'butterworth1',0.08) 
hf2=mkfftfilter(a,'binary',0.05) 
h1=fftshift(1-hf).*af; 
h2=fftshift(1-hf1).*af; 
h3=fftshift(1-hf2).*af; 


//Apply IFFT to reconstruct the image 
 
img1=real(ifft(l1)); 
img2=real(ifft(l2)); 
img3=real(ifft(l3)); 
img4=real(ifft(h1)); 
img5=real(ifft(h2)); 
img6=real(ifft(h3)); 
subplot(3,3,3) 
title('Low Pass Gauss') 
imshow(img1); 
 
subplot(3,3,4) 
title('Low Pass butterworth') 
imshow(img2); 
 
subplot(3,3,5) 
title('Low Pass Binary') 
imshow(img3); 
 
subplot(3,3,6) 
title('High Pass Gauss') 
imshow(img4); 
 
subplot(3,3,7) 
title('High Pass Butterworth') 
imshow(img5); 
 
subplot(3,3,8) 
title('High Pass Binary') 
imshow(img6); 
