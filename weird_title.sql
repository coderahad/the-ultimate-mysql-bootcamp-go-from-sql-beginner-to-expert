SELECT  CONCAT(
SUBSTRING(
REPLACE(title, 'e', 3), 1 , 10
),
 '...'
 ) AS 'weird title'
FROM books; 