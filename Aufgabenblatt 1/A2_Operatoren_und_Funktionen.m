clear
clc

% Einen Zufallsvektor a der Dimension 1000 mit Einträgen zwischen
% 0 und 1 erstellen
a = rand(1000,1); 

%% 
% Wenn der erste Eintrag a1 ≥ 0.5 → Matlab-Ausgabe  'a1 >= 0.5', 
% sonst 'a1 < 0.5' 

if a(1) >= 0.5
    disp('a1 >= 0.5')
else
    disp('a1 < 0.5')
end

%% 
% Die Anzahl n_05 der Einträge ai ≥ 0.5 im Vektor a ermitteln

n_05 = 0;

for i = 1:length(a)

    if a(i) >= 0.5
        n_05 = n_05+1;
    end

end

%% 
% Den ersten Eintrag (Index i & Wert ai) im Vektor a ermitteln, für
% den gilt 0.499 ≤ ai ≤ 0.501. Falls kein Element existiert, welches das 
% Kriterium erfüllt → Matlab-Ausgabe 'Kein Element 0.499 <= a_i <= 0.501'

i = 1;
found = false;

while(i<= length(a) && ~found)    
    if (a(i)>=0.499 && a(i)<=0.501)      
        found = true;
        ai = a(i);
    else
           i= i+1;
    end      
end

if ~found
    disp('Kein Element 0.499 <= a_i <= 0.501')
end

%%
% Berechnen Sie den Wert von n! für ganzzahlige n. Erstellen Sie dazu eine 
% eigene Funktion Fkt. A (siehe unten). Die Funktion soll in einem eigenen
% *.m-file abgespeichert werden. 
% Testen Sie die Funktion für n = 0 und n = 5
% f1 = facultaet(0)
% f2 = facultaet(5)
% f3 = facultaet(-1)
f4 = facultaet(1.5)
