select custno, custname, phone, address, to_char(joindate, 'yyyy-mm-dd'),
case grade
	when 'A' then 'VIP'
	when 'B' then '일반'
	when 'C' then '직원'
	else grade end grade,
city
from member_tbl_02;