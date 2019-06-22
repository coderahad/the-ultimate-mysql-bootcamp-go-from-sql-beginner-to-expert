SELECT title,
       author_fname,
       author_lname,
       released_year,
       pages
FROM books
ORDER BY released_year DESC
LIMIT 5,
      5;