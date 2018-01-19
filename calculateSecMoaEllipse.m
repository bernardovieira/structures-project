function [Ixx, Iyy] = calculateSecMoaEllipse(a, b)
Ixx = pi/4*a*b^3;
Iyy = pi/4*a^3*b;

end
