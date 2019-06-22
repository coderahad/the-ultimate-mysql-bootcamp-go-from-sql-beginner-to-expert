SELECT title, author_lname FROM books WHERE author_lname = 'Carver' OR author_lname = 'Lahiri' OR author_lname = 'Smith';

SELECT title, author_lname FROM books WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books WHERE released_year IN (1985, 2017);

SELECT title, released_year FROM books WHERE released_year != 2000 AND
	released_year != 2002 AND
	released_year != 2004 AND
      released_year != 2006 AND
      released_year != 2008 AND
      released_year != 2010 AND
      released_year != 2012 AND
      released_year != 2014 AND
      released_year != 2016 ORDER BY released_year DESC;
      
SELECT title, released_year FROM books WHERE released_year NOT IN (2000,2002,2004,2006,2008,2010,2012,2014,2016);

SELECT title, released_year FROM books WHERE  released_year % 2 != 0;
      
SELECT title, released_year FROM books WHERE released_year >= 2000 AND released_year % 2 != 0;      
      