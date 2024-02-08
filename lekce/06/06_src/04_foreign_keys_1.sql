-- Cizí klíče (část první)

DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    title text,
    year integer,
    PRIMARY KEY ( title, year )
); 
-- Film "title" byl vytvořený roku "year".

INSERT INTO movie VALUES 
     ( 'The Matrix', 1999), 
     ( 'Dracula', 1992 );

TABLE movie;

DROP TABLE IF EXISTS movie_cast;

CREATE TABLE movie_cast (
  actor_name text,
  movie_title text,
  movie_year integer,
  PRIMARY KEY ( actor_name, movie_title, movie_year ),
  FOREIGN KEY ( movie_title, movie_year )
  REFERENCES movie ( title, year )
);
-- Herec "actor_name" hrál ve filmu "movie_title" z roku "movie_year".

INSERT INTO movie_cast VALUES 
     ( 'Keano Reeves', 'The Matrix', 1999 ), 
     ( 'Keano Reeves', 'Dracula', 1992 ),
     ( 'Laurence Fishburne', 'The Matrix', 1999 ),
     ( 'Gary Oldman', 'Dracula', 1992);

TABLE movie_cast;

-- Nelze:
DELETE FROM movie WHERE title = 'Dracula';

-- Nelze:
UPDATE movie 
SET    title = 'Drákula'
WHERE  title = 'Dracula';

-- Nelze:
INSERT INTO movie_cast VALUES
     ( 'Gary Oldman', 'Batman Begins', 2005);
