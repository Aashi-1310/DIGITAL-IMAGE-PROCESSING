image=imread("C:\Users\aashi\Desktop\landscape.jpg");
//converting image to grayscale
img=rgb2gray(image);
//adding speckle noise
noise=imnoise(img,'speckle');
//applying average filter
avgImg=imfilter(noise, fspecial('average',3));
//applying gaussian filter
gausImg=imfilter(noise, fspecial('gaussian',3));
//applying median filter
medImg=immedian(noise,3);

//DISPLAYING IMAGES
subplot(2,3,1), imshow(image), title('Original Image');          //original image
subplot(2,3,2), imshow(img), title('Grayscale Image');           //grayscale image
subplot(2,3,3), imshow(noise), title('Noisy Image');             //Image with salt and pepper noise
subplot(2,3,4), imshow(avgImg), title('Average Filter Image');   //Image with Average Filter
subplot(2,3,5), imshow(gausImg), title('Gaussian Filter Image'); //Image with Gaussian Filter
subplot(2,3,6), imshow(medImg), title('Median Filter Image');    //Image with Median Filter

//function
function [snr, rmsr]= evaluate(img1, img2)
    img1=double(img1);
    img2=double(img2);
    [M,N]=size(img1);
    rmsr=0;
    for i=1:M
        for j=1:N
            rmsr = rmsr + (img1(i,j)-img2(i,j))^2;
        end
    end
    rmsr = sqrt(rmsr/(M*N));
    
    signal=0;

    for i = 1:M
        for j = 1:N
            signal = signal + img1(i, j)^2;
        end
    end

    noisePower = 0;

    for i = 1:M
        for j = 1:N
           x = img1(i, j) - img2(i, j);

            noisePower = noisePower + x^2;
        end
    end
    snr = 20 * log10(signal / noisePower);
endfunction

[s1, r1]=evaluate(img,avgImg);
disp("MEAN FILTER");
disp("snr",s1);
disp("rmsr", r1);

[s2, r2]=evaluate(img,gausImg);
disp("GAUSSIAN FILTER");
disp("snr",s2);
disp("rmsr", r2);

[s3, r3]=evaluate(img,medImg);
disp("MEDIAN FILTER");
disp("snr",s3);
disp("rmsr", r3);


