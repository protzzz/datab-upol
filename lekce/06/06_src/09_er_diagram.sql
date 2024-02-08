-- Entitně vztahové diagramy (entity a vztahy)
DROP TABLE IF EXISTS director CASCADE;

CREATE TABLE director (
  director_id integer PRIMARY KEY,
  name text,
  oscar_count integer
);
-- Režisér "director_id" se jmenuje "name"
-- a získal "oscar_count" Oskarů.

INSERT INTO director VALUES 
     ( 1, 'James Cameron', 3 ), -- režisér Aliens 
     ( 2, 'Alejandro González Iñárritu', 4 ); -- režisér Birdman 

TABLE director;

DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
    movie_id integer PRIMARY KEY,
    title text,
    year integer,
    screenplay_id integer UNIQUE,
    scene_count integer,
    director_id integer REFERENCES director
); 

-- Film "movie_id" s názvem "title"
-- byl natočený režisérem "director_id" roku "year"
-- podle scénáře "screenplay_id"
-- obsahující "scene_count" scén.

INSERT INTO movie VALUES 
     ( 1, 'Birdman', 2014, 1, 200, 1 ),
	( 2, 'Aliens', 1986, 2, 112, 2 );

TABLE movie;

DROP TABLE IF EXISTS actor CASCADE;

CREATE TABLE actor (
  actor_id integer PRIMARY KEY,
  name text,
  born integer
);
-- Herce "actor_id" se jmenuje "name"
-- a narodil se roku "born".

INSERT INTO actor VALUES 
     ( 1, 'Michael Keaton', 1951),
     ( 2, 'Naomi Watts', 1968 ), 
     ( 3, 'Sigourney Weaver', 1949);

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
     ( 2, 1 ),
     ( 2, 2 );

TABLE movie_cast;

DROP TABLE IF EXISTS asistent CASCADE;

CREATE TABLE asistent (
  asistent_id integer PRIMARY KEY,
  name text,
  director_id integer UNIQUE REFERENCES director
);
-- Asistent "asistent_id" se jmenuje "name"
-- a je k ruce režisérovi "director_id".

INSERT INTO asistent VALUES 
     ( 1, 'James Smith', 1); 

TABLE asistent;

