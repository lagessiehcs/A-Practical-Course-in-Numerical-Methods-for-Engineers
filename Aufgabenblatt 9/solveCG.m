function x = solveCG(A,b,x0,rtol,itermax)
% =========================================================================
% Fkt XVI
%
% A ... Matrix A des Gleichungssystems Ax = b
% b ... Vektor b des Gleichungssystems Ax = b
% x0 ... Startvektor für die Lösung x0
% rtol ... Zu erreichende Toleranz der L2-Norm des Residuumsvektors r = b − Ax
% itermax ... Maximale Anzahl an Iteration bei der das Verfahren gestoppt wird
%
% Rückgabewert: Spaltenvektor mit Lösung x
% =========================================================================

k = 0;
r_k = b - A*x0;
p = r_k;
x = x0;

while norm(r_k) > rtol && k < itermax

    % Matrix-Vektor-Produkt
    v = A * p;

    % Relaxationsparameter
    alpha = (r_k' * r_k)/(p' * v);

    % Neue Approximation 
    x = x + alpha * p;
    
    % Residuenvektor
    r_kplus1 = r_k - alpha*v;

    % Parameter berechnen 
    beta = (r_kplus1' * r_kplus1)/(r_k' * r_k);

    % Neue konjugierte Suchrichtung
    p = r_kplus1 + beta * p;

    % Erhöhung des Schrittzählers
    k = k+1;

    %  wird jetzt r_k
    r_k = r_kplus1;
end
k % Anzahl Iterationen

end