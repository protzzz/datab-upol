DROP TABLE IF EXISTS movie;

CREATE TABLE movie (
    title text,
    stars integer
); 
-- Film "title" hodnotím "stars" hvězdičkami.
--
-- Dále platí:
-- Film identifikujeme jeho jménem.
-- Počet hvězdiček je od nuly do pěti.

INSERT INTO movie VALUES 
     ( 'American Beauty', 3 ),
     ( 'Blue Velvet' , 4 ),
     ( 'Eraserhead', 2 );

TABLE movie;

-- Změnil jsem pohled na jeden film:
UPDATE movie SET stars = 4 WHERE title = 'Eraserhead';

TABLE movie;

-- Všechny filmy se mi přestaly líbit:
UPDATE movie SET stars = 0;

TABLE movie;