clear 
clc
addpath("Aufgabenblatt 1\","Aufgabenblatt 3\","Aufgabenblatt 5\")
Test_text

disp('=========================================== Modultest ===========================================')


%% Test 1: facultaet(0) = 1?
test          = 1;
result        = 1;
tol           = 1e-12;
error         = false;

try 
    test_function = facultaet(0);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    diff = abs(test_function-result);
    if diff <= tol 
        fprintf(test_passed{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end

end
%% Test 2: facultaet(5) = 120?
%  (Aufgabenblatt 1)
test          = 2;   
result        = 120;
tol           = 1e-12;
error         = false;

try 
    test_function = facultaet(5);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    diff = abs(test_function-result);
    if diff <= tol 
        fprintf(test_passed{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end

end

%% Test 3: linquadref(0.0,0.0) = [0.25;0.25;0.25;0.25]?
%  (Aufgabenblatt 3)

test          = 3;
result        = [0.25;0.25;0.25;0.25];
size_result   = [4 1];
tol           = 1e-12;
error         = false;

try
    test_function = linquadref(0.0,0.0);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol)
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end
    
end

%% Test 4: linquadref(0.577,-0.577) = [0.16676775;0.62173225;0.16676775;0.04473225]?
%  (Aufgabenblatt 3)

test          = 4;
result        = [0.16676775;0.62173225;0.16676775;0.04473225];
size_result   = [4 1];
tol           = 1e-12;
error         = false;

try
    test_function = linquadref(0.577,-0.577);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol)
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end

end

%% Test 5: linquadderivref(0.0,0.0) = [-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25]?
%  (Aufgabenblatt 3)

test          = 5;
result        = [-0.25 -0.25;0.25 -0.25;0.25 0.25;-0.25 0.25];
size_result   = [4 2];
tol           = 1e-12;
error         = false;

try
    test_function = linquadderivref(0.0,0.0);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol) 
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end

end

%% Test 6: linquadderivref(0.577,-0.577) = [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575]?
%  (Aufgabenblatt 3)

test          = 6;
result        = [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575];
size_result   = [4 2];
tol           = 1e-12;
error         = false;

try
    test_function = linquadderivref(0.577,-0.577);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol) 
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end

end

%% Test 7: gx(3) = [-0.774596669241483,0,0.774596669241483]? 
%  (Reihenfolge der Gaußpunkte ist beliebig)
%  (Aufgabenblatt 5)

test          = 7;
result        = [-0.774596669241483,0,0.774596669241483];
size_result   = [1 3];
tol           = 1e-12;
error         = false;

try
    test_function = gx(3);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    result = sort(result);
    test_function = sort(test_function);
    
    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol) 
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end

end

%% Test 8: gw(3) = [0.55555555555555, 0.888888888888889, 0.55555555555555]?
%  (Reihenfolge der Gaußpunkte ist beliebig)
%  (Aufgabenblatt 5)

test          = 8;
result        = [0.55555555555555, 0.888888888888889, 0.55555555555555];
size_result   = [1 3];
tol           = 1e-12;
error         = false;

try 
    test_function = gw(3);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    result = sort(result);
    test_function = sort(test_function);
    
    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol)
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},result,test_function,diff)    
        end
    end

end

%% Test 9: gx2dref(1) = [0.0,0.0]? 
%  (Reihenfolge der Gaußpunkte ist beliebig)
%  (Aufgabenblatt 5)

test          = 9;
n             = 1;
result        = [0.0,0.0];
size_result   = [n^2 2];
tol           = 1e-12;
error         = false;

try
    test_function = gx2dref(n);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function-result);
        if all(diff <= tol)
            fprintf(test_passed{test})
        else
            fprintf(2,test_failed{test},test_function,diff)    
        end
    end

end

%% Test 10: gx2dref(2) = [-a,-a;-a,a;a,-a;a,a]? 
%  (Reihenfolge der Gaußpunkte ist beliebig)
%  (Aufgabenblatt 5)
test          = 10;
n             = 2;
a   	      = 0.577350269189626;
result        = [-a,-a;-a,a;a,-a;a,a];
size_result   = [n^2 2];
tol           = 1e-12;
error         = false;

try 
    test_function = gx2dref(n);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    test_function_sorted = sort(test_function);
    result_sorted        = sort(result);
    
    
    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function_sorted-result_sorted);
        if ~all(diff<=tol)
            fprintf(2,test_failed{test}{1},test_function,diff_max)
        elseif ~isequal(size(unique(test_function,'rows')), size(test_function)) % check if all rows are unique
            fprintf(2,test_failed{test}{2},test_function)
        else
            fprintf(test_passed{test})
    
        end    
    end

end

%% Test 11: gx2dref(3) = [-a,-a;-a,0;-a,a;0,-a;0,0;0,a;a,-a;a,0;a,a] ? 
%  (Reihenfolge der Gaußpunkte ist beliebig)
%  (Aufgabenblatt 5)
test          = 11;
n             = 3;
a   	      = 0.774596669241483;
result        = [-a,-a;-a,0;-a,a;0,-a;0,0;0,a;a,-a;a,0;a,a];
size_result   = [n^2 2];
tol           = 1e-12;
error         = false;

try 
    test_function = gx2dref(n);
catch
    fprintf(2,test_error{test})
    error = true;
end

if ~error

    test_function_sorted = sort(test_function);
    result_sorted        = sort(result);
    
    
    if ~isequal(size(test_function), size_result)
        fprintf(2,test_wrong_format{test},size(test_function))
    else
        diff = abs(test_function_sorted-result_sorted);
        if ~all(diff<=tol)
            fprintf(2,test_failed{test}{1},test_function,diff_max)
        elseif ~isequal(size(unique(test_function,'rows')), size(test_function)) % check if all rows are unique
            fprintf(2,test_failed{test}{2},test_function)
        else
            fprintf(test_passed{test})
    
        end    
    end

end