%This script puts together the data for the Nobel candidates.
%
%21 February 2018, Richard S.J. Tol

%% McKenzie: Aghion and Romer
s0 = {'Paul Romer' 'Jose Scheinkman'};
p0 = {'Jose Scheinkman' 'Lionel McKenzie'};

s1 = {'Philippe Aghion' 'Philippe Aghion' 'Yves Balasko' 'Jerry Green'};
p1 = {'Yves Balasko' 'Jerry Green' 'Jean-Pierre Aubin' 'Lionel McKenzie'};

s2 = {'Lionel McKenzie' 'Lionel McKenzie' 'Oskar Morgenstern' 'William Baumol'};
p2 = {'William Baumol' 'Oskar Morgenstern' 'Ludwig von Mises' 'Lionel Robbins'};

s3 = {'Jean-Pierre Aubin' 'Jean-Pierre Aubin' 'Jacques-Louis Lions' 'Laurent Schwartz' 'Georges Valiron' 'Emile Borel' 'Gaston Darboux'};
p3 = {'Jacques-Louis Lions' 'Jean-Pierre Kahane' 'Laurent Schwartz' 'Georges Valiron' 'Emile Borel' 'Gaston Darboux' 'Michel Chasles'};

s4 = {'Jean-Pierre Kahane' 'Szolem Mandelbrojt' 'Szolem Mandelbrojt' 'Szolem Mandelbrojt' 'Emile Picard' 'Jules Tannery' 'Charles Hermite' 'Eugene-Charles Catalan' 'Joseph Louiville'};
p4 = {'Szolem Mandelbrojt' 'Jacques Hadamard' 'Jules Tannery' 'Emile Picard' 'Gaston Darboux' 'Charles Hermite' 'Eugene-Charles Catalan' 'Joseph Louiville' 'Simeon-Denis Poisson'};

s = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];

C1 = addedge(G49,p,s);

%% Leontief: Jorgenson, Alan Krueger
s = {'Dale Jorgenson'};
p = {'Wassily Leontief (1973)'};

C2 = addedge(C1,p,s);

%% Gorman: Alesina, Blundell, Feldstein, Alan Krueger and Moore
s0 = {'Alberto Alesina' 'Jeffrey Sachs' 'Richard Blundell' 'John Moore' 'Alan Krueger' 'Alan Krueger'};
p0 = {'Jeffrey Sachs' 'Martin Feldstein' 'W.M. Gorman' 'Stephen Nickell' 'Lawrence Summers' 'Richard Freeman'};

s1 = {'Martin Feldstein' 'W.M. Gorman' 'George Duncan' 'Charles Bastable' 'Charles Bastable' 'Stephen Nickell' 'Stephen Nickell'};
p1 = {'W.M. Gorman' 'George Duncan' 'Charles Bastable' 'J.W. Stubbs' 'J.P. Mahaffy' 'W.M. Gorman' 'Frank Hahn'};

s2 = {'Richard Freeman' 'John Dunlop' 'John Maynard Keynes'};
p2 = {'John Dunlop' 'John Maynard Keynes' 'W.E. Johnson'};

s3 = {'Lawrence Summers' 'Lawrence Summers' 'Benjamin Friedman' 'Benjamin Friedman'};
p3 = {'Benjamin Friedman' 'Martin Feldstein' 'Dale Jorgenson' 'Martin Feldstein'};

s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

C3 = addedge(C2,p,s);

%% Ashenfelter: Angrist and Card
s0 = {'Joshua Angrist' 'Joshua Angrist' 'David Card'};
p0 = {'Orley Ashenfelter' 'David Card' 'Orley Ashenfelter'};

s1 = {'Orley Ashenfelter' 'Orley Ashenfelter' 'Stephen Goldfeld' 'Albert Ando'};
p1 = {'Albert Rees' 'Stephen Goldfeld' 'Albert Ando' 'Franco Modigliani (1985)'};

s = [s0 s1];
p = [p0 p1];

C4 = addedge(C3,p,s);

