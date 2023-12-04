//a. Obtain Negative image 
img=imread("C:\Users\aashi\Desktop\flower.png"); 
gray = rgb2gray(img);  
[M,N] = size(img);  
neg = zeros(M,N,'uint8');  
for i = 1:M  
  for j =1:N  
    neg(i,j)=255-gray(i,j);  
  end  
end 
imshow(neg); 

//b. Obtain Flip image

img=imread('bird.png');
f_img=flipdim(img,2,8);
//or
img=imread("C:\Users\aashi\Desktop\flower.png"); 
s=size(img); 
subplot(1,2,1); 
imshow(img); 
M=s(1);
N=s(2); 
arr1=zeros(M,N,3,'uint8'); 
block_size=1; 
if modulo(M,block_size)==0 then 
  count=1 
  x=0 
  for i=1:N 
    if modulo(i,block_size)==0 then  
      x=block_size; 
    end 
    arr1(:,i,:)=img(:,N-(block_size-modulo(i,block_size)-x)-count+1,:); 
    x=0; 
    if modulo(i,block_size)==0 then 
      count=count+block_size; 
    end 
end 
else 
    disp"error box size should be multiple of #row , #column "); 
end 
subplot(1,2,2); 
imshow(arr1); 

//c. Thresholding 
img=imread("C:\Users\aashi\Desktop\flower.png");  
[M,N]=size(img); 
gray=zeros(M,N,'uint8'); 
for i=1:M 
  for j=1:N 
      gray(i,j)= uint8 (double ( img(i,j,1) ) *0.2989 )+ uint8( double ( img (i,j,2) )*0.5870)+ uint8 ( double ( img (i,j,3))*0.114); 
  end 
end 
bw=zeros(M,N,'uint8'); 
for i=1:M 
     for j=1:N 
         if gray(i,j)>=120 then 
             bw(i,j)=255; 
         else 
             bw(i,j)=0; 
         end 
    end 
end 
imshow(bw) 

//d. Contrast stretching 
img=imread("C:\Users\aashi\Desktop\flower.png");  
gray=rgb2gray(img); 
subplot(2,2,1); 
imshow(gray); 
img2=imhistequal(gray); 
subplot(2,2,2); 
imshow(img2); 
