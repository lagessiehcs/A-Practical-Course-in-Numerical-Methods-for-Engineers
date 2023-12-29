function gaussw = gw2dref(n)

% ======================================================
% Fkt VI
% Diese Funktionen sollen für den 
% Intervall [a, b] = [-1, 1] und n < 4 erstellt werden.
%
% Reihenfolge der Gaußpunkte ist beliebig
% ======================================================

gaussw = zeros(n^2,1);
w = gw(n);
indx  = 1;

for i = 1:n
    for j = 1:n
        gaussw(indx) = w(i)*w(j);
        indx = indx + 1;
    end
end

end
