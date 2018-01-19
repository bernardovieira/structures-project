clear all;
close all;
clc

% Test script

addpath(genpath(pwd));

% Calculate second moment of inertia for a rectangle
b = 5;
h = 10;
[Ixx,Iyy] = calculateSecMoaRectangle(b, h);

% Calculate second moment of inertia for a annulus
r1 = 3;
R2 = 4;

[Ixx_2, Iyy_2] = calculateSecMoaAnnulus(r1, R2);

% Calculate second moment of inertia for a semi circle
r_semiCircle = 1.45;

[Ixx_3, Iyy_3] = calculateSecMoaSemiCircle(r_semiCircle);

% Define the semicircle
x0 = 0;
y0 = 0;
n_pts = 1000;
theta = [ 0:pi/n_pts:pi 0];

x_semiCirc = r_semiCircle*cos(theta) + x0; 
y_semiCirc = r_semiCircle*sin(theta) + y0; 
% y_semiCirc = y0 + sqrt(r_semiCircle.^2 - (x_semiCirc-x0).^2);

figure;
plot(x_semiCirc,y_semiCirc,'-o')
axis equal

[Ixx_3b, Iyy_3b] = computeSecMoaPolygon(x_semiCirc, y_semiCirc);

Ixx_3 - Ixx_3b
Iyy_3 - Iyy_3b
