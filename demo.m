%% Demo
% ========================================================================
% This is an implementation of the algorithm for calculating the
% edge similarity (ESIM) index between two images.
%
% Please refer to the following paper
%
% Z. Ni, L. Ma, H. Zeng, J. Chen, C. Cai, and K.-K. Ma, ¡°ESIM: Edge 
% similarity for screen content image quality assessment,¡± IEEE Transactions 
% on Image Processing, vol. 26, no. 10, pp. 4818¨C4831, June 2017.
% 
%----------------------------------------------------------------------

clc
clear
close

origImg = imread('\cim1_1_5.bmp');     
distImg = imread('\cim1.bmp'); 
fprintf('Image load finished. \n')

%% 
if size(size(origImg)) == [1 3] % color image
    img1 = double(rgb2gray(origImg));
    img2 = double(rgb2gray(distImg));
else %gray image
    img1 = origImg;
    img2 = distImg;
end

[esim, esim_map] = ESIM(img1, img2);
fprintf('The score of the distorted image is %.4f \n', esim)

