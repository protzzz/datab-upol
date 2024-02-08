-- Relační dělení

DROP TABLE IF EXISTS liked;

CREATE TABLE liked (
    person text,
    movie text
); 
/*
Osoba jménem "person"
má ráda film "movie".

Omezujeme se
na určitou množinu lidí a filmů.

Pro jednoduchost předpokládáme,
že každý film je jednoznačně
určen jménem.
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

DROP TABLE IF EXISTS lynch_movies;

CREATE TABLE lynch_movies (
    movie text
); 
/*
Film "movie" režíroval David Lynch.
*/

INSERT INTO lynch_movies VALUES 
     ( 'Blue Velvet' ),
     ( 'Eraserhead' );

TABLE lynch_movies;

SELECT DISTINCT liked.person, lynch_movies.*
FROM  liked, lynch_movies;
/*
"person" je osoba a "movie" je Lynchův film.
*/


( SELECT DISTINCT liked.person, lynch_movies.*
  FROM  liked, lynch_movies )
  EXCEPT
( TABLE liked );
/*
Osoba "person" nemá ráda Lynchův film "movie".
*/

SELECT   DISTINCT person
FROM ( ( SELECT DISTINCT liked.person, lynch_movies.*
         FROM  liked, lynch_movies )
         EXCEPT
       ( TABLE liked )
     );
/*
Osoba "person" nemá ráda některý z Lynchových filmů.
*/

( SELECT DISTINCT person FROM liked )
  EXCEPT
( SELECT   DISTINCT person
  FROM ( ( SELECT DISTINCT liked.person, lynch_movies.*
           FROM  liked, lynch_movies )
           EXCEPT
         ( TABLE liked ) ) );
/*       
Osoba "person" má ráda všechny Lynchovy filmy.
*/