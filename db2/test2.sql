 create table customer(
   customerid varchar(15) not null primary key,
   customername varchar(50) not null,
   customertype varchar(50) not null,
   country varchar(50) not null,
   city varchar(50),
   state varchar(50),
   postcode int,
   reqiontype varchar(50));
   
create table buy(
   seq int(10) primary key auto_increment,
   orderid varchar(15) not null,
   orderdate timestamp,
   shipdate timestamp,
   customerid varchar(15),
   productid varchar(15),
   qualtitiy int(10),
   discount decimal(10,2));
   
create table product(
  productid varchar(15) primary KEY,
  bigcategory varchar(50) not null,
  subcategory varchar(50),
  productname varchar(100) not NULL,
  price decimal(10,2));
  
  
  --pro01_2에서 테이블 삭제(DROP TABLE buy;)
  
  
  SHOW TABLES;
  
  
  customer cus = NEW customer();
  cus.setCustomerid(request.getParameter("customerid"));
  cus.setCustomername(request.getParameter("customername"));
  cus.setCustomertype(request.getParameter("customertype"));
  cus.setCountry(request.getParameter("country"));
  cus.setCity(request.getParameter("city"));
  cus.setState(request.getParameter("state"));
  cus.setPostcode(INTEGER.parseInt(request.getParameter("postcode")));
  cus.setReqiontype(request.getParameter("reqiontype"));
  cus.Insert(cus);
  
  
  SELECT * FROM product;
  SELECT * FROM buy;
  SELECT * FROM customer;
  SELECT * FROM customer WHERE customername LIKE '%Kim%' AND city='Seuol';
  SELECT * FROM customer WHERE customername LIKE '%Kim%'
  
  SELECT COUNT(*) AS cnt FROM 

  --고객 등록
  INSERT INTO customer VALUES ('AK-10880', 'Alien kim', 'Consumer', 'South Korea','Seoul', 'Seoul', 18517, 'West');
  
  --웹에서 회원 등록
  public void cusInsert(customer cus){
  INSERT INTO customer VALUES (?, ?, ?, ?, ?, ?, ?, ?);
  pstmt.setString(1,cus.getCustomerid());
  pstmt.setString(2,cus.getCustomername());
  pstmt.setString(3,cus.getCustomertype());
  pstmt.setString(4,cus.getCountry());
  pstmt.setString(5,cus.getCity());
  pstmt.setString(6,cus.getState());
  pstmt.setInt(7,cus.getpostcode());
  pstmt.setString(8,cus.getreqiontype());
  }
  --고객 정보 변경
  UPDATE customer SET country='America',city='Los Angels', state='Los Angels' WHERE customerid='AK-10880';
  COMMIT;
  --웹에서 고객 정보 변경
  UPDATE customer SET country=?,city=?, state=? WHERE customerid=?;
  pstmt.setString(1,cus.getCountry());
  pstmt.setString(2,cus.getCity());
  pstmt.setString(3,cus.getState());
  pstmt.setString(4,cus.getCustomerid());

  --고객 삭제
  DELETE FROM customer WHERE customerid ='AK-10880';
  
  --웹에서 고객 삭제
  DELETE FROM customer WHERE customerid =?;
  pstmt.setString(1,customerid);
  
  
  USE shop;
  
  SHOW TABLES;
  
  SELECT * FROM buy;
  
  
  
  -- customerid 별로 그룹화하여 customerid, 제품거래건수, 총수량, 평균할인율을 출력하라
  
  SELECT customerid, COUNT(productid) AS '제품거래건수', SUM(qualtitiy) AS '총수량', AVG(discount)AS '평균할인율' FROM buy GROUP BY customerid;
  
  
  
  -- buy 테이블에서 할인율이 가장 작은 거래 정보를 수량(quantity)의 내림차순으로 출력하시요.
  
  -- (단, 수량이 같은 경우 주문일(orderdate)의 오름차순으로 하시오.)
  
  SELECT * FROM buy where discount=(SELECT MIN(discount) FROM buy) ORDER BY qualtitiy DESC, orderdate ASC;
  
  
  
  --배송일 (shipdate)의 년도별로 총수량의 합계와 총수량의 평균, 총수량의 최대값을 집계하시오.(년도를 추출하는 함수는 year임.
  
  SELECT YEAR(shipdate) AS '년도', SUM(qualtitiy) AS '총수량',  AVG(qualtitiy) AS '총합계', MAX(qualtitiy) AS '최대배송량' FROM buy GROUP BY YEAR(shipdate);
  
  
  --주문일(orderdate)의 년도와 월별로 주문수량(quantity)의 합계와 평균할인율을 집계하시오.(date_format 함수를 사용.)
  --dateformat(컬럼,형식)
  SELECT DATE_FORMAT(orderdate, '%Y-%m') AS '년월', SUM(qualtitiy) AS '주문량 합계', AVG(discount) AS '평균할인율' FROM buy GROUP BY DATE_format(orderdate, '%Y-%m') HAVING SUM(qualtitiy) != 0;

  
  
  SELECT * FROM product a, customer b;
  -- 제품번호(productid)가 FUR로 시작하는 가구 종류를 구매한 고객정보 중에서 고객명(customername)국가(country),도시(city)를 출력하되, 
  -- 고객id(customerid) 내림차순으로 하고, 고객id가 같은 경우 주문수량(quantity)의 오름차순으로 할 것.
  -- 이중쿼리, 연관쿼리,내부조인 등 원하는 방식으로 해결할 것.
  
  SELECT a.customername, a.country, a.city FROM customer a, buy b WHERE a.customerid = b.customerid AND b.productid LIKE 'FUR%' ORDER BY a.customerid DESC, b.qualtitiy ASC ;
  
  SELECT a.customername, a.country, a.city FROM customer a INNER JOIN buy b ON  a.customerid = b.customerid WHERE b.productid LIKE 'FUR%' ORDER BY a.customerid DESC, b.qualtitiy ASC ;
  
  
  --제품(product)테이블로 부터 가격(price)의 40이상인 제품을 검색하여 제품(product2) 테이블을 생성하시오.

  
  CREATE TABLE product2 AS (SELECT * FROM product WHERE price >=40);
  SELECT * FROM product2;
  
  -- 제품3(product3) 테이블로 부터 price가 0인 레코드를 삭제하시오.
  
  CREATE TABLE product3 AS (SELECT * FROM product WHERE price<40);
  
  DELETE FROM product3 WHERE price <=0;
  
  SELECT * FROM product3;
  
  --제품명(productname)에 "가 있는 데이터의 "(큰따옴표)를 제거하시오.
  
  UPDATE product2 SET productname=SUBSTRING(productname, 2, LENGTH(productname)-1) WHERE productname LIKE '\"%';
  UPDATE product3 SET productname=SUBSTRING(productname, 2, LENGTH(productname)-1) WHERE productname LIKE '\"%';  
  
  
  -- UNION : 중복을 제거하여 합집합
  -- UNION ALL : 중복 포함하여 합집합
  SELECT * FROM product2 UNION SELECT * FROM product3;
  create view uni_tab1 AS (SELECT productid, price FROM product2 UNION SELECT productid,price FROM product3);
  
  SELECT * FROM uni_tab1;
  
  -- INTERSECT : 교집합
  create view uni_tab1 AS (SELECT productid, price FROM product2 INTERSECT SELECT productid,price FROM product3);
   
  create view exc_tab1 AS (SELECT productid, price FROM product except SELECT productid,price FROM product2);
  
  SELECT * FROM exc_tab1;  
  
  -- 제품2(product2)와 제품3(product3)의 테이블 데이터를 합집합하여 전체상품(totpro)의 테이블을 생성하시오.
  CREATE TABLE totpro AS (SELECT * FROM product2 UNION SELECT * FROM product3);
  -- 제품(product1)와 제품3(product3)의 테이블 데이터를 차집합하여 제거상품(revpro)의 테이블을 생성하시오.
  CREATE TABLE revpro AS (SELECT * FROM product EXCEPT SELECT * FROM product2);
  -- 제품(product)와 제품2(product2)의 테이블 데이터를 교집합하여 인기상품(hotpro)의 테이블을 생성하시오.  
  CREATE TABLE hotpro AS (SELECT * FROM product intersect SELECT * FROM product2);
  
  --특정 고객의 주문정보를 검색
  DESC buy;
  
  SELECT * FROM buy WHERE customerid = 'BH-11710';

  SELECT * FROM buy WHERE customerid =?;
  pstmt.setString(1, customerid);
  
  
  --특정 고객의 본인 정보
  SELECT * FROM customer customerid = 'BH-11710';
  
  -- DAO(DATA Access Object) - cutomDao
  public Customer myInfo(STRING customerid) {
  string SQL = "SELECT * FROM customer customerid = ?";
  pstmt.setString(1, customerid);
  rs = pstmt.excute(SQL);
  Customer cus = NEW Customer();
  }
  if(rs.next()){
  		cus.setCustomerid(rs.getString("customerid"));
  		cus.setCustomerName(rs.getString("customername"));
  		...
  }
  RETURN cus;
 } 
  
  -- Controller(Ctrl)
  http://localhost:8081/mypage?customerid=BH-11710"
  STRING customerid = request.getParameter("customerid");
  
  CustomDao dao = NEW CustomDao();
  Customer cus = dao.myInfo(customerid);
  ...
  patcher.forward(cus);
  
  -- VIEW(.jsp)
  Customer cus =(Customer) request.getParameter("cus");
  <p> id : <%=cus.getCumtomerid() %>  </p>
  
  
  
  
  
  
  