function x = solveGauss(A,b)
% =========================================================================
% Fkt XIV
%
% A ... Matrix A(nxn) des Gleichungssystems Ax = b
% b ... Vektor b des Gleichungssystems Ax = b
%
% Rückgabewert: Spaltenvektor mit Lösung x
% =========================================================================

n = size(A,1);

% Matrix (A|b) auf Zeilenstufenform bringen
for i = 1:n
    for j = i+1:n

        % Multiplikator m_ij = a_ij/a_ii
        m_ij = A(j,i) / A(i,i);        
        A(j,:) = A(j,:) - m_ij*A(i,:);
        b(j) = b(j) - m_ij*b(i);
    end
end

% x berechnen
x = zeros(n,1);

for i = n:-1:1 % Schleife über alle Zeilen von n-te nach erste

    % x(i) = RHS/LHS    
    % LHS:
    LHS = A(i,i);
    
    % RHS:
    RHS = b(i);
    for j = 1:n % Schleife über alle Elementen in der Zeile

        % x_i muss auf der linken Seite bleiben
        if j == i
            continue
        end        
        RHS = RHS - A(i,j)*x(j); % Damit auf der linken Seite nur noch die unbekannte x(i) ist
    end

    % Jetzt kann x(i) berechnet werden
    x(i) = RHS/LHS;
end