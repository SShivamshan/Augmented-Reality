%% Computer Vision Project main file

% World Coordinates which are contant for all the photos
Xp = [0;1;1;0]; % x coordinates of our points which are the center of our four circles
Yp = [0;0;1;1]; % y coordinates of our points which are the center of our four circles
p_world = [Xp Yp];

% k dimension 3x3. Intrinsic matrix k is also a constant matrix which does
% not change
k = [3.073e3 0         2.033e3;
     0       3.0654e3  1.5007e3;
     0       0         1];

% First image
%img1 = imread('Carre3.jpg');
%img1 = imread('square1.jpg');
img1 = imread('img19.jpg');
imshow(img1)
hold on;

[X,Y] = Detection(img1); % It's our function which determines automatically the center of our circles
p_photo = [X Y]; % Coordinates of our photo

[H] = Homographie(p_world,p_photo); % It's our function which determines our homography matrix

[RT,P] = Projection(H,k); % It's our function which determines the projection matrix

[P1X,P1Y,P1Z,P1Xv,P1Yv,P1Zv] = Point_Projection(P); % It's our function which projects our points

[f1_1,f2_1,f3_1,f4_1,f5_1,f6_1] = Plot(P1X,P1Y,P1Z,P1Xv,P1Yv,P1Zv); % It's our function to plot everything

hold off;