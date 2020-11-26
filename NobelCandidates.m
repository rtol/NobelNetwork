%This script puts together the data for the Nobel candidates.
%
%First version: 21 February 2018, Richard S.J. Tol
%This version: 29 October 2020, Richard S.J. Tol

%% McKenzie: Aghion
%Romer removed as won
s1 = {'Philippe Aghion' 'Philippe Aghion' 'Yves Balasko' 'Jerry Green'};
p1 = {'Yves Balasko' 'Jerry Green' 'Jean-Pierre Aubin' 'Lionel McKenzie'};

s3 = {'Jean-Pierre Aubin' 'Jean-Pierre Aubin' 'Jacques-Louis Lions' 'Laurent Schwartz' 'Georges Valiron' 'Emile Borel' 'Gaston Darboux'};
p3 = {'Jacques-Louis Lions' 'Jean-Pierre Kahane' 'Laurent Schwartz' 'Georges Valiron' 'Emile Borel' 'Gaston Darboux' 'Michel Chasles'};

s4 = {'Jean-Pierre Kahane' 'Szolem Mandelbrojt' 'Szolem Mandelbrojt' 'Szolem Mandelbrojt' 'Emile Picard' 'Jules Tannery' 'Charles Hermite' 'Eugene-Charles Catalan' 'Joseph Louiville'};
p4 = {'Szolem Mandelbrojt' 'Jacques Hadamard' 'Jules Tannery' 'Emile Picard' 'Gaston Darboux' 'Charles Hermite' 'Eugene-Charles Catalan' 'Joseph Louiville' 'Simeon-Denis Poisson'};

s = [s1 s3 s4];
p = [p1 p3 p4];

C1 = addedge(G52,p,s);

%% Leontief: Jorgenson
s = {'Dale Jorgenson'};
p = {'Wassily Leontief (1973)'};

C2 = addedge(C1,p,s);

%% Gorman: Blundell, Feldstein and Moore
%Alesina, Krueger moved as died
s0 = {'Richard Blundell' 'John Moore' 'Stephen Bond'};
p0 = {'W.M. Gorman' 'Stephen Nickell' 'Stephen Nickell'};

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

%% Schultz: Barro, Lazaer
s0 = {'Robert Barro' 'Edward Lazear' 'Edward Lazear' 'Zvi Griliches' 'Zvi Griliches'};
p0 = {'Zvi Griliches' 'Zvi Griliches' 'Sherwin Rosen' 'Theodore Schultz (1979)' 'Arnold Harberger'};

s1 = {'Stephen Berry' 'Ariel Pakes'};
p1 = {'Ariel Pakes' 'Zvi Griliches'};

s = [s0 s1];
p = [p0 p1];

C5 = addedge(C4,p,s);

%% Rosen: Murphy, Lazear
s = {'Kevin Murphy'};
p = {'Sherwin Rosen'};

C6 = addedge(C5,p,s);

%% Kindleberger: Bhagwati, Grossman, Melitz, Levinsohn
s0 = {'Jagdish Bhagwati' 'Gene Grossman' 'Marc Melitz' 'Marc Melitz'};
p0 = {'Charles Kindleberger' 'Jagdish Bhagwati' 'James Levinsohn' 'Susanto Basu'};

s1 = {'James Levinsohn' 'James Levinsohn' 'Avinash Dixit' 'Susanto Basu' 'Gregory Mankiw' 'Gregory Mankiw' 'Stanley Fischer'};
p1 = {'Gene Grossman' 'Avinash Dixit' 'Robert Solow (1987)' 'Gregory Mankiw' 'Olivier Blanchard' 'Stanley Fischer' 'Franklin Fisher'};

s = [s0 s1];
p = [p0 p1];

C7 = addedge(C6,p,s);

%% Solow: Blanchard, Gali, Kiyotaki, Melitz, Dixit, Hall
%Nordhaus removed as won, Weitzman removed as died
s = {'Olivier Blanchard' 'Olivier Blanchard' 'Jordi Gali' 'Nobuhiro Kiyotaki' 'Robert Hall' 'Avinash Dixit'};
p = {'Stanley Fischer' 'Robert Solow (1987)' 'Olivier Blanchard' 'Olivier Blanchard' 'Robert Solow (1987)' 'Robert Solow (1987)'};

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

