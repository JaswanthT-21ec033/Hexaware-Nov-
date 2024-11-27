use practice
select * from details 
create table hello (
s_no int )
alter table hello modify s_no int auto_increment primary key
alter table hello  add subject1_total int 
insert into hello (subject1_total) values (5),(7)

select * from hello

alter table hello add constraint con check (subject1_total>4)


alter table hello add constraint con1 foreign key (subject1_total) references details (subject1)

alter table details add column subject1 int 
alter table details modify subject1 int primary key not null
insert into details (subject1) values (3),(5),(7),(8),(9)

select * from details 

alter table details alter subject1 set default 2

delete from details where distinct  subject1 = 2 

