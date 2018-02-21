function hc = harmonicnobelity(G,select,s)
%nc = nobelity(G,select)
%G is a graph, directed or no
%select is a vector of zeros and ones
%s is an optional string, in for incloseness, out for outcloseness
%nc is the average distance to all nodes in select
%if select is a vector of ones, nc is the harmonic centrality measure
%
%21 February 2018, Richard S.J. Tol

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
