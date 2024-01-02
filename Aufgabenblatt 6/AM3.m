function [LHS,RHS] = AM3(timestep,M,B,C,sol)
% =========================================================================
% Fkt XI
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Adams-Moulton-Verfahren:
% φ{n+1} = φ{n} + ∆t/12*[5f(t{n+1}, φ{n+1}) + 8f(t{n}, φ{n}) - f(t{n-1}, φ{n-1})]
% (bedingt stabil)
%
% -> 
% (M-5*∆t/12*B{n+1})*φ{n+1} = M*φ{n}+∆t/12*(5*C{n+1} + 8*(B{n}*φ{n}+C{n})-(B{n-1}*φ{n-1} + C{n-1}))
%        ↑                                         ↑
%      [LHS]        *φ{n+1} =                    [RHS]
% 
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(t{n+1}), B(t{n}), B(t{n-1})]
% C        ... [C(t{n+1}), C(t{n}), C(t{n-1})]
% sol      ... [φ(t{n}), φ(t{n-1})]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(t{n+1}) = RHS
% =========================================================================
LHS = M-5*timestep/12*B(1);

RHS = M*sol(1) + timestep/12 * (5*C(1) + 8*(B(2)*sol(1)+C(2))-(B(3)*sol(2)+C(3)));
end