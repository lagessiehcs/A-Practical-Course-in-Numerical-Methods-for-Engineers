function gaussx = gx(n) 

% ========================================
% Fkt III
% Reihenfolge der Gaußpunkte ist beliebig
% ========================================

a = 1/sqrt(3);
b = sqrt(3/5);
c = sqrt(3/7+2/7*sqrt(6/5));
d = sqrt(3/7-2/7*sqrt(6/5));
e = 1/3*sqrt(5+2*sqrt(10/7));
f = 1/3*sqrt(5-2*sqrt(10/7));

xi = { 0
       [-a a]
       [-b 0 b]
       [-c -d d c]
       [-e -f 0 f e]};

gaussx = xi{n};

end