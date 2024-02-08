-- Active: 1685195576438@@127.0.0.1@5432@postgres
CREATE TABLE osoby1
(
	oscislo text PRIMARY KEY,
	jmeno text,
	prijmeni text,
	obor text
);

CREATE TABLE osoby2
(
	oscislo text PRIMARY KEY,
	jmeno text,
	prijmeni text,
	obor text
);

INSERT INTO osoby1 VALUES 
('R20379','Vojtěch','ASSZONYI','AM-DS'),
('R200438','Martin','BRABLÍK','IT'),
('R20647','Jakub','BŘEZINA','IT'),
('R20648','Ondřej','ČECH','IT'),
('R20649','Jiří','DIVIŠ','IT');

INSERT INTO osoby2 VALUES 
('R20379','Vojtěch','ASSZONYI','AM-DS'),
('R200438','Martin','BRABLÍK','IT'),
('R20647','Jakub','BŘEZINA','IT'),
('R20653','Oldřich','HORÁK','IT'),
('R20655','Samuel','JAŠÍK','IT');

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
(2,'Arnošt','Večerka','RNDr.','5.071','arnost.vecerka@upol.cz'),
(3,'Jan','Novák','Bc.','5.078','jan.novak@upol.cz'),
(4,'Pavla','Dočkalová','Bc.','5.078','pavla.dockalova@upol.cz');

