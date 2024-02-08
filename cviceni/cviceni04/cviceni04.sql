create table osoby1(
    oscislo text PRIMARY KEY,
    jmeno text,
    prijmeni text,
    obor text
);

create table osoby2(
    oscislo text PRIMARY KEY,
    jmeno text,
    prijmeni text,
    obor text
);

INSERT into osoby1 (oscislo, jmeno, prijmeni, obor)
VALUES 
    ('R20379', 'Vojtech', 'Asszonuy', 'AM-DS'),
    ('R200438', 'Martin', 'Brablik', 'IT'),
    ('R20647', 'Jakub', 'Brezina', 'IT'),
    ('R20648', 'Ondrej', 'Cech', 'IT'),
    ('R20649', 'Jiri', 'Divis', 'IT');

INSERT into osoby2 (oscislo, jmeno, prijmeni, obor)
VALUES 
    ('R20379', 'Vojtech', 'Asszonuy', 'AM-DS'),
    ('R200438', 'Martin', 'Brablik', 'IT'),
    ('R20652', 'Jakub', 'Hampl', 'IT'),
    ('R20653', 'Oldrich', 'Horak', 'IT'),
    ('R20655', 'Samuel', 'Jasik', 'IT');

(TABLE osoby1) UNION (TABLE osoby2)

(TABLE osoby2) UNION (TABLE osoby1)

(TABLE osoby1) INTERSECT (TABLE osoby2)

(TABLE osoby2) INTERSECT (TABLE osoby1)

(TABLE osoby1) EXCEPT (TABLE osoby2)

(TABLE osoby2) EXCEPT (TABLE osoby1)

(table osoby1 EXCEPT table osoby2)
UNION
(table osoby2 EXCEPT table osoby1);

SELECT DISTINCT jmeno
from (table osoby1 UNION table osoby2) as osoby;

create table predmety1(
    id int PRIMARY KEY,
    nazev text,
    katedra text,
    zkratka text
);

create table predmety2(
    id int PRIMARY KEY,
    nazev text,
    katedra text,
    zkratka text
);

insert into predmety1 (id, nazev, katedra, zkratka)
VALUES
    (1, 'Databáze', 'KMI', 'DATAB'),
    (2, 'Algoritmy 1', 'KMI', 'ALGO1'),
    (3, 'Základy programování 1', 'KMI', 'ZPC1'),
    (4, 'Jazyk Python', 'KMI', 'JP'),
    (5, 'Algebra 1', 'KAG', 'ALG1');

insert into predmety2 (id, nazev, katedra, zkratka)
VALUES
    (1, 'Databáze', 'KMI', 'DATAB'),
    (2, 'Algoritmy 1', 'KMI', 'ALGO1'),
    (3, 'Unix', 'KMI', 'UNIXS'),
    (4, 'Operační system 1', 'KMI', 'OS1'),
    (5, 'Matematika 1', 'KAG', 'MAT1');

table predmety1 EXCEPT table predmety2
UNION
table predmety2 EXCEPT table predmety1;

table predmety1 
EXCEPT table predmety2 INTERSECT table predmety1;

table predmety1 
EXCEPT (table predmety2 INTERSECT table predmety1);

table predmety2 
union 
table predmety1 INTERSECT table predmety2
order by id;

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

SELECT jmeno, prijmeni
from studenti 
INTERSECT
SELECT jmeno, prijmeni
from vyucujici

SELECT jmeno, prijmeni, null as kancelar
FROM studenti
INTERSECT
SELECT jmeno, prijmeni, kancelar 
from vyucujici

SELECT jmeno, prijmeni, (
    SELECT kancelar 
    from vyucujici as v, studenti as s 
    where s.jmeno = v.jmeno and s.prijmeni = v.prijmeni 
    and s.jmeno = studenti.jmeno and s.prijmeni = studenti.prijmeni) as kancelar
from studenti
INTERSECT
SELECT jmeno, prijmeni, kancelar
from vyucujici;

--bodovaný úkol
create table knihy1(
    isbn text PRIMARY KEY,
    nazev TEXT,
    vydavatel text,
    rok_vydavani int,
    pocet_stran int,
    cena int,
    zanr text,
    typ text
);

create table knihy2(
    isbn text PRIMARY KEY,
    nazev TEXT,
    vydavatel text,
    rok_vydavani int,
    pocet_stran int,
    cena int,
    zanr text,
    typ text
);

insert into knihy1 (isbn, nazev, vydavatel, rok_vydavani, pocet_stran, cena, zanr, typ)
VALUES
    ('K003', 'Stopařův průvodce po galaxii', 'MF', 1985, 214, 120, 'scifi', 'kniha'),
    ('K045', 'Pán prstenů - Dvě věže', 'MF', 1948, 251, 240, 'fantasy', 'kniha'),
    ('K025', 'Barva kouzel', 'Talpress', 1989, 221, 358, 'fantasy', 'ebook'),
    ('K026', 'Stráže! Stráže!', 'Talpress', 2000, NULL, 214, 'fantasy', 'ebook'),
    ('K027', 'Lehké fantastično', 'Talpress', 1999, 145, 415, 'fantasy', 'ebook');

insert into knihy2 (isbn, nazev, vydavatel, rok_vydavani, pocet_stran, cena, zanr, typ)
VALUES
    ('K025', 'Barva kouzel', 'Talpress', 1989, 221, 358, 'fantasy', 'ebook'),
    ('K026', 'Stráže! Stráže!', 'Talpress', 2000, NULL, 214, 'fantasy', 'ebook'),
    ('K027', 'Lehké fantastično', 'Talpress', 1999, 145, 415, 'fantasy', 'ebook');

(SELECT * from knihy1) UNION (SELECT * FROM knihy2)

(SELECT * from knihy2) UNION (SELECT * FROM knihy1)

(SELECT * from knihy1) INTERSECT (SELECT * FROM knihy2)

(SELECT * from knihy2) INTERSECT (SELECT * FROM knihy1)

(SELECT * from knihy1) EXCEPT (SELECT * FROM knihy2)

(SELECT * from knihy2) EXCEPT (SELECT * FROM knihy1)

table knihy2 
EXCEPT 
table knihy1 INTERSECT TABLE knihy1;

