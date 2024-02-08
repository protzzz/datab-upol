-- Seskupování
DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
  title text, 
  year int,
  country text,
  duration int NOT NULL, 
  PRIMARY KEY ( title, year )
);

INSERT INTO movie VALUES
( '2001: A Space Odyssey', 1968, 'UK', 161 ),
 ( 'Barry Lyndon', 1975, 'UK', 184 ),
 ( 'The Man Who Shot Liberty Valance', 1962, 'USA', 113 ),
 ( 'The Return of the Pink Panther', 1975, 'UK', 113 ),
 ( 'One Flew Over the Cuckoo''s Nest', 1975, 'USA', 133 ),
 ( 'To Kill a Mockingbird', 1962, 'USA', 129 ),
 ( 'Monty Python and the Holy Grail', 1975, 'UK', 91 ),
 ( 'Lolita', 1962, 'UK', 152 ),
 ( 'Jaws', 1975, 'USA', 130 );

TABLE movie;

SELECT   year, 
         country, 
         count(*) AS count 
FROM     movie 
GROUP BY year, country;

SELECT   year, 
         country, 
         count(*) AS count 
FROM     movie 
GROUP BY year, country
HAVING   count(*) > 1;

SELECT   year, 
         country, 
         count(*) AS count 
FROM     movie 
WHERE    duration > 100
GROUP BY year, country
HAVING   count(*) > 1;

SELECT   year, 
         country, 
         count(*) AS count 
FROM     movie 
WHERE    duration > 100
GROUP BY year, country
HAVING   count(*) > 1
ORDER BY year
LIMIT    2
OFFSET   1;