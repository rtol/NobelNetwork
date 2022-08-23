function cc = crosscloseness(G,select,d,h)
%function cc = crosscloseness(G,select,d,h)
%
%cc is the generalized average crosscloseness of nodes in a graph 
%G is a graph
%select is a vector of zeros and ones
%d sets the depth of the horizoGal relation
%   d = 1 siblings
%   d = 2 first cousins
%   d = 3 second cousins
%h is the power of the generalized average
%   h = 1 arithmetic average
%   h = 0 geometric average
%   h = -1 harmonic average
%
%23 August 2022, Richard S.J. Tol

crossdist = crossdistance(G,select,d);

cc = sum(crossdist.^h,1)/sum(select);
cc = cc.^(1/h);