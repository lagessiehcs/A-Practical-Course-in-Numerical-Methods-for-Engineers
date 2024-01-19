clear
clc

%% Initialisierte werte

thetas = [10.0, 6.0, 5.1, 5.01, 5.001, 5.00001, 5.0000001, 5.000000001, 5.00000000001]';
n = 300; % Dimension der Matrix A
rtol = 1e-7;
x0 = zeros(n,1);
itermax = 3000;

% Lösungszeit
Loesungszeit_Gauss = zeros(length(thetas),1);
Loesungszeit_G = zeros(length(thetas),1);
Loesungszeit_CG = zeros(length(thetas),1);
Loesungszeit_Matlab_LD = zeros(length(thetas),1);
Loesungszeit_Matlab_inverse = zeros(length(thetas),1);

% Iteration
Iteration_G = zeros(length(thetas),1);
Iteration_CG = zeros(length(thetas),1);

% Vektor b
b = ones(n,1);

%% Schleife über alle thetas
for Verfahren = 1:5
    for i = 1:length(thetas)        
        % Matrix A erstellen
        theta = thetas(i);
        A_Diagonale        = diag([1 theta*ones(1,n-1)]);
        A_obere_Diagonale  = diag(-2*ones(1,n-1),1);
        A_untere_Diagonale = diag(-2*ones(1,n-1),-1);
        A = A_Diagonale + A_obere_Diagonale + A_untere_Diagonale;

        % Verfahren anwenden
        switch Verfahren
            case 1  % solveGauss
                tic
                x = solveGauss(A,b);
                Loesungszeit_Gauss(i) = toc;

            case 2  % solveG
                tic
    	        [x,Interationen] = solveG(A,b,x0,rtol,itermax);
                Loesungszeit_G(i) = toc;
                Iteration_G(i) = Interationen;

            case 3  % solve CG
                tic
                [x,Interationen] = solveCG(A,b,x0,rtol,itermax);
                Loesungszeit_CG(i) = toc;
                Iteration_CG(i) = Interationen;

            case 4  % Matlab-Löser left division
                tic
                x = A\b;
                Loesungszeit_Matlab_LD(i) = toc;

            case 5  % Matlab-Löser Inverse
                tic
                x = A^(-1)*b;
                Loesungszeit_Matlab_inverse(i) = toc;
                
        end
    end

    elapsed_times = table(thetas,Loesungszeit_Gauss, Loesungszeit_G, Loesungszeit_CG, Loesungszeit_Matlab_LD, Loesungszeit_Matlab_inverse);
    interations = table(thetas, Iteration_G, Iteration_CG);


end