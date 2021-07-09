--查看所有的表空间
select * from v$tablespace;
--查看表空间中的数据文件
select file_name,tablespace_name from dba_data_files;
--查看用户的默认表空间
select DEFAULT_TABLESPACE,TEMPORARY_TABLESPACE from dba_users where username='SCOTT';
--创建表空间
create tablespace lisi
datafile 'lisi.dbf'
size 100m
autoextend on
next 10m
maxsize 1024m
extent management local;
--创建临时表空间
create temporary tablespace lisi_temp
tempfile 'lisi_temp.dbf' 
size 100m
autoextend on 
next 10m
extent management local;
--查看临时表空间
select * from dba_temp_files;

--删除表空间
drop  tablespace lishaofeng;
--锁定/解锁
 ALTER USER robinson ACCOUNT LOCK/UNLOCK
alter lishaofeng robinson account unlock;
--修改密码
 ALTER robinson  IDENTIFIED BY  newpassword;
--创建用户
create user it
identified by it123456
default tablespace lishaofeng
temporary tablespace lishaofeng;
--权限分类
--系统权限： 系统规定用户使用数据库的权限。（系统权限是对用户而言)。
--对象权限： 某种权限用户对其它用户的表或视图的存取权限。（是针对表或视图而言的）。

--给用户授权
--oracle数据库常用角色
connect--连接角色，基本角色
resource --开发者角色
dba--超级管理员角色
--系统权限
--给it用户授权dba角色
grant dba to it;

--查看所有系统权限： 
SELECT * FROM SYSTEM_PRIVILEGE_MAP;

--切换到it用户下
create table terson(
 pid number(20),
 pname varchar2(10)

);
insert into terson(pid,pname) values(001,'李四');

--给对象权限
grant 对象权限 on 对象 to 用户  [WITH GRANT OPTION]
grant select on scott.emp to it;

grant select, update, insert on product to user02;
grant all on product to user02;
grant all on product to public;  // public表示是所有的用户
grant select on terson to scott;

revoke select on terson  from lishaofeng;

update terson set pname='张三' where pname='李四';
commit;
select * from terson;

--撤消系统权限
revoke 系统权限 from 用户;
revoke resource from lzh;
--撤消对象权限
revoke 对象权限 on 对象 from 用户;
revoke select, update on product from user02;
--角色就是一组权限（privilege），更加方便对权限进行管理
--每种角色都用于执行一些特定的管理任务
--创建角色/删除角色
create role 角色名 / drop role 角色名
create role shaofeng;
grant dba to shaofeng;

--给角色授权
--系统权限：
 grant 系统权限 to 角色
--对象权限：
 grant 对象权限 on 对象 to 角色
--撤消角色权限: 
revoke 系统权限 from 角色
revoke对象权限 on 对象 from 角色

--查看用户所有系统权限
select * from user_sys_privs

--查看用户所属角色
select * from user_role_privs;


--角色有哪些系统权限
select * from role_sys_privs;

--角色有哪些对象权限
select * from role_tab_privs;

--用户有哪些对象权限
select * from user_tab_privs;
create table per(
perid number(6),
pername varchar2(10)
  
)

create sequence yf001;
select yf001.nextnal from dual;
select yf001.currval from dual;

insert into per(perid,pername)values (yf001.nextval,'tom');
commit;
select * from per;
create synonym peron for per;
select *from peron;

grant create synonym to per;


--index索引是关系数据库中用于存放每一条记录的一种对象，主要目的是加快数据的读取速度和完整性检查
--创建索引
create index myyindex on per(pername desc);

select * from per;
select * from user_indexes where table_name='per';


create sequence cycle nocycle;
create sequence d3 minvalue 1 maxvalue 2 cache 4;

