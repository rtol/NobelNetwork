%This script computes the centrality measures.
%
%21 February 2018, Richard S.J. Tol

nyear = size(F,2);
nnode = zeros(1,nyear);
nnode(nyear) = size(G49.Nodes,1);
nnetwork = zeros(1,nyear);

closeness = zeros(nnode(nyear),nyear);
nobelness = zeros(nnode(nyear),nyear);
closeharm = zeros(nnode(nyear),nyear) + inf;
nobelharm = zeros(nnode(nyear),nyear) + inf;
nobool = zeros(nnode(nyear),nyear);

for i=1:nyear,
    nnode(i) = eval(strcat('size(G',num2str(i),'.Nodes,1)'));
end

for i=1:nyear,
    if i>1,
        nobool(:,i) = nobool(:,i-1);
    end
    for j=1:nnode(i),        
        test = eval(strcat('length(cell2mat(strfind(table2cell(G',num2str(i),'.Nodes(',num2str(j),',1)),"',num2str(i+1968),'")))'));
        if test == 1,
            nobool(j,i)=1;
        end
    end
end

for i=1:nyear,
    closeness(1:nnode(i),i)= eval(strcat('centrality(G',num2str(i),",'outcloseness')"));
    nobelness(1:nnode(i),i)= eval(strcat('nobelity(G',num2str(i),',nobool(1:',num2str(nnode(i)),',',num2str(i),'))'));
    closeharm(1:nnode(i),i)= eval(strcat('harmoniccentrality(G',num2str(i),')'));
    nobelharm(1:nnode(i),i)= eval(strcat('harmonicnobelity(G',num2str(i),',nobool(1:',num2str(nnode(i)),',',num2str(i),'))'));
end

%%
nnetwork(1) = 2; %Frisch and Tinbergen are not connected
for i=2:nyear,
    GED(i) = GED(i) + eval(strcat('size(G',num2str(i),'.Edges,1)')) - eval(strcat('size(G',num2str(i-1),'.Edges,1)'));
    nnetwork(i) = eval(strcat('max(conncomp(G',num2str(i),',"Type","weak"))')) - eval(strcat('max(conncomp(G',num2str(i-1),',"Type","weak"))'));
end
