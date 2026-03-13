-- Memo > script.sql

-- DDL
create table tblMemo (
    seq number primary key,                 --메모번호(PK)
    name varchar2(30) not null,             --작성자
    pw varchar2(30) not null,               --암호(수정, 삭제)
    memo varchar2(2000) not null,           --메모
    regdate date default sysdate not null   --작성일
);
create sequence seqMemo;

--쓰기
insert into tblMemo (seq, name, pw, memo, regdate)
values (seqMemo.nextVal, '홍길동', '1111', '메모입니다.', default);

--목록보기
select * from tblMemo order by seq desc;

--작성자 확인하기 > 암호 확인
select count(*) as cnt from tblMemo where seq = 1 and pw = '1111';

--수정하기
update tblMemo set memo = '수정합니다.' where seq = 1;

--삭제하기
delete from tblMemo where seq = 1;

commit;






