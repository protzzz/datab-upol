-- Seskupování
DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
  title text, 
  year int,
  country text,
  duration int NOT NULL, 
  PRIMARY KEY ( title, year )
);

INSERT INTO movie VALUES
( '2001: A Space Odyssey', 1968, 'UK', 161 ),
 ( 'Barry Lyndon', 1975, 'UK', 184 ),
 ( 'The Man Who Shot Liberty Valance', 1962, 'USA', 113 ),
 ( 'The Return of the Pink Panther', 1975, 'UK', 113 ),
 ( 'One Flew Over the Cuckoo''s Nest', 1975, 'USA', 133 ),
 ( 'To Kill a Mockingbird', 1962, 'USA', 129 ),
 ( 'Monty Python and the Holy Grail', 1975, 'UK', 91 ),
 ( 'Lolita', 1962, 'UK', 152 ),
 ( 'Jaws', 1975, 'USA', 130 );

TABLE movie;

-- Projekce na year a country:
SELECT DISTINCT
       year, country 
FROM   movie;

-- Pět skupin:
SELECT * 
FROM   movie
WHERE  year = 1962
AND    country = 'UK';

SELECT * 
FROM   movie
WHERE  year = 1968
AND    country = 'UK';

SELECT * 
FROM   movie
WHERE  year = 1975
AND    country = 'USA';

SELECT * 
FROM   movie
WHERE  year = 1975
AND    country = 'UK';

SELECT * 
FROM   movie
WHERE  year = 1962
AND    country = 'USA';

-- Vyhodnocení SELECT klauzule pro skupiny:

SELECT  1962 AS year, 
        'UK' AS country,
        count(*) AS count
FROM    movie
WHERE   year = 1962
AND     country = 'UK';

SELECT  1968 AS year, 
        'UK' AS country,
        count(*) AS count
FROM    movie
WHERE   year = 1968
AND     country = 'UK';

SELECT   1975 AS year, 
         'USA' AS country, 
         count(*) AS count 
FROM     movie
WHERE    year = 1975
AND      country = 'USA';

SELECT   1975 AS year, 
         'UK' AS country, 
         count(*) AS count 
FROM     movie
WHERE    year = 1975
AND      country = 'UK';

SELECT   1962 AS year, 
         'USA' AS country,
         count(*) AS count 
FROM     movie
WHERE    year = 1962
AND      country = 'USA';

-- Agregace skupin:
TABLE movie;

SELECT   year, 
         country, 
         count(*) AS count 
FROM     movie 
GROUP BY year, country;