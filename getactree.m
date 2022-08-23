function G = getactree(startid)
%function G = getactree(startid)
%
%This function downloads academic mentors from https://academictree.org/
%and return them as the directed graph G. To do this for your favourite
%academic, go to the site and search for the name.
%Startid is the person id (pid) in the URL. It is a string.
%
%21 February 2018, Richard S.J. Tol

[cid, cn, pid, pn] = getparents(startid);
G=digraph(pn,cn);
G=addgraph(G,pid);

end