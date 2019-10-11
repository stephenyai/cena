DROP DATABASE login_db;
CREATE DATABASE login_db;

USE login_db;

CREATE TABLE accounts (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE country (
	id INT NOT NULL AUTO_INCREMENT,
	country VARCHAR(255),
	PRIMARY KEY(id)
);

CREATE TABLE translation (
	id INT NOT NULL AUTO_INCREMENT,
	server_native VARCHAR(255) NOT NULL,
	server_eng VARCHAR(255) NOT NULL,
	cust_native VARCHAR(255) NOT NULL,
	cust_eng VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO accounts (username, password, email) VALUES ('steve', 'password', 'test@test.com');

INSERT INTO translation (server_native, server_eng, cust_native, cust_eng) VALUES ('server-ahnyoung', 'server-hello', 'cust-galbi', 'cust-meat'), ('server-yes', 'server-no', 'cust-hi', 'cust-bye'), ('server-foo', 'server-bar', 'cust-aaa', 'cust-bbb');
