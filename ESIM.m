function [index, SimMatrix] = ESIM(Y1, Y2)
% ========================================================================
% ESIM Index for SCI, Version 1.0
% Copyright(c) 2017 Zhangkai Ni, Lin Ma, Huanqiang Zeng, Jing Chen, Canhui Cai, and
% Kai-Kuang Ma
% All Rights Reserved.
%
% ----------------------------------------------------------------------
% Permission to use, copy, or modify this software and its documentation
% for educational and research purposes only and without fee is here
% granted, provided that this copyright notice and the original authors'
% names appear on all copies and supporting documentation. This program
% shall not be used, rewritten, or adapted as the basis of a commercial
% software or hardware product without first obtaining permission of the
% authors. The authors make no representations about the suitability of
% this software for any purpose. It is provided "as is" without express
% or implied warranty.
%----------------------------------------------------------------------
%
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate the Contrast map
%%%%%%%%%%%%%%%%%%%%%%%%%
[origWidth,origContrast] = edge_width(Y1);
[distWidth,distContrast] = edge_width(Y2);

%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate the gradient orientation
%%%%%%%%%%%%%%%%%%%%%%%%%
ks = 13;       % the length of convolution line 
dirNum = 12;     % the number of directions 

origorien = edge_orientation(Y1, ks, dirNum);
distorien = edge_orientation(Y2, ks, dirNum);


%%%%%%%%%%%%%%%%%%%%%%%%%
% Calculate the index
%%%%%%%%%%%%%%%%%%%%%%%%%
T1 = 10;  %fixed
T2 = 800;   %fixed
T3 = 0.9;   
OrientationSim = (2*origorien .* distorien + T1) ./ (origorien.^2 + distorien.^2  + T1);
ContrastSim = (2*origContrast.*distContrast + T2) ./(origContrast.^2 + distContrast.^2 + T2);
WidthSim = (2*origWidth.*distWidth + T3) ./(origWidth.^2 + distWidth.^2 + T3);
Wm = max(origWidth, distWidth);
SimMatrix = OrientationSim .* ContrastSim .* WidthSim .* Wm;
index = sum(sum(SimMatrix)) / sum(sum(Wm));


end