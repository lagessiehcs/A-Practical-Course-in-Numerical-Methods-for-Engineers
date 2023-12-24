clear
clc
%%
% 2D–Plot: Gegeben ist die Funktion f(x) = sin(x). 
% Plotten Sie die Funktion im Intervall -π ≤ x ≤ π mit
% geeigneten Einstellungen.

x = -pi:0.01:pi;
figure(1)
plot(x,sin(x),LineWidth=1)
xlim tight
ylim tight
grid on
xlabel('x')
ylabel('sin(x)')
axis equal

%%
% 3D–Quadplot: Erstellen Sie ein Programm, welches beliebige 3D–Flächen 
% im Raum plottet, wobei die Flächen aus einer beliebigen Anzahl an
% Vierecken bestehen können. Als erster Schritt soll die allgemeine 
% Funktion Fkt. 0 zum Plotten beliebiger Vierecke erstellt werden. Diese 
% soll alle Vierecke in jeweils zwei Dreiecke unterteilen und dann diese
% mithilfe der Matlab-Plot-Funktion trisurf plotten. Als zweiter Schritt
% soll die Funktion verwendet werden, um folgende 3D–Fläche zu plotten: 
% Gegeben ist ein Gitter bestehend aus 4 Vierecken mit den Eckkoordinaten 
% x = -1, 0, 1 und y = -1, 0, 1. Die z-Koordinate in den Ecken der Vierecke
% ist durch die Funktion f(x, y) = x^2 + y^2 gegeben.

nodes = [-1, -1; 0, -1; 1, -1; -1, 0; 0, 0; 1, 0; -1, 1; 0, 1; 1, 1];

elements = [1, 2, 5, 4; 2, 3, 6, 5; 4, 5, 8, 7; 5, 6, 9, 8];

sol = [2; 1; 2; 1; 0; 1; 2; 1; 2];

figure(2)
quadplot(nodes,elements,sol)
xlabel('x')
ylabel('y')
zlabel('f(x,y)')