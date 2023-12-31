function [sysmat,rhs] = assemble(elemat,elevec,sysmat,rhs,ele)
% =========================================================================
% Fkt XVIII
% 
% elemat ... Elementmatrix A(e)
% elevec ... Elementvektor f(e)
% sysmat ... Systemmatrix A
% rhs    ... Systemvektor f
% ele    ... globale Knotenindex (als Zeilenvektor)]
% =========================================================================

for i = 1:length(ele) % Schleife zum Aufrufen aller globale Zeilenindex
    % i: Zeilen der Elementmatrix A(e)
    globaleZeilenindex = ele(i);
    rhs(globaleZeilenindex) = rhs(globaleZeilenindex) + elevec(i);
    for j = 1:length(ele) % Schleife zum Aufrufen aller globale Spaltenindex
        % j: Spalten der Elementmatrix A(e)
        globaleSpaltenindex = ele(j);
        sysmat(globaleZeilenindex,globaleSpaltenindex) = sysmat(globaleZeilenindex,globaleSpaltenindex) + elemat(i,j);
        
    end
end


end