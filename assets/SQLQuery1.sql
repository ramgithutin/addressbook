create table addressbook(name varchar(20),emailid varchar(30),userid varchar(20),password varchar(20));
select *from addressbook;
narveen	narveen@gmail.com	narveen@2000	narveen@123
Ram	ram@gmail.com	ram@1999	ram@123
truncate table addressbook;
ALTER TABLE addressbook alter column userid varchar(20) NOT NULL
ALTER TABLE addressbook 
ADD PRIMARY KEY (userid);
drop table addressbook;