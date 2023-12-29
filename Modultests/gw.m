function gaussw = gw(n)

% ========================================
% Fkt IV
% Reihenfolge der Gaußpunkte ist beliebig
% ========================================

a = 5/9;
b = 8/9;
c = (18-sqrt(30))/36;
d = (18+sqrt(30))/36;
e = (322-13*sqrt(70))/900;
f = (322+13*sqrt(70))/900;
g = 128/225;
w = { 2
      [1 1]
      [a b a]
      [c d d c]
      [e f g f e]};

gaussw = w{n};

end