-- Konstantní tabulka

SELECT * 
FROM ( VALUES ( 'Anna', 'Blue Velvet' ),
              ( 'Anna', 'Eraserhead' ),
              ( 'Bert', 'Blue Velvet' ),
              ( 'Bert', 'The Matrix' ), 
              ( 'Cyril', 'Blue Velvet' ),
              ( 'Cyril', 'Eraserhead' ),
              ( 'Cyril', 'The Matrix' ) ) 
AS     liked ( person, movie );
/*
Osoba "person" má ráda film "movie".
*/

DROP TABLE IF EXISTS liked;

CREATE TABLE liked (
    person text,
    movie text
); 
/*
Osoba "person" má ráda film "movie".
*/

INSERT INTO liked VALUES 
     ( 'Anna', 'Blue Velvet' ),
     ( 'Anna', 'Eraserhead' ),
     ( 'Bert', 'Blue Velvet' ),
     ( 'Bert', 'The Matrix' ), 
     ( 'Cyril', 'Blue Velvet' ),
     ( 'Cyril', 'Eraserhead' ),
     ( 'Cyril', 'The Matrix' );

TABLE liked;

SELECT *
FROM   liked,
     ( VALUES ( 'Blue Velvet' ) ) 
       AS const ( movie_blue_velvet );
/*
Osoba "person" má ráda film "movie"
a "movie_blue_velvet" je film Blue Velvet.
*/

-- Následující dva výrazy jsou ekvivalentní:
SELECT person
FROM   liked,
     ( VALUES ( 'Blue Velvet' ) ) 
       AS const ( movie_blue_velvet )
WHERE movie = movie_blue_velvet; 
/*
Osoba "person" má ráda film Blue Velvet.
*/

SELECT person
FROM   liked
WHERE  movie = 'Blue Velvet';
/*
Osoba "person" má ráda film Blue Velvet.
*/