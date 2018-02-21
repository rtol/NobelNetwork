%This script puts together the data for the Nobel network over time.
%
%21 February 2018, Richard S.J. Tol

clear all
names = true;
layout = 'layered'; %force with names, layered without

s = {'Jan Tinbergen (1969)' 'Paul Ehrenfest' 'Ludwig Boltzmann' 'Jozef Stefan'};
p = {'Paul Ehrenfest' 'Ludwig Boltzmann' 'Jozef Stefan' 'Andreas von Ettingshausen'};

H = digraph(p,s);
G1 = addnode(H,{'Ragnar Frisch (1969)'});
GED(1) = length(s) + 1 + size(G1.Edges,1);
clear H

hfig = figure;
if names
    plot(G1,'Layout',layout,'NodeLabel',G1.Nodes.Name);
else
    plot(G1,'Layout',layout,'NodeLabel',{});
end
title('1969: Frisch and Tinbergen');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(1) = getframe(hfig);
%%
s0 = {'Paul Samuelson (1970)' 'Paul Samuelson (1970)' 'Paul Samuelson (1970)' 'Joseph Schumpeter'};
p0 = {'Wassily Leontief (1973)' 'Gottfried Haberler' 'Joseph Schumpeter' 'Eugen Boehm von Bawerk'};
 
s1 = {'Wassily Leontief (1973)' 'Wassily Leontief (1973)' 'Ladislaus Bortkiewicz' 'Wilhelm Lexis'};
p1 = {'Werner Sombart' 'Ladislaus Bortkiewicz' 'Wilhelm Lexis' 'August Beer'};

s2 = {'Gottfried Haberler' 'Ludwig von Mises' 'Ludwig von Mises'  'Carl Menger'};
p2 = {'Ludwig von Mises' 'Carl Menger' 'Eugen Boehm von Bawerk' 'Lorenz von Stein'}; 

s3 = {'Eugen Boehm von Bawerk' 'Eugen Boehm von Bawerk' 'Eugen Boehm von Bawerk'};
p3 = {'Karl Knies' 'Wilhelm Roscher' 'Bruno Hildebrand'};

s4 = {'Bruno Hildebrand' 'Karl Knies'};
p4 = {'Maximilian Duncker' 'Bruno Hildebrand'};

s5 = {'Werner Sombart' 'Werner Sombart' 'Adolf Wagner' 'Gustav von Schmoller'};
p5 = {'Adolf Wagner' 'Gustav von Schmoller' 'Georg Hanssen' 'Karl Schuetz'};

s = [s0 s1 s2 s3 s4 s5];
p = [p0 p1 p2 p3 p4 p5];

G2 = addedge(G1,p,s);
GED(2) = length(s);

hfig = figure;
if names
    plot(G2,'Layout',layout,'NodeLabel',G2.Nodes.Name);
else
    plot(G2,'Layout',layout,'NodeLabel',{});
end
title('1970: Samuelson');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(2) = getframe(hfig);
%%
s0 = {'Simon Kuznets (1971)' 'Wesley Clair Mitchell' 'John Dewey' 'John Dewey' 'John Dewey' 'George Morris' 'Wesley Clair Mitchell' 'Wesley Clair Mitchell' 'Laurence Laughlin'};
p0 = {'Wesley Clair Mitchell' 'John Dewey' 'Charles Peirce' 'George Morris' 'Granville Hall' 'Friedrich Trendelenburg' 'Thorstein Veblen' 'Laurence Laughlin' 'Henry Adams'};

s1 = {'Friedrich Trendelenburg' 'Friedrich Trendelenburg' 'Friedrich Trendelenburg' 'Friedrich Trendelenburg' 'Georg Koenig' 'August Boeckh' 'Friedrich Wolf'};
p1 = {'Karl Reinhold' 'Georg Koenig' 'Johann Hermann' 'August Boeckh' 'Christian Heyne' 'Friedrich Wolf' 'Christian Heyne'};

s2 = {'Thorstein Veblen' 'William Sumner' 'William Sumner' 'Heinrich Ewald' 'Heinrich Ewald' 'Heinrich Ewald' 'Johann Eichhorn' 'Heinrich Planck' 'Heinrich Planck'};
p2 = {'William Sumner' 'Noah Porter' 'Heinrich Ewald' 'Johann Eichhorn' 'Gottlieb Planck' 'Heinrich Planck' 'Christian Heyne' 'Johann Eichhorn' 'Gottlieb Planck'};

s3 = {'Granville Hall' 'Granville Hall'};
p3 = {'Henry Bowditch' 'William James'};

s4 = {'Maximilian Duncker' 'Felix Papencordt' 'Felix Papencordt' 'Felix Papencordt' 'August Wilhelm Schlegel' 'August Wilhelm Schlegel'};
p4 = {'Felix Papencordt' 'Friedrich Schelling' 'Christian August Brandis' 'August Wilhelm Schlegel' 'Alexander Hamilton' 'Christian Heyne'};

s = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];

G3 = addedge(G2,p,s);
GED(3) = length(s);

hfig = figure;
if names
    plot(G3,'Layout',layout,'NodeLabel',G3.Nodes.Name);
else
    plot(G3,'Layout',layout,'NodeLabel',{});
