-- =============멤버 SQL 시작 =============
-- 멤버 테이블 삭제 
DROP TABLE member_table CASCADE CONSTRAINTS;
-- 멤버 시퀀스 삭제
drop sequence member_seq;

-- 멤버 테이블 설정
create table member_table(
    memberNum number(20) primary key,
    memberId varchar(50),
    memberPassword varchar(100),
    memberName varchar(50),
    memberPwCk varchar(50),
    memberEmail varchar(50),
    memberAdress varchar(50),
    adminCk varchar(50)
);


-- 멤버 시퀀스 설정
CREATE SEQUENCE member_seq
       INCREMENT BY 1
       START WITH 0
       MINVALUE 0
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       ORDER;

-- 자신이 회원가입한 아이디의 adminCk = 1 로 바꾸면 관리자계정으로 변경됨
update member_table set adminCk=1  where  memberId = 'jang';

--커밋
commit;

-- =============멤버 SQL 끝 =============


-- =============공지사항/이벤트 게시판 SQL 시작 =============
-- 공지사항 테이블 삭제 
DROP TABLE notice_board CASCADE CONSTRAINTS;
-- 공지사항 시퀀스 삭제
drop sequence notice_seq;

-- 이벤트 테이블 삭제 
DROP TABLE event_board CASCADE CONSTRAINTS;
-- 이벤트 시퀀스 삭제
drop sequence event_seq;


-- 테이블 생성 ( 공지사항)
create table notice_board(
    noticeId number(20) primary key,
    noticeBoardWriter varchar(50),
    noticeBoardTitle varchar(50),
    noticeBoardContents varchar(500),
    noticeBoardCreatedTime date default sysdate,
    noticeBoardHits int default 0,
    noticefileAttached int default 0
);

-- 시퀀스 생성 (공지사항)
CREATE SEQUENCE notice_seq
       INCREMENT BY 1
       START WITH 0
       MINVALUE 0
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       ORDER;

-- 테이블 생성 (이벤트)
create table event_board(
    eventId number(20) primary key,
    eventBoardWriter varchar(50),
    eventBoardTitle varchar(50),
    eventBoardContents varchar(500),
    eventBoardCreatedTime date default sysdate,
    eventBoardHits int default 0,
    eventfileAttached int default 0
);

-- 시퀀스 생성 (이벤트)
CREATE SEQUENCE event_seq
       INCREMENT BY 1
       START WITH 0
       MINVALUE 0
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       ORDER;

-- 커밋
commit;
    
-- =============공지사항/이벤트 게시판 SQL 끝 =============


-- ==============건의사항 게시판=================
create table hope_board(
    bno number(10, 0),
    title varchar2(150) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date default sysdate,
    constraint pk_board PRIMARY key(bno)
);

create sequence hopeseq_board
increment by 1
start with 0
maxvalue 9999999
minvalue 0
       NOCYCLE
       NOCACHE
       ORDER;

select * from hope_board;

commit;

-- ==============오류 게시판==============




--테이블 생성
create table error_board(
    bno number(10, 0),
    title varchar2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date default sysdate
    );

--프라이머리 키 주기
alter table error_board add constraint pk_error_board primary key (bno);


--시퀀스
create sequence error_seq_board
    increment by 1
    start with 0
    maxvalue 9999999
    minvalue 0;

--커밋
commit;
    
-- =============search 관련 SQL 시작  =============
-- search 테이블
create table search_keyword(
    searchNum number(20) PRIMARY key,
    keyword VARCHAR2(100)
);

-- search 시퀀스
CREATE SEQUENCE search_seq
       INCREMENT BY 1
       START WITH 0
       MINVALUE 0
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

-- search에 키워드 따로 등록하는 sql을 만들지않아서 직접 하나하나 다 넣어야함
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'SPRING');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'JAVA');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'DATABASE');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'MyBatis');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'SPRINGBOOT');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'SPRINGMVC');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'SPRINGSECURITY');
insert into search_keyword(searchNum, keyword) values (search_seq.NEXTVAL, 'SpringCore');

commit;

-- ==============강의영상 QnA==============
drop table tbl_board cascade CONSTRAINTS;

drop SEQUENCE seq_board;

create sequence seq_board
increment by 1
start with 0
maxvalue 9999999
minvalue 0;

create table tbl_board (
bno number(10, 0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
updatedate date default sysdate
);

alter table tbl_board add constraint pk_qna_board primary key (bno); 

commit;

-- ===댓글===

drop table tbl_reply cascade CONSTRAINTS;

drop SEQUENCE seq_reply;

create sequence seq_reply
increment by 1
start with 0
maxvalue 9999999
minvalue 0;

create table tbl_reply (
  rno number(10,0), 
  bno number(10,0) not null,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null, 
  replyDate date default sysdate, 
  updateDate date default sysdate
);

alter table tbl_reply add constraint pk_reply primary key (rno);
alter table tbl_reply  add constraint fk_reply_board  
foreign key (bno)  references  tbl_board (bno); 

drop index idx_reply;
create index idx_reply on tbl_reply(bno desc, rno asc);
commit;


-- == 결제 테이블 생성 ==

create table payMent (
  imp_uid VARCHAR2(100), 
  merchant_uid VARCHAR2(100) not null,
  paid_amount number not null,
  apply_num varchar2(100) not null, 
  paid_at date default sysdate
);

create sequence seq_payment
increment by 1
start with 0
maxvalue 9999999
minvalue 0;

commit;

-- 리액트 게시판 SQL문
CREATE SEQUENCE "HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;







