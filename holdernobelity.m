function hc = holdernobelity(G,select,h,s)
%hc = nobelity(G,select,s)
%G is a graph, directed or no
%select is a vector of zeros and ones
%s is an optional string, in for incloseness, out for outcloseness
%(=default)
%hc is the average distance to all nodes in select
%if select is a vector of ones, hc is the harmonic centrality measure
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