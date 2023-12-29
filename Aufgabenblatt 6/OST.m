function [LHS,RHS] = OST(theta,timestep,M,B,C,sol)
% =========================================================================
% Fkt IX
%
% One-Step-Theta-Method
% Einschritt-Theta-Verfahren
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% Einschritt-Theta-Verfahren: 
% φn+1 = φn + θ*∆t*f(tn+1, φn+1) + (1-θ)*∆t*f(tn, φn)
% 
% -> [M-θ*∆t*Bn+1/M] * φn+1 = [M+(1-θ)*∆t*Bn]*φn + ∆t*[θ*Cn+1+(1-θ)*Cn]
%           ↑                                     ↑
%         [LHS]      * φn+1 =                   [RHS]
% 
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(tn+1), B(tn)]
% C        ... [C(tn+1), C(tn)]
% sol      ... [φ(tn)]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(tn+1) = RHS
% =========================================================================

LHS = M - theta*timestep*B(1);

RHS = (M+(1-theta)*timestep*B(2))*sol + timestep*(theta*C(1)+(1-theta)*C(2));

end