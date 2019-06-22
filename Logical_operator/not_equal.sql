SELECT title, released_year FROM books WHERE released_year != 2017;

SELECT title, author_lname FROM books WHERE author_lname != 'Harris';

SELECT title FROM books WHERE title LIKE 'W%';

SELECT title FROM books WHERE title NOT LIKE 'W%';

