DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
  director text NOT NULL, 
  duration int NOT NULL, 
  title text, 
  year int,
  PRIMARY KEY ( title, year )
);

INSERT INTO movie VALUES
 ( 'Stanley Kubrick', 184, 'Barry Lyndon', 1975 ),
 ( 'Terry Gilliam', 91, 'Monty Python and the Holy Grail', 1975 ),
 ( 'Milos Forman', 133, 'One Flew Over the Cuckoo''s Nest', 1975 ),
 ( 'Stanley Kubrick', 152, 'Lolita', 1962 ),
 ( 'Robert Mulligan', 129, 'To Kill a Mockingbird', 1962 ),
 ( 'Stanley Kubrick', 161, '2001: A Space Odyssey', 1968 ),
 ( 'Carol Reed', 153, 'Oliver!', 1968 );

TABLE movie;

SELECT sum(duration) AS total_duration
FROM   movie;


SELECT sum(duration + 10) AS total_duration
FROM   movie;

SELECT sum(1) AS count
FROM   movie;

SELECT max(year) AS oldes_year, 
       min(year) AS newest_year
FROM   movie;

SELECT max(year) AS oldes_year, 
       min(year) AS newest_year,
       max(year) - min(year) AS year_range 
FROM   movie;

SELECT count(*) AS count FROM movie;

