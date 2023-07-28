--회원(member) 테이블 생성 
CREATE TABLE MEMBER(
	id VARCHAR(16) NOT NULL,
	pw VARCHAR(330) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(13),
	regdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	POINT INT DEFAULT 0,
	PRIMARY KEY (id));
	
--테이블 목록 보기	
SHOW TABLES;
--회원 테이블 구조 보기
DESC MEMBER;

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('admin', '1234', '관리자', 'admin@edu.com', '010-1004-1004');

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('kim', '1111', '김현경', 'kim@edu.com', '010-1111-1004');

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('lee', '2222', '박진권', 'lee@edu.com', '010-2222-1004');

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('park', '1212', '신예은', 'park@edu.com', '010-1212-1004');

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('choi', '1313', '김보경', 'chio@edu.com', '010-1313-1004');

INSERT INTO MEMBER (id, pw, NAME, email, tel) VALUES ('shin', '1314', '신승원', 'shin@edu.com', '010-1314-1004');

--회원 테이블 조회
SELECT * FROM MEMBER;

--게시판 테이블 구조 작성
CREATE TABLE board(
	bno INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	author VARCHAR(16),
	resdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	cnt INT DEFAULT 0);
--게시판 테이블 구조 보기
DESC board;

INSERT INTO board (title, content, author) VALUES ('더미글1','여기는 더미글1입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글2','여기는 더미글2입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글3','여기는 더미글3입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글4','여기는 더미글4입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글5','여기는 더미글5입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글6','여기는 더미글6입니다', 'admin'); 

INSERT INTO board (title, content, author) VALUES ('더미글7','여기는 더미글7입니다', 'admin');

INSERT INTO board (title, content, author) VALUES ('더미글8','여기는 더미글8입니다', 'lee');

INSERT INTO board (title, content, author) VALUES ('더미글9','여기는 더미글9입니다', 'shin');
 
--게시판 테이블 검색
SELECT * FROM board;

SELECT * FROM MEMBER;

DELETE FROM MEMBER WHERE id='shin';   --아이디 shin인 회원의 레코드 삭제

UPDATE board SET author ='lee' WHERE bno=5; --글번호 5인 레코드의 id를 lee로 업데이트 

COMMIT;

--7번 글에 대한 작성자의 이름
SELECT * FROM MEMBER WHERE id='admin';  -- id가 admin인 회원의 레코드 선택 
SELECT author FROM board WHERE bno=7;   -- 글번호 7인 레코드의 글쓴이를 선택

--유사검색
SELECT * FROM MEMBER WHERE NAME LIKE '김%';  -- 김씨 성을 가진 회원 레코드 선택
SELECT * FROM MEMBER WHERE NAME LIKE '%현%'; -- 중간에 '현'이 들어간 회원 레코드 선택

--일치검색 
SELECT * FROM MEMBER WHERE NAME IN ('김현경', '박진권', '관리자'); -- 괄호안 이름이 들어간 회원 레코드 선택 

--중복성제거
SELECT DISTINCT author FROM board;

--구간검색 
SELECT * FROM board WHERE bno >= 3 AND bno <= 6;
SELECT * FROM board WHERE bno BETWEEN 3 AND 6;
SELECT * FROM board LIMIT 2, 4;

--이중쿼리 (=, >=, <=, !=,...) : select 문을 이중으로 사용
SELECT id, name FROM MEMBER where id=(SELECT author FROM board WHERE bno=8);
--일치검색 (in)
SELECT id, NAME FROM MEMBER where id IN(SELECT author FROM board); 
--불일치검색 (not~in~)
SELECT id, NAME FROM MEMBER where id not IN(SELECT author FROM board);

--연관쿼리와 join
--연관쿼리(alios 활용)
-- 멤버와 보드의 모든 정보 표시 -> 45건(5*9) ,13항목
SELECT * FROM MEMBER a, board b;  
--멤버에서 특정 회원정보와 보드에서 특정 글정보를 모두 표시 -> 45건 , 5항목 
SELECT a.id, a.NAME, a.email, b.bno, b.title FROM MEMBER a, board b;   
SELECT a.id AS pid, a.NAME AS pname, a.email AS pemail, b.bno AS pno, b.title AS ptitle FROM MEMBER a, board b;
--게시판에 글을  올린 회원정보와 글정보 모두 표시
SELECT a.id AS pid, a.NAME AS pname, a.email AS pemail, b.bno AS pno, b.title AS ptitle FROM MEMBER a, board b WHERE a.id=b.author; 
--내부 조인 (게시판에 글을 올린 회원정보와 글정보 모두 표시)
SELECT a.id, a.name, a.email, b.bno, b.title FROM MEMBER a INNER JOIN board b ON a.id=b.author;

--테이블 복제 : 키에 대한 복제는 이루어지지 않는다.
CREATE TABLE board2 AS SELECT * FROM board;
-- 기본 키 추가
ALTER TABLE board2 ADD CONSTRAINT PRIMARY KEY (bno);
--컬럼 수정 - auto_increment 추가
ALTER TABLE board2 modify bno INT AUTO_INCREMENT;

SELECT * FROM board2;

DESC board2;

CREATE VIEW writer_info AS (SELECT a.id, a.name, a.email, b.bno, b.title FROM MEMBER a INNER JOIN board b ON a.id=b.author);

SELECT * FROM writer_info;

--sort(소트) = 분류, 순서정렬
SELECT *FROM board;
--읽은 횟수
UPDATE board SET cnt=cnt+1 WHERE bno=7;
--정렬
SELECT * FROM board ORDER BY author ASC , cnt DESC;
--그룹화 및 집계 (gtoup by -> count, sum, avg, max, min...)
SELECT author, COUNT(author) FROM board GROUP BY author;


--테이블 만들기 및 예시 데이터 추가
--테이블명 : 상품명(product)
--상품코드 : gcode - 정수/ 일련번호(기본키) - 필수입력
--상품명 : gname - 문자열(150) - 필수입력
--종류 : gcate - 문자열(40) - 필수입력
--단가 : gprice - 정수 - 필수입력
--수량 : gqty -정수 - 기본값:0
--등록일 : regdate - 날짜 - 기본값: 오늘날짜 및 시간

CREATE TABLE product(
	gcode INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
	gname VARCHAR(150) NOT NULL,
	gcate VARCHAR(40) NOT NULL,
	gprice INT DEFAULT 0 NOT NULL,
	gqty INT DEFAULT 0,
	regdate TIMESTAMP default CURRENT_TIMESTAMP);

SHOW TABLES;

INSERT INTO product (gname, gcate, gprice) VALUES ('중국어', '학습지', 25000);
INSERT INTO product (gname, gcate, gprice) VALUES ('일본어', '학습지', 32000);
INSERT INTO product (gname, gcate, gprice) VALUES ('영어', '학습지', 27000);
INSERT INTO product (gname, gcate, gprice) VALUES ('스페인어', '학습지', 29000);
INSERT INTO product (gname, gcate, gprice) VALUES ('중국어',


SELECT * FROM product;	
DESC product;

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
	stotal INT DEFAULT 0);
	
DESC sales;

SHOW TABLES;

INSERT INTO sales (gcode, id, sprice, stype) VALUES ();


