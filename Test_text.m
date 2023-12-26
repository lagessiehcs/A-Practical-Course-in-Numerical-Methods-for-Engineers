% Text used for tests


test_pass         = {'001:     Testing function: <Fkt 0 :     falcutaet(0)>                  ... passed (= 1, tol = 1e-12)!\n'
                     '002:     Testing function: <Fkt 0 :     falcutaet(5)>                  ... passed (= 120, tol = 1e-12)!\n'
                     '003:     Testing function: <Fkt I :     linquadref(0.0,0.0)>           ... passed (= [0.25;0.25;0.25;0.25], tol = 1e-12)!\n'
                     '004:     Testing function: <Fkt I :     linquadref(0.577,-0.577)>      ... passed (= [0.16676775;0.62173225;0.16676775;0.04473225], tol = 1e-12)!\n'
                     '005:     Testing function: <Fkt II:     linquadderivref(0.0,0.0)>      ... passed (= [-0.25,-0.25; 0.25,-0.25;0.25,0.25;-0.25,0.25], tol = 1e-12)!\n'
                     '006:     Testing function: <Fkt II:     linquadderivref(0.577,-0.577)> ... passed (= [-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575], tol = 1e-12)!\n'};

test_failed       = {'001: !!! Testing function: <Fkt 0 :     falcutaet(0)>                  ... failed (1 ~= %f, diff = %f)\n'
                     '002: !!! Testing function: <Fkt 0 :     falcutaet(5)>                  ... failed (1 ~= %f, diff = %f)\n'
                     '003: !!! Testing function: <Fkt I :     linquadref(0.0,0.0)>           ... failed ([0.25;0.25;0.25;0.25] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '004: !!! Testing function: <Fkt I :     linquadref(0.577,-0.577)>      ... failed ([0.16676775;0.62173225;0.16676775;0.04473225] ~= [%f;%f;%f;%f], diff = [%f;%f;%f;%f], tol = 1e-12)!\n'
                     '005: !!! Testing function: <Fkt II:     linquadderivref(0.0,0.0)>      ... failed ([-0.25,-0.25;0.25,-0.25;0.25,0.25;-0.25,0.25] ~= [%f %f;%f %f;%f %f;%f %f], diff = [%f %f;%f %f;%f %f;%f %f], tol = 1e-12)!\n'
                     '005: !!! Testing function: <Fkt II:     linquadderivref(0.577,-0.577)> ... failed ([-0.39425,-0.10575;0.39425,-0.39425;0.10575,0.39425;-0.10575,0.10575] ~= [%f %f;%f %f;%f %f;%f %f], diff = [%f %f;%f %f;%f %f;%f %f], tol = 1e-12)!\n'};

test_wrong_format = {''
                     ''
                     '003: !!! Testing function: <Fkt I :     linquadref(0.0,0.0)>           ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '004: !!! Testing function: <Fkt I :     linquadref(0.577,-0.577)>      ... failed (Dimension: (4x1) ~= (%dx%d))!\n'
                     '005: !!! Testing function: <Fkt II:     linquadderivref(0.0,0.0)>      ... failed (Dimension: (4x2) ~= (%dx%d))!\n'
                     '006: !!! Testing function: <Fkt II:     linquadderivref(0.577,-0.577)> ... failed (Dimension: (4x2) ~= (%dx%d))!\n'};