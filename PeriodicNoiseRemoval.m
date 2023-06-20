plant = imread("Plant.jpg");
plant = rgb2gray(plant);
[x,y] = meshgrid(1:910, 1:616);
noise = sin( x / 3 + y / 5) + 1; % Noise generation
noisy_image=(im2double(plant) + noise / 2) / 2;
noisy_fft = fft2(noisy_image);
d = sqrt((x-455).^2 + (y-308).^2);
circle = (d < 495 | d > 510);
filtered_fft = noisy_fft.*circle;
noisy_fft2 = noisy_fft;
e = 2;
noisy_fft2(21-e:21+e, :) = 0;
noisy_fft2(600-e:600+e, :) = 0;
noisy_fft2(:, 52-e:52+e) = 0;
noisy_fft2(:, 865-e:865+e) = 0;
imshow(noisy_image), figure, fftshow(noisy_fft)
figure, fftshow(filtered_fft)
figure, fftshow(ifft2(filtered_fft)) % Band reject filtering
figure, fftshow(noisy_fft2)
figure, fftshow(ifft2(noisy_fft2)) % Notch filtering