end
set(gcf,'units','points','position',[0,0,960,720])
title('1971: Kuznets');
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(3) = getframe(hfig);
%%
s0 = {'Kenneth Arrow (1972)' 'Harold Hotelling' 'Oswald Veblen' 'Eliakim Moore'};
p0 = {'Harold Hotelling' 'Oswald Veblen' 'Eliakim Moore' 'Hubert Newton'};

s1 = {'John Hicks (1972)' 'John Hicks (1972)' 'Lionel Robbins' 'John Hicks (1972)' 'Erik Lindahl' 'Knut Wicksell'};
p1 = {'Friedrich Hayek (1974)' 'Lionel Robbins' 'Edwin Cannan' 'Erik Lindahl' 'Knut Wicksell' 'Carl Menger'};

s2 = {'Friedrich Hayek (1974)' 'Friedrich Hayek (1974)'};
p2 = {'Ludwig von Mises' 'Carl Menger'};

s = [s0 s1 s2];
p = [p0 p1 p2];

G4 = addedge(G3,p,s);
GED(4) = length(s);

hfig = figure;
if names
    plot(G4,'Layout',layout,'NodeLabel',G4.Nodes.Name);
else
    plot(G4,'Layout',layout,'NodeLabel',{});
end
title('1972: Arrow and Hicks');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(4) = getframe(hfig);
%%
G5 = G4;
GED(5) = 0;

hfig = figure;
if names
    plot(G5,'Layout',layout,'NodeLabel',G5.Nodes.Name);
else
    plot(G5,'Layout',layout,'NodeLabel',{});
end
title('1973: Leontief');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(5) = getframe(hfig);
%%
s0 = {'Gunnar Myrdal (1974)' 'Karl Gustav Cassel' 'Goesta Mittag-Leffler' 'Goeran Dillner' 'Carl Malmsten' 'Carl Malmsten'};
p0 = {'Karl Gustav Cassel' 'Goesta Mittag-Leffler' 'Goeran Dillner' 'Carl Malmsten' 'Fredrik Carlson' 'Joens Svanberg'};

s1 = {'Joens Svanberg' 'Fredrik Mallet' 'Maerten Stroemer' 'Maerten Stroemer' 'Anders Celsius' 'Anders Celsius'};
p1 = {'Fredrik Mallet' 'Maerten Stroemer' 'Samuel Klingenstierna' 'Anders Celsius' 'Erik Burman' 'Jacques Cassini'};

s2 = {'Jacques Cassini' 'Jacques Cassini'};
p2 = {'Jean-Dominique Cassini' 'Pierre Varignon'};

s3 = {'Hubert Newton' 'Hubert Newton' 'Michel Chasles'};
p3 = {'Anthony Stanley' 'Michel Chasles' 'Simeon-Denis Poisson'};

s4= {'Simeon-Denis Poisson' 'Simeon-Denis Poisson' 'Pierre-Simon LaPlace' 'Pierre-Simon LaPlace' 'Jean-Baptiste dAlembert' 'Jean-Baptiste dAlembert' 'Leonor Caron'};
p4= {'Joseph Louis LaGrange' 'Pierre-Simon LaPlace' 'Christophe Gadbled' 'Jean-Baptiste dAlembert' 'Balthasar Gibert' 'Leonor Caron' 'Pierre Varignon'};

s = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];

G6 = addedge(G5,p,s);
GED(6) = length(s);

hfig = figure;
if names
    plot(G6,'Layout',layout,'NodeLabel',G6.Nodes.Name);
else
    plot(G6,'Layout',layout,'NodeLabel',{});
end
title('1974: Hayek and Myrdal');
set(gcf,'units','points','position',[0,0,960,720])
F(6) = getframe(hfig);

%%
s0 = {'Tjalling Koopmans (1975)' 'Tjalling Koopmans (1975)' 'Hendrik Kramers' 'Hendrik Kramers' 'Niels Bohr' 'Christian Christiansen' 'Carl Valentin Holten' 'Hans Christian Oersted' 'Hans Christian Oersted' 'Johann Wilhelm Ritter' 'Johann Wilhelm Ritter'};
p0 = {'Jan Tinbergen (1969)' 'Hendrik Kramers' 'Paul Ehrenfest' 'Niels Bohr' 'Christian Christiansen' 'Carl Valentin Holten' 'Hans Christian Oersted' 'Jacob Baden' 'Johann Wilhelm Ritter' 'August Wilhelm Schlegel' 'Alexander von Humboldt'};

s1 = {'Leonid Kantorovich (1975)' 'Grigorri Fichtenholz' 'Leonid Kantorovich (1975)' 'Vladimir Smirnov' 'Vladimir Steklov' 'Aleksandr Lyapunov'};
p1 = {'Grigorri Fichtenholz' 'Samuil Shatunovksy' 'Vladimir Smirnov' 'Vladimir Steklov' 'Aleksandr Lyapunov' 'Pafnuty Chebyshev'};

s2 = {'Niels Bohr' 'Niels Bohr' 'Ernst Rutherford' 'Ernst Rutherford'};
p2 = {'Joseph Thomson' 'Ernst Rutherford' 'Joseph Thomson' 'Arthur Schuster'};

s3 = {'Joseph Thomson' 'Joseph Thomson' 'Joseph Thomson' 'Joseph Thomson' 'John Strutt' 'William Niven'};
p3 = {'William Niven' 'Edward Routh' 'Balfour Stewart' 'John Strutt' 'Edward Routh' 'James Maxwell'};

