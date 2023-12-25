function wert_basis = LagrangeBasis(x,n,i,x_node)
% =========================================================================
% Rechnen der Basispolynome L_ni für das Lagrange-Polynom vom Grad n:
%
% P_n(x) = L_n1(x) * y_{1} + ... + Ln(n+1)(x) * y_{n+1}
%
% Das Lagrange-Polynom an der Stelle x wird dann gerechnet mithilfe der 
% Basispolynome in LagrangePolynom.m.
%
% x     :   ausgewertete Position
% n     :   Ordnung (Grad)
% x_node:   x-Wert von den Stützstellen (x, y)
% i 	:   Index, L_ni bedeutet i-tes Basispolynom des Lagrange-Polynom 
%           der Ordnung n
% =========================================================================

wert = ones(1,length(x));

for k =1:n+1
    if k ~= i
        wert = wert .* (x-x_node(k)) ./ (x_node(i)-x_node(k));
    end
end
wert_basis = wert;


end