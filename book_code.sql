

SELECT  CONCAT (

SUBSTRING(title, 1,10), '...'
) AS 'short title' 
FROM books;
