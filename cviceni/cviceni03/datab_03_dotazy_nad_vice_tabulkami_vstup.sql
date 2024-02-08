CREATE TABLE studenti (
	id_student	INT,
    jmeno TEXT,
    prijmeni TEXT,
    rocnik INT,
    email TEXT
	);

INSERT INTO studenti VALUES
(1,'Jan','Novák',1,'jan.novak@upol.cz'),
(2,'Pavla','Dočkalová',1,'pavla.dockalova@upol.cz'),
(3,'Karel','Bártek',2,'karel.bartek@upol.cz'),
(4,'Václav','Snášel',3,'vaclav.snasel@upol.cz'),
(5,'Iva','Nová',2,'iva.nova@seznam.cz');

CREATE TABLE predmety (
	id_predmet	INT,
    zkratka TEXT,
    nazev TEXT,
    semestr TEXT,
    vyucujici INT,
    mistnost INT,
    kredity INT
	);

INSERT INTO predmety VALUES
(1,'KMI/DATA','Databáze','ZS',1,1,5),
(2,'KMI/WEBA','Webové aplikace','LS',1,2,3),
(3,'KMI/SOFT','Softwarové inženýrství','ZS',2,1,6),
(4,'KMI/ZPP1','Základy programování pro IT 1','LS',1,3,4),
(5,'KMI/ALGO1','Algoritmy 1','ZS',2,1,4);

CREATE TABLE mistnosti (
	id_mistnost	INT,
    cislo TEXT,
    kapacita TEXT
	);

INSERT INTO mistnosti VALUES
(1,'5.002',36),
(2,'5.003',38),
(3,'5.004',32);

CREATE TABLE vyucujici (
	id_vyucujici INT,
    jmeno TEXT,
    prijmeni TEXT,
    titul TEXT,
    kancelar TEXT,
    email TEXT
	);

INSERT INTO vyucujici VALUES
(1,'Jiří','Zacpal','Mgr., Ph.D.','5.071','jiri.zacpal@upol.cz'),
(2,'Arnošt','Večerka','RNDr.','5.071','arnost.vecerka@upol.cz');

CREATE TABLE zapsani(
    id_zapsani INT,
    student INT,
    predmet INT,
    rok TEXT,
    uspel BOOLEAN
);

INSERT INTO zapsani VALUES
(1,1,1,'23/24',FALSE),
(2,1,2,'23/24',FALSE),
(3,1,3,'23/24',FALSE),
(4,1,4,'23/24',FALSE),
(5,2,2,'23/24',TRUE),
(6,3,2,'23/24',FALSE),
(7,4,2,'23/24',NULL);

