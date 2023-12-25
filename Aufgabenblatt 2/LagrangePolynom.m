function wert_poly = LagrangePolynom(x,n,x_node,f_node)
% =========================================================================
% Rechnen des Lagrange-Polynom der Ordnung n:%
% P_n(x) = L_n1(x) * y_{1} + ... + Ln(n+1)(x) * y_{n+1}
%
% Die Basispolynome L_ni werden in LagrangeBasis.m bereits gerechnet.
%
% x     :   ausgewertete Position
% n     :   Ordnung (Grad)
% x_node:   x-Wert von den Stützstellen (x, y)
% f_node:   y-Wert von den Stützstellen (x, y)
% =========================================================================
wert = zeros(1,length(x));
for i = 1:n+1
    wert = wert + LagrangeBasis(x,n,i,x_node) .* f_node(i);
end

wert_poly = wert;
end
