n = size(dist,1);
sibling = zeros(n,n) + inf;
for i=1:n,
    for j=1:n,
        for k=j+1:n
            if dist(i,j) == dist(i,k)
                if dist(i,j) < sibling(j,k)
                    sibling(j,k) = dist(i,j);
                    sibling(k,j) = sibling(j,k);
                end
            end
        end
    end
end

for i=1:n,
    sibling(i,i) = 0;
end