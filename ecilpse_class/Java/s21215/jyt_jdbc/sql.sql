select *
from tab;

select *
from pc_emp;

select *
from pc_menu;

insert into pc_menu values(10, '음료', '체리콕', 3000);

select max(menu_no) from pc_menu;

select * from pc_emp;

insert into pc_emp values(5, '민지성', 'slave', '2007-07-11', 1045678978, '경기도 성남시', '100');

select *
from pc_menu;

-- PC_MENU테이블에서 메뉴명(menu_name) '제로콜라'의 가격(menu_price)을 2500원으로 변경하시오.
update pc_menu
set	menu_price = 2500
where menu_name = '제로콜라';
