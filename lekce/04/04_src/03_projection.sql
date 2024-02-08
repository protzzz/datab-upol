-- Projekce

-- Omezení světa:
-- Databáze filmů, které vlastníme.

-- Filmy identifikujeme názvem.

DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    title text,
    year integer
); 
-- Film "title" vyšel roku "year".

INSERT INTO movie VALUES 
     ( 'American Beauty', 1999 ), 
     ( 'The Matrix', 1999 ), 
     ( 'Titanic', 1997 ); 

TABLE movie;

SELECT  DISTINCT year
FROM    movie;
-- Roku "year" vyšel film.