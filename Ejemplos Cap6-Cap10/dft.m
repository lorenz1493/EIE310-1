function [X] = dft(x)
N = length(x);
X = zeros(1, N);
for k = 0 : 1 : N-1,
Re = 0; Im = 0;
for n = 0 : 1 : N-1,
Re = Re + (x(n+1) * cos(2*pi * k * n/N));
Im = Im + (x(n+1) * sin(2*pi * k * n/N));
end
X(k+1) = Re - j*Im;
end