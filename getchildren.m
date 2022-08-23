function [cid, cn, pid, pn] = getchildren(c)
%function [cid, cn, pid, pn] = getchildren(c)
%
%getparents downloads the parent ids and parents names of scholar c
%output is organized as two pairs of cell arrays, for names and ids
%
%22 March, Richard S.J. Tol

site = strcat('https://academictree.org/econ/peopleinfo.php?pid=',c);
s = webread(site);
if length(s) > 0 
       
    %get name
    sep0 = findstr(s,'<TITLE>');
    sep1 = findstr(s,'</TITLE>');
    s1 = s(sep0+7:sep1-1);
    sep0 = findstr(s1,'-');
    pname = s1(sep0+2:length(s1));
    pname = strrep(pname,'  ',' ');
    
    %get children
    sep0 = findstr(s,'Construct Child Connection Container');
    sep1 = findstr(s,'Construct Collaborator Connection Container');
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
        cidh{i} = s2;
        pidh{i} = c;
        cnh{i} = strrep(strrep(s3,'&nbsp;',' '),'  ',' ');
        pnh{i} = strrep(pname,'  ',' ');
        clear s2 s3
    end
end

%remove duplicate children
if size(pidh,2) > 2
    cid{1} = cidh{1};
    cn{1} = cnh{1};
    pid{1} = pidh{1};
    pn{1} = pnh{1};
    for i=2:size(cidh,2)
        j=size(cid,2);
        copy = true;
        for l=1:j
            copy = copy & ~strcmp(cidh{i},cid{l});
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