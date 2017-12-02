use mysql;
grant all privileges on beliefarm.* to lucky@localhost identified by 'billy';

use mysql;
select user, host from user;

use beliefarm;
show tables;
select * from user;
select * from farmer;
select * from project;
select * from reward;
select * from SupportProject;
select * from Dayvalue;
delete * from DayValues where id = 30;

show grants for 'lucky'@'localhost';
select id, email, password, phone, name from USER;