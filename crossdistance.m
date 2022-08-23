function cd = crossdistance(G,select,d)
%function cd = crossdistance(G,select,d)
%
%cd is the matrix of horizontal distances between selected nodes of G
%G is a graph
%select is a vector of zeros and ones
%d sets the depth of the horizoGal relation
%   d = 1 siblings
%   d = 2 first cousins
%   d = 3 second cousins
%
%23 August 2022, Richard S.J. Tol

in = indegree(G);
nn = size(G.Nodes,1);
cd = zeros(nn,nn);
for i=1:nn-1,
    if in(i) > 0
        for j=i+1:nn,
            if select(i) == 1 | select(j) == 1,
                cd(i,j) = horzdist(G,G.Nodes{i,:},G.Nodes{j,:},d);
            end
        end
    end
end
cd = cd + cd';