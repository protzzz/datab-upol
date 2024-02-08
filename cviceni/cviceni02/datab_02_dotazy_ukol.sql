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