im=imread("C:\Users\aashi\Desktop\rose.png");
scale =2;
[M,N] = size(im);
//shrinking
m = round(M / scale);
n = round(N / scale);
sh = zeros(m,n);
for i = 1:M
    for j = 1:N
        row = round(i * scale);
        col = round(j * scale);
        row = max(1, min(row, M));
        col = max(1, min(col, N));
        sh(i, j) = im(row,col);
    end
end
subplot(2, 2, 1), imshow(im), title('Original Image');
subplot(2, 2, 2), imshow(uint8(sh)), title('Shrunk Image');

//zooming
x = round(M * scale);
y = round(N * scale);
zoom = zeros(m,n);
for i = 1:M
    for j = 1:N
        rows = round(i / scale);
        cols = round(j / scale);
        rows = max(1, min(rows, M));
        cols = max(1, min(cols, N));
        zoom(i, j) = im(rows,cols);
    end
end
subplot(2, 2, 3), imshow(uint8(zoom)), title('Zoomed Image');
