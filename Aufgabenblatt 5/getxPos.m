function x = getxPos(nodes, xi, eta)

% =======================================================================
% Fkt VII
% Für folgende Funktionen ist der Inputparameter ’nodes’ eine Matrix mit 
% den Positionen der Ecken des Elements: (Zeile: Knoten i, Spalte: x,y)
%
% Reihenfolge der Gaußpunkte ist beliebig
% =======================================================================

wert = zeros(2,1);
N = linquadref(xi,eta);

for i = 1:4
    wert = wert + N(i) * nodes(i,:)';
end
x = wert;

end