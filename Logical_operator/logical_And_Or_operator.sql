SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers';

SELECT title, author_lname, released_year FROM books WHERE released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' && released_year > 2010;

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010 AND title LIKE '%novel%';

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' || released_year > 2010;

SELECT title, author_lname, released_year, stock_quantity FROM books WHERE author_lname = 'Eggers' || released_year > 2010 OR stock_quantity > 100;