%% Schultz: Barro and Lazaer
s = {'Robert Barro' 'Edward Lazear' 'Edward Lazear' 'Zvi Griliches' 'Zvi Griliches'};
p = {'Zvi Griliches' 'Zvi Griliches' 'Sherwin Rosen' 'Theodore Schultz (1979)' 'Arnold Harberger'};

C5 = addedge(C4,p,s);

%% Rosen: Murphy, Lazear
s = {'Kevin Murphy'};
p = {'Sherwin Rosen'};

C6 = addedge(C5,p,s);

%% Kindleberger: Bhagwati, Grossman, Melitz
s0 = {'Jagdish Bhagwati' 'Gene Grossman' 'Marc Melitz' 'Marc Melitz'};
p0 = {'Charles Kindleberger' 'Jagdish Bhagwati' 'James Levinsohn' 'Susanto Basu'};

s1 = {'James Levinsohn' 'James Levinsohn' 'Avinash Dixit' 'Susanto Basu' 'Gregory Mankiw' 'Gregory Mankiw' 'Stanley Fischer'};
p1 = {'Gene Grossman' 'Avinash Dixit' 'Robert Solow (1987)' 'Gregory Mankiw' 'Olivier Blanchard' 'Stanley Fischer' 'Franklin Fisher'};

s = [s0 s1];
p = [p0 p1];

C7 = addedge(C6,p,s);

%% Solow: Blanchard, Gali, Kiyotaki, Melitz, Nordhaus, Weitzman, Dixit, Hall
s = {'Olivier Blanchard' 'Olivier Blanchard' 'Jordi Gali' 'Nobuhiro Kiyotaki' 'William Nordhaus' 'Martin Weitzman' 'Robert Hall' 'Avinash Dixit'};
p = {'Stanley Fischer' 'Robert Solow (1987)' 'Olivier Blanchard' 'Olivier Blanchard' 'Robert Solow (1987)' 'Robert Solow (1987)' 'Robert Solow (1987)' 'Robert Solow (1987)'};

C8 = addedge(C7,p,s);

%% Knight: Demsetz and Peltzman
s = {'Harold Demsetz' 'Sam Peltzman' 'Sam Peltzman' 'Sam Peltzman' 'Lester Telser'};
p = {'Frank Knight' 'George Stigler (1982)' 'Milton Friedman (1976)' 'Lester Telser' 'Milton Friedman (1976)'};

C9 = addedge(C8,p,s);

%% Brentano: Fehr
s = {'Ernst Fehr' 'Ernst Fehr' 'Alexander van der Bellen' 'Clemens-August Andreae' 'Guenther Smoelders' 'Guenther Smoelders' 'Guenther Smoelders' 'Heinrich Herkner'};
p = {'Gerhard Orosol' 'Alexander van der Bellen' 'Clemens-August Andreae' 'Guenther Smoelders' 'Herbert von Beckerath' 'Ludwig Bernhard' 'Heinrich Herkner' 'Ludwig Brentano'};

C10 = addedge(C9,p,s);

%% Fama: French
s = {'Kenneth French' 'William Schwert'};
p = {'William Schwert' 'Eugene Fama (2013)'};

C11 = addedge(C10,p,s);

%% Mirrlees: Hausman
s = {'Jerry Hausman' 'Jerry Hausman'};
p = {'James Mirrlees (1996)' 'John Flemming'};

C12 = addedge(C11,p,s);

%% Houthakker: Helpman
s = {'Elhanan Helpman'};
p = {'Hendrik Houthakker'};

C13 = addedge(C12,p,s);

%% Sargan: Hendry, Phillips
s = {'David Hendry' 'Peter Phillips'};
p = {'Denis Sargan' 'Denis Sargan'};

C14 = addedge(C13,p,s);

%% Koopmans: Howitt
s = {'Peter Howitt' 'John Ledyard' 'Stanley Reiter'};
p = {'John Ledyard' 'Stanley Reiter' 'Tjalling Koopmans (1975)'};

C15 = addedge(C14,p,s);

%% Miller: Jensen
s = {'Michael Jensen'};
p = {'Merton Miller (1990)'};

C16 = addedge(C15,p,s);

