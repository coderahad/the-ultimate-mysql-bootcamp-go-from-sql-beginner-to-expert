SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname,author_fname;

SELECT CONCAT(author_fname,' ',author_lname) AS author, MAX(pages) AS 'longest book' FROM books GROUP BY author_lname, author_fname;