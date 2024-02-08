-- Základní výrazy
-- Databáze filmů, které vlastníme.
DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    title text,
    year integer
); 

-- Film "title" byl vydán roku "year".

INSERT INTO movie VALUES 
     ( 'The Matrix', 1999 ), 
     ( 'The Avengers', 2012 ),
     ( 'The Avengers', 1998 ),
     ( 'American Beauty', 1999 );

TABLE movie;

SELECT DISTINCT title AS movie_title
FROM   movie
WHERE  year = 1999;
-- Film "movie_title" byl vydaný roku 1999.

SELECT DISTINCT title AS tit FROM movie WHERE title = 'M';
-- "tit" je název filmu.

SELECT DISTINCT year AS movie_year
FROM   movie
WHERE  TRUE;
-- "movie_year" je rok vydání filmu.

SELECT DISTINCT year AS movie_year FROM movie;
-- "movie_year" je rok vydání filmu.

SELECT DISTINCT year AS year FROM movie;
-- "year" je rok vydání filmu.

SELECT DISTINCT year FROM movie;
-- "year" je rok vydání filmu.

SELECT DISTINCT title, year FROM movie;
-- Film "title" byl vydán roku "year".

SELECT DISTINCT * FROM movie;
-- Film "title" byl vydán roku "year".

SELECT * FROM movie;
-- Film "title" byl vydán roku "year".


SELECT * 
FROM   movie
WHERE  title = 'The Avengers'
AND  ( NOT year = 1998 );
-- "title" je název filmu rovný The Avengers,
--  který vyšel roku "year" různého od 1998.


DROP TABLE IF EXISTS rating;

CREATE TABLE rating (
    title text,
    stars1 integer,
    stars2 integer
); 
-- Filmu "title" dal první recenzent
-- "stars1" a druhý recenzent "stars2" hvězdiček.
--
-- Film identifikujeme jeho jménem.
-- Počet hvězdiček je od nuly do pěti.

INSERT INTO rating VALUES 
     ( 'The Matrix', 4, 3 ), 
     ( 'American Beauty', 3, 3 ),
     ( 'Blue Velvet' , 4, 4),
     ( 'Eraserhead', 2, 5);

TABLE rating;

SELECT DISTINCT title,
                stars1 AS stars
FROM   rating
WHERE  stars1 = stars2;
-- Film "title" hodnotili oba recenzenti
-- "stars" hvězdičkami.