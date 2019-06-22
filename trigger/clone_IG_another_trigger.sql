
DELIMITER $$

CREATE TRIGGER capture_unfollow
	AFTER DELETE ON follows FOR EACH ROW
	BEGIN 
		INSERT INTO unfollows(follower_id, followee_id) VALUES (OLD.follower_id, OLD.followee_id);
	END;
$$
DELIMITER;
 
-- we can also do this.

DELIMITER $$

CREATE TRIGGER capture_unfollow
	AFTER DELETE ON follows FOR EACH ROW
	BEGIN 
		INSERT INTO unfollows
		SET follower_id = OLD.follower_id,
		    followee_id = OLD.followee_id;
	END;
$$
DELIMITER;

SELECT * FROM follows LIMIT 5;

DELETE FROM follows WHERE follower_id = 2  AND followee_id = 1;

SELECT * FROM unfollows;

SHOW TRIGGERS;

DROP TRIGGER example_cannot_follow_self;
