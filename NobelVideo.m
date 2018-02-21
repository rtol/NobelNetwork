%This script creates the video of the Nobel network over time.
%
%21 February 2018, Richard S.J. Tol

nframes = size(F,2);

%v = VideoWriter('C:\Users\Richard\Google Drive\Papers\Nobel\nobel.mp4','MPEG-4')
v = VideoWriter('C:\Users\Richard\Google Drive\Papers\Nobel\nobel','Uncompressed AVI');
v.FrameRate = 1;
%v.CompressionRatio = 1;
open(v);
for i = 1:nframes, 
   writeVideo(v,F(i));
end
close(v)

%%
if names
    p = plot(G49,'Layout',layout,'NodeLabel',G49.Nodes.Name);
else
    p = plot(G49,'Laexyout',layout,'NodeLabel',{});
end

%title('Current network');
set(gcf,'units','points','position',[0,0,2250,750])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
colormap cool
p.NodeCData = nobool(:,nyear);
p.MarkerSize = 4;
p.LineWidth = 0.75;