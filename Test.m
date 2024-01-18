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
% 023                                               6
% 024                                               6
% 025                                               6
% 026                                               6
% 027                                               9
% 028                                               9
% 030                                               7
% 031                                               7
% 032                                               7
% 033                                               7
% 034                                               7
% 035                                               7
% 036                                               8
% 037                                               8
% _________________________________________________________________________
% =========================================================================




clear 
clc
addpath("Aufgabenblatt 1\","Aufgabenblatt 3\","Aufgabenblatt 5\","Aufgabenblatt 6\","Aufgabenblatt 7\","Aufgabenblatt 8\","Aufgabenblatt 9\")
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
                0.983333333333333; 2.894; 1.37; 3.585;
                [0.051282051282051;0.275641025641026;-0.064102564102564]
                [0.078600816156673;0.017489712225719;0.017901236448326]
                [0.078600823045267;0.017489711934156;0.017901234567901]
                [40.000000000000000,-28.000000000000004,-20.000000000000000,7.999999999999998;
                -28.000000000000004,40.000000000000007,8.000000000000000,-20.000000000000000;
                -20.000000000000000,8.000000000000000,39.999999999999993,-28.000000000000000;
                7.999999999999998,-20.000000000000000,-28.000000000000000,40.000000000000000]
                [0;0;0;0]
                [12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2]
                [20;21;19;1;18]; [12,12,10,0,9;0,1,0,0,0;7,8,7,0,5;0,0,0,1,0;0,0,0,0,1]
                [20;-7;19;1;-2]
                [809866.6666666666,373253.3333333334,182666.6666666667,397013.3333333334;
                373253.3333333334,809866.6666666669,397013.3333333334,182666.6666666667;
                182666.6666666667,397013.3333333334,809866.6666666667,373253.3333333334;
                397013.3333333334,182666.6666666667,373253.3333333334,809866.6666666666]
                [3736426.6666666665;3918693.3333333335;4895306.6666666670;5077573.3333333321]
                }; % Zum Vergleich mit test_function

size_result   = {[1 1]; [1 1]; [4 1]; [4 1]; [4 2]; [4 2]; [1 3]; [1 3]
                 [1 2]; [4 2]; [9 2]; [1 1]; [4 1]; [9 1]; [2 1]; [2 2]
                 [1 1]; [2 2]; [1 1]; [1 1]; [1 1]; [1 1]; [1 1]; [1 1]
                 [1 1]; [1 1]; [3 1]; [3 1]; [3 1]; [4 4]; [4 1]; [5 5]
                 [5 1]; [5 5]; [5 1]; [4 4]; [4 1]}; % Zum Vergleich mit test_function size

%% Einzel Test?
test_einzel = 0;

% Hier gewünschte Tests eingeben
tests = [];

%% Tests
for test = 1:length(size_result)

    if test_einzel
        not_chosen_test = ~any(test == tests);
        if not_chosen_test
            continue
        end
    end

    tol = 1e-12; % Toleranz
    error = false;

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
            case 25
                [test_function,~] = BDF2(0.2,1.1,1.4,1.7,[2.0,2.1]);
            case 26
                [~,test_function] = BDF2(0.2,1.1,1.4,1.7,[2.0,2.1]);
            case 27
                test_function = solveGauss([10.0,2,1;3,4,4;1,8,4],[1;1;2]);
            case 28
                test_function = solveG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],[1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000);
            case 29
                test_function = solveCG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],[1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000);
            case 30
                [test_function,~] = evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3));
            case 31
                [~,test_function] = evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3));
            case 32
                [test_function,~] = assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],[17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]);
            case 33
                [~,test_function] = assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],[17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]);
            case 34
                [test_function,~] = assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],[20;21;19;1;18],[2,-7;5,-2]);
            case 35
                [~,test_function] = assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],[20;21;19;1;18],[2,-7;5,-2]);
            case 36
                [test_function,~] = evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),[1;2;3;4],[0;0;0;0],1,1000,0.66,1); tol = 1e-8;
            case 37
                [~,test_function] = evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),[1;2;3;4],[0;0;0;0],1,1000,0.66,1); tol = 1e-8;
        
        end
    catch ME
        fprintf(2,test_error{test},ME.message);
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