
    -- 게시판 테이블
    create table tblBoard (
        seq number primary key,
        subject varchar2(500) not null,
        content varchar2(4000) not null,
        id varchar2(50) not null references tblUser(id),
        regdate date default sysdate not null,
        readcount number default 0 not null
    );
    create sequence seqBoard;
    
    select * from tblBoard;
    
    commit;
    
    select
        seq, subject, id, regdate, readcount,
        (select name from tblUser where id = tblBoard.id) as name
    from tblBoard order by seq desc;
    
    create or replace view vwBoard
    as
    select
        seq, subject, id, regdate, readcount, content,
        (select name from tblUser where id = tblBoard.id) as name,
        (sysdate - regdate) as isnew,
        (select count(*) from tblComment where bseq = tblBoard.seq) as commentCount
    from tblBoard order by seq desc;
    
    update tblBoard set regdate = regdate - 1 where seq in (4,5);
    update tblBoard set regdate = regdate - 2 where seq in (2,3);
    
    select * from vwBoard;
    
    select a.*, (select name from tblUser where id = a.id) as name from tblBoard a;
    
    -- 게시판 검색(제목, 내용, 글쓴이)
    select * from tblBoard where subject like '%자바%';
    select * from tblBoard where content like '%자바%';
    select * from tblBoard where subject like '%자바%' or content like '%자바%';
    select * from tblBoard where subject like '%자바%' and regdate between '2026-01-01' and sysdate;
    
    -- 전문적인 검색 환경 > Elastic Search
    select * from tblBoard where subject like '%자바%';
    select * from tblBoard where subject like '%java%';
    
    
    -- 페이징
    select * from (select a.*, rownum as rnum from vwBoard a) where rnum between 261 and 270;    
    
    select count(*) as cnt from vwBoard;
    
    
    
    
    
    
    
    
    
    
    
    
    