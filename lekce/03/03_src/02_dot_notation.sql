-- Tečková notace

-- Omezení světa:
-- Databáze filmů, které vlastníme, 
-- a herců, kteří nás zajímají. 

-- Filmy identifikujeme názvem a herce jménem.

DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    movie_title text,
    movie_year integer
); 
-- Film "movie_title" vyšel roku "movie_year".

INSERT INTO movie VALUES 
     ( 'The Matrix', 1999 ), 
     ( 'Dracula', 1992 ),
     ( 'Duna', 1984 );

TABLE movie;

DROP TABLE IF EXISTS movie_cast;

CREATE TABLE movie_cast (
  actor_name text,
  movie_title text
);
-- Herec "actor_name" hrál ve filmu "movie_title".

INSERT INTO movie_cast VALUES 
     ( 'Keano Reeves', 'The Matrix' ), 
     ( 'Keano Reeves', 'Dracula' ),
     ( 'Laurence Fishburne', 'The Matrix' ),
     ( 'Gary Oldman', 'Dracula' );

TABLE movie_cast;

SELECT DISTINCT actor_name, movie_year
FROM   movie, movie_cast
WHERE  movie.movie_title = movie_cast.movie_title;
-- Herec "actor_name" hrál ve filmu vydaném v roce "movie_year".

-- Zkráceně:
SELECT DISTINCT actor_name, movie_year
FROM   movie AS m, movie_cast AS mc
WHERE  m.movie_title = mc.movie_title;

-- Není relace:
SELECT * FROM movie, movie_cast;
-- Sloupec movie_title je v tabulce dvakrát.