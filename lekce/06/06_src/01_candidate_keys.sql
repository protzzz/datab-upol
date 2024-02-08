-- Kandidátní klíče

DROP TABLE IF EXISTS movie;

-- movie_id je primární klíč
-- title, year je alternativní klíč
CREATE TABLE movie (
    movie_id integer,
    title text,
    year integer,
    length integer,
    PRIMARY KEY ( movie_id ),
    UNIQUE ( title, year )
); 
-- Film "movie_id" vytvořený roku "year"
-- má název "title" a délku "length" minut.

INSERT INTO movie VALUES 
     ( 1, 'The Matrix', 1999, 136 ),
     ( 2, 'The Avengers', 2012, 143 );

TABLE movie;

-- Nelze:
INSERT INTO movie VALUES 
     ( 2, 'The Avengers', 1998, 89 );

-- Nelze:
INSERT INTO movie VALUES 
     ( NULL, 'The Avengers', 1998, 89 );

-- Nelze:
INSERT INTO movie VALUES 
     ( 3, 'The Avengers', 2012, 89 );

-- Hodnota se nezměnila:
TABLE movie;

INSERT INTO movie VALUES 
     ( 3, 'The Avengers', 1998, 89 ),
     ( 4, 'American Beauty', 1999, 122 ),
     ( 5, 'Listen to Britain', 1942, 20 ),
     ( 6, 'Khaneh siah ast', 1963, 20 );

TABLE movie;