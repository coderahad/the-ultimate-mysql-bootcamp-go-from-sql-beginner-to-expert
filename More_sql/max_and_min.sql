SELECT title, MIN(pages) FROM books;

SELECT title,pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);

SELECT title, pages FROM books ORDER BY pages LIMIT 1;

SELECT title,pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;