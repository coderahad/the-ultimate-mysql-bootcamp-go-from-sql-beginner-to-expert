CREATE TABLE people (`name` VARCHAR(100), 
		birthdate DATE,
		birthtime TIME,
		birthdt DATETIME);
		
DESC people;

INSERT INTO people(`name`, birthdate, birthtime, birthdt)
	VALUES('Padma', '1983-11-11', '10:07:35','1983-11-11 10:07:35');
	
SHOW WARNINGS;
INSERT INTO people(`name`, birthdate, birthtime, birthdt)
	VALUES('Larry','1943-12-25' , '04:10:42','1943-12-25 04:10:42');
	
INSERT INTO people(`name`, birthdate, birthtime, birthdt)
	VALUES('Harry',CURDATE() , CURTIME(),NOW());	


SELECT * FROM people;

SELECT NAME, birthdt, HOUR(birthdt),MINUTE(birthdt) AS 'minute', DAY(birthdt), MONTHNAME(birthdate), YEAR(birthdate) FROM people;

SELECT CONCAT(MONTHNAME(birthdate),' ',DAY(birthdate),' ',YEAR(birthdate)) FROM people;

SELECT NAME, DATE_FORMAT(birthdate, 'Was born on a %W') FROM people;

SELECT NAME , DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;
