--ȸ�� ���̺� ����
create table t_member1(
    id varchar2(10) primary key,
    pwd varchar2(10),
    name varchar2(50),
    email varchar2(50),
    joinDate date default sysdate 
);


-- ȸ�� ���� �߰�
insert into t_member1 values('hong','1212','ȫ�浿','hong@gmail.com',sysdate);
insert into t_member1 values('lee','1212','�̼���','lee@gtest.com',sysdate);
insert into t_member1 values('kim','1212','������','kim@jweb.com',sysdate);
insert into t_member1 values('pack','1212','������','pack@jweb.com',sysdate);
commit;

select * from t_member1; 