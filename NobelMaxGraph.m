%This script puts together the data for the extended Nobel network.
%
%21 February 2018, Richard S.J. Tol

s0 = {'Johann Eichhorn' 'Friedrich Schelling' 'Friedrich Schelling' 'Johann Bach' 'Christian Heyne' 'Christian Heyne' 'Christian Heyne' 'Friedrich Reiz' 'Friedrich Reiz' 'Ernst Plattner' 'Ernst Plattner' 'Johann Hermann' 'Johann Hermann' 'Karl Reinhold'};
p0 = {'Johann Michaelis' 'Johann Lebret' 'Ernst Plattner' 'Johann Christ' 'Johann Ernesti' 'Johann Christ' 'Johann Bach' 'Johann Ernesti' 'Johann Christ' 'Johann Ernesti' 'Christian Ludwig' 'Karl Reinhold' 'Friedrich Reiz' 'Ernst Plattner'};

s1 = {'Jacob Baden'};
p1 = {'Johann Ernesti'};

s2 = {'Alexander von Humboldt' 'Alexander von Humboldt' 'Alexander von Humboldt' 'Lorenz Oken'};
p2 = {'Abraham Werner' 'Johann Blumenbach' 'Georg Lichtenberg' 'Johann Blumenbach'};

s3 = {'Johann Ernesti' 'Johann Ernesti' 'Johann Gotsched' 'George Rast' 'David Blaesing' 'David Blaesing' 'Laurentius Weger' 'Laurentius Weger'};
p3 = {'Johann Gesner' 'Johann Gotsched' 'George Rast' 'David Blaesing' 'Georg Wosegin' 'Laurentius Weger' 'Jakob Thomasius' 'Esdras Ezardus'};

%Ezardus is an end point

s4 = {'Christian Haussen' 'Christian Haussen' 'Johann Wichmannshausen' 'Johann Wichmannshausen' 'August Francke' 'August Francke' 'Otto Mencke' 'Otto Mencke'  'Otto Mencke'};
p4 = {'Johann Planer' 'Johann Wichmannshausen' 'August Francke' 'Otto Mencke' 'Esdras Ezardus' 'Johann Carpzov' 'Jakob Thomasius' 'Valentin Alberti' 'Bartholomaeus Schwendendoerffer'};

%Carpzov is an end point

s5 = {'William James' 'William James' 'Louis Agassiz' 'Louis Agassiz' 'Louis Agassiz' 'Louis Agassiz' 'Louis Agassiz' 'Louis Agassiz'};
p5 = {'Jeffries Wyman' 'Louis Agassiz' 'Lorenz Oken' 'Carl von Martius' 'Ignaz Doellinger' 'Andreas Roeschlaub' 'Georges Cuvier' 'Alexander von Humboldt'};

s6 = {'Ignaz Doellinger' 'Ignaz Doellinger' 'Ignaz Doellinger' 'Ignaz Doellinger' 'Ignaz Doellinger' 'Ignaz Doellinger'};
p6 = {'Carl von Siebold' 'Joseph Barth' 'Georg Prochaska' 'Johann Frank' 'Antonio Scarpa' 'Johann Doellinger'};

s7 = {'Johann Frank' 'Johann Frank' 'Johann Frank' 'Johann Frank'};
p7 = {'Franz Schoenmetzel' 'Franz von Oberkamp' 'Johann Lobstein' 'Georg Gattenhof'};

s8 = {'Georg Gattenhof' 'Georg Gattenhof' 'Victor von Haller' 'Victor von Haller' 'Victor von Haller' 'Victor von Haller'};
p8 = {'Victor von Haller' 'Georg Hueber' 'Johann Duvernoy' 'Herman Boerhaave' 'Bernard Albinus' 'Johann Bernoulli'};

s9 = {'Johann Bernoulli' 'Johann Bernoulli' 'Jakob Bernoulli' 'Jakob Bernoulli'};
p9 = {'Jakob Bernoulli' 'Nikolaus Eglinger' 'Peter Werenfels' 'Nicolas Malebranche'};

s10 = {'Nicolas Malebranche' 'Gottfried Leibnitz' 'Gottfried Leibnitz' 'Gottfried Leibnitz' 'Gottfried Leibnitz'};
p10 = {'Gottfried Leibnitz' 'Erhard Weigel' 'Christiaan Huygens' 'Jakob Thomasius' 'Bartholomaeus Schwendendoerffer'};

s11 = {'Jean-Baptiste Fourier' 'Joseph Louis LaGrange'};
p11 = {'Joseph Louis LaGrange' 'Giambattista Beccaria'};

s12 = {'Benno Erdmann' 'Benno Erdmann' 'Hermann Bonitz' 'Hermann Bonitz' 'Hermann Bonitz' 'Karl Lachmann' 'Karl Lachmann' 'Karl Lachmann' 'Karl Lachmann' 'Karl Lachmann' 'Georg Benecke'};
p12 = {'Eduard Zeller' 'Hermann Bonitz' 'Johann Hermann' 'Karl Lachmann' 'August Boeckh' 'Johann Hermann' 'Georg Benecke' 'Christian Schuetz' 'Christian Heyne' 'August Boeckh' 'Christian Heyne'};

s13 = {'Ralph DiLeone' 'Ralph DiLeone' 'Eric Nestler' 'Eric Nestler' 'Paul Greengard' 'Paul Greengard' 'Paul Greengard' 'Paul Greengard' 'Paul Greengard' 'Paul Greengard' 'Paul Greengard'};
p13 = {'David Kingsley' 'Eric Nestler' 'Dennis Charney' 'Paul Greengard' 'Sidney Udenfriend' 'Wilhelm Feldberg' 'Edward Slater' 'Henry McIlwain' 'Frank Brink' 'Sidney Colowick' 'Haldan Hartline'};

s14 = {'Haldan Hartline' 'Haldan Hartline' 'Haldan Hartline' 'Haldan Hartline' 'Werner Heisenberg' 'Werner Heisenberg' 'Werner Heisenberg' 'Werner Heisenberg' 'Max Born'};
p14 = {'Charles Snyder' 'Hermann Pfund' 'Arnold Sommerfeld' 'Werner Heisenberg' 'Arnold Sommerfeld' 'David Hilbert' 'Max Born' 'Niels Bohr' 'David Hilbert'};

s15 = {'Edward Mark' 'Rudolf Leukart' 'Rudolf Wagner' 'Johann Schoenlein' 'Johann Schoenlein'};
p15 = {'Rudolf Leukart' 'Rudolf Wagner' 'Johann Schoenlein' 'Ignaz Doellinger' 'Friedrich Tiedemann'};

s16 = {'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann' 'Friedrich Tiedemann'};
p16 = {'Konrad Moench' 'Georg Stein' 'Adalbert Marcus' 'Carl von Siebold' 'Johann Bruehl' 'Friedrich Schelling' 'Franz Hesselbach' 'Samuel Soemmering' 'Georges Cuvier'};

s17 = {'Samuel Soemmering' 'Samuel Soemmering' 'Samuel Soemmering' 'Samuel Soemmering' 'Samuel Soemmering'};
p17 = {'Georg Lichtenberg' 'Christian Heyne' 'Johann Blumenbach' 'Heinrich Wrisberg' 'Pieter Camper'};

s18 = {'Wilhelm Wundt' 'Wilhelm Wundt' 'Wilhelm Wundt'};
p18 = {'Karl Hasse' 'Johannes Mueller' 'Hermann von Helmholtz'};

s19 = {'Johann Christ' 'Johann Christ' 'Johann Christ' 'Nicolaus Gundling'};
p19 = {'Karl Knorre' 'Nicolaus Gundling' 'Christian Thomasius' 'Christian Thomasius'};

s20 = {'Karl Knorre' 'Johann von Ludewig'};
p20 = {'Johann von Ludewig' 'Christian Thomasius'};

s21 = {'Christian Thomasius' 'Christian Thomasius' 'Christian Thomasius'};
p21 = {'Jakob Thomasius' 'Valentin Alberti' 'Johann Rhetz'};

s22 = {'Jakob Thomasius' 'Friedrich Leibnuetz'};
p22 = {'Friedrich Leibnuetz' 'Johann Mueller'};

s23 = {'Pierre Varignon' 'Georges Cuvier'};
p23 = {'Nicolas Malebranche' 'Etienne St Hilaire'};

