function gaussx = gx2dref(n)

% ======================================================
% Fkt IV
% Diese Funktionen sollen für den 
% Intervall [a, b] = [-1, 1] und n < 4 erstellt werden.
%
% Reihenfolge der Gaußpunkte ist beliebig
% ======================================================

gaussx = zeros(n^2,2);
xi = gx(n);
indx  = 1;

for i = 1:n
    for j = 1:n
        gaussx(indx,:) = [xi(i) xi(j)];
        indx = indx + 1;
    end
end

end