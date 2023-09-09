create database users;  #creating the database to start
use users;
create table users(ID int(20) primary key,ame varchar(25),email varchar(50),role varchar(20)); # creating the tables
describe users;
select * from users; # structure of the table
insert into users values(1001,'yeshwanth','yeshwanth5674@gmail.com','softwaredeveloper'); # values added to the tables
insert into users values(1002,'kumar','kumarraj@gmail.com','manual testing');
insert into users values(1003,'arun','arunpandian@gmail.com','project trainer');
insert into users values(1004,'aarthi','aarthijuli@gmail.com','ui/ux developer');
insert into users values(1005,'swathi','swathi354@gmail.com','full stack developer');
select ID,name,email,role from users; # retrive all users from  the users tables
select * from users where ID=1001;# it will show the specific id for the users
select * from users where ID=1002;