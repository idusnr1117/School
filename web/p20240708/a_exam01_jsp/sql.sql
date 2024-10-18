select * from member_tbl_02;

delete from MEMBER_TBL_02 where custname = '양현욱';

select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd') joindate,
case when grade ='A' then 'VIP'
	when grade ='B' then '일반'
	else '직원' end grade, city 
from member_tbl_02 order by custno asc;