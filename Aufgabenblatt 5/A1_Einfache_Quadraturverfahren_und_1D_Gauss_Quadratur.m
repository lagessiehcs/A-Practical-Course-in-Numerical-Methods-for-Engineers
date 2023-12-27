clear
clc

% Intervall [a b] = [0 4]
a = 0; b = 4;

% f(x)
f = @(x) (x./(1+x)).^5;

% Approximation der Integral von f(x) nach Mittelpunktregel
I_M = (b - a) * f((a+b)/2);

% Approximation der Integral von f(x) nach Trapezregel
I_T = (b - a) * (f(a)+f(b))/2;