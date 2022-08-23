function G = getacdesc(startid)
%function G = getacdesc(startid)
%
%This function downloads academic mentees from https://academictree.org/
%and return them as the directed graph G. To do this for your favourite
%academic, go to the site and search for the name.
%Startid is the person id (pid) in the URL. It is a string.
%
%22 March 2018, Richard S.J. Tol

[cid, cn, pid, pn] = getchildren(startid);
G=digraph(pn,cn);
G=addgraphdesc(G,cid);

end