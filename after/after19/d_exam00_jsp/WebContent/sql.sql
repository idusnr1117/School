create table student_tbl_03
(
	sno varchar2(6) primary key,
	sname varchar2(10),
	sphone varchar2(15),
	sgender varchar2(4),
	saddress varchar2(50)
);

create table exam_tbl_03
(
	sno varchar2(6) primary key,
	ekor number(4),
	emath number(4),
	eeng number(4),
	ehist number(4)
);



select * from STUDENT_TBL_03;

insert into EXAM_TBL_03 values('10101', 98, 91, 95, 90);
insert into EXAM_TBL_03 values('10102', 87, 89, 92, 82);

select * from EXAM_TBL_03;

drop table student_tbl_03;