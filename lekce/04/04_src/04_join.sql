-- Spojení

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
     ( 'Dune', 1984 );

TABLE movie;

DROP TABLE IF EXISTS movie_cast;

CREATE TABLE movie_cast (
  actor_name text,
  movie_title text
);
-- Herec "actor_name" hrál ve filmu "movie_title".

INSERT INTO movie_cast VALUES 
     ( 'Keanu Reeves', 'The Matrix' ), 
     ( 'Keanu Reeves', 'Dracula' ),
     ( 'Gary Oldman', 'Dracula' );

TABLE movie_cast;

SELECT DISTINCT movie_cast.*, movie.movie_year
FROM   movie_cast, movie
WHERE  movie.movie_title = movie_cast.movie_title;
-- Herec "actor_name" hrál ve filmu "movie_title" vydaném v roce "movie_year".