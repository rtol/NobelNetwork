function nc = nobelity(G,select)
%nc = nobelity(G,select)
%G is a graph, directed or no
%select is a vector of zeros and ones
%nc is the average distance to all nodes in select
%if select is a vector of ones, nc is Matlab's standard centrality measure
%
%21 February 2018, Richard S.J. Tol

n = size(G.Nodes,1);
dist = distances(G);
for i=1:n
    if select(i)==0
        dist(:,i) = inf;
    end
end
for i=1:n
    dist(i,i)=0;
end
countinf = double(not(isinf(dist)));
aux = dist.*countinf;
aux(isnan(aux)) = 0;
nn = sum(select);
for i=1:n
    A(i) = sum(countinf(i,:))-1;
    C(i) = sum(aux(i,:));
    nc(i) = (A(i)/(nn-1))^2 / C(i);
end
nc = nc';
nc(isnan(nc)) = 0;

end