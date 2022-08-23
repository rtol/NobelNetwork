function G = addgraph(G,pidi)
%G = addgraph(G,pidi)
%
%addgraph is a recursive function
%input pidi is a cell array, identifying academic parents
%parents and child are added to family tree G
%addgraph then moves on to the parents' parents
%
%21 February 2018, Richard S.J. Tol

count = strcat(num2str(size(G.Nodes,1)),' members of the family tree.');
disp(count)
np = size(pidi,2); 
for i=1:np
    [cid, cn, pid, pn] = getparents(char(pidi(i))); 
    nq =size(pid,2);
    j=0;
    for i=1:nq
        testp = findnode(G, pn{i}); % 0 if parent not already in graph
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
        end
    end
    if exist('pnh')
        G=addedge(G,pnh,cnh);
    end
    if exist('pidh')
        G=addgraph(G,pidh);
    end
    clear cid cn pin pn pnh cnh pidh
end

end