function [elemat,elevec] = evaluate_stat(elenodes,gpx,gpw)
% =========================================================================
% Fkt XVII
%
% elenodes ... [Knotenpositionen(Zeile: Knoten i, Spalte: x,y)]
% gpx      ... [Positionen ξi Gauss-Integration],
% gpw      ... [Gewichte wi Gauss-Integration]]
%
% Rückgabewert: Elementmatrix A(e) und Elementvektor f(e)
% =========================================================================
lamda = 48;

grad_N = zeros(4,1);
elemat = zeros(size(grad_N,1));

for k = 1:size(gpx,1)  % Schleife über alle Gaußpunkte im Element
    xi  = gpx(k,1);
    eta = gpx(k,2);
    [~,detJ,invJ] = getJacobian(elenodes, xi, eta);
    grad_N = linquadderivref(xi,eta)*invJ;
    for i = 1:size(grad_N,1) % Schleife über alle Zeilen der Elementmatrix
        for j = 1:size(grad_N,1) % Schleife über alle Spalten der Elementmatrix
            elemat(i,j) = elemat(i,j) + lamda*grad_N(i,:)*grad_N(j,:)'*detJ*gpw(k);
        end
    end

elevec = zeros(size(elemat,1),1);

end