s4 = {'Arthur Schuster' 'Arthur Schuster' 'Arthur Schuster' 'Arthur Schuster' 'Arthur Schuster' 'Arthur Schuster'};
p4 = {'Gustav Kirchhoff' 'Balfour Stewart' 'Wilhelm Weber' 'Hermann von Helmholtz' 'James Maxwell' 'John Strutt'};

s5 = {'August Beer' 'Julius Pluecker' 'Christian Gerling'};
p5 = {'Julius Pluecker' 'Christian Gerling' 'Carl Gauss'};

s6 = {'Pafnuty Chebyshev' 'Nikolai Brashman' 'Nikolai Brashman' 'Nikolai Lobachevsky' 'Johann Bartels' 'Johann Bartels' 'Johann Bartels'};
p6 = {'Nikolai Brashman' 'Johann von Littrow' 'Nikolai Lobachevsky' 'Johann Bartels' 'Georg Lichtenberg' 'Abraham Kaestner' 'Johann Pfaff'};

s7 = {'Carl Gauss' 'Johann Pfaff' 'Johann Pfaff' 'Georg Lichtenberg' 'Abraham Kaestner'};
p7 = {'Johann Pfaff' 'Georg Lichtenberg' 'Abraham Kaestner' 'Abraham Kaestner' 'Christian Haussen'};

s = [s0 s1 s2 s3 s4 s5 s6 s7];
p = [p0 p1 p2 p3 p4 p5 p6 p7];

G7 = addedge(G6,p,s);
GED(7) = length(s);

hfig = figure;
if names
    plot(G7,'Layout',layout,'NodeLabel',G7.Nodes.Name);
else
    plot(G7,'Layout',layout,'NodeLabel',{});
end
title('1975: Kantorovich and Koopmans');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(7) = getframe(hfig);
%%
s = {'Milton Friedman (1976)' 'Milton Friedman (1976)' 'Henry Schultz' 'Henry Moore' 'Henry Moore' 'John Bates Clark'};
p = {'Simon Kuznets (1971)' 'Henry Schultz' 'Henry Moore' 'Simon Newcomb' 'John Bates Clark' 'Karl Knies'};

G8 = addedge(G7,p,s);
GED(8) = length(s);

hfig = figure;
if names
    plot(G8,'Layout',layout,'NodeLabel',G8.Nodes.Name);
else
    plot(G8,'Layout',layout,'NodeLabel',{});
end
title('1976: Friedman');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(8) = getframe(hfig);
%%
s = {'Bertil Ohlin (1977)' 'James Meade (1977)' 'John Maynard Keynes'};
p = {'Karl Gustav Cassel' 'John Maynard Keynes' 'W.E. Johnson'};

G9 = addedge(G8,p,s);
GED(9) = length(s);

hfig = figure;
if names
    plot(G9,'Layout',layout,'NodeLabel',G9.Nodes.Name);
else
    plot(G9,'Layout',layout,'NodeLabel',{});
end
title('1977: Meade and Ohlin');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(9) = getframe(hfig);
%%
s = {'Herbert Simon (1978)'};
p = {'Henry Schultz'};

G10 = addedge(G9,p,s);
GED(10) = length(s);

hfig = figure;
if names
    plot(G10,'Layout',layout,'NodeLabel',G10.Nodes.Name);
else
    plot(G10,'Layout',layout,'NodeLabel',{});
end
title('1978: Simon');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(10) = getframe(hfig);
%%
s = {'Theodore Schultz (1979)' 'Benjamin Hibbard' 'Richard Ely' 'Arthur Lewis (1979)' 'Arnold Plant'};
p = {'Benjamin Hibbard' 'Richard Ely' 'Karl Knies' 'Arnold Plant' 'Edwin Cannan'};

G11 = addedge(G10,p,s);
GED(11) = length(s);

hfig = figure;
if names
    plot(G11,'Layout',layout,'NodeLabel',G11.Nodes.Name);
else
    plot(G11,'Layout',layout,'NodeLabel',{});
end
title('1979: Lewis and Schultz');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(11) = getframe(hfig);
%%
s = {'Lawrence Klein (1980)'};
p = {'Paul Samuelson (1970)'};

G12 = addedge(G11,p,s);
GED(12) = length(s);

hfig = figure;
if names
    plot(G12,'Layout',layout,'NodeLabel',G12.Nodes.Name);
else
    plot(G12,'Layout',layout,'NodeLabel',{});
end
title('1980: Klein');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(12) = getframe(hfig);
%%
s = {'James Tobin (1981)' 'James Tobin (1981)' 'William Fellner'};
p = {'Joseph Schumpeter' 'William Fellner' 'Werner Sombart'};
G13 = addedge(G12,p,s);
GED(13) = length(s);

hfig = figure;
if names
    plot(G13,'Layout',layout,'NodeLabel',G13.Nodes.Name);
else
    plot(G13,'Layout',layout,'NodeLabel',{});
end
title('1981: Tobin');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(13) = getframe(hfig);
%%
s0 = {'George Stigler (1982)' 'Frank Knight' 'Alvyn Saunders Johnson' 'Alvyn Saunders Johnson' 'Frank Knight' 'Allyn Abbott Young' 'Allyn Abbott Young'};
p0 = {'Frank Knight' 'Alvyn Saunders Johnson' 'John Bates Clark' 'Edwin Seligman' 'Allyn Abbott Young' 'Richard Ely' 'W.F. Wilcox'};

