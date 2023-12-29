% =========================================================================
% _________________________________________________________________________
% Test                                        Aufgabenblatt 
% -------------------------------------------------------------------------
% 001                                               1
% 002                                               1
% 003                                               3
% 004                                               3
% 005                                               3
% 006                                               3
% 007                                               5
% 008                                               5
% 009                                               5
% 010                                               5
% 010                                               5
% 011                                               5
% 012                                               5
% 013                                               5
% 014                                               5
% 015                                               5
% 016                                               5
% 017                                               5
% 018                                               5
% 019                                               6
% 020                                               6
% 021                                               6
% 022                                               6
% _________________________________________________________________________
% =========================================================================




clear 
clc
addpath("Aufgabenblatt 1\","Aufgabenblatt 3\","Aufgabenblatt 5\","Aufgabenblatt 6\")
Test_text
disp('=========================================== Modultest ===========================================')

a   	      = 0.577350269189626;
b   	      = 0.774596669241483;

result        = {1; 120; [0.25;0.25;0.25;0.25] 
                [0.16676775;0.62173225;0.16676775;0.04473225] 
                [-0.25 -0.25;0.25 -0.25;0.25 0.25;-0.25 0.25]
                [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575]
                [-0.774596669241483,0,0.774596669241483]
                [0.55555555555555, 0.888888888888889, 0.55555555555555]
                [0.0,0.0]; [-a,-a;-a,a;a,-a;a,a]
                [-b,-b;-b,0;-b,b;0,-b;0,0;0,b;b,-b;b,0;b,b]; 4.0
                [1.0;1.0;1.0;1.0] 
                [0.308642;0.493827;0.308642;0.493827;0.790123;0.493827;0.308642;0.493827;0.308642]
                [3.577; 1.37826775]; [1.0, 0; 0.10575, 0.89425]; 0.89425
                [1.0,0;-0.1182555,1.1182555]; 0.96; 2.85; 1.1; 3.114
                0.983333333333333; 2.894}; % Zum Vergleich mit test_function

size_result   = {[1 1]; [1 1]; [4 1]; [4 1]; [4 2]; [4 2]; [1 3]; [1 3]
                 [1 2]; [4 2]; [9 2]; [1 1]; [4 1]; [9 1]; [2 1]; [2 2]
                 [1 1]; [2 2]; [1 1]; [1 1]; [1 1]; [1 1]; [1 1]; [1 1]}; % Zum Vergleich mit test_function size

error         = false;


for test = 1:length(size_result)
    tol           = 1e-12; % Toleranz
    try 
        switch test
            case 1
                test_function = facultaet(0);
            case 2 
                test_function = facultaet(5);
            case 3
                test_function = linquadref(0.0,0.0);
            case 4
                test_function = linquadref(0.577,-0.577);
            case 5
                test_function = linquadderivref(0.0,0.0);
            case 6
                test_function = linquadderivref(0.577,-0.577);
            case 7
                test_function = gx(3);
            case 8
                test_function = gw(3);
            case 9
                test_function = gx2dref(1);
            case 10
                test_function = gx2dref(2);
            case 11
                test_function = gx2dref(3);
            case 12
                test_function = gw2dref(1);
            case 13
                test_function = gw2dref(2);
            case 14
                test_function = gw2dref(3); tol  = 1e-6;
            case 15
                test_function = getxPos([2, 1; 4, 1; 4, 3; 2, 2], 0.577, -0.577);
            case 16 
                [test_function,~,~] = getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577);
            case 17 
                [~,test_function,~] = getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577);
            case 18
                [~,~,test_function] = getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577); tol  = 1e-7;
            case 19
                [test_function,~] = OST(0.5,0.2,1.1,[1.4,1.5],[1.7, 1.8],2.0);
            case 20
                [~,test_function] = OST(0.5,0.2,1.1,[1.4,1.5],[1.7, 1.8],2.0);
            case 21 
                [test_function,~] = AB2(0.2,1.1,[1.5,1.6],[1.8,1.9],[2.0,2.1]);
            case 22
                [~,test_function] = AB2(0.2,1.1,[1.5,1.6],[1.8,1.9],[2.0,2.1]);
            case 23
                [test_function,~] = AM3(0.2,1.1,[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]);
            case 24
                [~,test_function] = AM3(0.2,1.1,[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]);
        end
    catch
        fprintf(2,test_error{test})
        error = true;
    end

    if ~error
        if ~isequal(size(test_function), size_result{test})
            fprintf(2,test_wrong_size{test},size(test_function))
        else

            if any(test == [7 8 9 10]) % (Reihenfolge der Gaußpunkte ist beliebig)
                test_function_copy = test_function; % Kopie von test_function
                result{test} = sort(result{test});  
                test_function = sort(test_function);
            end
            diff = abs(test_function-result{test});
            if ~all(diff(:)<=tol)
                if any(test == [7 8]) 
                    fprintf(2,test_failed{test},result{test},test_function,diff)
                elseif any(test == [10 11])
                    diff_max = max(diff(:));
                    fprintf(2,test_failed{test}{1},test_function,diff_max)
                else
                    fprintf(2,test_failed{test},test_function,diff)    
                end

            elseif test == 10 && ...
                   ~isequal(size(unique(test_function_copy,'rows')), size(test_function)) % check if all rows are unique
                fprintf(2,test_failed{test}{2},test_function)
                
            else
                fprintf(test_passed{test})
                
            end
        end
    end
end