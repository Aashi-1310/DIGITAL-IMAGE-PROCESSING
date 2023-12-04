a. Standard MATLAB function 
img = imread("C:\Users\aashi\Desktop\rose.png"); 
grayimg = rgb2gray(img) 
histogram1 = imhist(grayimg) 
 
grayimg2 = imhistequal(grayimg) 
histogram2 = imhist(grayimg2) 
 
subplot(2,2,1) 
imshow(grayimg) 
 
subplot(2,2,2) 
plot2d3(0:255,histogram1) 
 
subplot(2,2,3) 
imshow(grayimg2) 
 
subplot(2,2,4) 
plot2d3(0:255,histogram2) 

//b. Program without using standard MATLAB functions 
img = imread("C:\Users\aashi\Desktop\rose.png"); 
grayimg = rgb2gray(img) 
 
function hist_eq=custom_histeq(img) 
[m, n] = size(img); 
hist_values = zeros(256, 1); 
 
for i = 1:m 
   for j = 1:n 
      pixel_value = max(0, min(255, img(i, j) + 1)); 
      hist_values(pixel_value + 1) = hist_values(pixel_value + 1) + 1; 
   end 
end 
 
cdf = cumsum(hist_values) / (m * n); 
 
hist_eq = zeros(m, n); 
for i = 1:m 
   forj = 1:n 
      pixel_value = max(0, min(255, img(i, j) + 1));  
      hist_eqi, j) = round(cdf(pixel_value + 1) * 255); 
   end 
end 
end 
 
equ_img = custom_histeq(grayimg); 
 
subplot(2, 2, 1), imshow(img), title('Original Image'); 
subplot(2, 2, 2), imshow(uint8(equ_img)), title('Equalized Image'); 
subplot(2, 2, 3), plot(imhist(uint8(equ_img))), title('Equalized Histogram'); 

 
