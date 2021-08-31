% x = rand(16, 16);
x = imread('../cats/10.jpeg');
x_gray = double(rgb2gray(x));
d = 8;
k = struct('mask', ones(d, d), 'weight',rand(d, d), 'bias', rand(d, d), 'activation', 'tanh');
y = convolution(x_gray, k);

figure('Name', 'Convolution_Layer');
subplot(2,1,1);
imshow(int8(x_gray));
title('x_gray');
subplot(2,1,2);
imshow(int8(y));
title('y');