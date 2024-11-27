drop database  if exists  Hospital_Management_System

create database Hospital_Management_System 
use Hospital_Management_System

create table DOCTOR_MASTER(
doctor_id varchar(15) primary key not null,
doctor_name varchar(15) not null,
dept varchar(15) not null)

insert into DOCTOR_MASTER (doctor_id,doctor_name,dept) values ('D0001', 'Ram', 'ENT'),('D0002','Rajan','ENT'),
('D0003','Smita','Eye'),
('D0004','Bhavan','Surgery'),
('D0005','Sheela','Surgery'),
('D0006','Nethra','Surgery')

create table ROOM_MASTER(
room_no varchar(15) primary key not null,
room_type varchar(15) not null,
status varchar(15) not null)

insert into ROOM_MASTER(room_no, room_type, status) values ('R0001','AC','occupied'),('R0002','Suite','vacant'),
('R0003','NonAC','vacant'),('R0004','NonAC','occupied'),('R0005','AC','vacant'),('R0006','AC','occupied')

create table PATIENT_MASTER (
p_id Varchar(15) primary key not null,
name Varchar(15) not null,
age numeric(15)  not null,
Weight numeric(15) not null,
Gender Varchar(10)  not null,
Address Varchar(50) not null,
phoneno varchar(10) not null,
Disease Varchar(50)  not null,
Doctor_id Varchar(5),
foreign key (doctor_id) references DOCTOR_MASTER (doctor_id))


insert into PATIENT_MASTER (p_id, name, age, weight, gender, address, phoneno, disease, doctor_id) 
values
('P0001', 'Gita', 35, 65, 'F', 'Chennai', '9867145678', 'Eye Infection', 'D0003'),
('P0002', 'Ashish', 40, 70, 'M', 'Delhi', '9845675678', 'Asthma', 'D0003'),
('P0003', 'Radha', 25, 60, 'F', 'Chennai', '9867166678', 'Pain in heart', 'D0005'),
('P0004', 'Chandra', 28, 55, 'F', 'Bangalore', '9978675567', 'Asthma', 'D0001'),
('P0005', 'Goyal', 42, 65, 'M', 'Delhi', '8967533228', 'Pain in Stomach', 'D0004');


create table ROOM_ALLOCATION (
room_no Varchar(15) ,
foreign key (room_no) references ROOM_MASTER (room_no),
p_id Varchar(15) ,
foreign key (p_id) references PATIENT_MASTER (p_id),
admission_date date not null,
Release_date date)


insert into ROOM_ALLOCATION (room_no,p_id,admission_date,Release_date) values ('R0001','P0001',str_to_date('15-oct-16','%d-%b-%y'),str_to_date('26-oct-16','%d-%b-%y')),
('R0002','P0002',str_to_date('15-nov-16','%d-%b-%y'),str_to_date('26-nov-16','%d-%b-%y')),
('R0002','P0003',str_to_date('01-dec-16','%d-%b-%y'),str_to_date('30-dec-16','%d-%b-%y')),
('R0004','P0001',str_to_date('01-jan-17','%d-%b-%y'),str_to_date('30-jan-17','%d-%b-%y'))

1)Display the patients who were admitted in the month of january
select patient_master.*,room_allocation.admission_date from patient_master,room_allocation where month(room_allocation.admission_date) =1;

2)Display the female patient who is not suffering from ashma
select * from patient_master where gender = 'F' and Disease <>'Asthma'

3)Count the number of male and female patients
select Gender,count(*) as count from patient_master group by Gender
select * from room_allocation

4)Display the patient_id,patient_name, doctor_id, doctor_name, room_no,room_type and admission_date.
select distinct patient_master.p_id,patient_master.name,doctor_master.doctor_id,doctor_master.doctor_name,room_master.room_no,room_master.room_type,room_allocation.admission_date from
patient_master,doctor_master,room_master,room_allocation

5)Display the room_no which was never allocated to any patient.
select patient_master.name,room_allocation.room_no from patient_master,room_allocation where room_allocation.room_no is null

6)Display the room_no, room_type which are allocated more than once.
select room_master.room_no, room_master.room_type
from room_master
join room_allocation on room_master.room_no = room_allocation.room_no
group by room_master.room_no, room_master.room_type
having count(room_allocation.room_no) > 1;


