% Test script

% Calculate second moment of inertia for a rectangle
b = 5;
h = 10;
[Ixx,Iyy] = calculateSecMoaRectangle(b, h);

% Calculate second moment of inertia for a annulus
r1 = 3;
R2 = 4;

[Ixx_2, Iyy_2] = calculateSecMoaAnnulus(r1, R2);

% Please add circle here