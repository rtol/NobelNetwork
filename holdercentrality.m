function hc = holdercentrality(G,h,s)
%hc = holdercentrality(G,h,s)
%G is a graph, directed or no
%select is a vector of zeros and ones
%s is an optional string, in for incloseness, out for outcloseness
%
%21 February 2018, Richard S.J. Tol

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