% ===========================================================
% Allgemeine Form:
% φ{n+1} = φ{n} + θ ∆t f (t{n+1}, φ{n+1}) + (1 − θ) ∆t f (t{n}, φ{n}) (1)
%
% θ = 0:   das Vorwärts-Euler-Verfahren
% θ = 1:   das Rückwärts-Euler-Verfahren
% θ = 1/2: die Trapezregel
% 
% f (t,φ) = t^2*exp(−5t) − 6*φ 
% ===========================================================

close all
clear
clc

phi = @(t) exp(-5.*t).*(t.^2-2.*t+2)-2.*exp(-6.*t); % exakte Lösung zum Vergleichen

dt = [0.1 0.2 0.4];

for k = 1:length(dt)

    t = 0:dt(k):2;
    
    phi_vorwaerts   = zeros(1,length(t));
    phi_rueckwaerts = zeros(1,length(t));
    phi_trapez      = zeros(1,length(t));
    
    for i=1:length(t)-1
        % Gl. (1) mit θ = 0:
        phi_vorwaerts(i+1) = phi_vorwaerts(i) + ...
                             dt(k) * (t(i)^2*exp(-5*t(i))-6*phi_vorwaerts(i));
    
        % Gl. (1) mit θ = 1 und lösen nach φ{n+1}:
        phi_rueckwaerts(i+1) = (phi_rueckwaerts(i) + ...
                               dt(k) * t(i+1)^2*exp(-5*t(i+1)))/(1+6*dt(k));
        
        % Gl. (1) mit θ = 1/2 und lösen nach φ{n+1}:
        phi_trapez(i+1) = (...
                           phi_trapez(i) + ...
                           dt(k)/2 * ( t(i+1)^2 * exp(-5*t(i+1)) +   ...
                           t(i)^2 * exp(-5*t(i)) - 6*phi_trapez(i) ) ...
                           ) / (1+3*dt(k));
    
    end
    
    figure(k)
    hold on
    plot(t,phi_vorwaerts,'LineWidth',1,'DisplayName','Vorwärts-Euler-Verfahren')
    plot(t,phi_rueckwaerts,'LineWidth',1,'DisplayName','Rückwärts-Euler-Verfahren')
    plot(t,phi_trapez,'LineWidth',1,'DisplayName','Trapezregel')
    plot(0:0.01:2,phi(0:0.01:2),'k--','LineWidth',1,'DisplayName','Exakt'); % exakte Lösung zum Vergleichen
    legend
    xlabel('t')
    ylabel('\phi(t)')
    title(['Lösung mit Zeitschrittlänge: ',num2str(dt(k))])
    grid on

end








