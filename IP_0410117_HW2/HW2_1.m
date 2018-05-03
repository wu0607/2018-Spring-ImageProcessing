%Load file
input = imread('HW2_einstein_orig.tif');
%Plot original image and its histogram.
figure(1);
subplot(2,1,1);
imshow(input);
subplot(2,1,2);
imhist(input);

%Use histeq function to do histogram equalization.
J = histeq(input);
%Plot the adjusted image.
figure(2);
subplot(2,1,1);
imshow(J);
subplot(2,1,2);
imhist(J);
%figure(3)
%imshow(J)