# ESIM

% This is an implementation of the algorithm for calculating the
% edge similarity (ESIM) index between two images.
%
% Please refer to the following paper
%
% Z. Ni, L. Ma, H. Zeng, J. Chen, C. Cai, and K.-K. Ma, “ESIM: Edge 
% similarity for screen content image quality assessment,” IEEE Transactions 
% on Image Processing, vol. 26, no. 10, pp. 4818–4831, June 2017.
% 
%----------------------------------------------------------------------
%
%Input : (1) Y1: the first image being compared
%        (2) Y2: the second image being compared
%
%Output: (1) index: is the similarty score calculated using ESIM algorithm.
%	     ESIM only considers the luminance component of images. 
%
%        (2) SimMatrix: is the local quality map of the distorted image
%        
%-----------------------------------------------------------------------
%
%Usage:
%Given 2 test images img1 and img2. For gray-scale images, their dynamic range should be 0-255.
%For colorful images, the dynamic range of each color channel should be 0-255.
%
%[index, SimMatrix] = ESIM(img1, img2);
%-----------------------------------------------------------------------

Implementation: run demo.m
 
