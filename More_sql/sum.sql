SELECT author_fname,author_lname, SUM(pages)  FROM books GROUP BY author_lname, author_fname ORDER BY SUM(pages) DESC;

SELECT author_fname,author_lname, SUM(pages)  FROM books GROUP BY author_lname, author_fname;