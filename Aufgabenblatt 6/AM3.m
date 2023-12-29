function [LHS,RHS] = AM3(timestep,M,B,C,sol)
% =========================================================================
% Fkt XI
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Adams-Moulton-Verfahren:
% φn+1 = φn + ∆t/12*[5f(tn+1, φn+1) + 8f(tn, φn) − f(tn−1, φn−1)]
% (bedingt stabil)
%
% -> 
% (M-5*∆t/12*Bn+1)*φn+1 = M*φn+∆t/12*(5*Cn+1 + 8*(Bn*φn+Cn)−(Bn-1*φn-1 + Cn-1))
%        ↑                                     ↑
%      [LHS]      *φn+1 =                    [RHS]
% 
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(tn+1), B(tn), B(tn-1)]
% C        ... [C(tn+1), C(tn), C(tn-1)]
% sol      ... [φ(tn+1), φ(tn), φ(tn-1)]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(tn+1) = RHS
% =========================================================================
LHS = M-5*timestep/12*B(1);

RHS = M*sol(1) + timestep/12 * (5*C(1) + 8*(B(2)*sol(1)+C(2))-(B(3)*sol(2)+C(3)));
end