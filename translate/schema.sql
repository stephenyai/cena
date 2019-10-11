DROP DATABASE translate_db;
CREATE DATABASE translate_db;

USE translate_db;

CREATE TABLE translation (
	id INT NOT NULL AUTO_INCREMENT,
	server_native VARCHAR(255) NOT NULL,
	server_eng VARCHAR(255) NOT NULL,
	cust_native VARCHAR(255) NOT NULL,
	cust_eng VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO translation (server_native, server_eng, cust_native, cust_eng) VALUES ('สวัสดีค่ะ สบายดีมั้ยค่ะ', 'Hi! How are you?', 'สวัสดีค่ะ', 'Hello!'), ('server-yes', 'server-no', 'cust-hi', 'cust-bye'), ('server-foo', 'server-bar', 'cust-aaa', 'cust-bbb');
