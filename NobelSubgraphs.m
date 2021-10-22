%This script creates selected subgraphs of the Nobel network.
%
%21 February 2018, Richard S.J. Tol

%% Subgraphs
dist = distances(G53);

pos = find(strcmp('Jan Tinbergen (1969)',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S1 = subgraph(G53,idx);

hfig = figure;
plot(S1,'Layout',layout,'NodeLabel',S1.Nodes.Name)
title('Descendants of Tinbergen');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(54) = getframe(hfig);

%print('Tinbergen','-djpeg','-r300');

pos = find(strcmp('John Maynard Keynes',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S2 = subgraph(G53,idx);

hfig = figure;
plot(S2,'Layout',layout,'NodeLabel',S2.Nodes.Name)
title('Descendants of Keynes');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(55) = getframe(hfig);

%print('Keynes','-djpeg','-r300');

pos = find(strcmp('Harold Hotelling',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S3 = subgraph(G53,idx);

hfig = figure;
plot(S3,'Layout',layout,'NodeLabel',S3.Nodes.Name)
title('Descendants of Hotelling');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(56) = getframe(hfig);

%print('Hotelling','-djpeg','-r300');

pos = find(strcmp('Simon Kuznets (1971)',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S4 = subgraph(G53,idx);

hfig = figure;
plot(S4,'Layout',layout,'NodeLabel',S4.Nodes.Name)
title('Descendants of Kuznets');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(57) = getframe(hfig);

%print('Kuznets','-djpeg','-r300');

pos = find(strcmp('Wassily Leontief (1973)',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S5 = subgraph(G53,idx);

hfig = figure;
plot(S5,'Layout',layout,'NodeLabel',S5.Nodes.Name)
title('Descendants of Leontief');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(58) = getframe(hfig);

%print('Leontief','-djpeg','-r300');

pos = find(strcmp('Karl Knies',G53.Nodes{:,1}));
idx = isfinite(dist(pos,:));
S6 = subgraph(G53,idx);

hfig = figure;
plot(S6,'Layout',layout,'NodeLabel',S6.Nodes.Name)
title('Descendants of Knies');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(59) = getframe(hfig);

%print('Knies','-djpeg','-r300');