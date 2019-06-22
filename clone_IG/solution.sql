-- finding 5 oldest usres;

SELECT * FROM users ORDER BY created_at LIMIT 5;

-- what day of week do most users register on?

SELECT username,
	DAYNAME(created_at) AS DAY,
	COUNT(*) AS COUNT
 FROM users
 GROUP BY DAY
 ORDER BY COUNT DESC;

-- find the users who have never posted a photo
SELECT username,
	CASE
	WHEN image_url IS NULL THEN "INACTIVE"
	ELSE "ACTIVE" 
	END AS user_status
FROM users
LEFT JOIN photos
ON users.id = photos.user_id  -- aliases work with order by and group by
WHERE image_url IS NULL;

-- who can get the most likes on a single photo

SELECT  username,
	photos.id,
	photos.image_url, 
	COUNT(*) AS COUNT
 FROM likes
 JOIN photos
 ON photos.id = likes.photo_id
 JOIN users
 ON users.id = photos.user_id
GROUP BY photo_id
ORDER BY COUNT DESC LIMIT 1;

-- challange 5

SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS AVG;


-- challange 6

SELECT tag_id,
	tags.tag_name,
	COUNT(*) AS total 
FROM photo_tags
JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tag_id
ORDER BY total DESC LIMIT 5;

-- users who liked every single photo on instagram


SELECT * FROM likes;

SELECT username,
        COUNT(*) AS num_likes
FROM users
JOIN likes
ON users.id = likes.user_id
GROUP BY users.id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
 -- where does not work after group.it is for two tables not for each group. having works for each group. 


