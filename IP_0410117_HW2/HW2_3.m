A = imread('HW2_einstein_orig.jpg');

%I use images from problem(1)/(2) and a Dog image as the reference images:
%Problem (1):
Ref_1 = imread('1.jpg');
B = imhistmatch(A,Ref_1,256);
%After matching, I mixed that image with the original image 
%because the equalization image from prob(1) is too bright.
C = (A+B/2);
figure(1);
imshowpair(Ref_1,C,'montage')
title('Histogram Matched Image from Problem(1) (equalization VS. matched)');

%Problem(2):
Ref_2 = imread('2.jpg');
B = imhistmatch(A,Ref_2,256);
figure(2);
imshowpair(Ref_2,B,'montage')
title('Histogram Matched Image from Problem(2) (equalization VS. matched)');

%Snoopy image:
Ref_3 = imread('3_ref.jpg');
C = imhistmatch(A,Ref_3,256);
figure(3);
title('Histogram Matched Image from a Dog image');
subplot(2,2,1);
imshow(Ref_3);
subplot(2,2,2);
imshow(C);
subplot(2,2,3);
histogram(Ref_3);
subplot(2,2,4);
histogram(C);
%imshowpair(Ref_3,C,'montage')
