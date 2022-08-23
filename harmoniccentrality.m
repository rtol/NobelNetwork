function hc = harmoniccentrality(G,s)
%hc = harmoniccentrality(G,s)
%
%hc is the harmonic average proximity of all nodes to all nodes in G
%G is a graph
%s is an optional string, in for incloseness, out for outcloseness
%(=default)
%
%21 February 2018, Richard S.J. Tol

n = size(G.Nodes,1);
dist = distances(G);
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

end
       