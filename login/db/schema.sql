CREATE DATABASE login_db;

USE login_db;

CREATE TABLE accounts (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO accounts (username, password, email) VALUES ('steve', 'password', 'test@test.com');