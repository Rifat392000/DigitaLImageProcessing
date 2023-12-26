image = imread("/MATLAB Drive/Lab 4/image3.jpg");
gray_image = rgb2gray(image);
mask = [0 1 0; 1 -4 1; 0 1 0];
temp = conv2(gray_image, mask, "same");
LapImage = uint8(temp);
figure;
subplot(1, 2, 1), imshow(image);
title("Original");
subplot(1, 2, 2), imshow(temp);
title("Laplacian");