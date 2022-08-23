function [cid, cn, pid, pn] = getparents(c)
%function [cid, cn, pid, pn] = getparents(c)
%
%getparents downloads the parent ids and parents names of scholar c
%output is organized as two pairs of cell arrays, for names and ids
%
%21 February 2018, Richard S.J. Tol

site = strcat('https://academictree.org/econ/peopleinfo.php?pid=',c);
s = webread(site);
if length(s) > 0 
       
    %get name
    sep0 = findstr(s,'<TITLE>');
    sep1 = findstr(s,'</TITLE>');
    s1 = s(sep0+7:sep1-1);
    sep0 = findstr(s1,'-');
    cname = s1(sep0+2:length(s1));
    cname = strrep(cname,'  ',' ');
    
    %get parents
    sep0 = findstr(s,'Construct Parent Connection UL');
    sep1 = findstr(s,'Construct Child Connection Container');
    s1 = s(sep0:sep1);
    sep0 = findstr(s1,'pid=');
    np = length(sep0);
    pidh = cell(1,np);
    cidh = cell(1,np);
    pnh = cell(1,np);
    cnh = cell(1,np);
    for i = 1:np
        j=0;
        while s1(sep0(i)+4+j)~='"'
            s2(j+1) = s1(sep0(i)+4+j);
            j=j+1;
        end
        j=j+2;
        l = 1;
        while s1(sep0(i)+4+j)~='<'
            s3(l) = s1(sep0(i)+4+j);
            j=j+1;
            l=l+1;
        end
        pidh{i} = s2;
        cidh{i} = c;
        pnh{i} = strrep(strrep(s3,'&nbsp;',' '),'  ',' ');
        cnh{i} = strrep(cname,'  ',' ');
        clear s2 s3
    end
end

%remove duplicate parents
if size(pidh,2) > 2
    cid{1} = cidh{1};
    cn{1} = cnh{1};
    pid{1} = pidh{1};
    pn{1} = pnh{1};
    for i=2:size(pidh,2)
        j=size(pid,2);
        copy = true;
        for l=1:j
            copy = copy & ~strcmp(pidh{i},pid{l});
        end
        if copy
            j=j+1;
            cid{j} = cidh{i};
            cn{j} = cnh{i};
            pid{j} = pidh{i};
            pn{j} = pnh{i};
        end
    end
else
    cid = cidh;
    cn = cnh;
    pid = pidh;
    pn = pnh;
end

end