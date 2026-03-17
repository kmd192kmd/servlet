
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
        seq, subject, id, regdate, readcount,
        (select name from tblUser where id = tblBoard.id) as name,
        (sysdate - regdate) as isnew
    from tblBoard order by seq desc;
    
    update tblBoard set regdate = regdate - 1 where seq in (4,5);
    update tblBoard set regdate = regdate - 2 where seq in (2,3);
    
    select * from vwBoard;
    
    select a.*, (select name from tblUser where id = a.id) as name from tblBoard a;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    