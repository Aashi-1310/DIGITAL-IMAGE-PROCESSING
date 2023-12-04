//a. AND operation between two images 
img=imread("C:\Users\aashi\Desktop\Pink.png");  
img1=imread("C:\Users\aashi\Desktop\Heart.png"); 
[M,N]=size(img); 
img_s=zeros(M,N,3,'uint8'); 
for i =1:M  
  for j=1:N 
    for z =1:3  
      img_s(i,j,z)= bitand(img1(i,j,z),img(i,j,z)); 
    end 
  end 
end

//b. OR operation between two images 
img=imread("C:\Users\aashi\Desktop\Pink.png");  
img1=imread("C:\Users\aashi\Desktop\Heart.png"); 
[M,N]=size(img); 
img_s=zeros(M,N,3,'uint8'); 
for i =1:M  
  for j=1:N 
    for z =1:3  
      img_s(i,j,z)= bitor(img1(i,j,z),img(i,j,z)); 
    end 
  end 
end

//d. NOT operation (Negative image) 
img=imread("C:\Users\aashi\Desktop\Pink.png");  
img1=imread("C:\Users\aashi\Desktop\Heart.png"); 
[M,N]=size(img); 
img_s=zeros(M,N,3,'uint8'); 
for i =1:M  
  for j=1:N 
    for z =1:3  
      img_s(i,j,z)= ~img(i,j,z); 
    end 
  end 
end
