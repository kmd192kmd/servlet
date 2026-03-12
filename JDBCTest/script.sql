-- C:\code\server\JDBCTest\script.sql

-- 주소록 테이블
create table tblAddress (
    seq number primary key,                                 --PK
    name varchar2(30) not null,                             --이름
    age number(3) not null check(age between 0 and 120),    --나이
    gender char(1) not null check(gender in ('m', 'f')),    --성별
    tel varchar2(15) not null,                              --연락처
    address varchar2(300) not null,                         --주소
    regdate date default sysdate not null                   --등록일
);
create sequence seqAddress;

--CRUD SQL
--1. 검증
--2. JDBC > 프로그램 작업을 위해서 미리 작성
insert into tblAddress (seq, name, age, gender, tel, address, regdate)
    values (seqAddress.nextval, '홍길동', 20, 'm', '010-1234-5678'
           , '서울시 강남구 대치동', default);

select * from tblAddress;

update tblAddress set address = '서울시 강남구 역삼동' where seq = 1;

delete from tblAddress where seq = 6;

commit;

select * from tabs;

select count(*) from tblAddress;

select name from tblAddress where seq = 12;

