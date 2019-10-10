INSERT INTO accounts (username, password, email) VALUES 
('miko', 'password', 'miko@test.com'),
('alvin', 'password', 'alvin@test.com'),
('steve', 'password', 'test@test.com');

INSERT INTO country (country_name, languages_name) VALUES 
('Thailand','Thai'),
('China', 'Chinese'),
('Korea', 'Korean');

INSERT INTO greeting (server_english, server_language, customer_english, customer_language) VALUES 
('Hi! How are you?', 'สวัสดีค่ะ สบายดีมั้ยค่ะ', 'Hello!', 'สวัสดีค่ะ'), 
('Hi! How are you?', '你好吗？', 'Hello!','你好'),
('Hi! How are you?', '안녕하세요! 어떻게 지내?', 'Hello!', '여보세요!');

INSERT INTO orders (orders_serv_eng, orders_serv_lang, orders_cust_eng, orders_cust_lang) VALUES 
('What would you like to order?', 'จะรับอะไรดีค่ะ', 'Can I please have….?', 'มีอะไรแนะนำบ้างคะ'),
('What would you like to order?', '你们想要点些什么呢？', 'Can I please have….?', '你可以给我推荐一下吗？'),
('What would you like to order?', '무엇을 주문 하시겠습니까?', 'Can I please have….?', '내가 가질 수 있습니까….?');

INSERT INTO suggestion (suggest_cust_eng, suggest_cust_lang, suggest_serv_eng, suggest_serv_lang) VALUES 
('Do you have any recommendations?', 'มีอะไรแนะนำบ้างคะ?', 'tom yum kung', ' ต้มยำกุ้ง'),
('Do you have any recommendations?', '你可以给我推荐一下吗？', '', ''),
('Do you have any recommendations?', '추천 사항이 있습니까?', '', '');

INSERT INTO feedback (feedback_serv_eng, feedback_serv_lang, feedback_cust_eng, feedback_cust_lang) VALUES 
('How is the food?', 'อาหารายเป็นยังไงบ้างคะ', 'Delicious', 'อร่อยคะ'),
('How is the food?', '东西好吃吗？', 'Delicious', '很好吃！/ 一般般。'),
('How is the food?', '음식 어때?', 'Delicious', '맛있는');

INSERT INTO pay (pay_cust_eng, pay_cust_lang, pay_serv_eng, pay_serv_lang) VALUES 
('Can I pay? / Check, please!', 'คิดเงินด้วยคะ', 'Okay!', 'ตกลงคะ'),
('Can I pay? / Check, please!', '可以给我一下账单吗？/ 我想要买单。', 'Okay!', '好的。'),
('Can I pay? / Check, please!', '내가 지불해도 될까?', 'Okay!', '괜찮아!');

INSERT INTO farewell (farewell_serv_eng, farewell_serv_lang, farewell_cust_eng, farewell_cust_lang ) VALUES 
('Thank you! Come again!', 'ขอบคุณคะ กลับมาใหม่นะคะ', 'Thank you!', 'ขอบคุณคะ'),
('Thank you! Come again!', '再见！欢迎下次再来！', 'Thank you!', '谢谢'),
('Thank you! Come again!', '', 'Thank you!', '감사합니다!');