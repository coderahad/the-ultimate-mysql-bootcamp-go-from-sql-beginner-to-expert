CREATE TABLE likes(
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	PRIMARY KEY (user_id, photo_id)
	); 
	-- user_id, photo_id combined makes a primary key to make it unique. If one user_id (e.g 3) likes a photo_id(e.g 1) then (3,1) makes the
	-- primary key which will remain unique from the combinations of these two sets.
	
DESC likes;