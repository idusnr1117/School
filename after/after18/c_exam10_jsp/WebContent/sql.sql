create table tbl_jumin_202108
(
	jumin varchar2(20) primary key,
	name varchar2(15),
	phone varchar2(15),
	address varchar2(50)
);

create table tbl_hosp_202108
(
	hospcode char(4) primary key,
	hospname varchar2(40),
	hosptel varchar2(15),
	hospaddr varchar2(50)
);

create table tbl_vaccresv_202108
(
	resvno number(8) primary key,
	jumin varchar2(20),
	hospcode char(4),
	resvdate date,
	resvtime number(4),
	vcode char(1)
);

create table city_code_tbl_02
(
	city char(2) primary key,
	city_name varchar2(20),
	idate date
);

insert into tbl_jumin_202108 values('710101-1000001', '김주민', '010-1111-1111', '경기도 성남시 수정구 태평1동');
insert into tbl_jumin_202108 values('720101-2000001', '이주민', '010-1111-2222', '경기도 성남시 수정구 태평2동');
insert into tbl_jumin_202108 values('730101-1000001', '박주민', '010-1111-3333', '경기도 성남시 수정구 복정동');
insert into tbl_jumin_202108 values('740101-2000001', '홍주민', '010-1111-4444', '경기도 성남시 수정구 산성동');
insert into tbl_jumin_202108 values('750101-1000001', '조주민', '010-1111-5555', '경기도 성남시 수정구 성남동');
insert into tbl_jumin_202108 values('760101-2000001', '최주민', '010-1111-6666', '경기도 성남시 수정구 중앙동');
insert into tbl_jumin_202108 values('770101-1000001', '정주민', '010-1111-7777', '경기도 성남시 수정구 상대원동');
insert into tbl_jumin_202108 values('780101-2000001', '장주민', '010-1111-8888', '경기도 성남시 수정구 하대원동');
insert into tbl_jumin_202108 values('790101-1000001', '강주민', '010-1111-9999', '경기도 성남시 수정구 야탑1동');
insert into tbl_jumin_202108 values('800101-2000001', '신주민', '010-2222-1111', '경기도 성남시 수정구 야탑2동');

select * from TBL_JUMIN_202108;

insert into TBL_HOSP_202108 values('H001', '가_병원', '031-1111-2222', '10');
insert into TBL_HOSP_202108 values('H002', '나_병원', '031-1111-3333', '20');
insert into TBL_HOSP_202108 values('H003', '다_병원', '031-1111-4444', '30');
insert into TBL_HOSP_202108 values('H004', '라_병원', '031-1111-5555', '40');

select * from TBL_HOSP_202108;

drop table tbl_vaccresv_202108;

insert into TBL_VACCRESV_202108 values('20210001', '710101-1000001', 'H001', '20210801', '0930', 'A');
insert into TBL_VACCRESV_202108 values('20210002', '720101-2000001', 'H002', '20210801', '1030', 'B');
insert into TBL_VACCRESV_202108 values('20210003', '730101-1000001', 'H003', '20210801', '1130', 'C');
insert into TBL_VACCRESV_202108 values('20210004', '740101-2000001', 'H001', '20210801', '1230', 'A');
insert into TBL_VACCRESV_202108 values('20210005', '750101-1000001', 'H001', '20210801', '1330', 'B');
insert into TBL_VACCRESV_202108 values('20210006', '760101-2000001', 'H002', '20210801', '1430', 'C');
insert into TBL_VACCRESV_202108 values('20210007', '770101-1000001', 'H003', '20210801', '1530', 'A');
insert into TBL_VACCRESV_202108 values('20210008', '780101-2000001', 'H001', '20210801', '1630', 'B');
insert into TBL_VACCRESV_202108 values('20210009', '790101-1000001', 'H001', '20210801', '1730', 'C');
insert into TBL_VACCRESV_202108 values('20210010', '800101-2000001', 'H002', '20210801', '1830', 'A');

select * from TBL_VACCRESV_202108;

insert into CITY_CODE_TBL_02 values('10', '서울', sysdate);
insert into CITY_CODE_TBL_02 values('20', '대전', sysdate);
insert into CITY_CODE_TBL_02 values('30', '대구', sysdate);
insert into CITY_CODE_TBL_02 values('40', '광주', sysdate);
insert into CITY_CODE_TBL_02 values('50', '성남', sysdate);
insert into CITY_CODE_TBL_02 values('60', '수원', sysdate);
insert into CITY_CODE_TBL_02 values('70', '분당', sysdate);
insert into CITY_CODE_TBL_02 values('80', '용인', sysdate);
insert into CITY_CODE_TBL_02 values('90', '과천', sysdate);

select * from CITY_CODE_TBL_02;



























