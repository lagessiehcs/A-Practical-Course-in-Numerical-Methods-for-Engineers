% Text used for tests


test_passed       = {'001:     Testing function: <Fkt 0    : falcutaet(0)>                  ... passed (= 1, tol = 1e-12)!\n'
                     '002:     Testing function: <Fkt 0    : falcutaet(5)>                  ... passed (= 120, tol = 1e-12)!\n'
                     '003:     Testing function: <Fkt I    : linquadref(0.0,0.0)>           ... passed (= [0.25;0.25;0.25;0.25], tol = 1e-12)!\n'
                     '004:     Testing function: <Fkt I    : linquadref(0.577,-0.577)>      ... passed (= [0.16676775;0.62173225;0.16676775;0.04473225], tol = 1e-12)!\n'
                     '005:     Testing function: <Fkt II   : linquadderivref(0.0,0.0)>      ... passed (= [-0.25,-0.25; 0.25,-0.25;0.25,0.25;-0.25,0.25], tol = 1e-12)!\n'
                     '006:     Testing function: <Fkt II   : linquadderivref(0.577,-0.577)> ... passed (= [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575], tol = 1e-12)!\n'
                     '007:     Testing function: <Fkt III  : gx(3)>                         ... passed (= [−0.774596669241483,0,0.774596669241483], tol = 1e-12)!\n'
                     '008:     Testing function: <Fkt IV   : gw(3)>                         ... passed (= [0.55555555555555, 0.888888888888889, 0.55555555555555], tol = 1e-12)!\n'
                     '009:     Testing function: <Fkt V    : gx2dref(1)>                    ... passed (= [0.0,0.0], tol = 1e-12)!\n'
                     '010:     Testing function: <Fkt V    : gx2dref(2)>                    ... passed (= [-0.577350269189626,-0.577350269189626;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626], tol = 1e-12)!\n'
                     '011:     Testing function: <Fkt V    : gx2dref(3)>                    ... passed (= [-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483], tol = 1e-12)!\n'};

test_failed       = {'001: !!! Testing function: <Fkt 0    : falcutaet(0)>                  ... failed (1 ~= %f, diff = %f)\n'
                     '002: !!! Testing function: <Fkt 0    : falcutaet(5)>                  ... failed (1 ~= %f, diff = %f)\n'
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>           ... failed ([0.25;0.25;0.25;0.25] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>      ... failed ([0.16676775;0.62173225;0.16676775;0.04473225] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>      ... failed ([-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff = [%f,%f;%f,%f;%f,%f;%f,%f], tol = 1e-12)!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)> ... failed ([-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575] ~= [%f %f;%f %f;%f %f;%f %f], diff = [%f %f;%f %f;%f %f;%f %f], tol = 1e-12)!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                         ... failed ([−0.774596669241483,0,0.774596669241483] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                         ... failed ([%f,%f,%f] ~= [%f,%f,%f], diff = [%f,%f,%f], tol = 1e-12)!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                    ... failed ([0.0,0.0] ~= [%f,%f], diff = [%f,%f], tol = 1e-12)!\n'
                    {'010: !!! Testing function: <Fkt V    : gx2dref(2)>                    ... failed ([-0.577350269189626,-0.577350269189626.0;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626] ~= [%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(3)>                    ... failed (not all directions of xi are covered)!\n'}
                    {'011: !!! Testing function: <Fkt V    : gx2dref(3)>                    ... failed ([-0.774596669241483,-0.774596669241483;-0.774596669241483,0;-0.774596669241483,0.774596669241483;0,-0.774596669241483;0,0;0,0.774596669241483;0.774596669241483;-0.774596669241483;0.774596669241483,0;0.774596669241483,0.774596669241483] ~= [%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f;%f,%f], diff_max = %f, tol = 1e-12)!\n'
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                    ... failed (not all directions of xi are covered)!\n'}};

test_wrong_format = {''
                     ''
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>           ... failed (Dimension: (4x1) (%dx%d))!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>      ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>      ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)> ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                         ... failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                         ... failed (Dimension: (1x3) ~= (%dx%d))!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                    ... failed (Dimension: (1x2) ~= (%dx%d))!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(2)>                    ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                    ... failed (Dimension: (9x2) ~= (%dx%d))!\n'};

test_error        = {'001: !!! Testing function: <Fkt 0    : falcutaet(0)>                  ... failed (error occured within function)!\n'
                     '002: !!! Testing function: <Fkt 0    : falcutaet(5)>                  ... failed (error occured within function)!\n'
                     '003: !!! Testing function: <Fkt I    : linquadref(0.0,0.0)>           ... failed (error occured within function)!\n'
                     '004: !!! Testing function: <Fkt I    : linquadref(0.577,-0.577)>      ... failed (error occured within function)!\n'
                     '005: !!! Testing function: <Fkt II   : linquadderivref(0.0,0.0)>      ... failed (error occured within function)!\n'
                     '006: !!! Testing function: <Fkt II   : linquadderivref(0.577,-0.577)> ... failed (error occured within function)!\n'
                     '007: !!! Testing function: <Fkt III  : gx(3)>                         ... failed (error occured within function)!\n'
                     '008: !!! Testing function: <Fkt IV   : gw(3)>                         ... failed (error occured within function)!\n'
                     '009: !!! Testing function: <Fkt V    : gx2dref(1)>                    ... failed (error occured within function)!\n'
                     '010: !!! Testing function: <Fkt V    : gx2dref(2)>                    ... failed (error occured within function)!\n'  
                     '011: !!! Testing function: <Fkt V    : gx2dref(3)>                    ... failed (error occured within function)!\n'};
