-- Redundance relační proměnné

/*
Databáze filmů, které vlastníme, 
a herců, o které se zajímáme.
*/

DROP TABLE IF EXISTS movie_library;

CREATE TABLE movie_library (
    movie_title text,
    movie_year integer,
    movie_length integer NOT NULL,
    actor_name text,
    PRIMARY KEY (movie_title, movie_year, actor_name)
); 
-- Film "movie_title" vydaný roku "movie_year",
-- je dlouhý "movie_length" minut
-- a hraje v něm herec "actor_name".

INSERT INTO movie_library VALUES 
     ( 'The Matrix', 1999, 136, 'Keanu Reeves' ), 
     ( 'The Matrix', 1999, 136, 'Laurence Fishburne' ), 
     ( 'Dracula', 1992, 128, 'Keanu Reeves' ),
     ( 'Dracula', 1992, 128, 'Gary Oldman' ),
     ( 'The Elephant Man', 1980, 124, 'Anthony Hopkins' );

TABLE movie_library;

-- Zjistíme, že jediný film, 
-- který vlastníme 
-- a hraje v něm Gary Oldman, 
-- je dlouhý 130 minut:
UPDATE movie_library 
SET    movie_length = 130 
WHERE  actor_name = 'Gary Oldman';

TABLE movie_library;

-- Film Dracula je dlouhý současně 128 a 130 minut:
SELECT DISTINCT movie_length 
FROM   movie_library 
WHERE  movie_title = 'Dracula'
AND    movie_year = 1992;
-- Film Dracula z roku 1992 
-- je dlouhý "movie_length" minut.


-- Opravíme:
UPDATE movie_library 
SET    movie_length = 128 
WHERE  movie_title = 'Dracula'
AND    movie_year = 1992;

TABLE movie_library;

SELECT DISTINCT movie_length 
FROM   movie_library 
WHERE  movie_title = 'Dracula'
AND    movie_year = 1992;

TABLE movie_library;

-- Přestaneme se zajímat o Anthonyho Hopkinse:
DELETE FROM movie_library 
WHERE  actor_name = 'Anthony Hopkins';

TABLE movie_library;

-- Přišli jsme o film The Elephant Man z roku 1980:
SELECT * 
FROM   movie_library 
WHERE  movie_title = 'The Elephant Man'
AND    movie_year = 1980;

TABLE movie_library;

/*
Chybu nelze opravit. 
Mlčky předpokládáme, že se zajímáme o aspoň jednoho herce
v každém filmu, který vlastníme. 
*/

-- Film vrátíme:
INSERT INTO movie_library  VALUES
  ( 'The Elephant Man', 1980, 124, 'Anthony Hopkins' );

TABLE movie_library;

-- Chybu můžeme udělat i při přidání nového řádku:
INSERT INTO movie_library  VALUES
  ( 'The Elephant Man', 1980, 130, 'John Hurt' );

-- Film Sloní muž je dlouhý současně 124 a 130 minut:
SELECT DISTINCT movie_length 
FROM   movie_library 
WHERE  movie_title = 'The Elephant Man'
AND    movie_year = 1980;

-- Chybu opravíme:
UPDATE movie_library
SET    movie_length = 124
WHERE  movie_title = 'The Elephant Man'
AND    movie_year = 1980;

SELECT DISTINCT movie_length 
FROM   movie_library 
WHERE  movie_title = 'The Elephant Man'
AND    movie_year = 1980;

-- Rok vydání filmu není redundantní,
-- protože můžou existovat filmy
-- stejného jména, které se liší 
-- rokem vydání.
-- Například: 

INSERT INTO movie_library  VALUES
  ( 'Dracula', 1931, 75, 'Bela Lugosi' );
  
TABLE movie_library;