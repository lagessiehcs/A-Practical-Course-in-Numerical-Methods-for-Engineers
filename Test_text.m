% Text used for tests

test_passed       = {'001:     Testing function: <Fkt 0    : falcutaet(0)>                                              ... passed (= 1, tol = 1e-12)!\n'
                     '002:     Testing function: <Fkt 0    : falcutaet(5)>                                              ... passed (= 120, tol = 1e-12)!\n'
                     '003:     Testing function: <Fkt I    : linquadref(0.0,0.0)>                                       ... passed (= [0.25;0.25;0.25;0.25], tol = 1e-12)!\n'
                     '004:     Testing function: <Fkt I    : linquadref(0.577,-0.577)>                                  ... passed (= [0.16676775;0.62173225;0.16676775;0.04473225], tol = 1e-12)!\n'
                     '005:     Testing function: <Fkt II   : linquadderivref(0.0,0.0)>                                  ... passed (= [-0.25,-0.25; 0.25,-0.25;0.25,0.25;-0.25,0.25], tol = 1e-12)!\n'
                     '006:     Testing function: <Fkt II   : linquadderivref(0.577,-0.577)>                             ... passed (= [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575], tol = 1e-12)!\n'
                     '007:     Testing function: <Fkt III  : gx(3)>                                                     ... passed (= [-0.774596669241483,0,0.774596669241483], tol = 1e-12)!\n'
                     '008:     Testing function: <Fkt IV   : gw(3)>                                                     ... passed (= [0.55555555555555, 0.888888888888889, 0.55555555555555], tol = 1e-12)!\n'
                     '009:     Testing function: <Fkt V    : gx2dref(1)>                                                ... passed (= [0.0,0.0], tol = 1e-12)!\n'
                     '010:     Testing function: <Fkt V    : gx2dref(2)>                                                ... passed (= [-0.577350269189626,-0.577350269189626;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626], tol = 1e-12)!\n'
                     '011:     Testing function: <Fkt V    : gx2dref(3)>                                                ... passed (= [-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483], tol = 1e-12)!\n'
                     '012:     Testing function: <Fkt VI   : gw2dref(1)>                                                ... passed (= [4.0], tol = 1e-12)!\n'
                     '013:     Testing function: <Fkt VI   : gw2dref(2)>                                                ... passed (= [1.0;1.0;1.0;1.0], tol = 1e-12)!\n'
                     '014:     Testing function: <Fkt VI   : gw2dref(3)>                                                ... passed (= [0.308642;0.493827;0.308642;0.493827;0.790123;0.493827;0.308642;0.493827;0.308642], tol = 1e-6)!\n'
                     '015:     Testing function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)>                   ... passed (= [3.577; 1.37826775], tol = 1e-12)!\n'
                     '016:     Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J>            ... passed (= [1.0, 0; 0.10575, 0.89425], tol = 1e-12)!\n'
                     '017:     Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ>         ... passed (= 0.89425, tol = 1e-12)!\n'
                     '018:     Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ>         ... passed (= [1.0,0;-0.1182555,1.1182555]], tol = 1e-7)!\n'
                     '019:     Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS>        ... passed (= 0.96, tol = 1e-12)!\n'
                     '020:     Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS>        ... passed (= 2.85, tol = 1e-12)!\n'
                     '021:     Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS>         ... passed (= 1.1, tol = 1e-12)!\n'
                     '022:     Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS>         ... passed (= 3.114, tol = 1e-12)!\n'
                     '023:     Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), LHS> ... passed (= 0.983333333333333, tol = 1e-12)!\n'
                     '024:     Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), RHS> ... passed (= 2.894, tol = 1e-12)!\n'
                     '025:     Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS>                ... passed (= 1.37, tol = 1e-12)!\n'
                     '026:     Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS>                ... passed (= 3.585, tol = 1e-12)!\n'
                     };

