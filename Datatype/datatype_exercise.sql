CREATE TABLE inventory(
	item_name VARCHAR(100),
	price DECIMAL(8,2),
	quantity INT
	);
DESC inventory;

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

SELECT DAYOFWEEK(CURRENT_DATE);

SELECT DAYNAME(CURRENT_DATE);

SELECT DATE_FORMAT(CURRENT_TIME, '%m/%d/%Y %h:%i:%S %p');

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

CREATE TABLE tweets(
	content VARCHAR(140),
	username VARCHAR(30),
	time_of_tweet TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	);
DESC tweets;

INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');

INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');

SELECT * FROM tweets;



