
SELECT * FROM users;

DELIMITER $$

CREATE TRIGGER must_be_adult
	BEFORE INSERT ON users FOR EACH ROW
	BEGIN 
		IF NEW.age < 18
		THEN 
			SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Must be an adult';
		END IF;
	END;
$$ 
DELIMITER ;

INSERT INTO users(username, age) VALUES ("Sue", 50);
SELECT * FROM hhlkhj;
INSERT INTO users(username, age) VALUES ("Yang", 16);