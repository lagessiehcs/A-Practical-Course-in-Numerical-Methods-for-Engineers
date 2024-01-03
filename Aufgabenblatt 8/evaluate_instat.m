function [elemat,elevec] = evaluate_instat(elenodes,gpx,gpw,elesol, ...
                           eleosol,timInt_m,timestep,theta,firststep)
% ===============================================================================
% Fkt XIX
%
% elenodes  ... [Knotenpositionen(Zeile: Knoten i, Spalte: x,y)]
% gpx       ... [Positionen ξi Gauss-Integration]
% gpw       ... [Gewichte wi Gauß-Integration]
% elesol    ... [Lösung Zeitschritt (n)-Spaltenvektor]
% eleosol   ... [Lösung Zeitschritt (n-1)-Spaltenvektor]
% timInt_m  ... [Zeitintegrationsverfahren: 1 = OST, 2 = AB2, 3 = AM3, 4 = BDF2]
% timestep  ... [Zeitschrittlänge ∆t]
% theta     ... [θ für OST]
% firststep ... [erste Zeitschritt?]
%
% Rückgabewert: Elementmatrix A(e) und Elementvektor f(e)
% ===============================================================================

rho    = 7800;
c      = 452;

M      = zeros(4);
elemat = zeros(4);
elevec = zeros(4,1);

B = -evaluate_stat(elenodes,gpx,gpw);


for i = 1:size(elemat,1) % Schleife über alle Zeilen der Elementmatrix
    for j = 1:size(elemat,1) % Schleife über alle Spalten der Elementmatrix
        for k = 1:size(gpx,1)  % Schleife über alle Gaußpunkte im Element
            xi         = gpx(k,1);
            eta        = gpx(k,2);
            [~,detJ,~] = getJacobian(elenodes, xi, eta);
            N          = linquadref(xi,eta);
            M(i,j)     = M(i,j) + rho*c*N(i)*N(j)'*detJ*gpw(k);
        end
        % Für alle Verfahren, die eine Lösung aus Zeitschritt φ(t{n−1}) 
        % benötigen, verwenden die Trapezregel (θ = 0.5) für den ersten 
        % Zeitschritt:
        if timInt_m~=1 && firststep
            [elemat(i,j),vec] = OST(0.5,timestep,M(i,j),[B(i,j) B(i,j)],[0 0],elesol(j));
            % elemat * T = elevec
            % Zeilenweise:
            % elemat(i,:) * T(:) = elevec(i)
            % elemat(i,j) * T(j) = vec 
            % -> summe alle vec  = elevec(i):
            elevec(i) = elevec(i) + vec;   
        else        
            switch timInt_m
                case 1 % OST               
                    [elemat(i,j),vec] = OST(theta,timestep,M(i,j),[B(i,j) B(i,j)],[0 0],elesol(j)); 
                    elevec(i) = elevec(i) + vec;  
                case 2 % AB2                    
                    [elemat(i,j),vec] = AB2(timestep,M(i,j),[B(i,j) B(i,j)],[0 0],[elesol(j) eleosol(j)]);    
                    elevec(i) = elevec(i) + vec;  
                case 3 % AM3                          
                    [elemat(i,j),vec] = AM3(timestep,M(i,j),[B(i,j) B(i,j) B(i,j)],[0 0 0],[elesol(j) eleosol(j)]);   
                    elevec(i) = elevec(i) + vec;  
                case 4 % BDF2
                    [elemat(i,j),vec] = BDF2(timestep,M(i,j),B(i,j), 0,[elesol(j) eleosol(j)]); 
                    elevec(i) = elevec(i) + vec;  
            end
        end
    end
end
end