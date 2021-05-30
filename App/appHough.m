function [centers, rad] = appHough(im, preprocess_im,rmin,rmax)
%Hough A threshold image is received with the coins and an image is
%obtained with its detection by means of circles.

%The parameters were adjusted according to the environment used to take the
%images. It is susceptible to lighting, focal length, resolution, etc.

%figure, imshow(preprocess_im)
[centers, rad] = imfindcircles(preprocess_im,[rmin rmax], 'Sensitivity', 0.95, 'EdgeThreshold', 0.01); 
viscircles(centers, rad,'EdgeColor','b');

%figure, imshow(im), hold on
viscircles(centers, rad,'EdgeColor','r','EnhanceVisibility',true);

end