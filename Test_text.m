% Text used for tests

test_passed       = {'001:     Function: <Fkt A    : falcutaet(0)> .......................................... passed (= 1, tol = 1e-12)!\n'
                     '002:     Function: <Fkt A    : falcutaet(5)> .......................................... passed (= 120, tol = 1e-12)!\n'
                     '003:     Function: <Fkt I    : linquadref(0.0,0.0)> ................................... passed (= [0.25;0.25;0.25;0.25], tol = 1e-12)!\n'
                     '004:     Function: <Fkt I    : linquadref(0.577,-0.577)> .............................. passed (= [0.16676775;0.62173225;0.16676775;0.04473225], tol = 1e-12)!\n'
                     '005:     Function: <Fkt II   : linquadderivref(0.0,0.0)> .............................. passed (= [-0.25,-0.25; 0.25,-0.25;0.25,0.25;-0.25,0.25], tol = 1e-12)!\n'
                     '006:     Function: <Fkt II   : linquadderivref(0.577,-0.577)> ......................... passed (= [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575], tol = 1e-12)!\n'
                     '007:     Function: <Fkt III  : gx(3)> ................................................. passed (= [-0.774596669241483,0,0.774596669241483], tol = 1e-12)!\n'
                     '008:     Function: <Fkt IV   : gw(3)> ................................................. passed (= [0.55555555555555, 0.888888888888889, 0.55555555555555], tol = 1e-12)!\n'
                     '009:     Function: <Fkt V    : gx2dref(1)> ............................................ passed (= [0.0,0.0], tol = 1e-12)!\n'
                     '010:     Function: <Fkt V    : gx2dref(2)> ............................................ passed (= [-0.577350269189626,-0.577350269189626;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626], tol = 1e-12)!\n'
                     '011:     Function: <Fkt V    : gx2dref(3)> ............................................ passed (= [-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483], tol = 1e-12)!\n'
                     '012:     Function: <Fkt VI   : gw2dref(1)> ............................................ passed (= [4.0], tol = 1e-12)!\n'
                     '013:     Function: <Fkt VI   : gw2dref(2)> ............................................ passed (= [1.0;1.0;1.0;1.0], tol = 1e-12)!\n'
                     '014:     Function: <Fkt VI   : gw2dref(3)> ............................................ passed (= [0.308642;0.493827;0.308642;0.493827;0.790123;0.493827;0.308642;0.493827;0.308642], tol = 1e-6)!\n'
                     '015:     Function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)> ............... passed (= [3.577; 1.37826775], tol = 1e-12)!\n'
                     '016:     Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J> ........ passed (= [1.0, 0; 0.10575, 0.89425], tol = 1e-12)!\n'
                     '017:     Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ> ..... passed (= 0.89425, tol = 1e-12)!\n'
                     '018:     Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ> ..... passed (= [1.0,0;-0.1182555,1.1182555]], tol = 1e-7)!\n'
                     '019:     Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS> .... passed (= 0.96, tol = 1e-12)!\n'
                     '020:     Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS> .... passed (= 2.85, tol = 1e-12)!\n'
                     '021:     Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS> ..... passed (= 1.1, tol = 1e-12)!\n'
                     '022:     Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS> ..... passed (= 3.114, tol = 1e-12)!\n'
                    ['023:     Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               LHS> ................................................... passed (= 0.983333333333333, tol = 1e-12)!\n']
                    ['024:     Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               RHS> ................................................... passed (= 2.894, tol = 1e-12)!\n']
                     '025:     Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS> ............ passed (= 1.37, tol = 1e-12)!\n'
                     '026:     Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS> ............ passed (= 3.585, tol = 1e-12)!\n'
                     '027:     Function: <Fkt XIV  : solveGauss([10.0,2,1;3,4,4;1,8,4],[1;1;2])> ............ passed (= [0.051282051282051;0.275641025641026;-0.064102564102564])!\n'
                    ['028:     Function: <Fkt XV   : solveG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ passed (= [0.078600816156673;0.017489712225719;0.017901236448326])!\n']
                    ['029:     Function: <Fkt XVI  : solveCG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ passed (= [0.078600823045267;0.017489711934156;0.017901234567901])!\n']
                    ['030:     Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),\n' ...
                     '                               gw2dref(3)), elemat> ................................... passed (= [40 -28 -20 8; -28 40 8 -20; -20 8 40 -28; 8 -20 -28 40], tol = 1e-12)!\n']
                    ['031:     Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),\n' ...
                     '                               gw2dref(3)), elevec> ................................... passed (= [0;0;0;0], tol = 1e-12)!\n']
                    ['032:     Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), sysmat> ... passed (= [12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2], tol = 1e-12)!\n']
                    ['033:     Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), rhs> ...... passed (= [20;21;19;1;18], tol = 1e-12)!\n']
                    ['034:     Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), sysmat> .................. passed (= [12,12,10,0,9;0,1,0,0,0;7,8,7,0,5;0,0,0,1,0;0,0,0,0,1], tol = 1e-12)!\n']
                    ['035:     Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), rhs> ..................... passed (= [20;-7;19;1;-2], tol = 1e-12)!\n']
                    ['036:     Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elemat> ............ passed (= [809866.67,373253.33,182666.67,397013.33;373253.33,809866.67,397013.33,182666.67;182666.67,397013.33,809866.67,373253.33;397013.33,182666.67,373253.33,809866.67], tol = 1e-12)!\n']
                    ['037:     Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elevec> ............ passed (= [3736426.67;3918693.33;4895306.67;5077573.33], tol = 1e-12)!\n']
                     };