s1 = {'Edwin Seligman' 'John Burgess' 'John Burgess' 'John Burgess' 'Johann Droysen'};
p1 = {'John Burgess' 'Theodor Mommsen' 'Heinrich von Gneist' 'Johann Droysen' 'August Boeckh'};

s = [s0 s1];
p = [p0 p1];

G14 = addedge(G13,p,s);
GED(14) = length(s);

hfig = figure;
if names
    plot(G14,'Layout',layout,'NodeLabel',G14.Nodes.Name);
else
    plot(G14,'Layout',layout,'NodeLabel',{});
end
title('1982: Stigler');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(14) = getframe(hfig);
%%
s = {'Gerard Debreu (1983)'};
p = {'Maurice Allais (1988)'};
G15 = addedge(G14,p,s);
GED(15) = length(s);

hfig = figure;
if names
    plot(G15,'Layout',layout,'NodeLabel',G15.Nodes.Name);
else
    plot(G15,'Layout',layout,'NodeLabel',{});
end
title('1983: Debreu');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(15) = getframe(hfig);
%%
s = {'Richard Stone (1984)' 'Richard Stone (1984)' 'Gerald Shove' 'Richard Stone (1984)' 'Richard Kahn' 'Richard Kahn' 'Richard Stone (1984)' 'Colin Clark' 'W.H. Beveridge' 'W.H. Beveridge' 'Colin Clark' 'Colin Clark' 'Alexander Carr-Saunders'};
p = {'John Maynard Keynes' 'Gerald Shove' 'John Maynard Keynes' 'Richard Kahn' 'Gerald Shove' 'John Maynard Keynes' 'Colin Clark' 'W.H. Beveridge' 'Beatrice Webb' 'Sydney Webb' 'Allyn Abbott Young' 'Alexander Carr-Saunders' 'Karl Pearson'};

G16 = addedge(G15,p,s);
GED(16) = length(s);

hfig = figure;
if names
    plot(G16,'Layout',layout,'NodeLabel',G16.Nodes.Name);
else
    plot(G16,'Layout',layout,'NodeLabel',{});
end
title('1984: Stone');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(16) = getframe(hfig);
%%
s = {'Franco Modigliani (1985)' 'Franco Modigliani (1985)' 'Jacob Marschak' 'Abba Lerner' 'Emil Lederer' 'Emil Lederer'};
p = {'Jacob Marschak' 'Abba Lerner' 'Emil Lederer' 'Lionel Robbins' 'Ludwig Brentano' 'Eugen Boehm von Bawerk'};

G17 = addedge(G16,p,s);
GED(17) = length(s);

hfig = figure;
if names
    plot(G17,'Layout',layout,'NodeLabel',G17.Nodes.Name);
else
    plot(G17,'Layout',layout,'NodeLabel',{});
end
title('1985: Modigliani');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(17) = getframe(hfig);
%%
s = {'James Buchanan (1986)'};
p = {'Frank Knight'};

G18 = addedge(G17,p,s);
GED(18) = length(s);

hfig = figure;
if names
    plot(G18,'Layout',layout,'NodeLabel',G18.Nodes.Name);
else
    plot(G18,'Layout',layout,'NodeLabel',{});
end
title('1986: Buchanan');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(18) = getframe(hfig);
%%
s = {'Robert Solow (1987)'};
p = {'Wassily Leontief (1973)'};

G19 = addedge(G18,p,s);
GED(19) = length(s);

hfig = figure;
if names
    plot(G19,'Layout',layout,'NodeLabel',G19.Nodes.Name);
else
    plot(G19,'Layout',layout,'NodeLabel',{});
end
title('1987: Solow');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(19) = getframe(hfig);
%%
G20 = G19;
GED(20) =0;

hfig = figure;
if names
    plot(G20,'Layout',layout,'NodeLabel',G20.Nodes.Name);
else
    plot(G20,'Layout',layout,'NodeLabel',{});
end
title('1988: Allais');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(20) = getframe(hfig);
%%
s = {'Trygve Haavelmo (1989)'};
p = {'Ragnar Frisch (1969)'};

G21 = addedge(G20,p,s);
GED(21) = length(s);

hfig = figure;
if names
    plot(G21,'Layout',layout,'NodeLabel',G21.Nodes.Name);
else
    plot(G21,'Layout',layout,'NodeLabel',{});
end
title('1989: Haavelmo');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(21) = getframe(hfig);
%%
s0 = {'Harry Markowitz (1990)' 'Harry Markowitz (1990)'};
p0 = {'Milton Friedman (1976)' 'Jacob Marschak'};

s1 = {'Merton Miller (1990)' 'Fritz Machlup'};
p1 = {'Fritz Machlup' 'Ludwig von Mises'};

s2 = {'William Sharpe (1990)' 'Armen Alchian' 'Allen Wallis'};
p2 = {'Armen Alchian' 'Allen Wallis' 'Harold Hotelling'};

s = [s0 s1 s2];
p = [p0 p1 p2];

G22 = addedge(G21,p,s);
GED(22) = length(s);

hfig = figure;
if names
    plot(G22,'Layout',layout,'NodeLabel',G22.Nodes.Name);
else
    plot(G22,'Layout',layout,'NodeLabel',{});
end
title('1990: Markowitz, Miller and Sharpe');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(22) = getframe(hfig);
%%
s = {'Ronald Coase (1991)' 'Ronald Coase (1991)' 'Jacob Viner' 'Frank Taussig'};
p = {'Frank Knight' 'Jacob Viner' 'Frank Taussig' 'Charles Dunbar'};

