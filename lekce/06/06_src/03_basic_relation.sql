-- Základní relace

DROP TABLE IF EXISTS movie;

-- Hodnota proměnné bude vždy relace.
CREATE TABLE movie (
    movie_id integer PRIMARY KEY,
    title text NOT NULL,
    year integer NOT NULL,
    length integer NOT NULL,
    UNIQUE ( title, year )
);

-- Nelze vkládat null hodnoty:
INSERT INTO movie VALUES 
     ( 1, 'The Matrix', 1999, NULL ),
     ( 2, 'The Avengers', 2012, 143 );

-- Nelze vkládat duplicity:
INSERT INTO movie VALUES 
     ( 1, 'The Matrix', 1999, 136 ),
     ( 1, 'The Matrix', 1999, 136 )
     ( 2, 'The Matrix', 1999, 136 );
     