DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
    title text,
    year integer,
    length integer
); 

-- Charakteristická vlastnost: 
-- Vlastním film "title" vytvořený roku "year", 
-- který má délku "length" minut.

INSERT INTO movie VALUES 
     ( 'The Matrix', 1999, 136 ), 
     ( 'The Avengers', 2012, 143 ),
     ( 'The Avengers', 1998, 89 ),
     ('A Space Odyssey', 1968, 149);

TABLE movie;


SELECT DISTINCT year + 1 AS next_movies_year, title AS movies_title, 1 AS one
FROM   movie;


SELECT DISTINCT title, 2023 - year AS age 
FROM   movie;
-- Vlastním film jménem "title",  
-- který byl vadán před "age" lety.


DELETE FROM movie WHERE length > 140;

TABLE movie;
