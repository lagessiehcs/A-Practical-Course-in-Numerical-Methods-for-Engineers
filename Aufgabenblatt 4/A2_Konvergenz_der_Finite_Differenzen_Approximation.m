close all
clear
clc

% Schrittweiter
h = logspace(-5,0,1000);

% Es ist die Funktion f(x) = (x/(1+x))^5 gegeben.
f = @(x) (x./(1+x)).^5;

% Zweipunkte-Formel (x0 − h, x0)
f_diff_2P = @(x0) (f(x0)-f(x0-h))./h;

% Dreipunkte-Endpunkt-Formel (x0, x0 + h, x0 + 2h)
f_diff_3PE = @(x0) 1./(2.*h) .* (-3.*f(x0)+4.*f(x0+h)-f(x0+2.*h));

% Dreipunkte-Mittelpunkt-Formel (x0 − h, x0, x0 + h)
f_diff_3PM = @(x0) 1./(2.*h) .* (f(x0+h)-f(x0-h));

% Fünfpunkte-Mittelpunkt-Formel (x0 − 2h, x0 − h, x0, x0 + h, x0 + 2h)
f_diff_5P =@(x0) 1./(12.*h) .* (f(x0-2.*h)-8.*f(x0-h)+8.*f(x0+h)-f(x0+2.*h));

% Der exakte Wert der Ableitung f':
f_diff =@(x) (5.*x.^4)./(x + 1).^5 - (5.*x.^5)./(x + 1).^6;
f_diff_exakt =@(x0) f_diff(x0);

%% Plotten des Fehlers der Finite-Differenzen-Approximation:
%% x0 = 0.6
x0 = 0.6;
figure(1)
hold on

plot(h,h,'k:','DisplayName','h');
plot(h,abs(f_diff_exakt(x0)-f_diff_2P(x0)), 'DisplayName','Zweipunkte-Formel') % Zweipunkte-Formel


plot(h,h.^2,'k--','DisplayName','h^2');
plot(h,abs(f_diff_exakt(x0)-f_diff_3PE(x0)), 'DisplayName', 'Dreipunkte-Endpunkt-Formel') % Dreipunkte-Endpunkt-Formel
plot(h,abs(f_diff_exakt(x0)-f_diff_3PM(x0)), 'DisplayName', 'Dreipunkte-Mittelpunkt-Formel') % Dreipunkte-Mittelpunkt-Formel


plot(h,h.^4,'k-.','DisplayName','h^4');
plot(h,abs(f_diff_exakt(x0)-f_diff_5P(x0)),'DisplayName', 'Fünfpunkte-Mittelpunkt-Formel') % Fünfpunkte-Mittelpunkt-Formel

set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');
title('Konvegenzplot Finite Differenzen für x_0 = 0.6')
xlabel('h')
ylabel("|f'(x = x_0) - f_{approx}(x = x_0)|")
legend('Location','northwest')

%% x0 = 2.0
x0 = 2.0;
figure(2)
hold on

plot(h,h,'k:','DisplayName','h');
plot(h,abs(f_diff_exakt(x0)-f_diff_2P(x0)), 'DisplayName','Zweipunkte-Formel') % Zweipunkte-Formel


plot(h,h.^2,'k--','DisplayName','h^2');
plot(h,abs(f_diff_exakt(x0)-f_diff_3PE(x0)), 'DisplayName', 'Dreipunkte-Endpunkt-Formel') % Dreipunkte-Endpunkt-Formel
plot(h,abs(f_diff_exakt(x0)-f_diff_3PM(x0)), 'DisplayName', 'Dreipunkte-Mittelpunkt-Formel') % Dreipunkte-Mittelpunkt-Formel


plot(h,h.^4,'k-.','DisplayName','h^4');
plot(h,abs(f_diff_exakt(x0)-f_diff_5P(x0)),'DisplayName', 'Fünfpunkte-Mittelpunkt-Formel') % Fünfpunkte-Mittelpunkt-Formel

set(gca, 'XScale', 'log');
set(gca, 'YScale', 'log');
title('Konvegenzplot Finite Differenzen für x_0 = 2.0')
xlabel('h')
ylabel("|f'(x = x_0) - f_{approx}(x = x_0)|")
legend('Location','northwest')

