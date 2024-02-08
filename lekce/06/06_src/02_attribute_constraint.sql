-- Omezení atributu

DROP TABLE IF EXISTS movie;

-- Omezení můžeme uvést za atribut, kterého se týká:
CREATE TABLE movie (
    movie_id integer PRIMARY KEY,
    title text,
    year integer,
    length integer,
    UNIQUE ( title, year )
); 
-- Film "movie_id" vytvořený roku "year"
-- má název "title" a délku "length" minut.

INSERT INTO movie VALUES 
     ( 1, 'The Matrix', 1999, 136 ),
     ( 2, 'The Avengers', 2012, 143 ),
     ( 3, 'The Avengers', 1998, 89 ),
     ( 4, 'American Beauty', 1999, 122 ),
     ( 5, 'Listen to Britain', 1942, 20 );

TABLE movie;

-- Nelze:
INSERT INTO movie VALUES
     ( 5, 'Khaneh siah ast', 1963, 20 );

