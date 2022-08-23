function hc = harmonicnobelity(G,select,s)
%hc = nobelity(G,select,s)
%
%hc is the harmonic average proximity of all nodes to selected nodes in G
%G is a graph
%select is a vector of zeros and ones
%if select is a vector of ones, hc is the harmonic centrality measure
%s is an optional string, in for incloseness, out for outcloseness
%(=default)
%
%22 March 2022, Richard S.J. Tol

n = size(G.Nodes,1);
dist = distances(G);
for i=1:n
    if select(i)==0
        if ~exist('s')
            dist(:,i) = inf;
        elseif s(1)=='o'
            dist(:,i) = inf;
        else
            dist(i,:) = inf;
        end 
    end
end
invdist = dist.^-1;
for i=1:n
    invdist(i,i)=0;
end
if ~exist('s')
    hc = (n-1)*sum(invdist,2);
elseif s(1)=='o'
    hc = (n-1)*sum(invdist,2);
elseif s(1)=='i'
    hc = (n-1)*sum(invdist,1)';
else
    hc = 0;
end
