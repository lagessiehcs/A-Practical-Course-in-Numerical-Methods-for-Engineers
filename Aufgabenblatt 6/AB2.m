function [LHS,RHS] = AB2(timestep,M,B,C,sol)
% =========================================================================
% Fkt X
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Adams-Bashforth-Verfahren:
% φn+1 = φn + ∆t/2* [3*f(tn, φn) − f(tn−1, φn−1)]
% (bedingt stabil)
%
% -> M  * φn+1 = M*φn + ∆t/2 * (3*(Bn*φn+Cn) - (Bn-1*φn-1+Cn-1)) 
%    ↑                                     ↑
%  [LHS]* φn+1 =                         [RHS]
% 
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(tn), B(tn-1)]
% C        ... [C(tn), C(tn-1)]
% sol      ... [φ(tn), φ(tn-1)]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(tn+1) = RHS
% =========================================================================
LHS = M;

RHS = M*sol(1) + timestep/2*(3*(B(1)*sol(1)+C(1)) - (B(2)*sol(2)+C(2)));

end