//a. Addition of two images 

img=imread("C:\Users\aashi\Desktop\Pink.png");  
img1=imread("C:\Users\aashi\Desktop\Heart.png") 
[M,N]=size(img); 
//img_added=imadd(img,img1); 
img_added = zeros(M,N,3,'uint8'); 
for i=1:M 
  for j=1:N       
    for z=1:3 
      if (uint16(img(i,j,z)) + img1(i,j,z)) >= 255 then  
        img_added(i,j,z) = 255;   
      else             
        img_added(i,j,z) = img(i,j,z) + img1(i,j,z);     
      end         
    end 
  end 
end 

//b. Subtract one image from other image 
img=imread("C:\Users\aashi\Desktop\Pink.png");  
img1=imread("C:\Users\aashi\Desktop\Heart.png"); 
[M,N]=size(img); 
img_s = zeros(M,N,3,'uint8'); 
for i = 1:M 
    for j = 1:N 
        for z = 1:3 
            if(int16(img(i,j,z)) - int16(img1(i,j,z))) <= 0 then 
                img_si,j,z) = 0; 
            else 
                img_si,j,z)= int16(img(i,j,z)) - int16(img1(i,j,z)); 
            end 
        end  
    end 
end  

c. Calculate mean value of image 
img1=imread("C:\Users\aashi\Desktop\flower.png");  
[M,N]=size(img1); 
gray_img = rgb2gray(img1); 
ans=0; 
for x=1:M  
    for j=1:N 
        ans = (uint32(ans) + gray_img(x,j)); 
    end 
end 
avg=double(ans)/(M*N); 
disp(avg);  
