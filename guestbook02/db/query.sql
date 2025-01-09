

desc guestbook;

-- insert
insert into guestbook values(null, '둘리', '1234', 'ㅎㅇ!', now());

-- select
select id, name, contents, date_format(reg_date, '%Y-%m-%d %h:%i:%s') from guestbook order by reg_date desc;

-- delete
delete from guestbook where id = ? and password='1234';

select * from guestbook;

desc user;

select * from board;

select id, name from user where email='' and password='';

update user set name="바보", password='1234' where id =1;

select a.id, a.title, a.contents, a.hit,
       date_format(a.reg_date, '%Y-%m-%d %h:%i:%s'),
       a.g_no, a.o_no, a.depth, a.user_id, b.name
from board a, user b
where a.user_id=b.id
order by g_no desc, o_no asc
limit 10, 20;

select * from board
order by g_no desc, o_no asc;


select * from user;
limit 1,2;


insert into board values(null, "test", "11", 0, now(), 15, 1, 0, 1);
insert into board values(null, "11-1", "11-1", 0, now(), 15, 2, 1, 1);
insert into board values(null, "12", "12", 0, now(), 16, 1, 0, 1);

insert into board values(null, "13", "13", 0, now(), 17, 1, 0, 1);
insert into board values(null, "14", "14", 0, now(), 18, 1, 0, 1);
insert into board values(null, "15", "15", 0, now(), 19, 1, 0, 1);
insert into board values(null, "16", "16", 0, now(), 20, 1, 0, 1);
insert into board values(null, "17", "17", 0, now(), 21, 1, 0, 1);




desc user;

alter table user add column role enum("USER", "ADMIN") default "USER" NOT NULL;

select * from user;

insert into user values(null, '관리자', 'admin@mysite.com', '1234','male', now(), 'ADMIN');


select * from board;

select ifnull(max(g_no), 0) + 1 from board a

update board set o_no=o_no+1 where o_no>=1 -1;



-- 새 테이블3
CREATE TABLE `site` (
                        `id`          INT          NOT NULL, -- 새 컬럼
                        `title`       VARCHAR(45)  NOT NULL, -- 새 컬럼2
                        `welcome`     VARCHAR(200) NOT NULL, -- 새 컬럼3
                        `profile`     VARCHAR(45)  NOT NULL, -- 새 컬럼4
                        `description` TEXT         NOT NULL  -- 새 컬럼5
);

-- 새 테이블3
ALTER TABLE `site`
    ADD CONSTRAINT `PK_site` -- 새 테이블3 기본키
        PRIMARY KEY (
                     `id` -- 새 컬럼
            );

ALTER TABLE `site`
    MODIFY COLUMN `id` INT NOT NULL AUTO_INCREMENT;

ALTER TABLE `site`
    AUTO_INCREMENT = 0;

insert into site values(null, 'MySite', '안녕하세요. 김서영의 mysite에 오신 것을 환영합니다.', '/assets/upload-images/chipanddale.jpeg','이 사이트는 자바 웹 프로그램밍 실습과제 예제 사이트입니다.\n
메뉴는 사이트 소개, 방명록, 게시판이 있구요.\njava 수업 + 데이터베이스 수업 + 웹프로그래밍 수업 배운 거 있는거 없는 거 다 합쳐서 만들어 놓은 사이트 입니다.');


select * from site;

-- 새 테이블
DROP TABLE IF EXISTS `guestbook_log`;

-- 새 테이블
CREATE TABLE `guestbook_log` (
                                 `date`  DATE NOT NULL, -- 새 컬럼
                                 `count` INT  NULL      -- 새 컬럼2
);

-- 새 테이블
ALTER TABLE `guestbook_log`
    ADD CONSTRAINT `PK_guestbook_log` -- 새 테이블 기본키
        PRIMARY KEY (
                     `date` -- 새 컬럼
            );


select * from guestbook_log;