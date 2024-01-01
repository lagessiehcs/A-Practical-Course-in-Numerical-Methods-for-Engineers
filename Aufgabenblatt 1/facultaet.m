function nfac = facultaet(n)
% ============================================
% Fkt. A
% ============================================
if n == 0 || n == 1
    nfac = 1;
elseif n ~= round(n)
    disp('n muss eine ganzzahlige Zahl sein')
    nfac = nan;
elseif n < 0
    disp('n muss eine positive Zahl sein')
    nfac = nan;
else
    nfac = n*factorial(n-1);
end

end



