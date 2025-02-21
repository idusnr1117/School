create table tbl_patient_202004
(
	p_no char(4) primary key,
	p_name varchar2(20),
	p_birth char(8),
	p_gender char(1),
	p_tel1 char(3),
	p_tel2 char(4),
	p_tel3 char(4),
	p_city char(2)
);

create table tbl_lab_test_202004
(
	t_code char(4) primary key,
	t_name varchar2(20)
);

create table tbl_result_202004
(
	p_no char(4),
	t_code char(4),
	t_sdate date,
	t_status char(1),
	t_ldate date,
	t_result char(1),
	primary key(p_no, t_code)
);

create table city_code_tbl_02
(
	city char(2) primary key,
	city_name varchar2(20),
	idate date
);

insert into TBL_PATIENT_202004 values('1001', '김환자', '19850301', 'M', '010', '2222', '0001', '10');
insert into TBL_PATIENT_202004 values('1002', '이환자', '19900301', 'M', '010', '2222', '0002', '20');
insert into TBL_PATIENT_202004 values('1003', '박환자', '19770301', 'F', '010', '2222', '0003', '30');
insert into TBL_PATIENT_202004 values('1004', '조환자', '19650301', 'F', '010', '2222', '0004', '10');
insert into TBL_PATIENT_202004 values('1005', '황환자', '19400301', 'M', '010', '2222', '0005', '40');
insert into TBL_PATIENT_202004 values('1006', '양환자', '19440301', 'F', '010', '2222', '0006', '40');
insert into TBL_PATIENT_202004 values('1007', '허환자', '19760301', 'F', '010', '2222', '0007', '10');

select * from TBL_PATIENT_202004;

insert into TBL_LAB_TEST_202004 values('T001', '결핵');
insert into TBL_LAB_TEST_202004 values('T002', '장티푸스');
insert into TBL_LAB_TEST_202004 values('T003', '수두');
insert into TBL_LAB_TEST_202004 values('T004', '홍역');
insert into TBL_LAB_TEST_202004 values('T005', '콜레라');

select * from TBL_LAB_TEST_202004;

insert into TBL_RESULT_202004 values('1001', 'T001', '2020-01-01', '1', '2020-01-02', 'X');
insert into TBL_RESULT_202004 values('1002', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1003', 'T003', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1004', 'T004', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1005', 'T005', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1006', 'T001', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1007', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1005', 'T003', '2020-01-01', '2', '2020-01-02', 'P');
insert into TBL_RESULT_202004 values('1006', 'T004', '2020-01-01', '2', '2020-01-02', 'N');
insert into TBL_RESULT_202004 values('1007', 'T005', '2020-01-01', '2', '2020-01-02', 'N');

select * from TBL_RESULT_202004;

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

select p_no, p_name, to_char(to_date(p_birth), 'YYYY\"년\"MM\"월\"DD\"일\"'),
decode(p_gender, 'M', '남', 'F', '여', '에러'), p_tel1||'-'||p_tel2||'-'||p_tel3,
decode(p_city, '10', '서울', '20', '경기', '30', '강원', '40', '대구', '에러')
from tbl_patient_202004;











