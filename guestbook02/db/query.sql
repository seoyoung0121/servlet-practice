

desc guestbook;

-- insert
insert into guestbook values(null, '둘리', '1234', 'ㅎㅇ!', now());

-- select
select id, name, contents, date_format(reg_date, '%Y-%m-%d %h:%i:%s') from guestbook order by reg_date desc;

-- delete
delete from guestbook where id = ? and password='1234';

select * from guestbook;

desc user;

select * from user;

select id, name from user where email='' and password='';

update user set name="바보", password='1234' where id =1;



