CREATE TABLE BlogPost
(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	title VARCHAR(250) NOT NULL,
	subTitle VARCHAR(250) NOT NULL,
	text TEXT NOT NULL,
	publicationDate DATETIME NOT NULL,
	authorName VARCHAR(50) NOT NULL,
)

CREATE TABLE Comment
(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	email VARCHAR(250) NOT NULL,
	commentDate DATETIME NOT NULL DEFAULT(GETDATE()),
	text VARCHAR(MAX) NOT NULL,
	rating INT NOT NULL,
	blogPost_id INT NOT NULL,
)

ALTER TABLE Comment
WITH CHECK ADD  
CONSTRAINT FK_Comment_BlogPost
FOREIGN KEY(blogPost_id)
REFERENCES BlogPost ([id])


