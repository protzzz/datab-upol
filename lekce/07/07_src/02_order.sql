DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
  director text NOT NULL, 
  title text, 
  year integer,
  PRIMARY KEY ( title, year )
);

INSERT INTO movie VALUES
 ( 'Stanley Kubrick', 'Barry Lyndon', 1975 ),
 ( 'Terry Gilliam', 'Monty Python and the Holy Grail', 1975 ),
 ( 'Milos Forman', 'One Flew Over the Cuckoo''s Nest', 1975 ),
 ( 'Stanley Kubrick', 'Lolita',  1962 ),
 ( 'Robert Mulligan', 'To Kill a Mockingbird', 1962 ),
 ( 'Stanley Kubrick', '2001: A Space Odyssey', 1968 ),
 ( 'Carol Reed', 'Oliver!', 1968 );

TABLE movie;

SELECT   * 
FROM     movie 
ORDER BY year ASC;

SELECT   * 
FROM     movie 
ORDER BY year DESC;

SELECT   * 
FROM     movie
ORDER BY director;

SELECT   * 
FROM     movie
ORDER BY director ASC, year DESC;