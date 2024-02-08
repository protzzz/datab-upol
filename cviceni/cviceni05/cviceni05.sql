--Vytvoříme klíč, který se skládá ze všech sloupců:
alter table studenti
ADD CONSTRAINT vse_key
UNIQUE (id_student, jmeno, prijmeni, rocnik, pohlavi, email)

--Vytvoříme kandidátní klíč id_key:
ALTER TABLE Studenti
ADD CONSTRAINT id_key 
UNIQUE(id_student);
--could not create unique index „id_key„

--Aktualizujeme řádek:
UPDATE studenti 
SET id_student=6 
WHERE jmeno='Jiří';

--Vytvoříme kandidátní klíč id_key. -> |


--Primární klíč
--Odebereme kandidátní klíče id_key
alter table studenti
drop constraint id_key;

--Vytvoříme primární klíč
alter table studenti
add constraint id_pkey PRIMARY KEY (id_student);

--Vytvoříme primární klíč jmeno_key.
alter Table studenti
add constraint jmeno_pkey PRIMARY KEY (jmeno, prijmeni)
--ERROR: multiple primary keys for table „studenti" are not allowed

--Příklad
--Při vytvoření tabulky můžeme rovnou přidat do ní primární klíč:
CREATE TABLE studenti (
   id_student  INT,
   jmeno TEXT,
   prijmeni TEXT,
   rocnik INT,
   pohlavi TEXT,
   email TEXT,
   CONSTRAINT id_pkey PRIMARY KEY (id_student)
   );

--Agregace

SELECT * FROM studenti
ORDER BY jmeno;

SELECT * FROM studenti
ORDER BY prijmeni, jmeno desc;

--Chceme zjistit počet studentů:
select count(id_student)
from studenti

--Chceme zjistit počet ženy mezi studenty:
select count(id_student) as pocet_zen
from studenti
where pohlavi = 'žena';

--Chceme zjistit, kolik celkem získali studenti kreditů:
SELECT sum(kredity) as kredity_celkem
from predmety, zapsani
where id_predmet = predmet and uspel = TRUE;

--Chceme zjistit počet studentů v jednotlivých ročnících:
SELECT rocnik, count(id_student) as pocet_studentu
from studenti
GROUP BY rocnik;

--Chceme jen studenty muže:
SELECT rocnik, count(id_student) as pocet_studentu
from studenti
where pohlavi = 'muž'
GROUP BY rocnik;

--Chceme jen ročníky, na kterých studuje alespoň 2 studenti:
SELECT rocnik, COUNT(id_student) as pocet_studentu
from studenti
GROUP BY rocnik
HAVING count(id_student) > 1;

--ukol
CREATE TABLE predmety (
	id_predmet	INT,
   zkratka TEXT,
   nazev TEXT,
   semestr TEXT,
   vyucujici INT,
   mistnost INT,
   kredity INT,
   constraint id_predmet PRIMARY key (id_predmet),
   constraint predmet_key UNIQUE key (zkratka, nazev)
);
--anebo
alter table predmety
add constraint predmet_key UNIQUE key (zkratka, nazev);

--Bodovaný úkol

--Dotaz, který vypíše knihy a seřadí je podle počtu stran vzestupně.
select nazev, pocet_stran
from knihy
where pocet_stran is NOT NULL
ORDER BY pocet_stran desc;

--Dotaz, který zobrazí počet knih v databázi, které vyšly před rokem 1989.
select COUNT(id_kniha)
from knihy
WHERE rok_vydani < 1989;

--Dotaz, který vypíše všechny čtenáře, kteří si půjčili více jak jednu knihu.
SELECT (ct.jmeno || ' ' || ct.prijmeni) as jmeno, COUNT(vyp.kniha) as pocet_knih
FROM ctenar as ct
INNER JOIN vypujcka as vyp ON ct.id_ctenar = vyp.ctenar
WHERE vraceno = FALSE
GROUP BY ct.id_ctenar, ct.jmeno, ct.prijmeni
HAVING COUNT(vyp.kniha) > 1;

SELECT ct.id_ctenar, ct.jmeno, ct.prijmeni, COUNT(vyp.kniha) as pocet_knih
FROM ctenar as ct
INNER JOIN vypujcka as vyp ON ct.id_ctenar = vyp.ctenar
GROUP BY ct.id_ctenar, ct.jmeno, ct.prijmeni
HAVING COUNT(vyp.kniha) > 1;