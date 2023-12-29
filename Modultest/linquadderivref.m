function deriv = linquadderivref(xi,eta)
% ======================================
% Fkt II
% ======================================


dN1_dxi  = -1/4 * (1-eta);
dN1_deta = -1/4 * (1-xi);

dN2_dxi  = 1/4 * (1-eta);
dN2_deta = -1/4 * (1+xi);

dN3_dxi  = 1/4 * (1+eta);
dN3_deta = 1/4 * (1+xi);

dN4_dxi  = -1/4 * (1+eta);
dN4_deta = 1/4 * (1-xi);

deriv = [dN1_dxi dN1_deta
         dN2_dxi dN2_deta
         dN3_dxi dN3_deta
         dN4_dxi dN4_deta];
end