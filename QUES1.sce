img = imread("C:\Users\aashi\Desktop\flower.png"); 
imshow(img); 

 //C) Resize given image 
img =imread("C:\Users\aashi\Desktop\flower.png");  
img1=imresize(img,[100,100],'bicubic'); 
imshow(img1) 

//D) Convert given color image into gray-scale image 
img= imread("C:\Users\aashi\Desktop\flower.png");   
[M,N]=size(img); 
gray=zeros(M,N,'uint8'); 
for i=1:M  
    for j=1:N 
        gray(i,j)= uint8(double(img(i,j,1)) *0.2989)+ uint8( double(img (i,j,2) )*0.5870)+ uint8 ( double ( img (i,j,3))*0.114); 
    End  
End 
imshow(gray); 

//E) Convert given color/gray-scale image into black & white image 
img =imread("C:\Users\aashi\Desktop\flower.png");  
[M,N]=size(img); 
bw_img=zeros(M,N,'uint8'); 
for i=1:M 
  for j=1:N 
      if gray(i,j) >= 120 then  
            bw_img(i,j) = 255; 
        else 
    bw_img(i,j)=0; 
    end  
  end 
end 
imshow(bw_img); 

//F)  Draw image profile 
img =imread("C:\Users\aashi\Desktop\flower.png");  
improfile(img); 

//G) Separate color image in three R G & B planes 
img =imread("C:\Users\aashi\Desktop\flower.png");   
[M,N]=size(img); 
R=zeros(M,N,3,'uint8'); 
G=zeros(M,N,3,'uint8'); 
B=zeros(M,N,3,'uint8'); 
R(:,:,1)=img(:,:,1); 
G(:,:,2)=img(:,:,2); 
B(:,:,3)=img(:,:,3); 
subplot(2,2,1); 
imshow(img); 
subplot(2,2,2); 
imshow(R); 
subplot(2,2,3); 
imshow(G); 
subplot(2,2,4); 
imshow(B); 

//H) Create color image using R, G and B three separate planes 
RGB=zeros(M,N,3,'uint8'); 
for i=1:M      
  for j=1:N 
    RGB(i,j,1) = R(i,j,1);      
    RGB(i,j,2) = G(i,j,2);          
    RGB(i,j,3) = B(i,j,3);      
  end 
end 
subplot(2,2,1);  
imshow(R);  
subplot(2,2,2);  
imshow(G); 
subplot(2,2,3);  
imshow(B);  
subplot(2,2,4);  
imshow(RGB); 

//J)  Write given 2-D data in image file 
img =imread("C:\Users\aashi\Desktop\flower.png"); 
gray=rgb2gray(img) 
imwrite(gray,'flower01.png'); 
img2= imread('flower01.png'); 
imshow(img2); 
