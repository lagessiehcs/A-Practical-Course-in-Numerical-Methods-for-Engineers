function quadplot(nodes,elements,sol)
% ============================================
% Fkt. 0
%
% nodes    ... [Knotenkoordinaten (Knotenid, (x,y)-Richtung)],
% elements ... [Knotenid (Elementid, lokale Knotenid)],
% sol      ... [Lösungsvektor (Knotenid)]
% ============================================


T = zeros(size(elements,1)*2,3);

for i=1:size(elements,1) % Dreieck erstellen

        % Knotenid für 1. Dreieck
        Knotenid1_1 = elements(i,1);
        Knotenid1_2 = elements(i,2);
        Knotenid1_3 = elements(i,3);

        % Knotenid für 2. Dreieck
        Knotenid2_1 = elements(i,3);
        Knotenid2_2 = elements(i,4);
        Knotenid2_3 = elements(i,1);

        % 1. Dreiecks
        T(2*i-1,1) = Knotenid1_1;
        T(2*i-1,2) = Knotenid1_2;
        T(2*i-1,3) = Knotenid1_3;

        % 2. Dreiecks
        T(2*i,1) = Knotenid2_1;
        T(2*i,2) = Knotenid2_2;
        T(2*i,3) = Knotenid2_3;        

end

 trisurf(T,nodes(:,1),nodes(:,2),sol,LineWidth=1)

end