s24 = {'Karl Hasse' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Weber' 'Ernst Chladni'};
p24 = {'Ernst Weber' 'Ernst Chladni' 'Ludwig Gilbert' 'Johann Rosenmueller' 'Johann Clarus' 'Georg Lichtenberg'};

s25 = {'Ludwig Gilbert' 'Georg Kluegel'};
p25 = {'Georg Kluegel' 'Abraham Kaestner'};

s26 = {'Johann Rosenmueller' 'Johann Haase' 'Johann Haase' 'Johann Pohl' 'Johann Pohl' 'Christian Ludwig' 'Christian Ludwig'};
p26 = {'Johann Haase' 'Johann Pohl' 'Christian Ludwig' 'Johann Platner' 'Augustin Walther' 'Johann Hebenstreit' 'Augustin Walther'};

s27 = {'Johann Clarus' 'Ernst Hebenstreit'};
p27 = {'Ernst Hebenstreit' 'Johann Pohl'};

s28 = {'Johannes Mueller' 'Johannes Mueller' 'Hermann von Helmholtz'};
p28 = {'Karl Meyer' 'Karl Rudolphi' 'Johannes Mueller'};

s29 = {'Karl Meyer' 'Karl Meyer' 'Wilhelm Ploucquet'};
p29 = {'Carl Kielmeyer' 'Wilhelm Ploucquet' 'Ferdinand Oetinger'};

s30 = {'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer' 'Carl Kielmeyer'};
p30 = {'Carl Koestlin' 'Christian Reuss' 'Johann Blumenbach' 'Johann Gmelin' 'Georg Lichtenberg'};

s31 = {'Carl Koestlin' 'Gottlieb Storr' 'Christian Reuss' 'Johann Gmelin' 'Johann Gmelin'};
p31 = {'Gottlieb Storr' 'Ferdinand Oetinger' 'Ferdinand Oetinger' 'Ferdinand Oetinger' 'Philipp Gmelin'};

s32 = {'Johann Blumenbach' 'Johann Blumenbach' 'Johann Blumenbach'};
p32 = {'Ernst Baldinger' 'Christian Buettner' 'Christian Heyne'};

s33 = {'Karl Rudolphi' 'Karl Rudolphi' 'Karl Rudolphi'};
p33 = {'Johann Quistorp' 'Christian Weigel' 'Christoph Hufeland'};

s34 = {'Christian Weigel' 'Christian Weigel' 'Johann Erxleben'};
p34 = {'Rudolph Vogel' 'Johann Erxleben' 'Abraham Kaestner'};

s35 = {'Christoph Hufeland' 'Christoph Hufeland' 'Christoph Hufeland' 'Christoph Hufeland' 'Christoph Hufeland'};
p35 = {'Justus Loder' 'August Richter' 'Johann Blumenbach' 'Ernst Baldinger' 'Georg Lichtenberg'};

s36 = {'Justus Loder' 'Justus Loder' 'August Richter'};
p36 = {'Heinrich Wrisberg' 'August Richter' 'Georg Richter'};

s37 = {'Georg Richter' 'Georg Richter' 'Georg Richter'};
p37 = {'Herman Boerhaave' 'Johann Hannemann' 'Wilhelm Waldschmidt'};

s38 = {'Heinrich Wrisberg' 'Heinrich Wrisberg' 'Johann Zinn'};
p38 = {'Johann Roederer' 'Johann Zinn' 'Victor von Haller'};

s39 = {'Georg Prochaska' 'Georg Prochaska' 'Anton de Haen' 'Joseph Barth' 'Anton van Stoerck' 'Gerard van Swieten' 'Gerard van Swieten'};
p39 = {'Anton de Haen' 'Joseph Barth' 'Herman Boerhaave' 'Anton van Stoerck' 'Gerard van Swieten' 'Herman Boerhaave' 'Bernard Albinus'};

s40 = {'Bernard Thibaut' 'Bernard Thibaut' 'Johann Meyer'};
p40 = {'Georg Lichtenberg' 'Abraham Kaestner' 'Abraham Kaestner'};

s41 = {'Carl von Siebold' 'Johann Ehlen' 'Franz von Oberkamp' 'Franz von Oberkamp' 'Johann Doellinger' 'Andreas Ruegemer'};
p41 = {'Johann Ehlen' 'Franz von Oberkamp' 'Johann Bauernmueller' 'Herman Boerhaave' 'Andreas Ruegemer' 'Franz von Oberkamp'};

s42 = {'Johann Platner' 'Ferdinand Oetinger' 'Michael Alberti' 'Johann Bauernmueller'};
p42 = {'Michael Alberti' 'Michael Alberti' 'Georg Stahl' 'Georg Stahl'};

s43 = {'Abraham Werner' 'Abraham Werner' 'K.E. Pabst von Ohain' 'Johann Henckel' 'Johann Henckel'};
p43 = {'Johann Gehler' 'K.E. Pabst von Ohain' 'Johann Henckel' 'Georg Stahl' 'Heinrich Heinrici'};

s44 = {'Johann Gehler' 'Johann Gehler'};
p44 = {'Christian Ludwig' 'Johann Fried'};

s45 = {'Rudolph Vogel' 'Rudolph Vogel' 'Rudolph Vogel' 'Johann Wedel'};
p45 = {'Friedrich Hoffmann' 'Johann Wedel' 'Paul Vogel' 'Georg Wedel'};

s46 = {'Friedrich Hoffmann' 'Friedrich Hoffmann' 'Friedrich Hoffmann'};
p46 = {'Georg Wedel' 'Augustin Fasch' 'Theodorus Craanen'};

s47 = {'Paul Vogel' 'Paul Vogel' 'Paul Vogel'};
p47 = {'Georg Wedel' 'Friedrich Hoffmann' 'Georg Stahl'};

s48 = {'Herman Boerhaave' 'Herman Boerhaave' 'Herman Boerhaave' 'Theodorus van de Graeff'};
p48 = {'Burchard de Volder' 'Wolferd Senguerd' 'Theodorus van de Graeff' 'Theodorus Craanen'};

s49 = {'Bernard Albinus' 'Theodorus Craanen' 'Theodorus Craanen' 'Theodorus Craanen'};
p49 = {'Theodorus Craanen' 'Henricus Regius' 'Franz de le Boe' 'Johann Daniels'};

s50 = {'Burchard de Volder' 'Burchard de Volder' 'Burchard de Volder'};
p50 = {'Alexander de Bie' 'Johannes de Bruyn' 'Franz de le Boe'};

s51 = {'Alexander de Bie' 'Alexander de Bie' 'Johannes de Bruyn' 'Johannes de Bruyn' 'Johannes de Bruyn'};
p51 = {'Daniel Berckringer' 'Jacobus Ravensperg' 'Daniel Berckringer' 'Jacobus Ravensperg' 'Adriaan Heereboord'};

s52 = {'Georg Stahl'  'Georg Stahl' 'Georg Wedel' 'Georg Wedel' 'Rudolf Krauss' 'Rudolf Krauss' 'Gottfried Moebius'};
p52 = {'Georg Wedel' 'Rudolf Krauss' 'Werner Rolfinck' 'Franz de le Boe' 'Franz de le Boe' 'Gottfried Moebius' 'Werner Rolfinck'};

s53 = {'Christiaan Huygens' 'Frans van Schooten' 'Jacob Gool' 'Jacob Gool'};
p53 = {'Frans van Schooten' 'Jacob Gool' 'Willebrord Snellius' 'Thomas Erpenius'};

s54 = {'Adriaan Heereboord' 'Franck Burgersdijk' 'Franck Burgersdijk'};
p54 = {'Franck Burgersdijk' 'Gilbert Jacchaeus' 'Willebrord Snellius'};

s55 = {'Nikolaus Eglinger' 'Nikolaus Eglinger' 'Franz de le Boe' 'Emmanuel Stupanus'};
p55 = {'Johann Bauhin' 'Emmanuel Stupanus' 'Emmanuel Stupanus' 'Johann Bauhin' };

s56 = {'Werner Rolfinck' 'Werner Rolfinck' 'Daniel Sennert' 'Adriaan van den Spieghel' 'Jan Jessenius' 'Guilio Casseri'};
p56 = {'Daniel Sennert' 'Adriaan van den Spieghel' 'Jan Jessenius' 'Guilio Casseri' 'Hieronymus Fabricus' 'Hieronymus Fabricus'};

s57 = {'Emmanuel Stupanus' 'Emmanuel Stupanus' 'Emmanuel Stupanus' 'Emmanuel Stupanus' 'Emmanuel Stupanus' 'Emmanuel Stupanus'};
p57 = {'Jacob Zwinger' 'Esaie Colladon' 'Gaspard Laurent' 'Felix Platter' 'Casper Bauhin' 'Peter Ryff'};

s58 = {'Peter Ryff' 'Peter Ryff' 'Peter Ryff'};
p58 = {'Thomas Erastus' 'Theodor Zwinger' 'Felix Platter'};

s59 = {'Casper Bauhin' 'Casper Bauhin' 'Casper Bauhin'};
p59 = {'Johann Bauhin' 'Felix Platter' 'Hieronymus Fabricus'};

s60 = {'Hieronymus Fabricus' 'Gabriel Falloppio' 'Antonio Brasavola' 'Nicolo da Lonigo' 'Nicolo da Lonigo'};
p60 = {'Gabriel Falloppio' 'Antonio Brasavola' 'Nicolo da Lonigo' 'Ognibene Lonigo' 'Pietro Roccabonella'};

s61 = {'Pietro Roccabonella' 'Pietro Roccabonella' 'Gaetano da Thiene' 'Paulus Venetus' 'Pierre dAilly' 'Gregory of Rimini'};
p61 = {'Sigismundo Polcastro' 'Gaetano da Thiene' 'Paulus Venetus' 'Pierre dAilly' 'Gregory of Rimini' 'William of Ockham'};

s62 = {'Johann Bauhin' 'Johann Bauhin' 'Johann Bauhin' 'Konrad Gessner' 'Konrad Gessner'};
p62 = {'Leonhart Fuchs' 'Konrad Gessner' 'Guillaume Rondolet' 'Guillaume Rondolet' 'Wolfgang Capito'};

s63 = {'Leonhart Fuchs' 'Leonhart Fuchs' 'Johannes Reuchlin' 'Johannes Reuchlin' 'Johannes Agyropoulos' 'Johannes Agyropoulos' 'Georg Hermonymus'};
p63 = {'Peter Burckhard' 'Johannes Reuchlin' 'Georg Hermonymus' 'Johannes Agyropoulos' 'Georgios Plethon' 'Gaetano da Thiene' 'Georgios Plethon'};

s64 = {'Georgios Plethon' 'Demetrios Kydones' 'Demetrios Kydones'};
p64 = {'Demetrios Kydones' 'Nilus Kabasilas' 'Philip of Pera'};

s65 = {'Guillaume Rondolet' 'Winther von Adernach' 'Winther von Adernach' 'Rutger Rescius' 'Girolamo Aleandro' 'Scipione Fortiguerra' 'Angelo Poliziano' 'Marsilio Ficino'};
p65 = {'Winther von Adernach' 'Jacob Sylvius' 'Rutger Rescius' 'Girolamo Aleandro' 'Scipione Fortiguerra' 'Angelo Poliziano' 'Marsilio Ficino' 'Johannes Agyropoulos'};

s66 = {'Wolfgang Capito' 'Desiderius Erasmus' 'Desiderius Erasmus' 'Desiderius Erasmus' 'Alexander Hegius' 'Rodolphus Agricola' 'Rodolphus Agricola' 'Rodolphus Agricola'};
p66 = {'Desiderius Erasmus' 'Jan Standonck' 'Georg Hermonymus' 'Alexander Hegius' 'Rodolphus Agricola' 'Giorgio Valla' 'Battista Guarino' 'Johann von Dalberg'};

s67 = {'Giorgio Valla' 'Konstantinos Laskaris'};
p67 = {'Konstantinos Laskaris' 'Johannes Agyropoulos'};

s68 = {'Battista Guarino' 'Guarino da Verona' 'Guarino da Verona' 'Manuel Chyrosoloras'};
p68 = {'Guarino da Verona' 'Giovanni da Ravenna' 'Manuel Chyrosoloras' 'Demetrios Kydones'};

s69 = {'Johann von Dalberg' 'Johannes Trithemius' 'Jakob Wimpheling' 'Ludwig Dringenberg' 'Thomas a Kempis' 'Florentius Radewyn' 'Geert Groote'};
p69 = {'Johannes Trithemius' 'Jakob Wimpheling' 'Ludwig Dringenberg' 'Thomas a Kempis' 'Florentius Radewyn' 'Geert Groote' 'William of Ockham'};

s70 = {'Willebrord Snellius' 'Willebrord Snellius' 'Willebrord Snellius' 'Rudolph Snellius' 'Rudolph Snellius'};
p70 = {'Ludolf van Keulen' 'Johannes Kepler' 'Rudolph Snellius' 'Immanuel Tremellius' 'Valentin Naboth'};

s71 = {'Valentin Naboth' 'Erasmus Reinhold' 'Jakob Milich'};
p71 = {'Erasmus Reinhold' 'Jakob Milich' 'Desiderius Erasmus'};

s72 = {'Johannes Kepler' 'Johannes Kepler' 'Matthias Hafenreffer' 'Jakob Heerbrand' 'Jakob Heerbrand' 'Philip Melanchthon' 'Philip Melanchthon'};
p72 = {'Matthias Hafenreffer' 'Michael Maestlin' 'Jakob Heerbrand' 'Martin Luther' 'Philip Melanchthon' 'Martin Luther' 'Johannes Reuchlin'};

s73 = {'Peter Werenfels' 'Theodor Zwinger' 'Sebastian Beck' 'Johann Grynaeus'  'Johann Grynaeus' 'Jakob Andreae' 'Erhard Schnepff'};
p73 = {'Theodor Zwinger' 'Sebastian Beck' 'Johann Grynaeus' 'Simon Sulzner' 'Jakob Andreae' 'Erhard Schnepff' 'Martin Luther'};

s74 = {'Simon Sulzner' 'Simon Sulzner' 'Simon Grynaeus' 'Simon Grynaeus'};
p74 = {'Wolfgang Capito' 'Simon Grynaeus' 'Philip Melanchthon' 'Johannes Reuchlin'};

s75 = {'Michael Maestlin' 'Philip Apian' 'Petrus Apianus' 'Georg Tanstetter' 'Conrad Celtes' 'Conrad Celtes'};
p75 = {'Philip Apian' 'Petrus Apianus' 'Georg Tanstetter' 'Conrad Celtes' 'Rodolphus Agricola' 'Johann von Dalberg'};

s76 = {'Thomas Erpenius' 'Joseph Scaliger' 'Adrian Turnebe' 'Jacques Toussain' 'Guillaume Bude' 'Guillaume Bude' 'Guillaume Bude'};
p76 = {'Joseph Scaliger' 'Adrian Turnebe' 'Jacques Toussain' 'Guillaume Bude' 'Janos Lascaris' 'Jacques dEtaples' 'Georg Hermonymus'};

s77 = {'Janos Lascaris' 'Janos Lascaris' 'Basilios Bessarion' 'Demetrios Chalcocondyles' 'Demetrios Chalcocondyles' 'Theodor Gaza' 'Vittorino da Feltre' 'Vittorino da Feltre'};
p77 = {'Basilios Bessarion' 'Demetrios Chalcocondyles' 'Georgios Plethon' 'Georgios Plethon' 'Theodor Gaza' 'Vittorino da Feltre' 'Giacomo della Torre da Forli' 'Guarino da Verona'};

s78 = {'Jacques dEtaples' 'Jacques dEtaples'};
p78 = {'Georg Hermonymus' 'Johannes Agyropoulos'};

s79 = {'Georg Wosegin' 'Albert Kyper' 'Albert Kyper' 'Albrecht Linemann' 'Johann Strauss' 'Vitus Mueller'};
p79 = {'Albert Kyper' 'Otto Heurnius' 'Albrecht Linemann' 'Johann Strauss' 'Vitus Mueller' 'Jakob Andreae'};

s80 = {'Otto Heurnius' 'Otto Heurnius' 'Johan van Heurne' 'Johan van Heurne' 'Johan van Heurne' 'Petrus Ramus'};
p80 = {'Petrus Molinaeus' 'Johan van Heurne' 'Cornelius Gemma' 'Hieronymus Fabricus' 'Petrus Ramus' 'Jacques Toussain'};

s81 = {'Petrus Molinaeus' 'Francois du Jon' 'John Calvin' 'John Calvin' 'John Calvin' 'John Calvin' 'John Calvin' 'John Calvin' 'John Calvin' 'John Calvin'};
p81 = {'Francois du Jon' 'John Calvin' 'Mathurin Cordier' 'John Mair' 'Melchior Wolmar' 'Guillaume Bude' 'Andreas Alciati' 'Pierre Danes' 'Francois Vatable' 'William Farel'};

s82 = {'John Mair' 'Melchior Wolmar' 'Melchior Wolmar' 'Andreas Alciati' 'Andreas Alciati' 'Andreas Alciati' 'Pierre Danes' 'Francois Vatable' 'William Farel'};
p82 = {'Jan Standonck' 'Guillaume Bude' 'Jacques dEtaples' 'Aulus Parrhasius' 'Janos Lascaris' 'Demetrios Chalcocondyles' 'Guillaume Bude' 'Jacques dEtaples' 'Jacques dEtaples'};

s83 = {'Erhard Weigel' 'Philipp Mueller' 'Christoph Meurer' 'Moritz Steinmetz' 'Georg Rheticus' 'Nicolaus Copernicus' 'Domenico Novara da Ferrara' 'Johannes Regiomontanus'};
p83 = {'Philipp Mueller' 'Christoph Meurer' 'Moritz Steinmetz' 'Georg Rheticus' 'Nicolaus Copernicus' 'Domenico Novara da Ferrara' 'Johannes Regiomontanus' 'Basilios Bessarion'};

s84 = {'Johann Planer' 'Johann Planer' 'Rudolf Camerarius' 'Georg Metzger' 'Georg Metzger' 'Georg Metzger' 'Johann von Brunn'};
p84 = {'Johann Pasch' 'Rudolf Camerarius' 'Georg Metzger' 'Johann Macasius' 'Gottfried Moebius' 'Johann von Brunn' 'Emmanuel Stupanus'};

s85 = {'Johann Macasius' 'Johann Macasius' 'Georg Grosshain' 'Paul Roeber' 'Ambrosius Rhodius' 'Ambrosius Rhodius'};
p85 = {'Johann Meyfart' 'Georg Grosshain' 'Paul Roeber' 'Ambrosius Rhodius' 'Melchior Joestel' 'Ernestus Hettenbach'};

s86 = {'Melchior Joestel' 'Melchior Joestel' 'Valentin Otto' 'Andreas Schato' 'Andreas Schato' 'Sebastian Dietrich' 'Sebastian Dietrich'};
p86 = {'Valentin Otto' 'Andreas Schato' 'Georg Rheticus' 'Sebastian Dietrich' 'Salomon Alberti' 'Erasmus Reinhold' 'Georg Rheticus'};

s87 = {'Salomon Alberti' 'Salomon Alberti' 'Caspar Peucer' 'Caspar Peucer' 'Ernestus Hettenbach' 'Ernestus Hettenbach'};
p87 = {'Hieronymus Fabricus' 'Caspar Peucer' 'Erasmus Reinhold' 'Georg Rheticus' 'Salomon Alberti' 'Andreas Schato'};

s88 = {'Johann Pasch' 'Michael Walther' 'Michael Walther' 'Aegidius Strauch' 'Aegidius Strauch' 'Andreas Kunad' 'Johann Hoepner' 'Rupertus Meldenius'};
p88 = {'Michael Walther' 'Johann Quennstedt' 'Aegidius Strauch' 'Abraham Calov' 'Andreas Kunad' 'Johann Hoepner' 'Rupertus Meldenius' 'Matthias Hafenreffer'};

s89 = {'Abraham Calov' 'Abraham Calov' 'Johann Behm' 'Leonhard Hutter' 'Johannes Pappus'};
p89 = {'Albrecht Linemann' 'Johann Behm' 'Leonhard Hutter' 'Johannes Pappus' 'Jakob Andreae'};

s90 = {'Johann Quennstedt' 'Georg Calixt' 'Cornelius Martini' 'Johannes Caselius' 'Johannes Caselius'};
p90 = {'Georg Calixt' 'Cornelius Martini' 'Johannes Caselius' 'Philip Melanchthon' 'Joachim Camerarius'};

s91 = {'Gottlieb Planck' 'Jeremias Reuss' 'Jeremias Reuss' 'Christoph Pfaff' 'Christoph Pfaff' 'Christoph Pfaff' 'Christoph Pfaff'};
p91 = {'Jeremias Reuss' 'Christian Hagmaier' 'Christoph Pfaff' 'Matthaeus Hiller' 'Johann Jaeger' 'Johann Michaelis' 'Esdras Ezardus'};

s92 = {'Johann Michaelis' 'Johann Michaelis' 'Hiob Ludolf' 'Hiob Ludolf' 'Constantijn van Oppyck' 'Constantijn van Oppyck'};
p92 = {'August Francke' 'Hiob Ludolf' 'Jacob Gool' 'Constantijn van Oppyck' 'Thomas Erpenius' 'Johannes Drusius'};

s93 = {'Johannes Drusius' 'Raoul le Chevalier' 'Raoul le Chevalier' 'Paul Fagius'};
p93 = {'Raoul le Chevalier' 'Francois Vatable' 'Paul Fagius' 'Wolfgang Capito'};

s94 = {'Johann Hebenstreit' 'Johann Kuechler' 'August Rivinus' 'Hermann Conring' 'Hermann Conring' 'Hermann Conring' 'Hermann Conring'};
p94 = {'Johann Kuechler' 'August Rivinus' 'Hermann Conring' 'Johann Wolf' 'Georg Calixt' 'Conrad Hornejus' 'Franck Burgersdijk'};

s95 = {'Conrad Hornejus' 'Conrad Hornejus'};
p95 = {'Cornelius Martini' 'Johannes Caselius'};

s96 = {'Sidney Colowick' 'Carl Cori' 'Carl Cori' 'Otto Loewi' 'Otto Loewi' 'Otto Loewi'};
p96 = {'Carl Cori' 'Harvey Gaylord' 'Otto Loewi' 'Oswald Schmeideberg' 'Ernest Starling' 'Hans Meyer'};

s97 = {'Oswald Schmeideberg' 'Rudolf Buchheim'};
p97 = {'Rudolf Buchheim' 'Ernst Weber'};

s98 = {'Ernest Starling' 'Ernest Starling' 'Ernest Starling' 'Wilhelm Kuehne' 'Wilhelm Kuehne' 'Wilhelm Kuehne' 'Wilhelm Kuehne'};
p98 = {'Wilhelm Kuehne' 'Rudolf Heidenhain' 'Edward Sharpey-Shafer' 'Rudolf Wagner' 'Carl Ludwig' 'Ernst von Bruecke' 'Rudolf Virchow'};

s99 = {'Carl Ludwig' 'Carl Ludwig' 'Ernst von Bruecke' 'Rudolf Virchow' 'Rudolf Virchow' 'Robert Bunsen' 'Robert Froriep'};
p99 = {'Robert Bunsen' 'Hermann Nasse' 'Johannes Mueller' 'Johannes Mueller' 'Robert Froriep' 'Friedrich Stromeyer' 'Philip von Walther'};

s100 = {'Friedrich Stromeyer' 'Friedrich Stromeyer' 'Friedrich Stromeyer' 'Friedrich Stromeyer'};
p100 = {'Johann Gmelin' 'Johann Blumenbach' 'Georg Lichtenberg' 'Louis Vauquelin'};

%Vauquelin is a dead end

s101 = {'Hermann Nasse' 'Hermann Nasse' 'Philip von Walther' 'Philip von Walther' 'Philip von Walther' 'Georg Beer'};
p101 = {'Philip von Walther' 'Christian Nasse' 'Johann Frank' 'Georg Beer' 'Ignaz Niederhuber' 'Joseph Barth'};

s102 = {'Ignaz Niederhuber' 'Heinrich von Leveling' 'Johann Lobstein' 'Philipp Boecler' 'Johann P. Boecler' 'Johann Boecler'};
p102 = {'Heinrich von Leveling' 'Johann Lobstein' 'Philipp Boecler' 'Johann P. Boecler' 'Johann Boecler' 'Johann Salzmann'};

s103 = {'Johann Salzmann' 'Melchior Sebisch III' 'Marcus Mappus' 'Johann Sebisch' 'Melchior Sebisch II' 'Melchior Sebisch II' 'Melchior Sebisch II'};
p103 = {'Melchior Sebisch III' 'Marcus Mappus' 'Johann Sebisch' 'Melchior Sebisch II' 'Felix Platter' 'Casper Bauhin' 'Emmanuel Stupanus'};

s104 = {'Christian Nasse' 'Johann Reil' 'Johann Reil' 'Philipp Meckel' 'Johann Goldhagen' 'Friedrich Juncker' 'Johann Juncker' 'Johann Juncker'};
p104 = {'Johann Reil' 'Philipp Meckel' 'Johann Goldhagen' 'Johann Lobstein' 'Friedrich Juncker' 'Johann Juncker' 'Michael Alberti' 'August Francke'};

s105 = {'Rudolf Heidenhain' 'Emil du Bois-Reymond'};
p105 = {'Emil du Bois-Reymond' 'Johann Mueller'};

s106 = {'Edward Sharpey-Shafer' 'William Sharpey' 'William Sharpey' 'John Barclay' 'John Bell' 'Alexander Wood' 'Thomas Young' 'John Rutherford'};
p106 = {'William Sharpey' 'Guillaume Dupuytren' 'John Barclay' 'John Bell' 'Alexander Wood' 'Thomas Young' 'John Rutherford' 'Herman Boerhaave'};

s107 = {'Hans Meyer' 'Hans Meyer' 'Hans Meyer' 'Max Jaffe' 'Max Jaffe' 'Max Jaffe'};
p107 = {'Carl Ludwig' 'Oswald Schmeideberg' 'Max Jaffe' 'Ludwig Traube' 'Wilhelm Kuehne' 'Ernst von Leyden'};

s108 = {'Ludwig Traube' 'Ludwig Traube' 'Ernst von Leyden' 'Ernst von Leyden'};
p108 = {'Jan Purkinye' 'Johannes Mueller' 'Ludwig Traube' 'Johann Schoenlein'};

s109 = {'Wilhelm Feldberg' 'Wilhelm Feldberg' 'Wilhelm Feldberg' 'Friedrich Trendelenburg' 'Friedrich Trendelenburg' 'Johannes von Kries'};
p109 = {'Friedrich Trendelenburg' 'Henry Dale' 'John Langley' 'Ewald Hering' 'Johannes von Kries' 'Hermann von Helmholtz'};

s110 = {'Henry Dale' 'Henry Dale' 'John Langley' 'Michael Foster' 'Michael Foster' 'Thomas Huxley' 'Thomas W. Jones' 'William McKenzie'};
p110 = {'Ernest Starling' 'John Langley' 'Michael Foster' 'William Sharpey' 'Thomas Huxley' 'Thomas W. Jones' 'William McKenzie' 'Georg Beer'};

s111 = {'Edward Slater' 'David Keilin' 'George Nuttall' 'Carl Fluegge' 'August Kekule' 'August Kekule' 'August Kekule' 'August Kekule'};
p111 = {'David Keilin' 'George Nuttall' 'Carl Fluegge' 'August Kekule' 'Robert Bunsen' 'Heinrich Will' 'John Stenhouse' 'Justus von Liebig'}; 

s112 = {'Heinrich Will' 'John Stenhouse' 'Justus von Liebig' 'Justus von Liebig' 'Justus von Liebig' 'Karl Kastner'};
p112 = {'Justus von Liebig' 'Justus von Liebig' 'Karl Kastner' 'Joseph Gay-Lussac' 'Michel-Eugene Chevreul' 'Johann Goettling'};

%Chevreul is a dead end

s113 = {'Johann Goettling' 'Johann Goettling' 'Johann Goettling' 'Johann Goettling' 'Johann Goettling' 'Johann Wiegleb'};
p113 = {'Johann Blumenbach' 'Georg Lichtenberg' 'Johann Gmelin' 'Wilhelm Bucholz' 'Johann Wiegleb' 'Ernst Baldinger'};

s114 = {'Wilhelm Bucholz' 'Johann Faselius' 'Carl Kaltschmied' 'Hermann Teichmeyer'};
p114 = {'Johann Faselius' 'Carl Kaltschmied' 'Hermann Teichmeyer' 'Georg Wedel'};

s115 = {'Ernst Baldinger' 'Ernst Baldinger' 'Ernst Baldinger' 'Ernst Nicolai' 'Johann Krueger'};
p115 = {'Christoph Mangold' 'Johann Kniphof' 'Ernst Nicolai' 'Johann Krueger' 'Friedrich Hoffmann'};

s116 = {'Christoph Mangold' 'Christoph Mangold' 'Christoph Mangold' 'Georg Fuchs' 'Georg Hamberger'};
p116 = {'Georg Fuchs' 'Georg Hamberger' 'Hermann Teichmeyer' 'Rudolf Krauss' 'Georg Wedel'};

s117 = {'Johann Kniphof' 'Johann Fischer' 'Johann Eysel' 'Johann Eysel' 'Christopher Ruperti' 'Eckhard Leichner'};
p117 = {'Johann Fischer' 'Johann Eysel' 'Christopher Ruperti' 'Eckhard Leichner' 'Werner Rolfinck' 'Gottfried Moebius'};

s118 = {'Frank Brink' 'Detlev Bronk' 'Detlev Bronk' 'Detlev Bronk' 'Archibald Hill' 'Archibald Hill' 'Walter Fletcher'};
p118 = {'Detlev Bronk' 'Robert Gesell' 'Edgar Adrian' 'Archibald Hill' 'John Langley' 'Walter Fletcher' 'Michael Foster'};

s119 = {'Edgar Adrian' 'Keith Lucas' 'Keith Lucas'};
p119 = {'Keith Lucas' 'Walter Fletcher' 'Michael Foster'};

s120 = {'Robert Gesell' 'Joseph Erlanger' 'William Howell' 'William Howell' 'Henry Martin'};
p120 = {'Joseph Erlanger' 'William Howell' 'Henry Bowditch' 'Henry Martin' 'Michael Foster'};

s121 = {'Henry Bowditch' 'Henry Bowditch' 'Henry Bowditch' 'Henry Bowditch' 'Henry Bowditch'};
p121 = {'Jeffries Wyman' 'Claude Bernard' 'Max Schultze' 'Carl Ludwig' 'Carl von Voit'};

s122 = {'Carl von Voit' 'Carl von Voit' 'Theodor von Bischoff' 'Christian Nees von Esenbeck' 'Christian Nees von Esenbeck' 'August Batsch'};
p122 = {'Carl von Siebold' 'Theodor von Bischoff' 'Christian Nees von Esenbeck' 'August Batsch' 'Justus Loder' 'Justus Loder'};

s123 = {'Max Schultze' 'Max Schultze' 'Karl Schultze' 'Johann Meckel' 'Johann Meckel' 'Johann Meckel' 'Johann Meckel'};
p123 = {'Johannes Mueller' 'Karl Schultze' 'Johann Meckel' 'Johann Reil' 'Johann Blumenbach' 'Philipp Meckel' 'Georges Cuvier'};

s124 = {'Henry McIlwain' 'Henry McIlwain' 'George Clemo' 'Robert Robinson' 'William Perkin'};
p124 = {'George Clemo' 'Robert Robinson' 'William Perkin' 'William Perkin' 'Johannes Wislicenus'};

s125 = {'Johannes Wislicenus' 'Johannes Wislicenus' 'Wilhelm Heinz' 'Georg Staedeler'};
p125 = {'Wilhelm Heinz' 'Georg Staedeler' 'Heinrich Rose' 'Friedrich Woehler'};

s126 = {'Friedrich Woehler' 'Friedrich Woehler' 'Friedrich Woehler' 'Friedrich Woehler'};
p126 = {'Leopold Gmelin' 'Friedrich Tiedemann' 'Franz Naegele' 'Joens Berzelius'};

s127 = {'Leopold Gmelin' 'Leopold Gmelin' 'Leopold Gmelin' 'Joseph von Jacquin' 'Nicolaus von Jacquin' 'Nicolaus von Jacquin' 'Adriaan van Royen'};
p127 = {'Johann Gmelin' 'Friedrich Stromeyer' 'Joseph von Jacquin' 'Nicolaus von Jacquin' 'Gerard van Swieten' 'Adriaan van Royen' 'Herman Boerhaave'};

s128 = {'Joens Berzelius' 'Joens Berzelius' 'Anders Ekeberg' 'Carl Thunberg' 'Carl Linnaeus' 'Carl Linnaeus' 'Johannes de Gorter'};
p128 = {'Johan Afzelius' 'Anders Ekeberg' 'Carl Thunberg' 'Carl Linnaeus' 'Olof Rudbeck Jr' 'Johannes de Gorter' 'Herman Boerhaave'};

s129 = {'Olof Rudbeck Jr' 'Olof Rudbeck Jr' 'Olof Rudbeck Sr' 'Olof Rudbeck Sr'};
p129 = {'Jacob Vallan' 'Olof Rudbeck Sr' 'Olaus Stenius' 'Frans van Schooten'};

s130 = {'Jacob Vallan' 'Johannes van Horne' 'Johannes van Horne' 'Henricus Regius' 'Henricus Regius' 'Henricus Regius'};
p130 = {'Johannes van Horne' 'Johann Vesling' 'Henricus Regius' 'Adriaan van den Spieghel' 'Otto Heurnius' 'Nicolaus Mulerius'};

s131 = {'Nicolaus Mulerius' 'Nicolaus Mulerius' 'Nicolaus Mulerius'};
p131 = {'Rudolph Snellius' 'Johan van Heurne' 'Gerard Bontius'};

s132 = {'Johan Afzelius' 'Torbern Bergman' 'Bengt Ferrner' 'Bengt Ferrner'};
p132 = {'Torbern Bergman' 'Bengt Ferrner' 'Maerten Stroemer' 'Samuel Klingenstierna'};

s133 = {'Samuel Klingenstierna' 'Samuel Klingenstierna' 'Samuel Klingenstierna' 'Christian Wolff'};
p133 = {'Johann Bernoulli' 'Anders Duhre' 'Christian Wolff' 'Georg Hamberger'};

s134 = {'Anders Duhre' 'Petrus Elvius' 'Petrus Elvius' 'Petrus Hoffvenius' 'Johannes van der Linden' 'Menelaus Winsemius'};
p134 = {'Petrus Elvius' 'Petrus Hoffvenius' 'Anders Spole' 'Johannes van der Linden' 'Menelaus Winsemius' 'Pieter Pauw'};

%Spole is an end point

s135 = {'Pieter Pauw' 'Pieter Pauw' 'Pieter Pauw' 'Henricus Brucaeus'};
p135 = {'Johan van Heurne' 'Gerard Bontius' 'Henricus Brucaeus' 'Petrus Ramus'};

s136 = {'Heinrich Rose' 'Heinrich Rose' 'Heinrich Rose' 'Martin Klaproth' 'Martin Klaproth' 'Johann Pott'};
p136 = {'Joens Berzelius' 'Christoph Pfaff' 'Martin Klaproth' 'Andreas Markgraf' 'Johann Pott' 'Friedrich Hoffmann'};

s137 = {'Andreas Markgraf' 'Andreas Markgraf' 'Andreas Markgraf' 'Caspar Neumann' 'Caspar Neumann'};
p137 = {'Friedrich Hoffmann' 'Johann Henckel' 'Caspar Neumann' 'Herman Boerhaave' 'Georg Stahl'};

s138 = {'Sidney Udenfriend' 'Sidney Udenfriend' 'Sidney Udenfriend' 'Severo Ochoa' 'Severo Ochoa'};
p138 = {'Carl Cori' 'Bernard Brodie' 'Severo Ochoa' 'Otto Meyerhof' 'Henry Dale'};

s139 = {'Otto Meyerhof' 'Otto Meyerhof' 'Otto Meyerhof' 'Otto Warburg' 'Otto Warburg' 'Ludolf von Krehl' 'Ludolf von Krehl'};
p139 = {'Franz Nissl' 'Ludolf von Krehl' 'Otto Warburg' 'Emil Fischer' 'Ludolf von Krehl' 'Carl Ludwig' 'Heinrich Curschmann'};

s140 = {'Heinrich Curschmann' 'Heinrich Curschmann' 'Conrad Eckhard' 'Conrad Eckhard' 'Ludwig Fick'};
p140 = {'Ludwig Traube' 'Conrad Eckhard' 'Theodor von Bischoff' 'Ludwig Fick' 'Christian Buenger'};

s141 = {'Christian Buenger' 'Christian Buenger' 'Christian Buenger' 'Ernst Bartels' 'Ernst Bartels'};
p141 = {'Justus Loder' 'Ernst Bartels' 'Gottfried Beireis' 'Justus Loder' 'Christoph Hufeland'};

s142 = {'Gottfried Beireis' 'Gottfried Beireis' 'Lorenz Heister' 'Lorenz Heister'};
p142 = {'Georg Hamberger' 'Lorenz Heister' 'Herman Boerhaave' 'Theodoor van Almeloveen'};

s143 = {'Theodoor van Almeloveen' 'Theodoor van Almeloveen' 'Johannes Munnicks' 'IJsbrand van Diemerbroeck' 'IJsbrand van Diemerbroeck' 'IJsbrand van Diemerbroeck'};
p143 = {'Jacob Vallan' 'Johannes Munnicks' 'IJsbrand van Diemerbroeck' 'Otto Heurnius' 'Ewaldus Schrevelius' 'Adrianus van Valckenburg'};

s144 = {'Adrianus van Valckenburg' 'Adrianus van Valckenburg' 'Reynerus Bontius' 'Reynerus Bontius' 'Reynerus Bontius'};
p144 = {'Pieter Pauw' 'Reynerus Bontius' 'Pieter Pauw' 'Johan van Heurne' 'Rudolph Snellius'};

s145 = {'Emil Fischer' 'Emil Fischer' 'Adolf von Baeyer' 'Adolf von Baeyer'};
p145 = {'August Kekule' 'Adolf von Baeyer' 'August Kekule' 'Robert Bunsen'};

s146 = {'Franz Nissl' 'Johann von Gudden' 'Carl Jacobi' 'Friedrich Jacobi' 'J.W. von Goethe' 'J.W. von Goethe'};
p146 = {'Johann von Gudden' 'Carl Jacobi' 'Friedrich Jacobi' 'J.W. von Goethe' 'Johann Herder' 'Jacob Spielmann'};

s147 = {'Jacob Spielmann' 'Johann Sachs' 'Johann Scheid'};
p147 = {'Johann Sachs' 'Johann Scheid' 'Marcus Mappus'};

s148 = {'Johann Herder' 'Johann Herder' 'Immanuel Kant' 'Martin Knutzen'};
p148 = {'Johann Hamann' 'Immanuel Kant' 'Martin Knutzen' 'Christian Wolff'};

s149 = {'Bernard Brodie' 'Bernard Brodie' 'George Wallace' 'Raemer Renshaw' 'Marston Bogert' 'Charles Chandler' 'Charles Chandler'};
p149 = {'Raemer Renshaw' 'George Wallace' 'Oswald Schmeideberg' 'Marston Bogert' 'Charles Chandler' 'Heinrich Rose' 'Friedrich Woehler'};

s150 = {'Georg Stein' 'Johann Roederer' 'Johann Fried' 'Johann Henninger' 'Konrad Moench'};
p150 = {'Johann Roederer' 'Johann Fried' 'Johann Henninger' 'Marcus Mappus' 'Jacob Spielmann'};

s151 = {'Johann Bruehl' 'Johann Bruehl' 'Franz Hesselbach'};
p151 = {'Johann Blumenbach' 'Heinrich Wrisberg' 'Carl von Siebold'};

s152 = {'Christian Schuetz' 'Johann Semler' 'Siegmund Baumgarten' 'Christian Michaelis'};
p152 = {'Johann Semler' 'Siegmund Baumgarten' 'Christian Michaelis' 'Johann Michaelis'};

s153 = {'Wilhelm Weber' 'Wilhelm Weber' 'Wilhelm Weber' 'Johann Schweigger' 'Johann Schweigger' 'Johann Schweigger'};
p153 = {'Ernst Chladni' 'Ernst Weber' 'Johann Schweigger' 'Gottlieb Harless' 'Georg Hildebrandt' 'Karl von Langsdorf'};

s154 = {'Georg Hildebrandt' 'Georg Hildebrandt' 'Karl von Langsdorf'};
p154 = {'Johann Blumenbach' 'Heinrich Wrisberg' 'Abraham Kaestner'};

s155 = {'Gustav Kirchhoff' 'Gustav Kirchhoff' 'Franz Neumann' 'Christian Weiss' 'Christian Weiss'};
p155 = {'Franz Neumann' 'Heinrich Magnus' 'Christian Weiss' 'Martin Klaproth' 'Abraham Werner'};

s156 = {'Heinrich Magnus' 'Heinrich Magnus' 'Heinrich Magnus' 'Eilhard Mitscherlich' 'Eilhard Mitscherlich' 'Eilhard Mitscherlich' 'Heinrich Link'};
p156 = {'Joseph Gay-Lussac' 'Joens Berzelius' 'Eilhard Mitscherlich' 'Joens Berzelius' 'Friedrich Stromeyer' 'Heinrich Link' 'Johann Blumenbach'};

s157 = {'Augustin Walther' 'Johann von Berger' 'Augustin Fasch'};
p157 = {'Johann von Berger' 'Augustin Fasch' 'Werner Rolfinck'};

s158 = {'Arnold Sommerfeld' 'Rudolf Clebsch'};
p158 = {'Ferdinand Lindemann' 'Franz Neumann'};

s159 = {'W.F. Wilcox' 'Richmond Mayo-Smith' 'Theodor Mommsen' 'Georg Burchardi'};
p159 = {'Richmond Mayo-Smith' 'John Burgess' 'Georg Burchardi' 'Friedrich von Savigny'};

s160 = {'Herbert Adams' 'Johann Bluntschli'};
p160 = {'Johann Bluntschli' 'Friedrich von Savigny'};

s161 = {'Claude Bernard' 'Francois Magandie' 'Alexis Boyer' 'Guillaume Dupuytren'};
p161 = {'Francois Magandie' 'Alexis Boyer' 'Pierre-Joseph Desault' 'Alexis Boyer'};

s162 = {'Jacob Zwinger' 'Andreas Planer' 'Joannes Vischer' 'Joannes Vischer' 'Joannes Vischer' 'Vittori Trincavelli'};
p162 = {'Andreas Planer' 'Joannes Vischer' 'Casper Peucer' 'Gabriel Falloppio' 'Vittori Trincavelli' 'Pietro Pomponazzi'};

s163 = {'Pietro Pomponazzi' 'Pietro Pomponazzi' 'Nicoletto Vernia'};
p163 = {'Nicoletto Vernia' 'Pietro Roccabonella' 'Gaetano da Thiene'};

s164 = {'David Kingsley' 'David Kingsley' 'David Kingsley' 'Monty Krieger' 'Monty Krieger' 'Monty Krieger'};
p164 = {'Neal Copeland' 'Nancy Jenkings' 'Monty Krieger' 'Robert Stroud' 'Michael Brown' 'Joseph Goldstein'};

s165 = {'Michael Brown' 'Earl Stadtman' 'Earl Stadtman' 'Horace Barker' 'Horace Barker' 'Horace Barker' 'Cornelis van Niel'};
p165 = {'Earl Stadtman' 'Horace Barker' 'Fritz Lipmann' 'James McBain' 'Cornelis van Niel' 'Albert Kluyver' 'Albert Kluyver'};

s166 = {'James McBain' 'Georg Quincke' 'Albert Kluyver' 'Gerrit van Iterson' 'Martinus Beijerinck' 'Willem Suringar' 'Willem de Vriese'};
p166 = {'Georg Quincke' 'Heinrich Magnus' 'Gerrit van Iterson' 'Martinus Beijerinck' 'Willem Suringar' 'Willem de Vriese' 'Caspar Reinwardt'};

s167 = {'Caspar Reinwardt' 'Caspar Reinwardt' 'Caspar Reinwardt' 'Caspar Reinwardt'};
p167 = {'Johann Krauss' 'Bernardus Niehoff' 'Dirk van Rhijn' 'Gerard Vrolik'};

s168 = {'Johann Krauss' 'Johann Krauss' 'Johann Krauss' 'Heinrich Delius'};
p168 = {'Johann Lobstein' 'Rudolf Forsten' 'Heinrich Delius' 'Johann Krueger'};

s169 = {'Rudolf Forsten' 'Rudolf Forsten' 'Hieronymus Gaubius' 'Hieronymus Gaubius' 'Dirk van Rhijn' 'Paulus sGraeuwen'};
p169 = {'Wouter van Doeveren' 'Hieronymus Gaubius' 'Herman Boerhaave' 'Bernard Albinus' 'Paulus sGraeuwen' 'Hieronymus Gaubius'};

s170 = {'Wouter van Doeveren' 'Wouter van Doeveren' 'Frederick Albinus' 'Frederick Albinus' 'Willem sGravesande' 'Willem sGravesande' 'Jean Desaguliers'};
p170 = {'Hieronymus Gaubius' 'Frederick Albinus' 'Bernard Albinus' 'Willem sGravesande' 'Herman Boerhaave' 'Jean Desaguliers' 'Isaac Newton'};

s171 = {'Roger Cotes' 'Robert Smith' 'Walter Taylor' 'Stephen Wisson' 'Thomas Postlethwaite' 'Thomas Jones' 'Adam Sedgwick' 'Adam Sedgwick'};
p171 = {'Isaac Newton' 'Roger Cotes' 'Robert Smith' 'Walter Taylor' 'Stephen Wisson' 'Thomas Postlethwaite' 'Thomas Jones' 'John Dawson'};

s172 = {'Edward Routh' 'Edward Routh' 'Augustus de Morgan' 'Augustus de Morgan' 'William Hopkins' 'James Maxwell'};
p172 = {'Augustus de Morgan' 'William Hopkins' 'George Peacock' 'William Whewall' 'Adam Sedgwick' 'William Hopkins'};

s173 = {'George Peacock' 'William Whewall' 'George Peacock' 'William Whewall' };
p173 = {'Adam Sedgwick' 'John Hudson' 'John Hudson' 'John Gough'};

s174 = {'Bernardus Niehoff' 'Dionysius van de Wijnpersse' 'Johan Horthemels' 'Jan Luyts' 'Gerardus de Vries' 'Gerardus de Vries'};
p174 = {'Dionysius van de Wijnpersse' 'Johan Horthemels' 'Jan Luyts' 'Gerardus de Vries' 'Abraham Heydanus' 'Gijsbert Voet'};

s175 = {'Gijsbert Voet' 'Franciscus Gomarus' 'Abraham Heydanus' 'Daniel Colonius' 'Daniel Colonius' 'Theodorus Beza' 'Theodorus Beza'};
p175 = {'Franciscus Gomarus' 'Francois du Jon' 'Daniel Colonius' 'Theodorus Beza' 'Jacobus Ramsaeus' 'John Calvin' 'Melchior Wolmar'};

s176 = {'Gerard Vrolik' 'Sebald Brugmans' 'Sebald Brugmans' 'Antonius Brugmans' 'Samuel Koenig'};
p176 = {'Sebald Brugmans' 'Antonius Brugmans' 'Wolter Verschuir' 'Samuel Koenig' 'Johann Bernoulli'};

s177 = {'Wolter Verschuir' 'Wolter Verschuir' 'Wolter Verschuir' 'William Cullen' 'Andrew Plummer'};
p177 = {'Pieter Camper' 'Wouter van Doeveren' 'William Cullen' 'Andrew Plummer' 'Herman Boerhaave'};

s178 = {'Pieter Camper' 'Pieter Camper' 'Pieter van Musschenbroek' 'Pieter van Musschenbroek'};
p178 = {'Adriaan van Royen' 'Pieter van Musschenbroek' 'Herman Boerhaave' 'Wolferd Senguerd'};

s179 = {'Wolferd Senguerd' 'Wolferd Senguerd' 'David Stuart' 'Arnold Senguerd' 'Arnold Senguerd' 'Antonius Thysius' 'Antonius Thysius'};
p179 = {'Arnold Senguerd' 'David Stuart' 'Abraham Heydanus' 'Franck Burgersdijk' 'Antonius Thysius' 'Theodorus Beza' 'Lambert Daneau'};

s180 = {'Lambert Daneau' 'Lambert Daneau' 'Lambert Daneau'};
p180 = {'Adrian Turnebe' 'Anne du Bourg' 'John Calvin'};

s181 = {'Joseph Goldstein' 'Joseph Goldstein' 'Joseph Goldstein' 'Marshall Nirenberg' 'Marshall Nirenberg' 'Dewitt Stetten'};
p181 = {'Donald Seldin' 'Arno Mutulsky' 'Marshall Nirenberg' 'James Hogg' 'Dewitt Stetten' 'Rudolph Schoenheimer'};

s182 = {'Rudolph Schoenheimer' 'Rudolph Schoenheimer' 'Rudolph Schoenheimer' 'Carl Benda' 'Johannes Orth'};
p182 = {'Karl Thomas' 'Ludwig Aschoff' 'Carl Benda' 'Johannes Orth' 'Rudolf Virchow'};
 
s183 = {'Ludwig Aschoff' 'Ludwig Aschoff' 'Friedrich von Recklingshausen' 'Karl Thomas'};
p183 = {'Johannes Orth' 'Friedrich von Recklingshausen' 'Rudolf Virchow' 'Franz Knoop'};

s184 = {'Franz Knoop' 'Franz Knoop' 'Franz Hofmeister' 'Franz Hofmeister' 'Karl Huppert' 'Karl Lehmann'};
p184 = {'Eugen Baumann' 'Franz Hofmeister' 'Oswald Schmeideberg' 'Karl Huppert' 'Karl Lehmann' 'Johann Clarus'};

s185 = {'Eugen Baumann' 'Ernst Hoppe-Seyler' 'Ernst Hoppe-Seyler' 'Ernst Hoppe-Seyler' 'Ernst Hoppe-Seyler'};
p185 = {'Ernst Hoppe-Seyler' 'Karl Lehmann' 'Ernst Weber' 'Rudolf Virchow' 'Johannes Mueller'};

s186 = {'Robert Stroud' 'Robert Stroud' 'Robert Stroud' 'Harry Carlisle' 'Dorothy Hodgkin' 'Dorothy Hodgkin'};
p186 = {'Harry Carlisle' 'John Bernal' 'Richard Dickerson' 'Dorothy Hodgkin' 'Herbert Powell' 'John Bernal'};

s187 = {'Herbert Powell' 'Herbert Powell' 'Thomas Barker' 'Paul van Groth' 'Paul van Groth' 'Gustav Rose' 'Gustav Rose'};
p187 = {'Malcolm Applebey' 'Thomas Barker' 'Paul van Groth' 'Heinrich Magnus' 'Gustav Rose' 'Joens Berzelius' 'Christian Weiss'};

s188 = {'John Bernal' 'John Bernal' 'William Bragg' 'Arthur Hutchinson' 'Arthur Hutchinson' 'Wilhelm Roentgen' 'Wilhelm Roentgen' 'August Kundt'};
p188 = {'William Bragg' 'Arthur Hutchinson' 'Edward Routh' 'Emil Fischer' 'Wilhelm Roentgen' 'Gustav Zeuner' 'August Kundt' 'Heinrich Magnus'};

s189 = {'Gustav Zeuner' 'Gustav Zeuner' 'Julius Weisbach' 'Julius Weisbach' 'Carl Mohs'};
p189 = {'Victor Regnault' 'Julius Weisbach' 'Bernard Thibaut' 'Carl Mohs' 'Abraham Werner'};

s190 = {'Victor Regnault' 'Victor Regnault' 'Pierre Berthier' 'Pierre Berthier' 'Claude Bertholet' 'Claude Bertholet'};
p190 = {'Justus von Liebig' 'Pierre Berthier' 'Johann Schreiber' 'Claude Bertholet' 'Jean-Baptiste Bucquet' 'Pierre Macquer'};

s191 = {'Joseph Gay-Lussac' 'Joseph Gay-Lussac' 'Antoine de Fourcroy' 'Jean-Baptiste Bucquet' 'Jean-Baptiste Bucquet' 'Pierre Macquer' 'Guillaume-Francois Rouelle'};
p191 = {'Claude Bertholet' 'Antoine de Fourcroy' 'Jean-Baptiste Bucquet' 'Pierre Macquer' 'Guillaume-Francois Rouelle' 'Guillaume-Francois Rouelle' 'Johann Spitzley'};

s192 = {'Richard Dickerson' 'Richard Dickerson' 'John Kendrew' 'Lawrence Bragg' 'Lawrence Bragg' 'Lawrence Bragg'};
p192 = {'William Lipscomb' 'John Kendrew' 'Lawrence Bragg' 'William Bragg' 'Arthur Schuster' 'Joseph Thomson'};

s193 = {'William Lipscomb' 'William Lipscomb' 'Verner Schomaker' 'Linus Pauling' 'Linus Pauling' 'Linus Pauling' 'Linus Pauling'};
p193 = {'Linus Pauling' 'Verner Schomaker' 'Linus Pauling' 'Niels Bohr' 'Arnold Sommerfeld' 'Erwin Schroedinger' 'Roscoe Dickenson'};

s194 = {'Roscoe Dickenson' 'Arthur Noyes' 'Wilhelm Ostwald' 'Wilhelm Ostwald' 'Arthur von Oettingen'};
p194 = {'Arthur Noyes' 'Wilhelm Ostwald' 'Carl Schmidt' 'Arthur von Oettingen' 'Carl Schmidt'};

s195 = {'Carl Schmidt' 'Carl Schmidt' 'Carl Schmidt' 'Carl Schmidt'};
p195 = {'Heinrich Rose' 'Friedrich Woehler' 'Justus von Liebig' 'Rudolf Wagner'};

s196 = {'Erwin Schroedinger' 'Erwin Schroedinger' 'Friedrich Hasenoehrl' 'Friedrich Hasenoehrl'};
p196 = {'Franz Exner' 'Friedrich Hasenoehrl' 'Franz Exner' 'Heike Kamerlingh Onnes'};

s197 = {'Karl Pearson' 'Francis Galton'};
p197 = {'Francis Galton' 'William Hopkins'};

s198 = {'Heike Kamerlingh Onnes' 'Heike Kamerlingh Onnes' 'Heike Kamerlingh Onnes' 'Rudolf Mees'};
p198 = {'Gustav Kirchhoff' 'Rudolf Mees' 'Johannes Bosscha' 'Richard van Rees'};

s199 = {'Johannes Bosscha' 'Johannes Bosscha' 'Johannes Bosscha' 'Volkert van der Willigen' 'Frederik Kaiser' 'Pieter Rijke'};
p199 = {'Volkert van der Willigen' 'Frederik Kaiser' 'Pieter Rijke' 'Frederik Kaiser' 'Pieter Uylenbroek' 'Pieter Uylenbroek'};

s200 = {'Pieter Uylenbroek' 'Pieter Uylenbroek' 'Jan van Swinden' 'Jan van Swinden' 'Jan van Swinden' 'Jan van Swinden' 'JNS Allemand'};
p200 = {'Hendrik Hamaker' 'Jan van Swinden' 'Johann Hennert' 'Hieronymus Gaubius' 'Johannes Lulofs' 'JNS Allemand' 'Willem sGravesande'};

s201 = {'Johann Hennert' 'Johann Hennert' 'Johann Hennert' 'Leonhard Euler' 'Joseph Delisle'};
p201 = {'Pierre le Monier' 'Joseph Delisle' 'Leonhard Euler' 'Johann Bernoulli' 'Jacques Cassini'};

s202 = {'Johannes Lulofs' 'Johannes Lulofs' 'Everhard Otto' 'Jacob Ode' 'Jacob Ode' 'Joseph Serrurier'};
p202 = {'Jacob Ode' 'Everhard Otto' 'Nicolaus Gundling' 'Hiernonymus van Alphen' 'Joseph Serrurier' 'Burchard de Volder'};

s203 = {'Hiernonymus van Alphen' 'Melchior Leydecker' 'Johannes Hoornbeeck'};
p203 = {'Melchior Leydecker' 'Johannes Hoornbeeck' 'Gijsbert Voet'};

s204 = {'Richard van Rees' 'Richard van Rees' 'Gerard Moll' 'Gerard Moll' 'Gerard Moll' 'Johan Rossijn'};
p204 = {'Gerard Moll' 'Nicolaas de Fremery' 'Jan van Swinden' 'Jean-Baptiste Delambre' 'Johan Rossijn' 'Antonius Brugmans'};

s205 = {'Jean-Baptiste Delambre' 'Joseph de LaLande' 'Joseph de LaLande'};
p205 = {'Joseph de LaLande' 'Pierre le Monier' 'Joseph Delisle'};

s206 = {'Franz Exner' 'Franz Exner' 'Viktor von Lang' 'Viktor von Lang' 'Viktor von Lang' 'Viktor von Lang'};
p206 = {'August Kundt' 'Viktor von Lang' 'Andreas von Ettingshausen' 'Robert Bunsen' 'Victor Regnault' 'Gustav Kirchhoff'};

s207 = {'Kuno Fischer' 'Johann Erdmann' 'Georg Hegel' 'Johann Lebret' 'Johann Osiander'};
p207 = {'Johann Erdmann' 'Georg Hegel' 'Johann Lebret' 'Johann Osiander' 'Christoph Pfaff'};

s208 = {'Nicolaas de Fremery' 'Nicolaas de Fremery' 'Nicolaas de Fremery' 'Christian Damen' 'Nicolaas Paradijs' 'Nicolaas Paradijs' 'Martinus van Marum'};
p208 = {'Christian Damen' 'Nicolaas Paradijs' 'Martinus van Marum' 'Johann Hennert' 'Hieronymus Gaubius' 'Frederick Albinus' 'Pieter Camper'};

s209 = {'Fritz Lipmann' 'Fritz Lipmann' 'Fritz Lipmann' 'Fritz Lipmann' 'Hans Meerwein' 'Georg Schroeter' 'Richard Anschuetz' 'Richard Anschuetz'};
p209 = {'Ernst Laqueur' 'Hans Meerwein' 'Otto Meyerhof' 'Albert Fischer' 'Georg Schroeter' 'Richard Anschuetz' 'August Kekule' 'Robert Bunsen'};

s210 = {'Ernst Laqueur' 'Ernst Laqueur' 'Ernst Laqueur' 'Franz Roehmann' 'Albert Fraenkel' 'Julius Bernstein'};
p210 = {'Franz Roehmann' 'Julius Bernstein' 'Hartog Hamburger' 'Albert Fraenkel' 'Ludwig Traube' 'Emil du Bois-Reymond'};

s211 = {'Hartog Hamburger' 'Hartog Hamburger' 'Hendrik Dibbits' 'Gerrit Mulder'};
p211 = {'Hendrik Dibbits' 'Franciscus Donders' 'Gerrit Mulder' 'Nicolaas de Fremery'};

s212 = {'Franciscus Donders' 'Franciscus Donders' 'Franciscus Donders' 'Franciscus Donders' 'Franciscus Donders' 'Bernardus Suerman' 'Jan Wolterbeek'};
p212 = {'Nicolaas de Fremery' 'Jacob Schroeder van der Kolk' 'Josephus Bernard' 'Bernardus Suerman' 'Jan Wolterbeek' 'Matthias van Guens' 'Matthias van Guens'};

s213 = {'Jacob Schroeder van der Kolk' 'Gerbrand Bakker' 'Meinard du Pui' 'Meinard du Pui' 'Matthias van Guens' 'Matthias van Guens'};
p213 = {'Gerbrand Bakker' 'Meinard du Pui' 'Antonius Brugmans' 'Wouter van Doeveren' 'Wouter van Doeveren' 'Hieronymus Gaubius'};

s214 = {'Josephus Bernard' 'Josephus Bernard' 'Josephus Bernard' 'Josephus Bernard' 'Eduard Sandifort'};
p214 = {'Nicolaas Paradijs' 'Sebald Brugmans' 'Nicolaas Oosterdijk' 'Eduard Sandifort' 'Frederick Albinus'};

s215 = {'Eduard Sandifort' 'Johann Hahn' 'Johann Hahn'};
p215 = {'Johann Hahn' 'Hieronymus Gaubius' 'Pieter van Musschenbroek'};

s = [s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 s51 s52 s53 s54 s55 s56 s57 s58 s59 s60 s61 s62 s63 s64 s65 s66 s67 s68 s69 s70 s71 s72 s73 s74 s75 s76 s77 s78 s79 s80 s81 s82 s83 s84 s85 s86 s87 s88 s89 s90 s91 s92 s93 s94 s95 s96 s97 s98 s99 s100 s101 s102 s103 s104 s105 s106 s107 s108 s109 s110 s111 s112 s113 s114 s115 s116 s117 s118 s119 s120 s121 s122 s123 s124 s125 s126 s127 s128 s129 s130 s131 s132 s133 s134 s135 s136 s137 s138 s139 s140 s141 s142 s143 s144 s145 s146 s147 s148 s149 s150 s151 s152 s153 s154 s155 s156 s157 s158 s159 s160 s161 s162 s163 s164 s165 s166 s167 s168 s169 s170 s171 s172 s173 s174 s175 s176 s177 s178 s179 s180 s181 s182 s183 s184 s185 s186 s187 s188 s189 s190 s191 s192 s193 s194 s195 s196 s197 s198 s199 s200 s201 s202 s203 s204 s205 s206 s207 s208 s209 s210 s211 s212 s213 s214 s215];
p = [p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215];

Gmax = addedge(G53,p,s);

hfig = figure;
if names
    plot(Gmax,'Layout',layout,'NodeLabel',Gmax.Nodes.Name);
else
     plot(Gmax,'Layout',layout,'NodeLabel',{});
end
title('Maximum network');
set(gcf,'units','points','position',[0,0,960,720])
xticklabels({}); yticklabels({});xticks([]);yticks([]);

%%
noboolmax = zeros(size(Gmax.Nodes,1),1);
noboolmax(1:nnode(nyear)) = nobool(:,nyear);
maxarith = nobelity(Gmax,noboolmax);
maxharm = harmonicnobelity(Gmax,noboolmax,'out');