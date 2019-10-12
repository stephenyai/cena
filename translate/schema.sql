DROP DATABASE translate_db;
CREATE DATABASE translate_db;

USE translate_db;

CREATE TABLE country (
	id INT NOT NULL AUTO_INCREMENT,
	country_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE phrases (
	id INT NOT NULL AUTO_INCREMENT,
	phrase VARCHAR(255) NOT NULL,
	thai_server VARCHAR(255) NOT NULL,
	kor_server VARCHAR(255) NOT NULL,
	chn_server VARCHAR(255) NOT NULL,
	eng_server VARCHAR(255) NOT NULL,
	thai_cust VARCHAR(255) NOT NULL,
	kor_cust VARCHAR(255) NOT NULL,
	chn_cust VARCHAR(255) NOT NULL,
	eng_cust VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);


INSERT INTO country (country_name) VALUES ('Thailand'), ('Korea'), ('China');
INSERT INTO phrases (phrase, thai_server, kor_server, chn_server, eng_server, thai_cust, kor_cust, chn_cust, eng_cust) VALUES 
('greeting', 'สวัสดีค่ะ สบายดีมั้ยค่ะ', '안녕하세요', '你好吗', 'Hi there!', 'ครับ', '안녕', '你好', 'Hello'),
('order', 'จะรับอะไรดีค่ะ', '안녕하세요', '你们想要点些什么呢?', 'What would you like to order?', 'ผม ขอ…..?', '주문', '我可以点..?', 'Can I please have...?'),
('suggestion', 'ผัดไทย', 'galbi', 'dim sum', 'Food recommendations...', 'มีอะไรแนะนำบ้างคะ?', 'korean recommend', '你可以给我推荐一下吗？', 'Do you have any recommendations?'),
('feedback', 'อาหารายเป็นยังไงบ้างคะ', 'korean ask food', '东西好吃吗？', 'How is the food?', 'อร่อยคะ', 'korean tastes great', '很好吃', 'Delicious!'),
('pay', 'ตกลงคะ', '세', '好的.', 'Sure', 'คิดเงินด้วยคะ', 'korean check', '我想要买单.', 'Check, please'),
('farewell', 'ครับ! กลับมาใหม่คะ', 'korean come again', '再见！欢迎下次再来！', 'Thank you! Come again!', 'ครับ!', 'gamsa', '谢谢', 'Thank you!');
