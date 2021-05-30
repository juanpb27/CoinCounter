function [preprocess_im] = preprocess(im)
%preprocess An image with coins in RGB format is received and a threshold image is obtained

%% Noise removal

%Image to gray scale
imgray = rgb2gray(im);
figure,imshow(imgray)

%the image is filtered with a Gaussian filter to remove noise
imblur = imgaussfilt(imgray);
figure,imshow(imblur)

%% Contrast Adjust

se = strel('disk',16);

figure, imshow(imblur);
tophatFiltered = imtophat(imblur,se);
figure, imshow(tophatFiltered)

contrastAdjusted = adapthisteq(tophatFiltered);
figure, imshow(contrastAdjusted)

%% Morphological Operations

um = graythresh(contrastAdjusted);
bw = imbinarize(contrastAdjusted, um);
figure, imshow(bw)

dilate = imdilate(bw,strel('disk',12));
figure, imshow(dilate)

preprocess_im = imclose(dilate,strel('disk',18));
figure, imshow(preprocess_im)

end

