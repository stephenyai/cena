DROP DATABASE cena_db;
CREATE DATABASE cena_db;

/*connect to a database*/
USE cena_db;

CREATE TABLE accounts (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(30) NOT NULL,
	password VARCHAR(128) NOT NULL,
	email VARCHAR(50) NOT NULL,
	PRIMARY KEY(id),
    UNIQUE KEY username (username)
);

CREATE TABLE country (
    id INT NOT NULL AUTO_INCREMENT, 
    country_name VARCHAR(255),
    languages_name VARCHAR(255),
    PRIMARY KEY(id) 
);

CREATE TABLE greeting (
    id INT NOT NULL AUTO_INCREMENT,
    server_english VARCHAR(255),
    server_language VARCHAR(255),
    customer_english VARCHAR(255),
    customer_language VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    orders_serv_eng VARCHAR(255),
    orders_serv_lang VARCHAR(255),
    orders_cust_eng VARCHAR(255),
    orders_cust_lang VARCHAR(255),

    PRIMARY KEY (id)
);

CREATE TABLE suggestion (
    id INT NOT NULL AUTO_INCREMENT,
    suggest_cust_eng VARCHAR(255),
    suggest_cust_lang VARCHAR(255),
    suggest_serv_eng VARCHAR(255),
    suggest_serv_lang VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE feedback (
    id INT NOT NULL AUTO_INCREMENT,
    feedback_serv_eng VARCHAR(255),
    feedback_serv_lang VARCHAR(255),
    feedback_cust_eng VARCHAR(255),
    feedback_cust_lang VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE pay (
    id INT NOT NULL AUTO_INCREMENT,
    pay_cust_eng VARCHAR(255),
    pay_cust_lang VARCHAR(255),
    pay_serv_eng VARCHAR(255),
    pay_serv_lang VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE farewell (
    id INT NOT NULL AUTO_INCREMENT,
    farewell_serv_eng VARCHAR(255),
    farewell_serv_lang VARCHAR(255),
    farewell_cust_eng VARCHAR(255),
    farewell_cust_lang VARCHAR(255),
    PRIMARY KEY (id)
);