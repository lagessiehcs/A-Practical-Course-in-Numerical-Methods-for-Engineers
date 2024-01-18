function x = solveG(A,b,x0,rtol,itermax)
% =========================================================================
% Fkt XV
%
% A ... Matrix A des Gleichungssystems Ax = b
% b ... Vektor b des Gleichungssystems Ax = b
% x0 ... Startvektor für die Lösung x0
% rtol ... Zu erreichende Toleranz der L2-Norm des Residuumsvektors r = b − Ax
% itermax ... Maximale Anzahl an Iteration bei der das Verfahren gestoppt wird
%
% Rückgabewert: Spaltenvektor mit Lösung x
% =========================================================================

r = b - A*x0;
k = 0;
x = x0;
while norm(r) > rtol && k < itermax
    v = A*r;
    alpha = (r'*r)/(r'*v);
    x = x + alpha*r;
    r = r - alpha*v;
    k = k + 1;
end

end