%% Bohr: Granovetter
s0 = {'Mark Granovetter' 'Harrison White' 'Harrison White' 'John Slater' 'John Slater' 'Marion Levy'};
p0 = {'Harrison White' 'John Slater' 'Marion Levy' 'Niels Bohr' 'Percy Bridgman' 'Talcott Parsons'};

s1 = {'Karl Hasse' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Chladni' 'Hermann von Helmholtz'};
p1 = {'Ernst Weber' 'Ernst Chladni' 'Ludwig Gilbert' 'Johann Rosenmueller' 'Johann Clarus' 'Georg Lichtenberg' 'Johannes Mueller'};

s2 = {'Johannes Mueller' 'Karl Meyer' 'Karl Meyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer'};
p2 = {'Karl Meyer' 'Wilhelm Ploucquet' 'Carl Kielmeyer' 'Carl Koestlin' 'Christian Reuss' 'Johann Blumenbach' 'Johann Gmelin' 'Georg Lichtenberg'};

s = [s0 s1 s2];
p = [p0 p1 p2];

C17 = addedge(C16,p,s);

%% Mises: Kirzner
s = {'Israel Kirzner'};
p = {'Ludwig von Mises'};

C18 = addedge(C17,p,s);

%% Ely: Anne Krueger
s = {'Anne Krueger' 'James Earley' 'Walter Morton' 'Walter Morton' 'William Scott'};
p = {'James Earley' 'Walter Morton' 'John Commons' 'William Scott' 'Richard Ely'};

C19 = addedge(C18,p,s);

%% Hicks: John List
s0 = {'John List' 'Shelby Gerking' 'Saul Pleeter' 'Saul Pleeter' 'Cliff Lloyd'};
p0 = {'Shelby Gerking' 'Saul Pleeter' 'Cliff Lloyd' 'James Holmes' 'John Hicks (1972)'};

s1 = {'James Holmes' 'Harry Johnson' 'Harry Johnson' 'Gottfried Haberler'};
p1 = {'Harry Johnson' 'John Maynard Keynes' 'Gottfried Haberler' 'Ludwig von Mises'};

s = [s0 s1];
p = [p0 p1];

C20 = addedge(C19,p,s);

%% Fisher: Manski
s = {'Charles Manski'};
p = {'Franklin Fisher'};

C21 = addedge(C20,p,s);

%% Wilson: Milgrom
s = {'Paul Milgrom'};
p = {'Robert Wilson'};

C22 = addedge(C21,p,s);

%% Alhadeff: Myers, Rajan
s = {'Raghuram Rajan' 'Stewart Myers' 'Alexander Robichek'};
p = {'Stewart Myers' 'Alexander Robichek' 'David Alhadeff'};

C23 = addedge(C22,p,s);

%% Keynes: Pesaran, List, Krueger
s = {'Hashem Pesaran' 'David Champernowne'};
p = {'David Champernowne' 'John Maynard Keynes'};

C24 = addedge(C23,p,s);

%% Maskin: Rabin
s = {'Matthew Rabin' 'Drew Fudenberg'};
p = {'Drew Fudenberg' 'Eric Maskin (2007)'};

C25 = addedge(C24,p,s);

%% Dewey: Camerer
s0 = {'Colin Camerer' 'Colin Camerer' 'Robin Hogarth' 'Hillel Einhorn' 'Alan Bass' 'Alan Bass'};
p0 = {'Robin Hogarth' 'Hillel Einhorn' 'Hillel Einhorn' 'Alan Bass' 'Ledyard Tucker' 'Harry Triandis'};

s1 = {'Ledyard Tucker' 'Ledyard Tucker' 'Ledyard Tucker'};
p1 = {'Thomas Edison' 'Walter Bingham' 'James R. Angell'};

s2 = {'James R. Angell' 'James R. Angell' 'James R. Angell' 'James R. Angell'};
p2 = {'John Dewey' 'Hermann Ebbinghaus' 'William James' 'Bruno Erdmann'};

s3 = {'Walter Bingham' 'Edward Thorndike' 'Edward Thorndike'};
p3 = {'Edward Thorndike' 'William James' 'James Cattell'};

s4 = {'James Cattell' 'James Cattell' 'James Cattell' 'James Cattell'};
p4 = {'Rudolf Lotze' 'Granville Hall' 'Wilhelm Wundt' 'Francis Galton'};

s5 = {'Wilhelm Wundt' 'Wilhelm Wundt' 'Wilhelm Wundt'};
p5 = {'Karl Hasse' 'Johannes Mueller' 'Hermann von Helmholtz'};

s6 = {'Karl Hasse' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Chladni'};
p6 = {'Ernst Weber' 'Ernst Chladni' 'Ludwig Gilbert' 'Johann Rosenmueller' 'Johann Clarus' 'Georg Lichtenberg'};

s7 = {'Johannes Mueller' 'Karl Meyer' 'Karl Meyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer'};
p7 = {'Karl Meyer' 'Wilhelm Ploucquet' 'Carl Kielmeyer' 'Carl Koestlin' 'Christian Reuss' 'Johann Blumenbach' 'Johann Gmelin' 'Georg Lichtenberg'};

s8 = {'Hermann von Helmholtz'};
p8 = {'Johannes Mueller'};

s9 = {'Rudolf Lotze' 'Rudolf Lotze' 'Rudolf Lotze' 'Rudolf Lotze'};
p9 = {'Ernst Weber' 'William Drobisch' 'Christian Weisse' 'Johann Clarus'};

s10 = {'Harry Triandis' 'William Lambert' 'Richard Solomon' 'Joseph Hunt' 'Madison Bentley' 'Edward Titchener'};
p10 = {'William Lambert' 'Richard Solomon' 'Joseph Hunt' 'Madison Bentley' 'Edward Titchener' 'Wilhelm Wundt'};

s = [s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10];
p = [p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10];

C26 = addedge(C25,p,s);

%% Dewey: Loewenstein
s0 = {'George Loewenstein' 'George Loewenstein' 'George Loewenstein'};
p0 = {'Robert Abelson' 'Richard Levin' 'Sidney Winter'};

s1 = {'Richard Levin' 'Richard Levin' 'Richard Nelson' 'Richard Nelson' 'Richard Nelson'};
p1 = {'Joseph Stiglitz (2001)' 'Richard Nelson' 'William Fellner' 'Henry Bruton' 'James Tobin (1981)'};

s2 = {'Sidney Winter'};
p2 = {'William Fellner'};

s3 = {'Robert Abelson' 'Robert Abelson' 'John Tukey'};
p3 = {'Silvan Tomkins' 'John Tukey' 'Solomon Lefschetz'};

s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

C27 = addedge(C26,p,s);

%% Tobin: Gertler
s = {'Mark Gertler' 'Duncan Foley' 'Duncan Foley' 'Herbert Scarf' 'Solomon Bocher' 'Erhard Schmidt'};
p = {'Duncan Foley' 'Herbert Scarf' 'James Tobin (1981)' 'Solomon Bocher' 'Erhard Schmidt' 'David Hilbert'};

C28 = addedge(C27,p,s);

%% Klein: Taylor
s = {'John Taylor' 'Theodore Anderson' 'Samuel Wilks' 'Samuel Wilks' 'Henry Rietz' 'George Miller' 'Frank Cole'};
p = {'Theodore Anderson' 'Samuel Wilks' 'Everett Lindquist' 'Henry Rietz' 'George Miller' 'Frank Cole' 'Felix Klein'};

C29 = addedge(C28,p,s);

%%
closecanda = centrality(C29,'outcloseness');
closecandhout = harmoniccentrality(C29,'out');
closecandhin = harmoniccentrality(C29,'in');

select = nobool(:,nyear);
ncand = size(C29.Nodes,1) - nnode(nyear);
select = [select; zeros(ncand,1)];

nobelcandhin = harmonicnobelity(C29,select,'in');

%%
hfig = figure;
if names
    plot(C29,'Layout',layout,'NodeLabel',C29.Nodes.Name);
else
     plot(C29,'Layout',layout,'NodeLabel',{});
end
title('Candidates');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);