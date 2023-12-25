% =============================================================================== 
% Erstellen Sie ein Matlab-Programm, das die Auswertung der 
% Lagrange-Polynome und deren Ableitung für einen beliebigen Grad 
% ermöglicht. Es sind fünf Stützstellen x mit den zugehörigen 
% Funktionswerten f(x) = (x/(1+x))^5 gegeben:
% _______________________________________________________________________________
%   x        0.0            1.0            2.0            3.0           4.0
% f(x) 0.000000000000 0.031250000000 0.131687242798 0.237304687500 0.327680000000
% _______________________________________________________________________________
%
% Berechnen Sie mit Hilfe des erstellten Programmes den Funktionswert und 
% die Ableitung an der Stelle x = 0.6 und plotten Sie die jeweilige 
% Funktion sowie die Ableitung der untenstehenden Lagrange-Interpolation.

% x     :   ausgewertete Position
% n     :   Ordnung (Grad)
% x_node:   x-Wert von den Stützstellen (x, y)
% f_node:   y-Wert von den Stützstellen (x, y)
% ===============================================================================
close
clear
clc

fx = @(x) (x./(1+x)).^5; % exakte Funktion
dfx = @(x) (5.*x.^4)./(x + 1).^5 - (5.*x.^5)./(x + 1).^6; % exakte erste Ableitung

% Wenden dies auf folgende Fälle an:

%% a) Polynome vom Grad 1. Verwenden Sie nur die Punkte x (x_node) = 0.0 und x = 1.0.
n = 1; % Grad 1
x_node = [0.0 1.0];
f_node = [0.000000000000 0.031250000000];

x = 0.6;
f_L1 = LagrangePolynom(x,n,x_node,f_node);
df_L1 = LagrangeDerivPolynom(x,n,x_node,f_node);

% Plot Ergebnis
figure(1)
hold on
x = 0:0.01:1;
f = LagrangePolynom(x,n,x_node,f_node);
df =  LagrangeDerivPolynom(x,n,x_node,f_node);

f_exakt = (x./(1+x)).^5; % Exakte funktion
df_exakt = dfx(x);

plot(x, f_exakt, ...
    'LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Funktion f(x)')

plot(x, df_exakt, ...
    '--','LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Ableitung df(x)/dx')

plot(x, f, ...
    'LineWidth', 1, 'Color', "#0072BD", ...
    'DisplayName', 'Polynom P1')

scatter(0.6, LagrangePolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#0072BD", ...
    'DisplayName', 'Polynom P1 an der Stelle x = 0.6')

plot(x, df, ...
    'LineWidth', 1, 'Color', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P1')        

scatter(0.6, LagrangeDerivPolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P1 an der Stelle x = 0.6') 

scatter(x_node,f_node, ...
    'filled','k', ...
    'DisplayName', 'Stützstellen')

title('Lagrangesches Interpolationspolynom vom Grad 1')
xlabel('x')
ylabel('f(x)')
legend('Location','southeast')
grid on 


%% b) Polynome vom Grad 4.
n = 4; % Grad 4
x_node = [0.0 1.0 2.0 3.0 4.0];
f_node = [0.000000000000 0.031250000000 0.131687242798 0.237304687500 0.327680000000];

x = 0.6;
f_L4 = LagrangePolynom(x,n,x_node,f_node);
df_L4 = LagrangeDerivPolynom(x,n,x_node,f_node);

% Plot Ergebnis
figure(2)
hold on
x = 0:0.01:4;
f = LagrangePolynom(x,n,x_node,f_node);
df = LagrangeDerivPolynom(x,n,x_node,f_node);

f_exakt = fx(x); % Exakte funktion
df_exakt = dfx(x);

plot(x, f_exakt, ...
    'LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Funktion f(x)')

plot(x, df_exakt, ...
    '--','LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Ableitung df(x)/dx')

plot(x, f, ...
    'LineWidth', 1, 'Color', "#0072BD", ...
    'DisplayName', 'Polynom P4')

scatter(0.6, LagrangePolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#0072BD", ...
    'DisplayName', 'Polynom P4 an der Stelle x = 0.6')

plot(x, df, ...
    'LineWidth', 1, 'Color', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P4')        

scatter(0.6, LagrangeDerivPolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P4 an der Stelle x = 0.6') 

scatter(x_node,f_node, ...
    'filled','k', ...
    'DisplayName', 'Stützstellen')

title('Lagrangesches Interpolationspolynom vom Grad 4')
xlabel('x')
ylabel('f(x)')
legend('Location','southeast')
grid on 

%% c) Polynome vom Grad 80.
n = 80; % Grad 80
x_node = linspace(0,4,81);
f_node = fx(x_node);

x = 0.6;
f_L80 = LagrangePolynom(x,n,x_node,f_node);
df_L80 = LagrangeDerivPolynom(x,n,x_node,f_node);

% Plot Ergebnis
figure(3)
hold on
x = 0:0.01:4;
f = LagrangePolynom(x,n,x_node,f_node);
df = LagrangeDerivPolynom(x,n,x_node,f_node);

f_exakt = fx(x); % Exakte funktion
df_exakt = dfx(x);

plot(x, f_exakt, ...
    'LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Funktion f(x)')

plot(x, df_exakt, ...
    '--','LineWidth', 1.5, 'Color', 'k', ...
    'DisplayName', 'Exakte Ableitung df(x)/dx')

plot(x, f, ...
    'LineWidth', 1, 'Color', "#0072BD", ...
    'DisplayName', 'Polynom P80')

scatter(0.6, LagrangePolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#0072BD", ...
    'DisplayName', 'Polynom P80 an der Stelle x = 0.6')

plot(x, df, ...
    'LineWidth', 1, 'Color', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P80')        

scatter(0.6, LagrangeDerivPolynom(0.6,n,x_node,f_node), ...
    'filled', 'MarkerFaceColor', "#D95319", ...
    'DisplayName', 'erste Ableitung Polynom P80 an der Stelle x = 0.6') 

scatter(x_node,f_node, ...
    'filled','k', ...
    'DisplayName', 'Stützstellen')

title('Lagrangesches Interpolationspolynom vom Grad 80')
xlabel('x')
ylabel('f(x)')
ylim([-0.05 0.35])
legend('Location','southeast')
grid on 

