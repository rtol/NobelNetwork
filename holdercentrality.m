function hc = holdercentrality(G,h,s)
%hc = holdercentrality(G,h,s)
%
%hc is the generalized average proximity of all nodes to all nodes in G
%G is a graph
%h is power of the generalized average
%   h=1 arithmetic average
%   h=0 geometric average
%   h=-1 harmonic average
%note that hc is undefined for a unconnnected graph unless h<0
%s is an optional string, in for incloseness, out for outcloseness
%(=default)
%
%23 August 2022, Richard S.J. Tol

n = size(G.Nodes,1);
dist = distances(G);
invdist = dist.^h;
for i=1:n
    invdist(i,i)=0;
end

if ~exist('s')
    hc = (n-1)*sum(invdist,2).^(-1/h);
elseif s(1)=='o'
    hc = (n-1)*sum(invdist,2).^(-1/h);
elseif s(1)=='i'
    hc = (n-1)*(sum(invdist,1)').^(-1/h);
else
    hc = 0;
end

end