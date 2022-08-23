function G = mergedigraphs2(G1,G2)
%function G = mergedigraphs(G1,G2)
%
%This function takes two digraphs, G1 and G2, and makes them into one, G.
%
%23 January 2021, Richard S.J. Tol

G = digraph([G1.Edges; G2.Edges]);
G = simplify(G);

end