G23 = addedge(G22,p,s);
GED(23) = length(s);

hfig = figure;
if names
    plot(G23,'Layout',layout,'NodeLabel',G23.Nodes.Name);
else
    plot(G23,'Layout',layout,'NodeLabel',{});
end
title('1991: Coase');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(23) = getframe(hfig);
%%
s = {'Gary Becker (1992)' 'Gregg Lewis'};
p = {'Gregg Lewis' 'Henry Schultz'};

G24 = addedge(G23,p,s);
GED(24) = length(s);

hfig = figure;
if names
    plot(G24,'Layout',layout,'NodeLabel',G24.Nodes.Name);
else
    plot(G24,'Layout',layout,'NodeLabel',{});
end
title('1992: Becker');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(24) = getframe(hfig);
%%
s = {'Robert Fogel (1993)' 'Douglas North (1993)' 'Melvin Knight' 'Frank Hankins'};
p = {'Simon Kuznets (1971)' 'Melvin Knight' 'Frank Hankins' 'Henry Moore'};

G25 = addedge(G24,p,s);
GED(25) = length(s);

hfig = figure;
if names
    plot(G25,'Layout',layout,'NodeLabel',G25.Nodes.Name);
else
    plot(G25,'Layout',layout,'NodeLabel',{});
end
title('1993: Fogel and North');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(25) = getframe(hfig);
%%
s0 = {'John Harsanyi (1994)'};
p0 = {'Kenneth Arrow (1972)'};

s1 = {'John Nash (1994)' 'Albert Tucker' 'Solomon Lefschetz' 'William Story' 'Wilhelm Schreibner' 'William Story' 'Carl Neumann' 'Carl Neumann' 'Friedrich Richelot' 'Otto Hesse' 'C.G.J. Jacobi' 'Enno Heeren Dirksen' 'Enno Heeren Dirksen' 'Enno Heeren Dirksen'};
p1 = {'Albert Tucker' 'Solomon Lefschetz' 'William Story' 'Wilhelm Schreibner' 'C.G.J. Jacobi' 'Carl Neumann' 'Friedrich Richelot' 'Otto Hesse' 'C.G.J. Jacobi' 'C.G.J. Jacobi' 'Enno Heeren Dirksen' 'Carl Gauss' 'Bernard Thibaut' 'Johann Meyer'};

s2 = {'Reinhard Selten (1994)' 'Reinhard Selten (1994)' 'Wolfgang Franz' 'Helmut Hasse' 'Kurt Hensel' 'Leopold Kronecker' 'Ernst Kummer' 'Heinrich Scherk' 'Heinrich Scherk' 'Friedrich Bessel'};
p2 = {'Ewald Burger' 'Wolfgang Franz' 'Helmut Hasse' 'Kurt Hensel' 'Leopold Kronecker' 'Ernst Kummer' 'Heinrich Scherk' 'Heinrich Brandes' 'Friedrich Bessel' 'Carl Gauss'};

s3 = {'Leopold Kronecker' 'Gustav Dirichlet' 'Gustav Dirichlet'};
p3 = {'Gustav Dirichlet' 'Simeon-Denis Poisson' 'Jean-Baptiste Fourier'};

s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

G26 = addedge(G25,p,s);
GED(26) = length(s);

hfig = figure;
if names
    plot(G26,'Layout',layout,'NodeLabel',G26.Nodes.Name);
else
    plot(G26,'Layout',layout,'NodeLabel',{});
end
title('1994: Harsanyi, Nash and Selten');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(26) = getframe(hfig);
%%
s = {'Robert Lucas (1995)' 'Robert Lucas (1995)' 'Arnold Harberger' 'Lloyd Metzler' 'Alvin Hansen' 'Alvin Hansen' 'Alvin Hansen'};
p = {'Gregg Lewis' 'Arnold Harberger' 'Lloyd Metzler' 'Alvin Hansen' 'Richard Ely' 'John Commons' 'Frederic Paxson'};

G27 = addedge(G26,p,s);
GED(27) = length(s);

hfig = figure;
if names
    plot(G27,'Layout',layout,'NodeLabel',G27.Nodes.Name);
else
    plot(G27,'Layout',layout,'NodeLabel',{});
end
title('1995: Lucas');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(27) = getframe(hfig);
%%
s = {'James Mirrlees (1996)' 'William Vickrey (1996)' 'William Vickrey (1996)' 'Robert Haig'};
p = {'Richard Stone (1984)' 'Carl Shoup' 'Robert Haig' 'Edwin Seligman'};

G28 = addedge(G27,p,s);
GED(28) = length(s);

hfig = figure;
if names
    plot(G28,'Layout',layout,'NodeLabel',G28.Nodes.Name);
else
    plot(G28,'Layout',layout,'NodeLabel',{});
end
title('1996: Mirrlees and Vickrey');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(28) = getframe(hfig);
%%
s = {'Robert Merton (1997)' 'Myron Scholes (1997)' 'Myron Scholes (1997)' 'Eugene Fama (2013)' 'Eugene Fama (2013)'};
p = {'Paul Samuelson (1970)' 'Merton Miller (1990)' 'Eugene Fama (2013)' 'Merton Miller (1990)' 'Harry Roberts'};

G29 = addedge(G28,p,s);
GED(29) = length(s);

