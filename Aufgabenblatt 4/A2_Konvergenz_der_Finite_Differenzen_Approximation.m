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
k = logspace(-2,1,1000);
figure(1)

% loglog(h,h,'k--','DisplayName','h');
% hold on
% loglog(h,abs(f_diff_exakt(x0)-f_diff_2P(x0)), 'DisplayName','FD2P') % Zweipunkte-Formel
% hold off

% loglog(h,h.^2,'k--','DisplayName','h^2');
% hold on
% loglog(h,abs(f_diff_exakt(x0)-f_diff_3PE(x0)), 'DisplayName', 'FD3E') % Dreipunkte-Endpunkt-Formel
% hold off

% loglog(h,h.^2,'k--','DisplayName','h^2');
% hold on
% loglog(h,abs(f_diff_exakt(x0)-f_diff_3PM(x0)), 'DisplayName', 'FD3M') % Dreipunkte-Mittelpunkt-Formel
% hold off

loglog(h,h.^4,'k--','DisplayName','h^4');
hold on
loglog(h,abs(f_diff_exakt(x0)-f_diff_5P(x0)),'DisplayName', 'FD5M') % Fünfpunkte-Mittelpunkt-Formel
hold off

title('Konvegenzplot Finite Differenzen')
xlabel('h')
ylabel("|f'(x = x_0) - f_{approx}(x = x_0)|")
legend('Location','northwest')


