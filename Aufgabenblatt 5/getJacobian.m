function [J,detJ,invJ] = getJacobian(nodes, xi, eta)

% =======================================================================
% Fkt VIII
% Für folgende Funktionen ist der Inputparameter ’nodes’ eine Matrix mit 
% den Positionen der Ecken des Elements: (Zeile: Knoten i, Spalte: x,y)
%
% =======================================================================

J = zeros(2,2);
N = linquadderivref(xi,eta); % Fkt II

for i = 1:4
    J(:,1) = J(:,1) + N(i,1) * nodes(i,:)';
    J(:,2) = J(:,2) + N(i,2) * nodes(i,:)';
end

detJ = det(J);
invJ = J^(-1);

end
