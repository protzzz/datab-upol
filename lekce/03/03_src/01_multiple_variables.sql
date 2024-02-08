-- SELECT výraz nad více relačními proměnnými

-- Omezení světa:
-- Databáze filmů, které vlastníme, 
-- a herců, kteří nás zajímají. 

-- Filmy identifikujeme názvem a herce jménem.

DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    title text,
    year integer
); 
-- Film "title" vyšel roku "year".

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

SELECT DISTINCT actor_name, 
                year AS movie_year
FROM   movie, movie_cast
WHERE  movie_title = title;
-- Herec "actor_name" hrál ve filmu vydaném v roce "movie_year".

SELECT DISTINCT movie.*, actor_name 
FROM   movie, movie_cast 
WHERE  movie_title = title;
-- Herec "actor_name" hrál ve filmu "title" vydaném v roce "movie_year".

SELECT * FROM movie, movie_cast WHERE  movie_title = title;
-- Herec "actor_name" hrál ve filmu "title" rovným "movie_title" vydaném v roce "movie_year".