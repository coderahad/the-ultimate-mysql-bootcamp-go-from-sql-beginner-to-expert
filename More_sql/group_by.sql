SELECT title,author_fname, author_lname AS family_name, COUNT(*) AS quantity FROM books GROUP BY author_lname, author_fname;

SELECT CONCAT('in ',released_year,' ', COUNT(*),' book(s) released') AS 'year' FROM books GROUP BY released_year ORDER BY released_year DESC;