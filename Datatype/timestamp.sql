CREATE TABLE comments(
	content VARCHAR(100),
	created_at TIMESTAMP DEFAULT NOW()
	);
INSERT INTO comments(content) VALUES ('lot what a funny article');

INSERT INTO comments(content) VALUES ('I got this offensive');

INSERT INTO comments(content) VALUES ('blah blah');

SELECT * FROM comments ORDER BY created_at DESC;

CREATE TABLE comments2(
	content VARCHAR(100),
	changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
	);
INSERT INTO comments2(content) VALUES ('flah flah');
INSERT INTO comments2(content) VALUES ('laha laha');
INSERT INTO comments2(content) VALUES ('blaaaa blaaaa');

UPDATE comments2 SET content='I am sorry' WHERE content='flah flah';

UPDATE comments2 SET content='I am new one' WHERE content='blaaaa blaaaa';

UPDATE comments2 SET content='I am the most recent one' WHERE content='I am the latest one';

SELECT * FROM comments2 ORDER BY changed_at DESC;

