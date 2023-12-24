clear
clc
format long

A = [ 3 0 0 0 
      0 3 0 0
      0 0 3 0
      0 0 0 3];

v= [1
    2
    3
    4];

a = dot(v,v); % Skalaprodukt (dot product)

B = v*v';

C = A*B;

lamda = eig(C); % Eigenwerte der Matrix C

x = linsolve(C-A,a*v); % Das Gleichungssystem (C-A)x = av nach x lösen

C(:,2) = v; % Der zweiten Spalte der Matrix C den Vektor v zuweisen

b = C(3,:); % Die dritte Zeile der Matrix C in den Spaltenvektor b speichern

c = 10:0.5:100; % Einen Zeilenvektor c mit Einträgen von 10.0 bis 100.0 und einer Schritteweite von 0.5 erzeugen

% Einen Zeilenvektor f mit Einträgen c_i(5 + c_i) + 1/c_i + 2c_i, wobei c_i die Elemente des Vektors c sind
f = zeros(length(c),1);
for i = 1:length(c)
    
    f(i) = c(i)*(5 + c(i)) + 1/c(i) + 2*c(i);

end

lf = length(f); % Die Dimension lf des Zeilenvektors f ermitteln 


