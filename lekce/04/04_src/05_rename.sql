-- Přejmenování

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

SELECT title AS movie_title, year AS movie_year
FROM   movie;
-- Film "movie_title" vyšel roku "movie_year".