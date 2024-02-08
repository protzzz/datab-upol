-- Množinové relační výrazy

-- Omezení světa:
-- Databáze filmů, které vlastním já nebo ty.

-- Filmy identifikujeme jejich názvem a rokem vydání.

DROP TABLE IF EXISTS movie1;
DROP TABLE IF EXISTS movie2;

CREATE TABLE movie1 (
    title text,
    year integer
);
-- Vlastním film "title" vydaný roku "year".

INSERT INTO movie1 VALUES 
     ( 'The Matrix', 1999), 
     ( 'The Avengers', 2012); 

CREATE TABLE movie2 (
    title text,
    year integer
);
-- Vlastníš film "title" vydaný roku "year". 

INSERT INTO movie2 VALUES 
     ( 'The Matrix', 1999 ), 
     ( 'The Avengers', 1998 ); 

TABLE movie1;
TABLE movie2;
( TABLE movie1 ) UNION ( TABLE movie2 );
-- Film "title" vydaný roku "year" vlastním já nebo ty.

( TABLE movie1 ) INTERSECT ( TABLE movie2 );
-- Film "title" vydaný roku "year" vlastníme oba.

( TABLE movie1 ) EXCEPT ( TABLE movie2 );
-- Film "title" vydaný roku "year" vlastním jen já.

( ( TABLE movie1 ) EXCEPT ( TABLE movie2 ) )
                   UNION
( ( TABLE movie2 ) EXCEPT ( TABLE movie1 ) );
-- Film "title" vydaný roku "year" vlastním jen já nebo jen ty.