% Calculate second moment of inertia for a rectangle
function [Ixx,Iyy] = calculateSecMoaRectangle(b, h)

Ixx = b*h^3/3;
Iyy = b^3*h/3;
