%This script creates the video of the Nobel map over time.
%
%21 February 2018, Richard S.J. Tol

load coastlines
centraluni(centraluni==0)=NaN;

for i=1:53,
    hmap = figure
    worldmap('world')
    title(num2str(i+1968));
    set(gcf,'units','points','position',[0,0,960,720])
    plotm(coastlat,coastlon)
    scatterm(lat,lon,centraluni(:,i)*20,'MarkerEdgeColor','red')
    M(i) = getframe(hmap);
end

%%
v = VideoWriter('C:\Users\rtol\Google Drive\Papers\Nobel\nobelmap.mp4','MPEG-4')
%v = VideoWriter('C:\Users\Richard\Google Drive\Papers\Nobel\nobelmap','Uncompressed AVI');
v.FrameRate = 2;
open(v);
for i = 1:53, 
   writeVideo(v,M(i));
end
close(v)