%% Sargan: Hendry, Phillips, Perron, Arellano
s = {'David Hendry' 'Peter Phillips' 'Pierre Perron' 'Manuel Arellano'};
p = {'Denis Sargan' 'Denis Sargan' 'Peter Phillips' 'Denis Sargan'};

C14 = addedge(C13,p,s);

%% Koopmans: Howitt, Arthur
s0 = {'Peter Howitt' 'John Ledyard' 'Stanley Reiter'};
p0 = {'John Ledyard' 'Stanley Reiter' 'Tjalling Koopmans (1975)'};

s1 = {'Brian Arthur' 'Brian Arthur' 'Stuart Dreyfus' 'Arthur Bryson' 'Hans Liepmann' 'Hans Liepmann'};
p1 = {'Daniel McFadden (2000)' 'Stuart Dreyfus' 'Arthur Bryson' 'Hans Liepmann' 'Richard Bar' 'Theodore von Karman'};

s2 = {'Richard Bar' 'Richard Bar' 'Georg Rost' 'Emil Hilb' 'Friedrich Prym'  'Friedrich Prym'  'Martin Ohm' 'Karl von Langsdorf'};
p2 = {'Georg Rost' 'Emil Hilb' 'Friedrich Prym' 'Ferdinand Lindemann' 'Ernst Kummer' 'Martin Ohm' 'Karl von Langsdorf' 'Abraham Kaestner'};

s = [s0 s1 s2];
p = [p0 p1 p2];

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

%% Arrow: Rubinstein
%Milgrom removed as won
s0 = {'Ariel Rubinstein' 'Menahem Yaari' 'Menahem Yaari' 'Herbert Scarf'};
p0 = {'Menahem Yaari' 'Kenneth Arrow (1972)' 'Herbert Scarf' 'Salomon Bochner'};

s1 = {'Salomon Bochner' 'Erhard Schmidt' 'Salomon Bochner' 'Issai Schur' 'Issai Schur'};
p1 = {'Erhard Schmidt' 'David Hilbert' 'Issai Schur' 'Ferdinand Frobenius' 'Lazarus Fuchs'};

s2 = {'Ferdinand Frobenius' 'Ferdinand Frobenius' 'Lazarus Fuchs' 'Lazarus Fuchs'};
p2 = {'Ernst Kummer' 'Karl Weierstrass' 'Ernst Kummer' 'Karl Weierstrass'};

s3 = {'Karl Weierstrass' 'Karl Weierstrass' 'Christoph Gudermann' 'Christoph Gudermann'};
p3 = {'Friedrich Richelot' 'Christoph Gudermann' 'Carl Gauss' 'Bernard Thibaut'};

s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

C22 = addedge(C21,p,s);

%% Alhadeff: Myers, Rajan
s = {'Raghuram Rajan' 'Stewart Myers' 'Alexander Robichek'};
p = {'Stewart Myers' 'Alexander Robichek' 'David Alhadeff'};

C23 = addedge(C22,p,s);

%% Keynes: Pesaran, List
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

s4 = {'Wesley Cohen' 'Wesley Cohen' 'Wesley Cohen'};
p4 = {'Sidney Winter' 'Richard Nelson' 'Richard Levin'};

s = [s0 s1 s2 s3 s4];
p = [p0 p1 p2 p3 p4];

C27 = addedge(C26,p,s);

%% Tobin: Gertler
s = {'Mark Gertler' 'Duncan Foley' 'Duncan Foley' 'Herbert Scarf' 'Solomon Bocher' 'Erhard Schmidt'};
p = {'Duncan Foley' 'Herbert Scarf' 'James Tobin (1981)' 'Solomon Bocher' 'Erhard Schmidt' 'David Hilbert'};

C28 = addedge(C27,p,s);

%% Klein: Taylor
s = {'John Taylor' 'Theodore Anderson' 'Samuel Wilks' 'Samuel Wilks' 'Henry Rietz' 'George Miller' 'Frank Cole'};
p = {'Theodore Anderson' 'Samuel Wilks' 'Everett Lindquist' 'Henry Rietz' 'George Miller' 'Frank Cole' 'Felix Klein'};

