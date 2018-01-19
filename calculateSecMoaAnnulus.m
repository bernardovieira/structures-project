% Calculate second moment of inertia for a annulus
function [Ixx, Iyy] = calculateSecMoaAnnulus(r1, R2)


Ixx = pi/4*(R2^4-r1^4);
Iyy = pi/4*(R2^4-r1^4);