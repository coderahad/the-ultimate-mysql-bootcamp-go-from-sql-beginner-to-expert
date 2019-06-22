DELIMITER $$

CREATE TRIGGER example_cannot_follow_self
	BEFORE INSERT ON follows FOR EACH ROW
	BEGIN 
		IF new.follower_id = new.followee_id
		THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'you cannot follow yourself';
		END IF;
	END;
$$
DELIMITER;

SELECT * FROM follows;

INSERT INTO follows(follower_id, followee_id) VALUES (9,2);



