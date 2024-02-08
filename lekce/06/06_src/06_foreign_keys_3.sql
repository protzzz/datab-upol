-- Cizí klíče (třetí část)

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

DROP TABLE IF EXISTS actor CASCADE;

CREATE TABLE actor (
  actor_id integer PRIMARY KEY,
  name text NOT NULL UNIQUE,
  born integer NOT NULL
);
-- Herce "actor_id" se jmenuje "name"
-- a narodil se roku "born".

INSERT INTO actor VALUES 
     ( 1, 'Keano Reeves', 1964), 
     ( 2, 'Laurence Fishburne', 1961 ),
     ( 3, 'Gary Oldman', 1958);

TABLE actor;

DROP TABLE IF EXISTS movie_cast;

CREATE TABLE movie_cast (
  actor_id integer REFERENCES actor,
  movie_id integer REFERENCES movie,
  PRIMARY KEY ( actor_id, movie_id )
);
-- Herec "actor_id" hrál ve filmu "movie_id".

INSERT INTO movie_cast VALUES 
     ( 1, 1 ), 
     ( 1, 2 ),
     ( 2, 1 ),
     ( 3, 2 );

TABLE movie_cast;

SELECT actor.name AS actor_name, 
       movie.title AS movie_title, 
       movie.year AS movie_year
FROM   movie_cast, actor, movie
WHERE  movie_cast.movie_id = movie.movie_id
AND    movie_cast.actor_id = actor.actor_id;
-- Herec jménem "actor_name" hraje ve filmu s názvem "movie_title" a vydaném v roce "movie_year".