-- Entitně vztahové diagramy (pouze enity)

DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
    movie_id integer PRIMARY KEY,
    title text,
    year integer
); 
-- Film "movie_id" má název "title" a byl vytvořený roku "year".

INSERT INTO movie VALUES 
     ( 1, 'Birdman', 2014 ),
	( 2, 'Aliens', 1986) ;

TABLE movie;

DROP TABLE IF EXISTS actor CASCADE;

CREATE TABLE actor (
  actor_id integer PRIMARY KEY,
  name text,
  born integer
);
-- Herce "actor_id" se jmenuje "name" a narodil se roku "born".

INSERT INTO actor VALUES 
     ( 1, 'Michael Keaton', 1951), 
     ( 2, 'Naomi Watts', 1968 ),  
     ( 3, 'Sigourney Weaver', 1949); 

TABLE actor;

DROP TABLE IF EXISTS screenplay CASCADE;

CREATE TABLE screenplay (
  screenplay_id integer PRIMARY KEY,
  scene_count integer
);
-- Scénář "screenplay_id" má "scene_count" scén.

INSERT INTO screenplay VALUES 
     ( 1, 200), 
     ( 2, 112 );

TABLE screenplay;	 

DROP TABLE IF EXISTS director CASCADE;

CREATE TABLE director (
  director_id integer PRIMARY KEY,
  name text,
  oscar_count integer
);
-- Režisér "director_id" se jmenuje "name" a získal "oscar_count" Oskarů.

INSERT INTO director VALUES 
     ( 1, 'James Cameron', 3 ),
     ( 2, 'Alejandro González Iñárritu', 4 ); 

TABLE director;

DROP TABLE IF EXISTS asistent CASCADE;

CREATE TABLE asistent (
  asistent_id integer PRIMARY KEY,
  name text
);
-- Asistent "asistent_id" se jmenuje "name".

INSERT INTO asistent VALUES 
     ( 1, 'James Smith'); 

TABLE asistent;