test_failed       = {'001: !!! Function: <Fkt A    : falcutaet(0)> .......................................... failed (1 ~= %f, diff = %f)\n'
                     '002: !!! Function: <Fkt A    : falcutaet(5)> .......................................... failed (1 ~= %f, diff = %f)\n'
                     '003: !!! Function: <Fkt I    : linquadref(0.0,0.0)> ................................... failed ([0.25;0.25;0.25;0.25] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '004: !!! Function: <Fkt I    : linquadref(0.577,-0.577)> .............................. failed ([0.16676775;0.62173225;0.16676775;0.04473225] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '005: !!! Function: <Fkt II   : linquadderivref(0.0,0.0)> .............................. failed ([-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff = [%f,%f;%f,%f;%f,%f;%f,%f], tol = 1e-12)!\n'
                     '006: !!! Function: <Fkt II   : linquadderivref(0.577,-0.577)> ......................... failed ([-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575] ~= [%f %f;%f %f;%f %f;%f %f], diff = [%f %f;%f %f;%f %f;%f %f], tol = 1e-12)!\n'
                     '007: !!! Function: <Fkt III  : gx(3)> ................................................. failed ([%f,%f,%f] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '008: !!! Function: <Fkt IV   : gw(3)> ................................................. failed ([%f,%f,%f] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '009: !!! Function: <Fkt V    : gx2dref(1)> ............................................ failed ([0.0,0.0] ~= [%f,%f], diff = [%f,%f], tol = 1e-12)!\n'
                    {'010: !!! Function: <Fkt V    : gx2dref(2)> ............................................ failed ([-0.577350269189626,-0.577350269189626.0;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '010: !!! Function: <Fkt V    : gx2dref(2)> ............................................ failed (not all directions of xi are covered)!\n'}
                    {'011: !!! Function: <Fkt V    : gx2dref(3)> ............................................ failed ([-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483] ~= [%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '011: !!! Function: <Fkt V    : gx2dref(3)> ............................................ failed (not all directions of xi are covered)!\n'}
                     '012: !!! Function: <Fkt VI   : gw2dref(1)> ............................................ failed ([4.0] ~= [%f], diff = [%f], tol = 1e-12)!\n'
                     '013: !!! Function: <Fkt VI   : gw2dref(2)> ............................................ failed ([1.0;1.0;1.0;1.0] ~= [%f,%f,%f,%f], diff = [%f,%f,%f,%f], tol = 1e-12)!\n'
                     '014: !!! Function: <Fkt VI   : gw2dref(3)> ............................................ failed ([%f,%f,%f,%f,%f,%f,%f,%f,%f] ~= [%f,%f,%f,%f,%f,%f,%f,%f,%f], diff = [%f,%f,%f,%f,%f,%f,%f,%f,%f], tol = 1e-6)!\n'
                     '015: !!! Function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)> ............... failed ([3.577;1.37826775] ~= [%f,%f], diff = [%f,%f], tol = 1e-12)!\n'
                     '016: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J> .........failed ([1.0,0;0.10575,0.89425] ~= [%f,%f;%f,%f], diff = [[%f,%f;%f,%f],%f,[%f,%f;%f,%f]], tol = 1e-12)!\n'
                     '017: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ> ..... failed (0.89425 ~= %f, diff = %f, tol = 1e-6)!\n'
                     '018: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ> ..... failed ([1.0,0;-0.1182555,1.1182555] ~= [%f,%f;%f,%f], diff = [%f,%f;%f,%f], tol = 1e-7)!\n'
                     '019: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS> .... failed (0.96 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '020: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS> .... failed (2.85 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '021: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS> ..... failed (1.1 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '022: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS> ..... failed (3.114 ~= %f, diff = %f, tol = 1e-12)!\n'
                    ['023: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n ' ...
                     '                               LHS> ................................................... failed (0.983333333333333 ~= %f, diff = %f, tol = 1e-12)!\n']
                    ['024: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n ' ...
                     '                               RHS> ................................................... failed (2.894 ~= %f, diff = %f, tol = 1e-12)!\n']
                     '025: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS> ............ failed (1.37 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '026: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS> ............ failed (3.585 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '027: !!! Function: <Fkt XIV  : solveGauss([10.0,2,1;3,4,4;1,8,4],[1;1;2])> ............ failed ([0.051282051282051;0.275641025641026;-0.064102564102564] ~= [%f;%f;%f], diff = [%f;%f;%f], tol = 1e-12)!\n'
                    ['028: !!! Function: <Fkt XV   : solveG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed ([0.078600816156673;0.017489712225719;0.017901236448326]) ~= [%f;%f;%f], diff = [%f;%f;%f], tol = 1e-12)!\n']                     
                    ['029: !!! Function: <Fkt XVI  : solveCG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed ([0.078600823045267;0.017489711934156;0.017901234567901]) ~= [%f;%f;%f], diff = [%f;%f;%f], tol = 1e-12)!\n']                     
                    ['030: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n ' ...
                     '                               elemat> ................................................ failed ([40 -28 -20 8; -28 40 8 -20; -20 8 40 -28; 8 -20 -28 40] ~= [%f %f %f %f; %f %f %f %f; %f %f %f %f; %f %f %f %f], diff = [%f %f %f %f; %f %f %f %f; %f %f %f %f; %f %f %f %f], tol = 1e-12)!\n']
                    ['031: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n ' ...
                     'elevec> ............................................................................... failed ([0;0;0;0] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n']
                    ['032: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), sysmat> ... failed ([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2] ~= [%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f], diff = [%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f], tol = 1e-12)!\n']
                    ['033: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), rhs> ...... failed ([20;21;19;1;18] ~= [%f;%f;%f;%f;%f], diff = [%f;%f;%f;%f;%f], tol = 1e-12)!\n']
                    ['034: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), sysmat> .................. failed ([12,12,10,0,9;0,1,0,0,0;7,8,7,0,5;0,0,0,1,0;0,0,0,0,1] ~= [%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f], diff = [%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f;%f,%f,%f,%f,%f], tol = 1e-12)!\n']
                    ['035: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), rhs> ..................... failed ([20;-7;19;1;-2] ~= [%f;%f;%f;%f;%f], diff = [%f;%f;%f;%f;%f], tol = 1e-12)!\n'] 
                    ['036: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elemat> ............ failed ([809866.67,373253.33,182666.67,397013.33;373253.33,809866.67,397013.33,182666.67;182666.67,397013.33,809866.67,373253.33;397013.33,182666.67,373253.33,809866.67] ~= [%f,%f,%f,%f;%f,%f,%f,%f;%f,%f,%f,%f;%f,%f,%f,%f], diff = [%f,%f,%f,%f;%f,%f,%f,%f;%f,%f,%f,%f;%f,%f,%f,%f], tol = 1e-12)!\n']
                    ['037: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elevec> ............ failed ([3736426.67;3918693.33;4895306.67;5077573.33] ~= [%f,%f,%f,%f], diff = [%f,%f,%f,%f], tol = 1e-12)!\n']
                     };

test_wrong_size =   {'001: !!! Function: <Fkt A    : falcutaet(0)> .......................................... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '002: !!! Function: <Fkt A    : falcutaet(5)> .......................................... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '003: !!! Function: <Fkt I    : linquadref(0.0,0.0)> ................................... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '004: !!! Function: <Fkt I    : linquadref(0.577,-0.577)> .............................. failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '005: !!! Function: <Fkt II   : linquadderivref(0.0,0.0)> .............................. failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '006: !!! Function: <Fkt II   : linquadderivref(0.577,-0.577)> ......................... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '007: !!! Function: <Fkt III  : gx(3)> ................................................. failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '008: !!! Function: <Fkt IV   : gw(3)> ................................................. failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '009: !!! Function: <Fkt V    : gx2dref(1)> ............................................ failed (Dimension: (1x2) ~= (%dx%d))!\n'
                     '010: !!! Function: <Fkt V    : gx2dref(2)> ............................................ failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '011: !!! Function: <Fkt V    : gx2dref(3)> ............................................ failed (Dimension: (9x2) ~= (%dx%d))!\n'
                     '012: !!! Function: <Fkt VI   : gw2dref(1)> ............................................ failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '013: !!! Function: <Fkt VI   : gw2dref(2)> ............................................ failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '014: !!! Function: <Fkt VI   : gw2dref(3)> ............................................ failed (Dimension: (9x1) ~= (%dx%d))!\n'
                     '015: !!! Function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)> ............... failed (Dimension: (2x1) ~= (%dx%d))!\n'
                     '016: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J> ........ failed (Dimension: (2x2) ~= (%dx%d))!\n'
                     '017: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ> ..... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '018: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ> ..... failed (Dimension: (2x2) ~= (%dx%d))!\n'
                     '019: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS> .... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '020: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS> .... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '021: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS> ..... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '022: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS> ..... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                    ['023: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               LHS> ................................................... failed (Dimension: (1x1) ~= (%dx%d))!\n']
                    ['024: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               RHS> ................................................... failed (Dimension: (1x1) ~= (%dx%d))!\n']
                     '025: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS> ............ failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '026: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS> ............ failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '027: !!! Function: <Fkt XIV  : solveGauss([10.0,2,1;3,4,4;1,8,4],[1;1;2])> ............ failed (Dimension: (3x1) ~= (%dx%d))!\n'
                    ['028: !!! Function: <Fkt XV   : solveG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed (Dimension: (3x1) ~= (%dx%d))!\n']                     
                    ['029: !!! Function: <Fkt XVI  : solveCG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed (Dimension: (3x1) ~= (%dx%d))!\n']
                    ['030: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n ' ...
                     '                               elemat> ................................................ failed (Dimension: (4x4) ~= (%dx%d))!\n']
                    ['031: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n' ...
                     '                               elevec> ................................................ failed (Dimension: (4x1) ~= (%dx%d))!\n']
                    ['032: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), sysmat> ... failed (Dimension: (5x5) ~= (%dx%d))!\n']
                    ['033: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), rhs> ...... failed (Dimension: (5x1) ~= (%dx%d))!\n']
                    ['034: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), sysmat> .................. failed (Dimension: (5x5) ~= (%dx%d))!\n']
                    ['035: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), rhs> ..................... failed (Dimension: (5x1) ~= (%dx%d))!\n']
                    ['036: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elemat> ............ failed (Dimension: (4x4) ~= (%dx%d))!\n']
                    ['037: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elevec> ............ failed (Dimension: (4x4) ~= (%dx%d))!\n']
                     };

test_error        = {'001: !!! Function: <Fkt A    : falcutaet(0)> .......................................... failed (%s)!\n'
                     '002: !!! Function: <Fkt A    : falcutaet(5)> .......................................... failed (%s)!\n'
                     '003: !!! Function: <Fkt I    : linquadref(0.0,0.0)> ................................... failed (%s)!\n'
                     '004: !!! Function: <Fkt I    : linquadref(0.577,-0.577)> .............................. failed (%s)!\n'
                     '005: !!! Function: <Fkt II   : linquadderivref(0.0,0.0)> .............................. failed (%s)!\n'
                     '006: !!! Function: <Fkt II   : linquadderivref(0.577,-0.577)> ......................... failed (%s)!\n'
                     '007: !!! Function: <Fkt III  : gx(3)> ................................................. failed (%s)!\n'
                     '008: !!! Function: <Fkt IV   : gw(3)> ................................................. failed (%s)!\n'
                     '009: !!! Function: <Fkt V    : gx2dref(1)> ............................................ failed (%s)!\n'
                     '010: !!! Function: <Fkt V    : gx2dref(2)> ............................................ failed (%s)!\n'  
                     '011: !!! Function: <Fkt V    : gx2dref(3)> ............................................ failed (%s)!\n'
                     '012: !!! Function: <Fkt VI   : gw2dref(1)> ............................................ failed (%s)!\n'
                     '013: !!! Function: <Fkt VI   : gw2dref(2)> ............................................ failed (%s)!\n'  
                     '014: !!! Function: <Fkt VI   : gw2dref(3)> ............................................ failed (%s)!\n'
                     '015: !!! Function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)> ............... failed (%s)!\n'
                     '016: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J> ........ failed (%s)!\n'
                     '017: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ> ..... failed (%s)!\n'
                     '018: !!! Function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ> ..... failed (%s)!\n'
                     '019: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS> .... failed (%s)!\n'
                     '020: !!! Function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS> .... failed (%s)!\n'                     
                     '021: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS> ..... failed (%s)!\n'
                     '022: !!! Function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS> ..... failed (%s)!\n'
                    ['023: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               LHS> ................................................... failed (%s)!\n']
                    ['024: !!! Function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]),\n' ...
                     '                               RHS> ................................................... failed (%s)!\n']
                     '025: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS> ............ failed (%s)!\n'
                     '026: !!! Function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS> ............ failed (%s)!\n'
                     '027: !!! Function: <Fkt XIV  : solveGauss([10.0,2,1;3,4,4;1,8,4],[1;1;2])> ............ failed (%s)!\n'
                    ['028: !!! Function: <Fkt XV   : solveG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed (%s)!\n']                                         
                    ['029: !!! Function: <Fkt XVI  : solveCG([10.0,2.0,10.0;2.0,40.0,8.0;10.0,8.0,60.0],\n' ...
                     '                               [1.0;1.0;2.0],[0.0;0.0;0.0],1e-7,1000)> ................ failed (%s)!\n']                             
                    ['030: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n' ...
                     '                               elemat> ................................................ failed (%s)!\n']
                    ['031: !!! Function: <Fkt XVII : evaluate_stat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3)),\n' ...
                     '                               elevec> ................................................ failed (%s)!\n']                     
                    ['032: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), sysmat> ... failed (%s)!\n']
                    ['033: !!! Function: <Fkt XVIII: assemble([1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16],\n' ...
                     '                               [17;18;19;20],eye(5,5),ones(5,1),[5,3,1,2]), rhs> ...... failed (%s)!\n']
                    ['034: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), sysmat> .................. failed (%s)!\n']
                    ['035: !!! Function: <Fkt XIX  : assignDBC([12,12,10,0,9;15,17,14,0,13;7,8,7,0,5;0,0,0,1,0;3,4,2,0,2],\n'...
                     '                               [20;21;19;1;18],[2,-7;5,-2]), rhs> ..................... failed (%s)!\n']
                    ['036: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elemat> ............ failed (%s)!\n']
                    ['037: !!! Function: <Fkt XX   : evaluate_instat([0,0;1,0;1,2;0,2],gx2dref(3),gw2dref(3),\n' ...
                     '                               [1;2;3;4],[0;0;0;0],1,1000,0.66,1), elevec> ............ failed (%s)!\n']
                     };
