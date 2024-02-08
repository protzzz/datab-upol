create table studenti(
    osCislo text,
    jmeno text,
    prijmeni text,
    stav text,
    oborCislo int,
    oborNazev text,
    formaSp text,
    rocnik int,
    email text,
    pohlavi text, 
    body int,
    narokNaZ int,
    datumZ DATE
)

INSERT into studenti VALUES
    ('R14735', 'Adela', 'KOPECKA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'kopead00@prfnw.upol.cz', 'Z', 20, NULL, '2015-06-10'),
    ('R14739', 'Alena', 'KRBCOVA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'krbcal00@prfnw.upol.cz', 'Z', 0, NULL, NULL),
    ('R14770', 'Ivana', 'PERESTA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'pereiv00@prfnw.upol.cz', 'Z', 15, NULL, '2015-06-10'),
    ('R14725', 'Jan', 'JAROLIM', 'S', 515, 'Aplikovana matematika', 'P', 1, 'jaroja05@prfnw.upol.cz', 'M', 4, NULL, NULL),
    ('R14702', 'Karolina', 'DUDOVA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'dudoka00@prfnw.upol.cz', 'Z', 0, NULL, NULL),
    ('R14762', 'Nikola', 'NOVAKOVA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'novani01@prfnw.upol.cz', 'Z', 18, NULL, '2015-06-15'),
    ('R14708', 'Olga', 'GRULICHOVA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'grulol01@prfnw.upol.cz', 'Z', 5, NULL, NULL),
    ('R14743', 'Ondrej', 'KUBIK', 'S', 515, 'Aplikovana matematika', 'P', 1, 'kubion02@prfnw.upol.cz', 'M', 10, NULL, NULL),
    ('R14689', 'Patricia', 'BALINTOVA', 'S', 515, 'Aplikovana matematika', 'P', 1, 'balipa00@prfnw.upol.cz', 'Z', 6, NULL, NULL);

-- Odstraňte studenty, kteří mají nula bodů.
delete from studenti
where body = 0;

--Všem studentům přičtěte 1 bod.
update studenti
set body = body + 1;

--Studentům, kteří získali alespoň 15 bodů nastavte narokNaZ na 1.
update studenti
set naroknaz = 1
where body >= 15;

--Vyberte studenty, jejichž příjmení obsahuje písmeno U (malé nebo velké).
select jmeno, prijmeni
from studenti
where prijmeni LIKE 'u%' OR prijmeni LIKE 'U%';

--Zobrazte jméno a příjmení všech žen, které získali více než 10 bodů.
select jmeno, prijmeni
from studenti
where pohlavi = 'Z' and body > 10;

--Vyberte všechny studenty muže, kteří nezískali zápočet (nemají nic ve sloupci DatumZ).
select *
from studenti
where datumz is NULL;

drop Table studenti;