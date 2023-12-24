clear 
clc
% format short
addpath("Aufgabenblatt 1\")
test_text_pass   = {'001:     Testing function: <Fkt A:        falcutaet(0)> ... passed (= 1, tol = 1e-12)!\n'
                    '002:     Testing function: <Fkt A:        falcutaet(5)> ... passed (= 120, tol = 1e-12)!\n'};

test_text_failed = {'001: !!! Testing function: <Fkt A:        falcutaet(0)> ... failed (1 ~= %f, diff = %f)\n';
                    '002: !!! Testing function: <Fkt A:        falcutaet(5)> ... failed (1 ~= %f, diff = %f)\n'};

              

disp('#########################################################################################')
disp('####################################### Modultest #######################################')

%% Test 1: facultaet(0) = 1
test = 1;
test_function = facultaet(0);
result = 1;
tol = 1e-12;


diff = test_function-result;
if diff <= tol 
    fprintf(test_text_pass{test})
else
    fprintf(2,test_text_failed{test},facultaet(0),diff)    
end

%% Test 2: facultaet(5) = 120
test = 2;
test_function = facultaet(5);
result = 120;
tol = 1e-12;

diff = test_function-result;
if diff <= tol 
    fprintf(test_text_pass{test})
else
    fprintf(2,test_text_failed{test},facultaet(0),diff)    
end