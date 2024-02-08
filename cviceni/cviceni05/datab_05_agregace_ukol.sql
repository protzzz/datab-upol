CREATE TABLE knihy
(
id_kniha INT,
nazev TEXT,
vydavatel TEXT,
rok_vydani INT,
pocet_stran INT,
zanr TEXT
);


INSERT INTO knihy VALUES
(1,'Stopařův průvodce po galaxii', 'MF',1985,214, 'scifi'),
(2,'Pán prstenů - Dvě věže', 'MF',1948,251,  'fantasy'),
(3, 'Kedrigern a hlas pro princeznu', 'MF',1996,NULL, 'fantasy'),
(4, 'Hobit', 'MF',1950,410,  'fantasy'),
(5, 'Barva kouzel', 'Talpress',1989,180,  'fantasy'),
(6, 'Stráže!Stráže!', 'Talpress',2000,NULL, 'fantasy' ),
(7, 'Lehké fantastično', 'Talpress',1999,145, 'fantasy');

CREATE TABLE ctenar
(
id_ctenar INT,
jmeno TEXT,
prijmeni TEXT
);

INSERT INTO ctenar VALUES
(1,'Petr','Novák'),
(2,'Anna','Kerbrová'),
(3,'Jan','Eliáš'),
(4,'Adam','Prorok'),
(5,'Marie','Tůmová');

CREATE TABLE vypujcka
(
id_vypujcka INT,
ctenar INT,
kniha INT,
vraceno BOOLEAN
);

INSERT INTO vypujcka VALUES
(1,1,1,True),
(2,2,2,False),
(3,1,3,True),
(4,3,1,False),
(5,1,2,True),
(6,4,3,False),
(7,1,4,True),
(8,5,5,False),
(9,2,6,True),
(10,2,3,False);