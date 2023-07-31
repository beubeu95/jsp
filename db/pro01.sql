--테이블 만들기 및 예시 데이터 추가
--테이블명 : 상품명(product)
--상품코드 : gcode - 정수/ 일련번호(기본키) - 필수입력
--상품명 : gname - 문자열(150) - 필수입력
--종류 : gcate - 문자열(40) - 필수입력
--단가 : gprice - 정수 - 필수입력
--수량 : gqty -정수 - 기본값:0
--등록일 : regdate - 날짜 - 기본값: 오늘날짜 및 시간

CREATE TABLE product(
	gcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	gname VARCHAR(150) NOT NULL,
	gcate VARCHAR(40) NOT NULL,
	gprice INT DEFAULT 0 NOT NULL,
	gqty INT DEFAULT 0,
	regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
	
DESC product;

SHOW TABLES;

INSERT INTO product (gname, gcate, gprice) VALUES ('중국어', '학습지', 28000);
INSERT INTO product (gname, gcate, gprice) VALUES ('일본어','학습지',28000);	
INSERT INTO product (gname, gcate, gprice) VALUES ('영어','학습지',28000);
INSERT INTO product (gname, gcate, gprice) VALUES ('스페인어','학습지',28000);
INSERT INTO product (gname, gcate, gprice) VALUES ('중국어','회화', 99000);
INSERT INTO product (gname, gcate, gprice) VALUES ('일본어', '회화',99000);
INSERT INTO product (gname, gcate, gprice) VALUES ('영어', '회화',99000);
INSERT INTO product (gname, gcate, gprice) VALUES ('스페인어', '회화',99000);
INSERT INTO product (gname, gcate, gprice) VALUES ('일본어- 두뇌 표현 코스', '교재',11700);
INSERT INTO product (gname, gcate, gprice) VALUES ('중국어-두뇌 표현 코스', '교재',11700);
INSERT INTO product (gname, gcate, gprice) VALUES ('일본어-두뇌 표현 코스', '교재',11700);
INSERT INTO product (gname, gcate, gprice) VALUES ('스페인어-두뇌 표현 코스', '교재',11700);	

SELECT * FROM product;

UPDATE product SET gname ='영어-두뇌 표현 코스' WHERE gcode=11;

COMMIT;

--테이블명 : 판매(sales)
--판매코드 : pcode - 정수/ 일련번호(기본키) -필수입력
--상품코드 : gcode - 정수 - 필수입력
--구매자 : id - 문자열(16) -필수입력
--수량 : qty - 정수 - 기본값:1
--구매단가 : sprice -정수 - 필수입력
--결제수단: stype - 정수 - 필수입력
--할인금액: distotal -정수
--결제금액: paytotal - 정수
--총금액: stotal - 정수 

--더미데이터는 본인이 임의로 각각 12건 이상 추가하되
--상품 데이터는 교육, 서적, 동영상강의 등의 카테고리를 본인이 정하여 추가할 것.
--현재 회원과 현존하는 상품  내용을 기준으로 구매한 판매데이터를 추가할 것.  

CREATE TABLE sales(
	pcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	gcode INT DEFAULT 0 NOT NULL,
	id VARCHAR(16) NOT NULL,
	qty INT DEFAULT 1,
	sprice INT DEFAULT 0 NOT NULL,
	stype INT DEFAULT 0 NOT NULL,
	distotal INT DEFAULT 0,
	paytotal INT DEFAULT 0,
	stotal INT DEFAULT 0);

SHOW TABLES;

DESC product;
DESC sales;

INSERT INTO sales (gcode, id, sprice, stype) VALUES (1, 'kim', 28000, 28000);









