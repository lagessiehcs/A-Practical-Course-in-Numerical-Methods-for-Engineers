function [sysmat,rhs] = assignDBC(sysmat,rhs,dbc)
% =========================================================================
% Fkt XIX
%
% sysmat ... Systemmatrix A
% rhs    ... Systemvektor f
% dbc    ... Dirichlet Randbedingung-Matrix 
% (Zeile: (dbc), Spalte (1: Knotenindex, 2: Wert)]
%
% Rückgabewert: Systemmatrix A, Systemvektor f
% =========================================================================

for i = 1:size(dbc,1)
    zeile_system_matrix = dbc(i,1);
    spalte_system_matrix = zeile_system_matrix;
    sysmat(zeile_system_matrix,:) = zeros(1,size(sysmat,2));
    sysmat(zeile_system_matrix,spalte_system_matrix) = 1;
    
    zeile_system_vector = zeile_system_matrix;
    rhs(zeile_system_vector) = dbc(i,2);
end

end