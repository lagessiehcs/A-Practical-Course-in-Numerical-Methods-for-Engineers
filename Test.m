clear 
clc
addpath("Aufgabenblatt 1\","Aufgabenblatt 3\")
Test_text

disp('=========================================== Modultest ===========================================')


%% Test 1: facultaet(0) = 1?
test          = 1;
test_function = facultaet(0);
result        = 1;
tol           = 1e-12;


diff = test_function-result;
if diff <= tol 
    fprintf(test_pass{test})
else
    fprintf(2,test_failed{test},test_function,diff)    
end

%% Test 2: facultaet(5) = 120?
test          = 2;   
test_function = facultaet(5);
result        = 120;
tol           = 1e-12;

diff = test_function-result;
if diff <= tol 
    fprintf(test_pass{test})
else
    fprintf(2,test_failed{test},test_function,diff)    
end

%% Test 3: linquadref(0.0,0.0) = [0.25;0.25;0.25;0.25]?
test          = 3;
test_function = linquadref(0.0,0.0);
result        = [0.25;0.25;0.25;0.25];
size_result   = [4 1];
tol           = 1e-12;

if ~isequal(size(test_function), size_result)
    fprintf(2,test_wrong_format{test},size(test_function))
else
    diff = test_function-result;
    if diff <= tol 
        fprintf(test_pass{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end
end

%% Test 4: linquadref(0.577,-0.577) = [0.16676775;0.62173225;0.16676775;0.04473225]?
test          = 4;
test_function = linquadref(0.577,-0.577);
result        = [0.16676775;0.62173225;0.16676775;0.04473225];
size_result   = [4 1];
tol           = 1e-12;

if ~isequal(size(test_function), size_result)
    fprintf(2,test_wrong_format{test},size(test_function))
else
    diff = test_function-result;
    if diff <= tol 
        fprintf(test_pass{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end
end

%% Test 5: linquadderivref(0.0,0.0) = [-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25]?
test          = 5;
test_function = linquadderivref(0.0,0.0);
result        = [-0.25 -0.25;0.25 -0.25;0.25 0.25;-0.25 0.25];
size_result   = [4 2];
tol           = 1e-12;

if ~isequal(size(test_function), size_result)
    fprintf(2,test_wrong_format{test},size(test_function))
else
    diff = test_function-result;
    if diff <= tol 
        fprintf(test_pass{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end
end

%% Test 6: linquadderivref(0.577,-0.577) = [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575]?
test          = 6;
test_function = linquadderivref(0.577,-0.577);
result        = [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575];
size_result   = [4 2];
tol           = 1e-12;

if ~isequal(size(test_function), size_result)
    fprintf(2,test_wrong_format{test},size(test_function))
else
    diff = test_function-result;
    if diff <= tol 
        fprintf(test_pass{test})
    else
        fprintf(2,test_failed{test},test_function,diff)    
    end
end