test_failed       = {'001: !!! Testing function: <Fkt 0    : falcutaet(0)>                                              ... failed (1 ~= %f, diff = %f)\n'
                     '002: !!! Testing function: <Fkt 0    : falcutaet(5)>                                              ... failed (1 ~= %f, diff = %f)\n'
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>                                       ... failed ([0.25;0.25;0.25;0.25] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>                                  ... failed ([0.16676775;0.62173225;0.16676775;0.04473225] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>                                  ... failed ([-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff = [%f,%f;%f,%f;%f,%f;%f,%f], tol = 1e-12)!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)>                             ... failed ([-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575] ~= [%f %f;%f %f;%f %f;%f %f], diff = [%f %f;%f %f;%f %f;%f %f], tol = 1e-12)!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                                                     ... failed ([%f,%f,%f] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                                                     ... failed ([%f,%f,%f] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                                                ... failed ([0.0,0.0] ~= [%f,%f], diff = [%f,%f], tol = 1e-12)!\n'
                    {'010: !!! Testing function: <Fkt V    : gx2dref(2)>                                                ... failed ([-0.577350269189626,-0.577350269189626.0;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(2)>                                                ... failed (not all directions of xi are covered)!\n'}
                    {'011: !!! Testing function: <Fkt V    : gx2dref(3)>                                                ... failed ([-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483] ~= [%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                                                ... failed (not all directions of xi are covered)!\n'}
                     '012: !!! Testing function: <Fkt VI   : gw2dref(1)>                                                ... failed ([4.0] ~= [%f], diff = [%f], tol = 1e-12)!\n'
                     '013: !!! Testing function: <Fkt VI   : gw2dref(2)>                                                ... failed ([1.0;1.0;1.0;1.0] ~= [%f,%f,%f,%f], diff = [%f,%f,%f,%f], tol = 1e-12)!\n'
                     '014: !!! Testing function: <Fkt VI   : gw2dref(3)>                                                ... failed ([%f,%f,%f,%f,%f,%f,%f,%f,%f] ~= [%f,%f,%f,%f,%f,%f,%f,%f,%f], diff = [%f,%f,%f,%f,%f,%f,%f,%f,%f], tol = 1e-6)!\n'
                     '015: !!! Testing function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)>                   ... failed ([3.577;1.37826775] ~= [%f,%f], diff = [%f,%f], tol = 1e-12)!\n'
                     '016: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J>            ... failed ([1.0,0;0.10575,0.89425] ~= [%f,%f;%f,%f], diff = [[%f,%f;%f,%f],%f,[%f,%f;%f,%f]], tol = 1e-12)!\n'
                     '017: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ>         ... failed (0.89425 ~= %f, diff = %f, tol = 1e-6)!\n'
                     '018: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ>         ... failed ([1.0,0;-0.1182555,1.1182555] ~= [%f,%f;%f,%f], diff = [%f,%f;%f,%f], tol = 1e-7)!\n'
                     '019: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS>        ... failed 0.96 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '020: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS>        ... failed 2.85 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '021: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS>         ... failed 1.1 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '022: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS>         ... failed 3.114 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '023: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), LHS> ... failed 0.983333333333333 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '024: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), RHS> ... failed 2.894 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '025: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS>                ... failed 1.37 ~= %f, diff = %f, tol = 1e-12)!\n'
                     '026: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS>                ... failed 3.585 ~= %f, diff = %f, tol = 1e-12)!\n'
                     };

test_wrong_size =   {'001: !!! Testing function: <Fkt 0    : falcutaet(0)>                                              ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '002: !!! Testing function: <Fkt 0    : falcutaet(5)>                                              ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>                                       ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>                                  ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>                                  ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)>                             ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                                                     ... failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                                                     ... failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                                                ... failed (Dimension: (1x2) ~= (%dx%d))!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(2)>                                                ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                                                ... failed (Dimension: (9x2) ~= (%dx%d))!\n'
                     '012: !!! Testing function: <Fkt VI   : gw2dref(1)>                                                ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '013: !!! Testing function: <Fkt VI   : gw2dref(2)>                                                ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '014: !!! Testing function: <Fkt VI   : gw2dref(3)>                                                ... failed (Dimension: (9x1) ~= (%dx%d))!\n'
                     '015: !!! Testing function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)>                   ... failed (Dimension: (2x1) ~= (%dx%d))!\n'
                     '016: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J>            ... failed (Dimension: (2x2) ~= (%dx%d))!\n'
                     '017: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ>         ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '018: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ>         ... failed (Dimension: (2x2) ~= (%dx%d))!\n'
                     '019: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS>        ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '020: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS>        ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '021: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS>         ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '022: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS>         ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '023: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), LHS> ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '024: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), RHS> ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '025: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS>                ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     '026: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS>                ... failed (Dimension: (1x1) ~= (%dx%d))!\n'
                     };

test_error        = {'001: !!! Testing function: <Fkt 0    : falcutaet(0)>                                              ... failed (error occured within function)!\n'
                     '002: !!! Testing function: <Fkt 0    : falcutaet(5)>                                              ... failed (error occured within function)!\n'
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>                                       ... failed (error occured within function)!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>                                  ... failed (error occured within function)!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>                                  ... failed (error occured within function)!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)>                             ... failed (error occured within function)!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                                                     ... failed (error occured within function)!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                                                     ... failed (error occured within function)!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                                                ... failed (error occured within function)!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(2)>                                                ... failed (error occured within function)!\n'  
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                                                ... failed (error occured within function)!\n'
                     '012: !!! Testing function: <Fkt VI   : gw2dref(1)>                                                ... failed (error occured within function)!\n'
                     '013: !!! Testing function: <Fkt VI   : gw2dref(2)>                                                ... failed (error occured within function)!\n'  
                     '014: !!! Testing function: <Fkt VI   : gw2dref(3)>                                                ... failed (error occured within function)!\n'
                     '015: !!! Testing function: <Fkt VII  : getxPos([2,1;4,1;4,3;2,2],0.577,-0.577)>                   ... failed (error occured within function)!\n'
                     '016: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), J>            ... failed (error occured within function)!\n'
                     '017: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), detJ>         ... failed (error occured within function)!\n'
                     '018: !!! Testing function: <Fkt VIII : getJacobian([2,1;4,1;4,3;2,2],0.577,-0.577), invJ>         ... failed (error occured within function)!\n'
                     '019: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), LHS>        ... failed (error occured within function)!\n'
                     '020: !!! Testing function: <Fkt IX   : OST(0.5,0.2,[1.1],[1.4,1.5],[1.7, 1.8],[2.0]), RHS>        ... failed (error occured within function)!\n'                     
                     '021: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), LHS>         ... failed (error occured within function)!\n'
                     '022: !!! Testing function: <Fkt X    : AB2(0.2,[1.1],[1.5,1.6],[1.8,1.9],[2.0,2.1]), RHS>         ... failed (error occured within function)!\n'
                     '023: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), LHS> ... failed (error occured within function)!\n'
                     '024: !!! Testing function: <Fkt XI   : AM3(0.2,[1.1],[1.4,1.5,1.6],[1.7,1.8,1.9],[2.0,2.1]), RHS> ... failed (error occured within function)!\n'
                     '023: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), LHS>                ... failed (error occured within function)!\n'
                     '024: !!! Testing function: <Fkt XII  : BDF2(0.2,[1.1],[1.4],[1.7],[2.0,2.1]), RHS>                ... failed (error occured within function)!\n'
                     };
