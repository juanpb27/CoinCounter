%% COIN COUNTER - COMPUTER VISION
% Created by Juan C. Peña
%It receives an image with Colombian coins and returns an image with the
%detection of each one of them and their value in the center. Finally, the
%total value is calculated.

close all
%% Image Preprocessing
path = 'C:\Users\ESTUDIANTE\Desktop\Vision Artificial\Proyecto\Implementacion\Dataset\';
im = imread(strcat(path , 'prueba18.jpg'));
figure,imshow(im)
preprocess_im = preprocess(im);

%% Hough Transform
rmin = 150; rmax = 350;
[centers, rads] = Hough(im, preprocess_im ,rmin,rmax);

%% Counter
[total, num_50, num_100, num_200, num_500, num_1000, NN, num_total] = counter(rads, centers);