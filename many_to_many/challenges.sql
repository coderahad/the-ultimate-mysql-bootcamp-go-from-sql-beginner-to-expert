-- challenge 1
SELECT title,
	rating 
FROM series
JOIN reviews
ON series.id = reviews.series_id;

-- challenge 2
SELECT title,
	AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

-- challange 3

SELECT first_name,
	last_name,
	rating
FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id;
-- OR
SELECT first_name,
	last_name,
	rating
FROM reviews
INNER JOIN reviewers
ON reviewers.id = reviews.reviewer_id;

-- challange 4

SELECT title AS ureviewed_series
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;

-- challange 5

SELECT genre,
	AVG(rating) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;
	
SELECT genre,
	ROUND(
	 AVG(rating),2
	 ) AS avg_rating
FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;

-- challange 6

SELECT first_name,
	last_name,
	COUNT(rating) AS COUNT, -- count(*) results counting of rows in a group and outputs 1 for 'marlon crafford'
	IFNULL(MIN(rating), 0) AS MIN,
	IFNULL(MAX(rating), 0) AS MAX,
	IFNULL(AVG(rating),0) AS AVG,
	CASE 
	WHEN rating IS NULL THEN 'INACTIVE'
	ELSE 'ACTIVE'
	END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;


SELECT * FROM reviewers LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id;

 -- challange 7

SELECT title,
	rating,
	CONCAT(first_name, ' ',last_name)
FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id
JOIN series
ON series.id = reviews.series_id;

