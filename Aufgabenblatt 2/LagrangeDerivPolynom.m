function wert_dpoly = LagrangeDerivPolynom(x,n,x_node,f_node)
% =========================================================================
% Rechnen der Ableitung des Lagrange-Polynoms.
% 
% Die Ableitung der Basispolynome dL_ni(x)/dx werden in 
% LagrangeDerivBasis.m bereits gerechnet.
%
% x     :   ausgewertete Position
% n     :   Ordnung (Grad)
% x_node:   x-Wert von den Stützstellen (x, y)
% f_node:   y-Wert von den Stützstellen (x, y)
% =========================================================================

wert = zeros(1,length(x));

for i = 1:n+1
    wert = wert + LagrangeDerivBasis(x,n,i,x_node) .* f_node(i);
end

wert_dpoly = wert;

end