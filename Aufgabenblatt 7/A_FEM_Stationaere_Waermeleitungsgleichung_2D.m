close all
clear
clc
addpath("..\Aufgabenblatt 1\","..\Aufgabenblatt 3\","..\Aufgabenblatt 5\")

%% Initialisierung

% Temperatur am Rand
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
Knoten_r = @(r)[        0                   0               % Knote 1
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

T = inf(18,1); % T so intialieren damit in der erste Iteration T > 450 (K)
% Variable zum Speichern der Temperatur in den Knoten bei 
% r = 0.02 und r = r_krit (T_solution = [T_002 T_krit]
T_solution = zeros(18,2); 

%% Schleife über r bis Temperatur am Rand (y = h) kleiner 450K:

while(any(T(15:18)>450))

    % Knoten, Matrizen und Vektoren initialisieren
    elemat = zeros(4,4,10); % Elementmatrix Ae: 10 Elemente, eine (4,4)-Matrix pro Element
    elevec = zeros(4,10);   % Elementvektor fe: 10 Elemente, ein vier-Einträge-Vektor pro Element
    sysmat = zeros(18); % 18 Einträge für 18 Knoten
    rhs    = zeros(18,1);  
    Knoten = Knoten_r(r);
    
    % Systemmatrix A und Systemvektor f aus Elementmatrix Ae und Elementvektor fe berechnen
    for i = 1:10 % Schleife über alle Elementen
        index = ele(i,:);
        elenodes  = [Knoten(index(1),:);Knoten(index(2),:);
                     Knoten(index(3),:);Knoten(index(4),:)];
    
        % Elementmatrix Ae und Elementvektor fe
        [elemat(:,:,i),elevec(:,i)] = evaluate_stat(elenodes,gpx,gpw);
    
        % Systemmatrix A und Systemvektor f
        [sysmat,rhs] = assemble(elemat(:,:,i),elevec(:,i),sysmat,rhs,ele(i,:));
    end
    
    % r Aufbringung der Dirichlet-Randbedingungen in die globale Matrix A 
    % sowie in den globalen Lastvektor f
    [sysmat,rhs] = assignDBC(sysmat,rhs,dbc);
    
    % A*T=f nach T lösen
    T = sysmat^(-1) * rhs;
    % T = linsolve(sysmat,rhs);
  
    if r == 0.02 % Lösung für den ersten Teil der Aufgabe
        % Temperatur in den Knoten (15, 16, 17, 18) für r = 0.02: 
        T_solution(:,1) = T;  
    else
        T_solution(:,2) = T;
    end

    r_krit = r;
    r = r + 0.01; % r um 0.01 erhöhen
end

%% Plot Ergebnis
for i = 1:2
    figure(i)    
    if i == 1 % Plot für r = 0.02
        quadplot(Knoten_r(0.02),ele,T_solution(:,i))
        title('r = 0.02')
    elseif i == 2 % Plot für r = r_krit
        quadplot(Knoten_r(r_krit),ele,T_solution(:,i))
        title(['r = r_{krit} = ',num2str(r_krit)])
    end
    colormap hot    
    xlim([0 b])
    ylim([0 h])
    zlim([T_R2 T_R1])
    xlabel('x')
    ylabel('y')
    zlabel('T(x,y)')
    shading interp
    view(210,30)
    colorbar
end

%% Lösung zuweisen
T_15_002 = T_solution(15,1);
T_16_002 = T_solution(16,1);
T_17_002 = T_solution(17,1);
T_18_002 = T_solution(18,1);
T_15_krit = T_solution(15,2);
T_16_krit = T_solution(16,2);
T_17_krit = T_solution(17,2);
T_18_krit = T_solution(18,2);
