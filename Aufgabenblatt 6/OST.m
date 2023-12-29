function [LHS,RHS] = OST(theta,timestep,M,B,C,sol)
% =========================================================================
% Fkt IX
%
% Allgemeine DGL: M*dφ(t)/dt = B(t)*φ(t) + C(t)
%
% One-Step-Theta-Method
% Einschritt-Theta-Verfahren: 
% φ{n+1} = φ{n} + θ*∆t*f(t{n+1}, φ{n+1}) + (1-θ)*∆t*f(t{n}, φ{n})
% 
% -> [M-θ*∆t*B{n+1}/M] * φ{n+1} = [M+(1-θ)*∆t*B{n}]*φ{n} + ∆t*[θ*C{n+1}+(1-θ)*Cn]
%           ↑                                         ↑
%         [LHS]        * φ{n+1} =                   [RHS]
% 
% θ = 0   ... das Vorwärts-Euler-Verfahren  (bedingt stabil)
% θ = 1   ... das Rückwärts-Euler-Verfahren (A-statil)
% θ = 1/2 ... die Trapezregel               (A-stabil)
%
% 
% timestep ... dt
% M        ... [M], 
% B        ... [B(t{n+1}), B(t{n})]
% C        ... [C(t{n+1}), C(t{n})]
% sol      ... [φ(t{n})]
%
% Rückgabewert: Zeilenvektor mit LHS und RHS:
% LHS * φ(t{n+1}) = RHS
% =========================================================================

LHS = M - theta*timestep*B(1);

RHS = (M+(1-theta)*timestep*B(2))*sol + timestep*(theta*C(1)+(1-theta)*C(2));

end