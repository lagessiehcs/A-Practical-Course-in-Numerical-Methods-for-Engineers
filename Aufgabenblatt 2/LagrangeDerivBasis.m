function wert_dbasis = LagrangeDerivBasis(x,n,i,x_node)
% =========================================================================
% Rechnen der Ableitung der Basispolynome dL_ni(x)/dx für die Ableitung des 
% Lagrange-Polynoms.
%
% Ableitung des Lagrange-Polynoms wird dann gerechnet mithilfe der 
% Ableitung der Basispolynome in LagrangeDerivPolynom.m
%
%
% x     :   ausgewertete Position
% n     :   Ordnung (Grad)
% x_node:   x-Wert von den Stützstellen (x, y)
% i 	:   Index, L_ni bedeutet i-tes Basispolynom des Lagrange-Polynom 
%           der Ordnung n
% =========================================================================

sum_array = zeros(1, length(x));
prod_array = ones(1, length(x));

for m = 1:n+1
    if m ~= i
        for k = 1:n+1        
            if k~=i && k~=m        
                prod_array = prod_array .* (x-x_node(k)) ./ (x_node(i)-x_node(k));
            end
        end
        sum_array = sum_array + prod_array ./ (x_node(i)-x_node(m));
        prod_array = ones(1, length(x));
    end
end
wert_dbasis = sum_array;

end