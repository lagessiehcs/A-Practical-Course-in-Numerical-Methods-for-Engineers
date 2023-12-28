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
close all
clear
clc

fx = @(x) (x./(1+x)).^5; % exakte Funktion
f_diffx = @(x) (5.*x.^4)./(x + 1).^5 - (5.*x.^5)./(x + 1).^6; % exakte erste Ableitung

x_node_sample = [      0.0             1.0           2.0            3.0           4.0      ];
f_node_sample = [0.000000000000 0.031250000000 0.131687242798 0.237304687500 0.327680000000];
Grad          = [1 4 80];
f_L           = zeros(1,length(Grad));                   % Lagrange-Polynomen
f_L_diff      = zeros(1,length(Grad)); % Ableitung der Lagrange-Polynome
x_auswertung  = 0.6;

% Wenden dies auf folgende Fälle an: n = 1, n=4, n = 80

for i = 1:length(Grad) % Iteration für Grad 1, 4, 80

    n = Grad(i);

    switch n
        case 1
            x_node = x_node_sample(1:2);
            f_node = f_node_sample(1:2);
            x = 0:0.01:1;

        case 4
            x_node = x_node_sample(1:5);
            f_node = f_node_sample(1:5);
            x = 0:0.01:4;

        case 80
            x_node = linspace(0,4,81);
            f_node = fx(x_node);
            x = 0:0.01:4;
    end

    % Auswertung an der Stelle x = 0.6
    f_L(i)      = LagrangePolynom(x_auswertung,n,x_node,f_node);
    f_L_diff(i) = LagrangeDerivPolynom(x_auswertung,n,x_node,f_node);    
   
    
    % Plot Lagrange-Polynom
    figure(i)
    hold on
    f = LagrangePolynom(x,n,x_node,f_node);
    f_diff =  LagrangeDerivPolynom(x,n,x_node,f_node);
    
    f_exakt = (x./(1+x)).^5; % Exakte funktion
    f_diff_exakt = f_diffx(x);
    
    plot(x, f_exakt, ...
        'LineWidth', 1.5, 'Color', 'k', ...
        'DisplayName', 'Exakte Funktion f(x)')
    
    plot(x, f_diff_exakt, ...
        '--','LineWidth', 1.5, 'Color', 'k', ...
        'DisplayName', 'Exakte Ableitung df(x)/dx')
    
    plot(x, f, ...
        'LineWidth', 1, 'Color', "#0072BD", ...
        'DisplayName', ['Polynom P',num2str(n)])
    
    
    plot(x, f_diff, ...
        'LineWidth', 1, 'Color', "#D95319", ...
        'DisplayName', ['erste Ableitung Polynom P',num2str(n)])        
    
    scatter(x_node,f_node, ...
        'filled','k', ...
        'DisplayName', 'Stützstellen')
    
    title(['Lagrangesches Interpolationspolynom vom Grad ',num2str(n)])
    xlabel('x')
    ylabel('f(x)')
    legend('Location','southeast')
    if n == 80
        ylim([-0.05 0.35])
    end
    grid on 

end

% Auswertung an der Stelle x = 0.6
f_L1      = f_L(1);
f_L1_diff = f_L_diff(1);

f_L4      = f_L(2);
f_L4_diff = f_L_diff(2);

f_L80      = f_L(3);
f_L80_diff = f_L_diff(3);

