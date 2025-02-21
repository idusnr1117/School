create table member_tbl_02 (
	custno number(6) primary key,
	custname varchar2(20),
	phone varchar2(13),
	address varchar2(60),
	joindate date,
	grade char(1),
	city char(2)
);

create table money_tbl_02 (
	custno number(6),
	saleno number(8),
	pcost number(8),
	amount number(4),
	price number(8),
	pcode varchar2(4),
	sdate date,
	primary key(custno, saleno)
);

create table city_code_tbl_02 (
	city char(2) primary key,
	city_name varchar2(20),
	idate date
);

insert into member_tbl_02 values('100001', '김주민', '010-1111-1111', '서울 동대문구 휘경1동', '20151202', 'A', '10');
insert into member_tbl_02 values('100002', '이주민', '010-1111-2222', '서울 동대문구 휘경2동', '20151206', 'B', '10');
insert into member_tbl_02 values('100003', '박주민', '010-1111-3333', '울릉군 울릉읍 독도1리', '20151206', 'B', '20');
insert into member_tbl_02 values('100004', '홍주민', '010-1111-4444', '울릉군 울릉읍 독도2리', '20151213', 'A', '30');
insert into member_tbl_02 values('100005', '조주민', '010-1111-5555', '제주도 제주시 외나무골', '20151225', 'B', '60');
insert into member_tbl_02 values('100006', '최주민', '010-1111-6666', '제주도 제주시 감나무골', '20151211', 'C', '60');

insert into money_tbl_02 values('100001', '20210001', '500', '5', '2500', 'A001', '20210101');
insert into money_tbl_02 values('100001', '20210002', '1000', '4', '4000', 'A002', '20210101');
insert into money_tbl_02 values('100001', '20210003', '500', '3', '1500', 'A008', '20210101');
insert into money_tbl_02 values('100002', '20210004', '2000', '1', '2000', 'A004', '20210102');
insert into money_tbl_02 values('100002', '20210005', '500', '1', '500', 'A001', '20210103');
insert into money_tbl_02 values('100003', '20210006', '1500', '2', '3000', 'A003', '20210103');
insert into money_tbl_02 values('100004', '20210007', '500', '2', '1000', 'A001', '20210104');
insert into money_tbl_02 values('100004', '20210008', '300', '1', '300', 'A005', '20210104');
insert into money_tbl_02 values('100004', '20210009', '600', '1', '600', 'A006', '20210104');
insert into money_tbl_02 values('100004', '20210010', '3000', '1', '3000', 'A007', '20210106');


insert into city_code_tbl_02 values('10', '서울', sysdate);
insert into city_code_tbl_02 values('20', '대전', sysdate);
insert into city_code_tbl_02 values('30', '대구', sysdate);
insert into city_code_tbl_02 values('40', '광주', sysdate);
insert into city_code_tbl_02 values('50', '성남', sysdate);
insert into city_code_tbl_02 values('60', '수원', sysdate);
insert into city_code_tbl_02 values('70', '분당', sysdate);
insert into city_code_tbl_02 values('80', '용인', sysdate);
insert into city_code_tbl_02 values('90', '과천', sysdate);

select * from member_tbl_02;
select * from money_tbl_02;
select * from city_code_tbl_02;























