function G = addgraphdesc(G,cidi)
%G = addgraphdesc(G,cidi)
%
%addgraph is a recursive function
%input cidi is a cell array, identifying academic children
%parent and children are added to family tree G
%addgraph then moves on to the children's children
%
%22 March 2018, Richard S.J. Tol

count = strcat(num2str(size(G.Nodes,1)),' members of the family tree.');
disp(count)
nc = size(cidi,2); 
for i=1:nc
    [cid, cn, pid, pn] = getchildren(char(cidi(i))); 
    nq =size(cid,2);
    j=0;
    for i=1:nq
        testp = findnode(G, cn{i}); % 0 if child not already in graph
        if testp > 0
            teste = findedge(G, pn{i}, cn{i});
        else
            teste = 0;
        end
        if teste==0
            j=j+1;
            pnh{j}=pn{i};
            cnh{j}=cn{i};
            pidh{j}=pid{i};
            cidh{j} = cid{j};
        end
    end
    if exist('cnh')
        G=addedge(G,pnh,cnh);
    end
    if exist('cidh')
        G=addgraphdesc(G,cidh);
    end
    clear cid cn pin pn pnh cnh pidh
end

end