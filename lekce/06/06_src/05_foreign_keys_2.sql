-- Cizí klíče (část druhá)

-- Odstraní i cizí klíče, které na tabulce závisí:
DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
    movie_id integer PRIMARY KEY,
    title text NOT NULL,
    year integer NOT NULL,
    UNIQUE ( title, year )
); 

-- Film "movie_id" má název "title" a byl vytvořený roku "year".

INSERT INTO movie VALUES 
     ( 1, 'The Matrix', 1999), 
     ( 2, 'Dracula', 1992 );

TABLE movie;

DROP TABLE IF EXISTS movie_cast;

-- Cizí klíč v omezení sloupce:
CREATE TABLE movie_cast (
  actor_name text,
  movie_id integer REFERENCES movie ( movie_id ),
  PRIMARY KEY ( actor_name, movie_id )
);
-- Herec "actor_name" hrál ve filmu "movie_id".

INSERT INTO movie_cast VALUES 
     ( 'Keano Reeves', 1), 
     ( 'Keano Reeves', 2 ),
     ( 'Laurence Fishburne', 1 ),
     ( 'Gary Oldman', 2);

TABLE movie_cast;