hfig = figure;
if names
    plot(G29,'Layout',layout,'NodeLabel',G29.Nodes.Name);
else
    plot(G29,'Layout',layout,'NodeLabel',{});
end
title('1997: Merton and Scholes');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(29) = getframe(hfig);
%%
s = {'Amartya Sen (1998)' 'Amartya Sen (1998)' 'Amiya Dasgupta'};
p = {'Joan Robinson' 'Amiya Dasgupta' 'Lionel Robbins'};

G30 = addedge(G29,p,s);
GED(30) = length(s);

hfig = figure;
if names
    plot(G30,'Layout',layout,'NodeLabel',G30.Nodes.Name);
else
    plot(G30,'Layout',layout,'NodeLabel',{});
end
title('1998: Sen');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(30) = getframe(hfig);
%%
s = {'Robert Mundell (1999)' 'Charles Kindleberger' 'Henry Willis' 'Charles Kindleberger' 'James W. Angell' 'James W. Angell'};
p = {'Charles Kindleberger' 'Henry Willis' 'Laurence Laughlin' 'James W. Angell' 'William Ripley' 'Allyn Abbott Young'};

G31 = addedge(G30,p,s);
GED(31) = length(s);

hfig = figure;
if names
    plot(G31,'Layout',layout,'NodeLabel',G31.Nodes.Name);
else
    plot(G31,'Layout',layout,'NodeLabel',{});
end
title('1999: Mundell');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(31) = getframe(hfig);
%%
s0 = {'James Heckman (2000)' 'Stanley Black' 'James Heckman (2000)' 'Albert Rees' 'Albert Rees' 'Frederick Harbison' 'James Heckman (2000)' 'Harry Kelejian' 'Arthur Goldberger'};
p0 = {'Stanley Black' 'James Tobin (1981)' 'Albert Rees' 'Gregg Lewis' 'Frederick Harbison' 'David McCabe' 'Harry Kelejian' 'Arthur Goldberger' 'Lawrence Klein (1980)'};

s1 = {'Daniel McFadden (2000)' 'Leonid Hurwicz (2007)' 'Leonid Hurwicz (2007)'};
p1 = {'Leonid Hurwicz (2007)' 'Jacob Marschak' 'Tjalling Koopmans (1975)'};

s = [s0 s1];
p = [p0 p1];

G32 = addedge(G31,p,s);
GED(32) = length(s);

hfig = figure;
if names
    plot(G32,'Layout',layout,'NodeLabel',G32.Nodes.Name);
else
    plot(G32,'Layout',layout,'NodeLabel',{});
end
title('2000: Heckman and McFadden');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(32) = getframe(hfig);
%%
s = {'George Akerlof (2001)' 'Michael Spence (2001)' 'Thomas Schelling (2005)' 'Thomas Schelling (2005)' 'Thomas Schelling (2005)' 'James Duesenberry' 'Arthur Smithies' 'Joseph Stiglitz (2001)' 'Frank Hahn' 'Frank Hahn' 'Nicholas Kaldor' 'Nicholas Kaldor' 'Joseph Stiglitz (2001)'};
p = {'Robert Solow (1987)' 'Thomas Schelling (2005)' 'Wassily Leontief (1973)' 'James Duesenberry' 'Arthur Smithies' 'Arthur Smithies' 'Joseph Schumpeter' 'Frank Hahn' 'Lionel Robbins' 'Nicholas Kaldor' 'Lionel Robbins' 'Allyn Abbott Young' 'Joan Robinson'};

G33 = addedge(G32,p,s);
GED(33) = length(s);

hfig = figure;
if names
    plot(G33,'Layout',layout,'NodeLabel',G33.Nodes.Name);
else
    plot(G33,'Layout',layout,'NodeLabel',{});
end
title('2001: Akerlof, Spence and Stiglitz');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(33) = getframe(hfig);
%%
s0 = {'Vernon Smith (2002)'};
p0 = {'Wassily Leontief (1973)'};

s1 = {'Daniel Kahneman (2002)' 'Susan Ervin-Tripp' 'Charles Osgood' 'Charles Osgood'};
p1 = {'Susan Ervin-Tripp' 'Charles Osgood' 'Robert Sears' 'Donald Marquis'};

s2 = {'Robert Sears' 'Donald Marquis' 'Donald Marquis' 'Donald Marquis' 'Edward Robinson'};
p2 = {'Ralph DiLeone' 'Edward Robinson' 'Harold Burr' 'John Fulton' 'James R. Angell'};

s3 = {'Daniel Kahneman (2002)' 'Edwin Ghiselli' 'Edwin Ghiselli'};
p3 = {'Edwin Ghiselli' 'Clarence Brown' 'Karl Lashley'};

s4 = {'Karl Lashley' 'Karl Lashley' 'Karl Lashley'};
p4 = {'John Johnston' 'Herbert Jennings' 'John Watson'};

s5 = {'John Johnston' 'Herbert Jennings' 'John Watson'};
p5 = {'Oliver Strong' 'Edward Mark' 'James R. Angell'};

s6 = {'James R. Angell' 'James R. Angell' 'James R. Angell' 'James R. Angell' 'Hermann Ebbinghaus'};
p6 = {'John Dewey' 'William James' 'Benno Erdmann' 'Hermann Ebbinghaus' 'Friedrich Trendelenburg'};

s = [s0 s1 s2 s3 s4 s5 s6];
p = [p0 p1 p2 p3 p4 p5 p6];

