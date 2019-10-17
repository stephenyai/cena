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
	thai_audio_server VARCHAR(255) NOT NULL,
	kor_audio_server VARCHAR(255) NOT NULL,
	chn_audio_server VARCHAR(255) NOT NULL,
	thai_audio_cust VARCHAR(255) NOT NULL,
	kor_audio_cust VARCHAR(255) NOT NULL,
	chn_audio_cust VARCHAR(255) NOT NULL,	
	PRIMARY KEY(id)
);


INSERT INTO country (country_name) VALUES ('Thailand'), ('Korea'), ('China');
INSERT INTO phrases (phrase, thai_server, kor_server, chn_server, eng_server, thai_cust, kor_cust, chn_cust, eng_cust, thai_audio_server, kor_audio_server, chn_audio_server, thai_audio_cust, kor_audio_cust, chn_audio_cust) VALUES 
('greeting', 'สวัสดีค่ะ', '안녕하세요!', '你好吗', 'Hi there!', 'สวัสดีครับ', '안녕하세요.', '你好.', 'Hello.', '/assets/media/thai-server-greeting.mp3', '/assets/media/korea-server-greeting.mp3', '/assets/media/china-server-greeting.mp3', '/assets/media/thai-cust-greeting.mp3', '/assets/media/korea-cust-greeting.mp3', '/assets/media/china-cust-greeting.mp3'),
('order', 'จะรับอะไรดีค่ะ', '무얼 드릴까요?', '你们想要点些什么呢?', 'What would you like to order?', 'ฉันขอ...?', '...주세요.', '我可以点...?', 'Can I please have...?', '/assets/media/thai-server-order.mp3', '/assets/media/korea-server-order.mp3', '/assets/media/china-server-order.mp3', '/assets/media/thai-cust-order.mp3', '/assets/media/korea-cust-order.mp3', '/assets/media/china-cust-order.mp3'),
('feedback', 'อาหารเป็นอย่างไรบ้างค่ะ', '음식 어때요?', '东西好吃吗?', 'How is the food?', 'อร่อยครับ', '맛있어요!', '很好吃!', 'Delicious!', '/assets/media/thai-server-feedback.mp3', '/assets/media/korea-server-feedback.mp3', '/assets/media/china-server-feedback.mp3', '/assets/media/thai-cust-feedback.mp3', '/assets/media/korea-cust-feedback.mp3', '/assets/media/china-cust-feedback.mp3'),
('pay', 'ตกลงคะ', '예!', '好的.', 'Sure!', 'คิดเงินด้วยครับ', '계산해주세요.', '我想要买单.', 'Check, please.', '/assets/media/thai-server-pay.mp3', '/assets/media/korea-server-pay.mp3', '/assets/media/china-server-pay.mp3', '/assets/media/thai-cust-pay.mp3', '/assets/media/korea-cust-pay.mp3', '/assets/media/china-cust-pay.mp3'),
('farewell', 'ขอบคุณคะ! กลับมาใหม่นะคะ!', '감사합니다! 또 오세요!', '再见！欢迎下次再来！', 'Thank you! Come again!', 'ขอบคุณครับ!', '감사합니다!', '谢谢!', 'Thank you!', '/assets/media/thai-server-farewell.mp3', '/assets/media/korea-server-farewell.mp3', '/assets/media/china-server-farewell.mp3', '/assets/media/thai-cust-farewell.mp3', '/assets/media/korea-cust-farewell.mp3', '/assets/media/china-cust-farewell.mp3');
