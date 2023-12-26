% =========================================================================
% Gegeben ist ein zweidimensionales vierknotiges Element Ωe im 
% ξ = (ξ, η)-Koordinatensystem
% An den vier Knoten sind folgende Funktionswerte f(ξi, ηi) gegeben:
% _______________________________________________
% (ξ|η)     (−1| −1) (+1| −1) (+1| +1) (−1| +1)
% f(ξ, η)     0.0      1.0     3.0      1.0
% _______________________________________________
%
% Mithilfe von Lagrange’schen Ansatzfunktionen Ni(ξ, η) sollen die 
% Funktionswerte f(ξ, η) sowie die Ableitungen ∂f(ξ,η)/∂ξ, ∂f(ξ,η)/∂η an 
% den Punkten (ξ|η) = (0.0; 0.0) sowie (ξ|η) = (0.577; −0.577) approximiert 
% werden. Die Lagrange’schen bilinearen Ansatzfunktionen in 2D sind wie 
% folgt definiert:
% N1(ξ, η) = 1/4 * (1 − ξ)(1 − η) 
% N2(ξ, η) = 1/4 * (1 + ξ)(1 − η) 
% N3(ξ, η) = 1/4 * (1 + ξ)(1 + η) 
% N4(ξ, η) = 1/4 * (1 − ξ)(1 + η)
%
% Vorgehen 2D Interpolation:
% 1. Erstellen Sie eine Funktion Fkt. I (linquadref.m), die alle 
%    Ansatzfunktionen Ni(ξ, η) als Vektor zurückgibt.
% 2. Approximieren Sie die Funktionswerte f(0.0; 0.0) und f(0.577; −0.577)
% 3. Erstellen Sie die Funktion Fkt. II, die alle Ableitungen der 
%    Ansatzfunktionen ∂Ni(ξ,η)/∂ξ, ∂Ni(ξ,η)/∂η als Matrix zurückgibt 
%    (Zeilen i, Spalten ξ, η).
% 4. Approximieren Sie die Ableitungen ∂f(ξ,η)/∂η, ∂f(ξ,η)/∂ξ in den 
%    Punkten (ξ|η) = (0.0; 0.0) sowie (ξ|η) = (0.577| − 0.577)
% =========================================================================

clear
clc

f_node = [0.0; 1.0; 3.0; 1.0];

%% 1: Siehe 'linquadref.m'

%% 2: f(ξ,η) = Σ Ni(ξ,η) * yi
N = @(xi,eta) linquadref(xi,eta); % return [N1; N2; N3; N4]
f = @(xi, eta) N(xi,eta)'*f_node;

fL1 = f(0.0,0.0);
fL2 = f(0.577,-0.577);

%% 3: Siehe 'linquadderivref.m'

%% 4: 
dN = @(xi,eta) linquadderivref(xi,eta); % return [dN/dxi dN/deta] 4x2 Matrix
df = @(xi, eta) dN(xi,eta)'*f_node;

df1 = df(0.0,0.0);
df2 = df(0.577,-0.577);

df1_dxi  = df1(1); % ∂f(ξ,η)/∂ξ, (ξ|η) = (0.0|0.0)  
df1_deta = df1(2); % ∂f(ξ,η)/∂η, (ξ|η) = (0.0|0.0) 

df2_dxi  = df2(1); % ∂f(ξ,η)/∂ξ, (ξ|η) = (0.577|-0.577)  
df2_deta = df2(2); % ∂f(ξ,η)/∂η, (ξ|η) = (0.577|-0.577) 

