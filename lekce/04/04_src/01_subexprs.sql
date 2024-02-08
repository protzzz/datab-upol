-- SELECT s podvýrazy

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

-- Výraz sjednocení
( SELECT DISTINCT year FROM movie1 )
  UNION
( SELECT DISTINCT year FROM movie2 );
-- V roce "year" vyšel film, který vlastním já nebo ty.

-- ekvivalentní select s podvýrazem
SELECT DISTINCT year
FROM   ( (TABLE movie1 ) UNION ( TABLE movie2 ) ) AS movie;
-- V roce "year" vyšel film, který vlastním já nebo ty.

-- Vynechaná dočastná proměnná
SELECT DISTINCT year
FROM   ( (TABLE movie1 ) UNION ( TABLE movie2 ) );
-- V roce "year" vyšel film, který vlastním já nebo ty.