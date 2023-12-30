function deriv = linquadderivref(xi,eta)
% ======================================
% Fkt II
% ======================================


N1_diff_dxi  = -1/4 * (1-eta);
N1_diff_deta = -1/4 * (1-xi);

N2_diff_dxi  = 1/4 * (1-eta);
N2_diff_deta = -1/4 * (1+xi);

N3_diff_dxi  = 1/4 * (1+eta);
N3_diff_deta = 1/4 * (1+xi);

N4_diff_dxi  = -1/4 * (1+eta);
N4_diff_deta = 1/4 * (1-xi);

deriv = [N1_diff_dxi N1_diff_deta
         N2_diff_dxi N2_diff_deta
         N3_diff_dxi N3_diff_deta
         N4_diff_dxi N4_diff_deta];
end