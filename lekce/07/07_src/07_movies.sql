-- Bohatší databáze o filmech.
DROP TABLE IF EXISTS movie CASCADE;

CREATE TABLE movie (
  director text NOT NULL, 
  duration int NOT NULL, 
  title text, 
  language text NOT NULL, 
  country text NOT NULL, 
  year integer,
  PRIMARY KEY ( title, year )
);
-- Režisér "director" natočil v zemi "country"
-- v roce "year" "duration" minut dlouhý
-- "language" jazyčný film "title".

INSERT INTO movie VALUES
 ( 'Stanley Kubrick', 184, 'Barry Lyndon', 'English', 'UK', 1975 ),
 ( 'Terry Gilliam', 91, 'Monty Python and the Holy Grail', 'English', 'UK', 1975 ),
 ( 'Milos Forman', 133, 'One Flew Over the Cuckoo''s Nest', 'English', 'USA', 1975 ),
 ( 'Stanley Kubrick', 152, 'Lolita', 'English', 'UK', 1962 ),
 ( 'Robert Mulligan', 129, 'To Kill a Mockingbird', 'English', 'USA', 1962 ),
 ( 'Stanley Kubrick', 161, '2001: A Space Odyssey', 'English', 'UK', 1968 ),
 ( 'Carol Reed', 153, 'Oliver!', 'English', 'UK', 1968 );

TABLE movie;