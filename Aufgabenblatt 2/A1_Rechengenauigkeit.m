% Berechenung der x-Koordinate des Schnittpunktes zweier Geraden.
%
% Die erste Gerade ist durch die Punkte P1(x1,y1) und P2(x2,y2) festgelegt. 
% Die zweite Gerade ist die Horizontale durch y = 2.
% Die Punkte P1 und P2 sind gegeben als P1(0.0,1.0) und P2(delta,1.0+delta)
close all
clear 
clc

% Generates a row vector y of 50 logarithmically spaced points between 
% decades 10^a and 10^b.
delta = logspace(-20,5,100); 


P1 = [0.0; 1.0];
P2 = [delta; 1.0 + delta];

% Analytische exakte Schnittpunkt:
x_ex = 1.0;

% Ermittelter Wert
x_num = lineintersection(P1,P2);

% Betragdes absoluten Fehlers
err = abs(x_ex-x_num);

loglog(delta,err)
title('Betrag des absoluten Fehlers der Position |x_{ex} − x_{num}| für  verschiedene delta')
xlabel('delta')
ylabel('|x_{ex} − x_{num}|')
grid on

