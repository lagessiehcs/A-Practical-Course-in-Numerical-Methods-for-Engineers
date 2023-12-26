clear
clc

% Es ist die Funktion f(x) = (x/(1+x))^5 gegeben.
f = @(x) (x/(1+x))^5;

% Approximieren Sie die Ableitung f′ an der Stelle x0 = 0.6 unter 
% Verwendung geeigneter diskreter Funktionswerte 
% f(x0 + kh), (k = −2, −1, 0, 1, 2) mit Hilfe der folgenden 
% Finite-Differenzen-Verfahren für h = 0.1:
x0 = 0.6;
h  = 0.1;


% 1. Zweipunkte-Formel (x0 − h, x0)
f_diff_2P = (f(x0)-f(x0-h))/h;

% 2. Dreipunkte-Endpunkt-Formel (x0, x0 + h, x0 + 2h)
f_diff_3PE = 1/(2*h) * (-3*f(x0)+4*f(x0+h)-f(x0+2*h));

% 3. Dreipunkte-Mittelpunkt-Formel (x0 − h, x0, x0 + h)
f_diff_3PM = 1/(2*h) * (f(x0+h)-f(x0-h));

% 4. Fünfpunkte-Mittelpunkt-Formel (x0 − 2h, x0 − h, x0, x0 + h, x0 + 2h)
f_diff_5P = 1/(12*h) * (f(x0-2*h)-8*f(x0-h)+8*f(x0+h)-f(x0+2*h));

% Der exakte Wert der Ableitung f':
f_diff = @(x) (5.*x.^4)./(x + 1).^5 - (5.*x.^5)./(x + 1).^6;
f_diff_exakt = f_diff(0.6);
