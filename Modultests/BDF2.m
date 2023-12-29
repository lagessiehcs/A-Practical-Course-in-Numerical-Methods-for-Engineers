function [LHS,RHS] = BDF2(timestep,M,B,C,sol)
% =========================================================================
% Fkt XII
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Adams-Moulton-Verfahren:
% 3/2*φ{n+1} = 2φ{n} − 1/2*φ{n−1} + ∆t*f(t{n+1}, φ{n+1})
% (A-stabil)
%
% -> 
% (3/2*M-∆t*B{n+1})*φ{n+1} = 2*M*φ{n} - 1/2*M*φ{n-1} +  ∆t*C{n+1}
%        ↑                                     ↑
%      [LHS]       *φ{n+1} =                 [RHS]
%
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(t{n+1})]
% C        ... [C(t{n+1})]
% sol      ... [φ(t{n}), φ(t{n-1})]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(t{n+1}) = RHS
% =========================================================================
LHS = 3/2*M-timestep*B;

RHS = 2*M*sol(1) - 1/2*M*sol(2) +  timestep*C;
end