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

-- Prodáme všechny filmy s názvem The Avengers.
DELETE FROM movie WHERE title = 'The Avengers';

TABLE movie;

-- Zbavíme se všech filmů:
DELETE FROM movie;

TABLE movie;