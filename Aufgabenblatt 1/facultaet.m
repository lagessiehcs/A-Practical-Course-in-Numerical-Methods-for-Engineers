function f = facultaet(n)

if n == 0 || n == 1
    f = 1;
elseif n ~= round(n)
    disp('n muss eine ganzzahlige Zahl sein')
    f = nan;
elseif n < 0
    disp('n muss eine positive Zahl sein')
    f = nan;
else
    f = n*factorial(n-1);
end

end