C29 = addedge(C28,p,s);

%% Kuznets: Goldin
s = {'Claudia Goldin'};
p = {'Robert Fogel (1993)'};

C30 = addedge(C29,p,s);

%% Ehrenfest: Juselius
s0 = {'Katarina Juselius' 'Johan Olof Fellman' 'Gustav Elfving' 'Rolf Nevanlinna' 'Rolf Nevanlinna'};
p0 = {'Johan Olof Fellman' 'Gustav Elfving' 'Rolf Nevanlinna' 'Ernst Lindelof' 'Gunnar Nordstrom'};

s1 = {'Gunnar Nordstrom' 'Gunnar Nordstrom' 'Gunnar Nordstrom' 'Gunnar Nordstrom'};
p1 = {'Hermann Minkowsky' 'Hjallmar Tallqvist' 'Albert Einstein' 'Paul Ehrenfest'};

s2 = {'Hermann Minkowsky' 'Hjallmar Tallqvist' 'Edvard Neovius' 'Hermann Schwarz' 'Hermann Schwarz'};
p2 = {'Ferdinand Lindemann' 'Edvard Neovius' 'Hermann Schwarz' 'Karl Weierstrass' 'Ernst Kummer'};

s3 = {'Albert Einstein' 'Albert Einstein'};
p3 = {'Aurel Stodola' 'Alfred Kleiner'};

s = [s0 s1 s2 s3];
p = [p0 p1 p2 p3];

C31 = addedge(C30,p,s);

%% Orphans: Kreps  Dickey, Fuller
s0 = {'David Kreps' 'Evan Porteus'};
p0 = {'Evan Porteus' 'William Pierskalla'};

s1 = {'Daniel Levinthal'};
p1 = {'James March'};

s2 = {'David Dickey' 'Wayne Fuller'};
p2 = {'Wayne Fuller' 'Geoffrey Shepherd'};

s3 = {'Soren Johansen' 'Soren Johansen' 'Anders Hald' 'Georg Rasch' 'Georg Rasch'};
p3 = {'Hans Brons' 'Anders Hald' 'Georg Rasch' 'Niels Norlund' 'Niels Nielsen'};

s4 = {'Douglas Diamond'};
p4 = {'Stephen Ross'};

s5 = {'Richard Posner'};
p5 = {'William Brennan'};

s = [s0 s1 s2 s3 s4 s5];
p = [p0 p1 p2 p3 p4 p5];

C32 = addedge(C31,p,s);

%% Diseased
s0 = {'Halbert White' 'Halbert White'};
p0 = {'Robert Solow (1987)' 'Jerry Hausman'};

s1 = {'Martin Weitzman' 'Anthony Atkinson'};
p1 = {'Robert Solow (1987)' 'Robert Solow (1987)'};

s2 = {'Gordon Tullock' 'Henry Simons'};
p2 = {'Henry Simons' 'Frank Knight'};

s3 = {'William Baumol'};
p3 = {'Lionel Robbins'};

s4 = {'Alan Krueger' 'Alan Krueger'};
p4 = {'Lawrence Summers' 'Richard Freeman'};

s5 = {'Frank Ramsey'};
p5 = {'John Maynard Keynes'};

s6 = {'Alberto Alesina' 'Jeffrey Sachs'};
p6 = {'Jeffrey Sachs' 'Martin Feldstein'};

s = [s0 s1 s2 s3 s4 s5 s6];
p = [p0 p1 p2 p3 p4 p5 p6];

C33 = addedge(C32,p,s);


%%
closecanda = centrality(C32,'outcloseness');
closecandhout = harmoniccentrality(C32,'out');
closecandhin = harmoniccentrality(C32,'in');

select = nobool(:,nyear);
ncand = size(C32.Nodes,1) - nnode(nyear);
select = [select; zeros(ncand,1)];

nobelcandhin = harmonicnobelity(C32,select,'in');

%%
hfig = figure;
if names
    plot(C32,'Layout',layout,'NodeLabel',C32.Nodes.Name);
else
     plot(C32,'Layout',layout,'NodeLabel',{});
end
title('Candidates');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);