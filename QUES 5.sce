a. Standard MATLAB function 
img=imread("C:\Users\aashi\Desktop\flower.png");   
gray=rgb2gray(img); 
[M,N]=size(gray); 
arr=zeros(256,1,'uint32'); 
arr1 = zeros(256,1,'uint32'); 
for i=1:256 
    arr1(i)=i; 
end 
for i=1:M 
    for j=1:N 
        arr(gray(i,j)+1)=(1+arr(gray(i,j)+1)); 
    end 
end 
bar(arr1,arr); 
label('0-255'); 
label('frequency'); 
