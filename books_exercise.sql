SELECT
  CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
  CONCAT(author_lname, ',', author_fname) AS author,
  CONCAT(stock_quantity, ' in stock')
FROM books;