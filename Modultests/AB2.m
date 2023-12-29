function [LHS,RHS] = AB2(timestep,M,B,C,sol)
% =========================================================================
% Fkt X
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Adams-Bashforth-Verfahren:
% φ{n+1} = φ{n} + ∆t/2* [3*f(t{n}, φ{n}) - f(t{n-1}, φ{n-1})]
% (bedingt stabil)
%
% -> M  * φ{n+1} = M*φ{n} + ∆t/2 * (3*(B{n}*φ{n}+C{n}) - (B{n-1}*φ{n-1}+C{n-1})) 
%    ↑                                       ↑
%  [LHS]* φ{n+1} =                         [RHS]
% 
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(t{n}), B(t{n-1})]
% C        ... [C(t{n}), C(t{n-1})]
% sol      ... [φ(t{n}), φ(t{n-1})]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(t{n+1}) = RHS
% =========================================================================
LHS = M;

RHS = M*sol(1) + timestep/2*(3*(B(1)*sol(1)+C(1)) - (B(2)*sol(2)+C(2)));

end