G34 = addedge(G33,p,s);
GED(34) = length(s);

hfig = figure;
if names
    plot(G34,'Layout',layout,'NodeLabel',G34.Nodes.Name);
else
    plot(G34,'Layout',layout,'NodeLabel',{});
end
title('2002: Kahneman and Smith');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(34) = getframe(hfig);
%%
s0 = {'Robert Engle (2003)' 'Ta-Chung Liu' 'Donald English' 'Donald English'};
p0 = {'Ta-Chung Liu' 'Donald English' 'Henry Hatfield' 'Wesley Clair Mitchell'};

s1 = {'Clive Granger (2003)' 'Harry Pitt' 'Harry Pitt' 'David Widder' 'George Birkhoff'};
p1 = {'Harry Pitt' 'David Widder' 'G.H. Hardy' 'George Birkhoff' 'Eliakim Moore'};

s2 = {'Henry Hatfield' 'Henry Hatfield' 'Henry Hatfield' 'Albion Small' 'Albion Small'};
p2 = {'Laurence Laughlin' 'Harry Judson' 'Albion Small' 'Richard Ely' 'Herbert Adams'};

s = [s0 s1 s2];
p = [p0 p1 p2];

G35 = addedge(G34,p,s);
GED(35) = length(s);

hfig = figure;
if names
    plot(G35,'Layout',layout,'NodeLabel',G35.Nodes.Name);
else
    plot(G35,'Layout',layout,'NodeLabel',{});
end
title('2002: Engle and Granger');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(35) = getframe(hfig);
%%
s = {'Finn Kydland (2004)' 'Edward Prescott (2004)' 'Michael Lovell'};
p = {'Edward Prescott (2004)' 'Michael Lovell' 'Wassily Leontief (1973)'};

G36 = addedge(G35,p,s);
GED(36) = length(s);

hfig = figure;
if names
    plot(G36,'Layout',layout,'NodeLabel',G36.Nodes.Name);
else
    plot(G36,'Layout',layout,'NodeLabel',{});
end
title('2004: Kydland and Prescott');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(36) = getframe(hfig);
%%
s = {'Robert Aumann (2005)' 'George Whitehead' 'Norman Steenrod'};
p = {'George Whitehead' 'Norman Steenrod' 'Solomon Lefschetz'};

G37 = addedge(G36,p,s);
GED(37) = length(s);

hfig = figure;
if names
    plot(G37,'Layout',layout,'NodeLabel',G37.Nodes.Name);
else
    plot(G37,'Layout',layout,'NodeLabel',{});
end
title('2005: Aumann and Schelling');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(37) = getframe(hfig);
%%
s = {'Edmund Phelps (2006)'};
p = {'James Tobin (1981)'};

G38 = addedge(G37,p,s);
GED(38) = length(s);

hfig = figure;
if names
    plot(G38,'Layout',layout,'NodeLabel',G38.Nodes.Name);
else
    plot(G38,'Layout',layout,'NodeLabel',{});
end
title('2006: Phelps');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(38) = getframe(hfig);
%%
s = {'Eric Maskin (2007)' 'Roger Myerson (2007)'};
p = {'Kenneth Arrow (1972)' 'Kenneth Arrow (1972)'};

G39 = addedge(G38,p,s);
GED(39) = length(s);

hfig = figure;
if names
    plot(G39,'Layout',layout,'NodeLabel',G39.Nodes.Name);
else
     plot(G39,'Layout',layout,'NodeLabel',{});
end
title('2007: Hurwicz, Maskin and Myerson');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(39) = getframe(hfig);
%%
s = {'Paul Krugman (2008)' 'Rudiger Dornbusch'};
p = {'Rudiger Dornbusch' 'Robert Mundell (1999)'};

G40 = addedge(G39,p,s);
GED(40) = length(s);

hfig = figure;
if names
    plot(G40,'Layout',layout,'NodeLabel',G40.Nodes.Name);
else
     plot(G40,'Layout',layout,'NodeLabel',{});
end
title('2008: Krugman');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(40) = getframe(hfig);
%%
s0 = {'Oliver Williamson (2009)' 'Oliver Williamson (2009)'};
p0 = {'Richard Cyert' 'Herbert Simon (1978)'};

s1 = {'Elinor Ostrom (2009)' 'Dwaine Marvick' 'Dwaine Marvick' 'Dwaine Marvick' 'Dwaine Marvick'};
p1 = {'Dwaine Marvick' 'Paul Hazard' 'David Truman' 'Franz Neumann' 'Robert Merton'};

s2 = {'Robert Merton' 'Talcott Parsons' 'Edgar Salin' 'Alfred Weber' 'Tomas Masaryk' 'Franz Brentano' 'Tomas Masaryk'};
p2 = {'Talcott Parsons' 'Edgar Salin' 'Alfred Weber' 'Tomas Masaryk' 'Franz Brentano' 'Friedrich Trendelenburg' 'Wilhelm Wundt'};

s3 = {'Franz Neumann' 'Franz Neumann' 'Franz Neumann' 'Karl Mannheim' 'Max Meyer' 'Max Meyer'};
p3 = {'Max Meyer' 'Harold Laski' 'Karl Mannheim' 'Georg Simmel' 'Kuno Fischer' 'Fritz van Calker'};
 
s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

G41 = addedge(G40,p,s);
GED(41) = length(s);

