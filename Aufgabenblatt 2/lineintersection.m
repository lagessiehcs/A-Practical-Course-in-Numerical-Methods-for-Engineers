function x_num = lineintersection(P1,P2)
% Berechenung der x-Koordinate des Schnittpunktes zweier Geraden.
%
% Die erste Gerade ist durch die Punkte P1(x1,y1) und P2(x2,y2) festgelegt. 
% Die zweite Gerade ist die Horizontale durch y = 2.
%
% Die erste Gerade: y = ax + b
% mit a = (y2-y1)/(x2-x1) 
% -> y1 = (y2-y1)/(x2-x1)*x1 + b 
% -> b  = y1 - (y2-y1)/(x2-x1)*x1

x1 = P1(1);
y1 = P1(2);
x2 = P2(1,:);
y2 = P2(2,:);

% 1. Gerade
a = (y2-y1)./(x2-x1);
b = y1 - (y2-y1)./(x2-x1)*x1;

% 2. Gerade: y = 2 -> x = 0 
% In 1. Gerade: 2 = ax + b -> x = (2-b)/a

x_num = (2-b)./a;

end