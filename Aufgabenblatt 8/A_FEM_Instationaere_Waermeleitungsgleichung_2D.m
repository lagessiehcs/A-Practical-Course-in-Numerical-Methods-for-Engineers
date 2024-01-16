close all
clear
clc
addpath("..\Aufgabenblatt 1\","..\Aufgabenblatt 3\","..\Aufgabenblatt 5\","..\Aufgabenblatt 6\","..\Aufgabenblatt 7\")

%% Parameter
% Verfahren, θ und Zeitschrittlänge von ∆t sind gegeben und können hier 
% eingestellt werden.

timInt_m = 4; % [Zeitintegrationsverfahren: 1 = OST, 2 = AB2, 3 = AM3, 4 = BDF2]
theta    = 0.5;
timestep = 500;
t_s      = 5000; % t*

% Außerdem kan ausgewählt werden, ob die Ergebnisse geplottet werden
% sollen.
plot_ergebnis = 1;

% Plot Geschwindigkeit
% max = 1 eingeben for max speed
max_speed = 1;
plot_geschwindigkeit = 10; 

%% Initialisierung
% Temperatur am Rand
T_0  = 300;
T_R1 = 600;
T_R2 = 300;

% Geometrie
r = 0.02;
b = 0.3;
h = 0.3;
gitter_weite_x = b/3;
gitter_weite_y = h/3;

% Gauß-Quadratur mit n = 2
gpx = gx2dref(2); % n = 2 laut Angabe
gpw = gw2dref(2); % n = 2 laut Angabe

% Dirichlet Randbedingung-Matrix 
% (Zeile: (dbc), Spalte [1: Knotenindex, 2: Wert]):
% dbc = [Knotenindex    Temperatur]
dbc   = [     1            600
              2            600
              3            600
              4            600
              12           300
              13           300
              14           300
              18           300  ];  

% Den Elementen die Knotenindizes zuweisen
ele    = [1  2  6  5
          2  3  7  6
          3  4  8  7
          5  6  10 9
          6  7  11 10
          7  12 14 11
          7  8  13 12
          9  10 16 15
          10 11 17 16
          11 14 18 17]; % Zeilen: Elemente, Spalten: Knotenindex

% Koordinate der Knoten (Zeilen: Knoten, Spalte: (x,y)-Koordinate) (als
% Funktion von r)
Knoten   =     [        0                   0               % Knote 1
                   gitter_weite_x           0               % Knote 2
                 2*gitter_weite_x           0               % Knote 3
                        b                   0               % Knote 4
                        0             gitter_weite_y        % Knote 5
                   gitter_weite_x     gitter_weite_y        % Knote 6
                 2*gitter_weite_x     gitter_weite_y        % Knote 7
                        b             gitter_weite_y        % Knote 8
                        0           2*gitter_weite_y        % Knote 9
                   gitter_weite_x   2*gitter_weite_y        % Knote 10
                 2*gitter_weite_x   2*gitter_weite_y        % Knote 11
                  b - r*sin(pi/6)   h - r*cos(pi/6)         % Knote 12
                        b                  h-r              % Knote 13
                  b - r*cos(pi/6)   h - r*sin(pi/6)         % Knote 14
                        0                   h               % Knote 15
                   gitter_weite_x           h               % Knote 16
                       b/2                  h               % Knote 17
                       b-r                  h         ];    % Knote 18



%% Schleife über t = 0:dt:t_s 

% Zeit initialisieren
t = 0;

% Argumente initialisiren
T       = zeros(18,length(t)-1); % Zeilen: Knotentemperatur, Spalten: Zeitschritt

T0      = 300*ones(18,1);

% elesol und eleosol initialisieren für die 1. Iteration
eleosol = zeros(4,10); % Zeilen: 10 Elemente, Spalten: 4 Knotentemperatur pro Element
elesol  = zeros(4,10); % Zeilen: 10 Elemente, Spalten: 4 Knotentemperatur pro Element
for i = 1:10 % Schleife über alle Elementen
    elesol(:,i)  = T0(ele(i,:));
end

% T_last_step für die 1. Iteration
T_last_step = T0;

% der erste Zeitschritt mit der Zeit t∗, bei dem die maximal zulässige 
% Temperatur Tk = 450 K überschritten wird
t_krit = inf;


for step = 0:length(0:timestep:t_s)-2 % Schleife über t = t0..t10

    % Knoten, Matrizen und Vektoren initialisieren für jede Zeitschritt
    elemat = zeros(4,4,10); % Elementmatrix Ae: 10 Elemente, eine (4,4)-Matrix pro Element
    elevec = zeros(4,10);   % Elementvektor fe: 10 Elemente, ein vier-Einträge-Vektor pro Element
    sysmat = zeros(18); % 18 Einträge für 18 Knoten
    rhs    = zeros(18,1);  

    % elesol und eleosol:
    % Wenn step == 0, nimm die initialisierte Werte für elesol und eleosol,
    % sonst:
    if step > 0 
        T_this_step = T(:,step);

        % Wenn step == 1, Temperatur in last step is T0, nimm den 
        % initialisierten Wert für T_last_step, sonst:
        if step > 1 
            T_last_step = T(:,step-1);
        end
        for i = 1:10
            elesol(:,i)  = T_this_step(ele(i,:));
            eleosol(:,i) = T_last_step(ele(i,:));
        end
    end

    % Systemmatrix A und Systemvektor f aus Elementmatrix Ae und Elementvektor fe berechnen    
    for i = 1:10 % Schleife über alle Elementen
        % elenode von dem Element i:
        index = ele(i,:);
        elenodes  = [Knoten(index(1),:);Knoten(index(2),:);
                     Knoten(index(3),:);Knoten(index(4),:)];
    
        % Elementmatrix Ae und Elementvektor fe
        [elemat(:,:,i),elevec(:,i)] = evaluate_instat(elenodes,gpx,gpw,elesol(:,i), ...
                                      eleosol(:,i),timInt_m,timestep,theta,step==0);
    
        % Systemmatrix A und Systemvektor f
        [sysmat,rhs] = assemble(elemat(:,:,i),elevec(:,i),sysmat,rhs,ele(i,:));
    end
    
    % r Aufbringung der Dirichlet-Randbedingungen in die globale Matrix A 
    % sowie in den globalen Lastvektor f
    [sysmat,rhs] = assignDBC(sysmat,rhs,dbc);
    
    % A*T=f nach T lösen
    T(:,step+1) = sysmat\rhs; 

    
    % Find t_s, wo die Temperatur in den Knoten (15, 16, 17, 18) zum ersten
    % Mal T_max = 450K überschritten wird
    t = t + timestep; 
    if max(T(15:18,step+1)) > 450 && t<t_krit
        t_krit = t;
    end

    
end

% Ergebnisse:
T_5000    = T(:,end);
T_15_5000 = T_5000(15);
T_16_5000 = T_5000(16);
T_17_5000 = T_5000(17);
T_18_5000 = T_5000(18);

T_t_krit    = T(:,t_krit/timestep);
T_15_t_krit = T_t_krit(15);
T_16_t_krit = T_t_krit(16);
T_17_t_krit = T_t_krit(17);
T_18_t_krit = T_t_krit(18);

%% Plot Ergebnis
if plot_ergebnis

    verfahren = {'OST' 'AB2' 'AM3' 'BDF2'};
    
    % Plot all Zeitschritte von t=0 bis t=5000
    for i = 0:size(T,2)
    
        figure(1)   
        if i == 0
            quadplot(Knoten,ele,T0)
        else
            quadplot(Knoten,ele,T(:,i))
        end
    
        title(['Temperatur zum Zeitpunkt t = ', num2str(i*timestep),'s, ',verfahren{timInt_m},'(\Deltat = ', num2str(timestep),'s)'])
        colormap hot        
        xlim([0 b])
        ylim([0 h])
        if timInt_m == 1
            zlim([T_R2 T_R1])
        end
        xlabel('x')
        ylabel('y')
        zlabel('T(x,y)')
        shading interp
        view(210,30)
        colorbar
        
        if ~max_speed
            pause(1/plot_geschwindigkeit)
        end
    
    end
    
    T_plot = [T_t_krit T_5000];
    t_plot = [t_krit 5000];
    for i = 1:length(t_plot)
    
        figure(1+i)
        quadplot(Knoten,ele,T_plot(:,i))
        title(['Temperatur zum Zeitpunkt t = ', num2str(i*timestep),'s, ',verfahren{timInt_m},'(\Deltat = ', num2str(timestep),'s)'])
        colormap hot    
        xlim([0 b])
        ylim([0 h])
        if timInt_m == 1
            zlim([T_R2 T_R1])
        end
        xlabel('x')
        ylabel('y')
        zlabel('T(x,y)')
        shading interp
        view(210,30)
        colorbar       
    end
end