hfig = figure;
if names
    plot(G41,'Layout',layout,'NodeLabel',G41.Nodes.Name);
else
     plot(G41,'Layout',layout,'NodeLabel',{});
end
title('2009: Ostrom and Williamson');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(41) = getframe(hfig);
%%
s = {'Peter Diamond (2010)' 'Dale Mortensen (2010)' 'Christopher Pissarides (2010)' 'Michio Morishima' 'Yasuma Takada' 'Shotaro Yoneda' 'Shotaro Yoneda'};
p = {'Robert Solow (1987)' 'Michael Lovell' 'Michio Morishima' 'Yasuma Takada' 'Shotaro Yoneda' 'Franklin Giddings' 'Gabriel Tarde'};

G42 = addedge(G41,p,s);
GED(42) = length(s);

hfig = figure;
if names
    plot(G42,'Layout',layout,'NodeLabel',G42.Nodes.Name);
else
     plot(G42,'Layout',layout,'NodeLabel',{});
end
title('2010: Diamond, Mortensen and Pissarides');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(42) = getframe(hfig);
%%
s = {'Thomas Sargent (2011)' 'John Meyer' 'John Meyer' 'Guy Orcutt' 'Christopher Sims (2011)' 'Hendrik Houthakker' 'Pieter de Wolff'};
p = {'John Meyer' 'James Duesenberry' 'Guy Orcutt' 'Arthur Smithies' 'Hendrik Houthakker' 'Pieter de Wolff' 'Jan Tinbergen (1969)'};

G43 = addedge(G42,p,s);
GED(43) = length(s);

hfig = figure;
if names
    plot(G43,'Layout',layout,'NodeLabel',G43.Nodes.Name);
else
     plot(G43,'Layout',layout,'NodeLabel',{});
end
title('2011: Sargent and Sims');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(43) = getframe(hfig);
%%
s = {'Lloyd Shapley (2012)' 'Alvin Roth (2012)' 'Robert Wilson' 'Howard Raiffa' 'Arthur Copeland' 'Oliver Kellogg' 'David Hilbert' 'Ferdinand Lindemann' 'Felix Klein' 'Felix Klein' 'Felix Klein' 'Rudolf Lipschitz'};
p = {'Albert Tucker' 'Robert Wilson' 'Howard Raiffa' 'Arthur Copeland' 'Oliver Kellogg' 'David Hilbert' 'Ferdinand Lindemann' 'Felix Klein' 'Rudolf Lipschitz' 'Julius Pluecker' 'Rudolf Clebsch' 'Gustav Dirichlet'};

G44 = addedge(G43,p,s);
GED(44) = length(s);

hfig = figure;
if names
    plot(G44,'Layout',layout,'NodeLabel',G44.Nodes.Name);
else
     plot(G44,'Layout',layout,'NodeLabel',{});
end
title('2012: Roth and Shapley');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(44) = getframe(hfig);
%%
s = {'Lars Peter Hansen (2013)' 'Robert Shiller (2013)'};
p = {'Christopher Sims (2011)' 'Franco Modigliani (1985)'};

G45 = addedge(G44,p,s);
GED(45) = length(s);

hfig = figure;
if names
    plot(G45,'Layout',layout,'NodeLabel',G45.Nodes.Name);
else
     plot(G45,'Layout',layout,'NodeLabel',{});
end
title('2013: Fama, Hansen and Shiller');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(45) = getframe(hfig);
%%
s = {'Jean Tirole (2014)'};
p = {'Eric Maskin (2007)'};

G46 = addedge(G45,p,s);
GED(46) = length(s);

hfig = figure;
if names
    plot(G46,'Layout',layout,'NodeLabel',G46.Nodes.Name);
else
     plot(G46,'Layout',layout,'NodeLabel',{});
end
title('2014: Tirole');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(46) = getframe(hfig);
%%
s = {'Angus Deaton (2015)'};
p = {'Richard Stone (1984)'};

G47 = addedge(G46,p,s);
GED(47) = length(s);

hfig = figure;
if names
    plot(G47,'Layout',layout,'NodeLabel',G47.Nodes.Name);
else
     plot(G47,'Layout',layout,'NodeLabel',{});
end
title('2015: Deaton');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(47) = getframe(hfig);
%%
s = {'Bengt Holmstrom (2016)' 'Oliver Hart (2016)' 'Michael Rothshield' 'Michael Rothshield' 'Michael Rothshield' 'Franklin Fisher'};
p = {'Robert Wilson' 'Michael Rothshield' 'Robert Solow (1987)' 'Peter Diamond (2010)' 'Franklin Fisher' 'John Meyer'};

G48 = addedge(G47,p,s);
GED(48) = length(s);

hfig = figure;
if names
    plot(G48,'Layout',layout,'NodeLabel',G48.Nodes.Name);
else
     plot(G48,'Layout',layout,'NodeLabel',{});
end
title('2016: Hart and Holmstroem');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(48) = getframe(hfig);
%%
s = {'Richard Thaler (2017)' 'Sherwin Rosen'};
p = {'Sherwin Rosen' 'Gregg Lewis'};

G49 = addedge(G48,p,s);
GED(49) = length(s);

hfig = figure;
if names
    plot(G49,'Layout',layout,'NodeLabel',G49.Nodes.Name);
else
     plot(G49,'Layout',layout,'NodeLabel',{});
end
title('2017: Thaler');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);
F(49) = getframe(hfig);
