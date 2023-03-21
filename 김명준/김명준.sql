--회원 테이블 생성
create table t_member1(
    id varchar2(10) primary key,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate 
);


-- 회원 정보 추가
insert into t_member1 values('hong','1212','홍길동','hong@gmail.com',sysdate);
insert into t_member1 values('lee','1212','이순신','lee@gtest.com',sysdate);
insert into t_member1 values('kim','1212','김유신','kim@jweb.com',sysdate);
insert into t_member1 values('pack','1212','박지성','pack@jweb.com',sysdate);
commit;

select * from t_member1; 