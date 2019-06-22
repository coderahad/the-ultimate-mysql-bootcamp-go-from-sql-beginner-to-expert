SELECT title, released_year FROM books WHERE released_year >= 2004 && released_year <= 2015 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015 ORDER BY released_year;

SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015 ORDER BY released_year DESC;

SELECT CAST('2019-02-26' AS DATETIME);

SELECT * FROM people;

SELECT NAME, birthdate FROM people WHERE birthdate BETWEEN '1980-01-01' AND '2000-01-01';

SELECT NAME, birthdt FROM people WHERE birthdate BETWEEN CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);