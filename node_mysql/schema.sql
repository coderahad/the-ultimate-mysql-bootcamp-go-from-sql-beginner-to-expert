CREATE TABLE  users(
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');

SELECT * FROM users;

INSERT INTO users (email, created_at) VALUES ('dusty@gmail.com', '2018-12-08T14:26:27.511Z') ;


SELECT email, DATE_FORMAT(created_at, '%M %D %Y') AS earliest_date FROM users ORDER BY created_at LIMIT 1; 

SELECT MONTHNAME(created_at) AS month, COUNT(*) AS count FROM users GROUP BY month ORDER BY count DESC;

SELECT COUNT(email) as yahoo_users FROM users WHERE email LIKE '%yahoo.com';

SELECT 
        CASE
        WHEN email LIKE '%gmail.com' THEN 'gmail'
        WHEN email LIKE '%yahoo.com' THEN 'yahoo'
        WHEN email LIKE '%hotmail.com' THEN 'hotmail'
        ELSE 'others' 
        END AS 'provider',
        COUNT(*)  AS total_users
FROM users
GROUP BY provider;
