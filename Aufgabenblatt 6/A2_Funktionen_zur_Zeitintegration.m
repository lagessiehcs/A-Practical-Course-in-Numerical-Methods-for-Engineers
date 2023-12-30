% =========================================================================
% dφ/dt = t^2*exp(−5t) − 6*φ 
% -> M = 1, B = -6, C = t^2*exp(−5t)
% =========================================================================
close all
clear
clc

phi = @(t) exp(-5.*t).*(t.^2-2.*t+2)-2.*exp(-6.*t); % exakte Lösung zum Vergleichen

% dφ/dt = t^2*exp(−5t) − 6*φ 
M = 1; B = -6; C =@(t) t.^2.*exp(-5.*t);
dt = [0.1 0.2 0.4];



for k = 1:length(dt)

    

    t = 0:dt(k):2;

    phi_vorwaerts   = zeros(1,length(t));
    phi_rueckwaerts = zeros(1,length(t));
    phi_trapez      = zeros(1,length(t));
    phi_AB2         = zeros(1,length(t));
    phi_AM3         = zeros(1,length(t));
    phi_BDF2        = zeros(1,length(t));

    
    for i = 1:length(t)-1

        % Einschritt-Theta-Verfahren:

        % theta = 0.0 (Vorwärts-Euler-Verfahren)
        [LHS,RHS] = OST(0.0,dt(k),M,[B B],[C(t(i+1)),C(t(i))],phi_vorwaerts(i));
        phi_vorwaerts(i+1) = RHS/LHS;

        % theta = 1.0 (Rückwärts-Euler-Verfahren)
        [LHS,RHS] = OST(1.0,dt(k),M,[B B],[C(t(i+1)),C(t(i))],phi_rueckwaerts(i));
        phi_rueckwaerts(i+1) = RHS/LHS;

        % theta = 0.5 (Trapezregel)
        [LHS,RHS] = OST(0.5,dt(k),M,[B B],[C(t(i+1)),C(t(i))],phi_trapez(i));
        phi_trapez(i+1) = RHS/LHS;

        % Für alle Verfahren, die eine Lösung aus Zeitschritt φ(t{n−1}) 
        % benötigen, verwenden die Trapezregel (θ = 0.5) für den ersten 
        % Zeitschritt:
        if i == 1 
            phi_AB2(i+1)  = RHS/LHS;
            phi_AM3(i+1)  = RHS/LHS;
            phi_BDF2(i+1) = RHS/LHS;            
        else
            % Adams-Bashforth-Verfahren:
            [LHS,RHS] = AB2(dt(k),M,[B B],[C(t(i)),C(t(i-1))],[phi_AB2(i),phi_AB2(i-1)]); 
            phi_AB2(i+1) = RHS/LHS;

            % Adams-Moulton-Verfahren:
            [LHS,RHS] = AM3(dt(k),M,[B B B],[C(t(i+1)),C(t(i)),C(t(i-1))],[phi_AM3(i),phi_AM3(i-1)]); 
            phi_AM3(i+1) = RHS/LHS;

            % BDF2-Verfahren:
            [LHS,RHS] = BDF2(dt(k),M,B,[C(t(i+1))],[phi_BDF2(i),phi_BDF2(i-1)]); 
            phi_BDF2(i+1) = RHS/LHS;
        end
        

    end

    figure(k)
    hold on
    plot(t,phi_vorwaerts,'LineWidth',1,'DisplayName','Vorwärts-Euler-Verfahren')
    plot(t,phi_rueckwaerts,'LineWidth',1,'DisplayName','Rückwärts-Euler-Verfahren')
    plot(t,phi_trapez,'LineWidth',1,'DisplayName','Trapezregel')
    plot(t,phi_AB2,'LineWidth',1,'DisplayName','AB2')
    plot(t,phi_AM3,'LineWidth',1,'DisplayName','AM3')
    plot(t,phi_BDF2,'LineWidth',1,'DisplayName','BDF2')
    plot(0:0.01:2,phi(0:0.01:2),'k--','LineWidth',1,'DisplayName','Exakt') % exakte Lösung zum Vergleichen
    legend
    xlabel('t')
    ylabel('\phi(t)')
    if dt(k) == 0.4
        ylim([0 9e-3])
    end
    title(['Lösung mit Zeitschrittlänge: ',num2str(dt(k))])
    grid on
end
    
    

 