create schema  Car_Rental_System

use Car_Rental_System

create table Vehicle (
vehicleID varchar(50) primary key ,
make varchar(50),
model varchar(50) ,
dailyRate int, 
status enum ('Available', 'Not Available') not null,
passengerCapacity int ,
engineCapacity varchar(10))

INSERT INTO Vehicle (VehicleID, Make, Model, DailyRate, Status, PassengerCapacity, EngineCapacity) VALUES
('VH001A', 'Mahindra', 'Thar 2022', 85.00, 'Available', 4, 2.2),
('VH002B', 'Mahindra', 'Bolero 2021', 60.00, 'Not Available', 7, 1.5),
('VH003C', 'Toyota', 'Camry 2023', 90.00, 'Available', 5, 2.5),
('VH004D', 'Hyundai', 'Tucson 2022', 75.00, 'Available', 5, 2.0),
('VH005E', 'Ford', 'Mustang 2020', 120.00, 'Not Available', 4, 5.0),
('VH006F', 'Chevrolet', 'Spark 2019', 50.00, 'Available', 4, 1.0),
('VH007G', 'Nissan', 'Altima 2021', 85.00, 'Not Available', 5, 2.5),
('VH008H', 'Honda', 'Civic 2022', 70.00, 'Available', 5, 1.8),
('VH009I', 'BMW', 'X5 2023', 140.00, 'Available', 5, 3.0),
('VH010J', 'Jeep', 'Wrangler 2021', 110.00, 'Not Available', 4, 3.6),
('VH011K', 'Audi', 'Q7 2022', 150.00, 'Available', 7, 3.0),
('VH012L', 'Volkswagen', 'Passat 2021', 80.00, 'Available', 5, 2.0),
('VH013M', 'Kia', 'Sorento 2022', 78.00, 'Not Available', 7, 2.4),
('VH014N', 'Mazda', 'CX-5 2023', 72.00, 'Available', 5, 2.5),
('VH015O', 'Renault', 'Duster 2021', 65.00, 'Available', 5, 1.5),
('VH016P', 'Ford', 'Explorer 2020', 100.00, 'Not Available', 7, 3.0),
('VH017Q', 'Toyota', 'Highlander 2023', 105.00, 'Available', 7, 3.5),
('VH018R', 'Chevrolet', 'Tahoe 2022', 130.00, 'Available', 7, 5.3),
('VH019S', 'Honda', 'CR-V 2021', 75.00, 'Available', 5, 1.5),
('VH020T', 'Hyundai', 'Santa Fe 2020', 82.00, 'Not Available', 5, 2.4);

create table Customer(
customerID varchar(10) Primary Key,
firstName varchar(50),
lastName varchar(50),
email varchar(50),
userID varchar(20),
password varchar(50),
phoneNumber bigint,
Aadhar_Number bigint)

INSERT INTO Customer (customerID, firstName, lastName, email, userID, password, Aadhar_Number, phoneNumber) VALUES
('CU001TN', 'Arun', 'Kumar', 'arun.kumar@example.com', 'arun_kumar', 'Arun@123', 123456789012, 9876543210),
('CU002TN', 'Priya', 'Subramani', 'priya.subramani@example.com', 'priya_subramani', 'Priya@456', 234567890123, 9876543211),
('CU003TN', 'Vijay', 'Raghavan', 'vijay.raghavan@example.com', 'vijay_raghavan', 'Vijay@789', 345678901234, 9876543212),
('CU004TN', 'Lakshmi', 'Iyer', 'lakshmi.iyer@example.com', 'lakshmi_iyer', 'Lakshmi@101', 456789012345, 9876543213),
('CU005TN', 'Suresh', 'Muthuraj', 'suresh.muthuraj@example.com', 'suresh_muthuraj', 'Suresh@102', 567890123456, 9876543214),
('CU006TN', 'Kavitha', 'Ravi', 'kavitha.ravi@example.com', 'kavitha_ravi', 'Kavitha@103', 678901234567, 9876543215),
('CU007TN', 'Rajesh', 'Narayanan', 'rajesh.narayanan@example.com', 'rajesh_narayanan', 'Rajesh@104', 789012345678, 9876543216),
('CU008TN', 'Deepa', 'Krishnan', 'deepa.krishnan@example.com', 'deepa_krishnan', 'Deepa@105', 890123456789, 9876543217),
('CU009TN', 'Anand', 'Mohan', 'anand.mohan@example.com', 'anand_mohan', 'Anand@106', 901234567890, 9876543218),
('CU010TN', 'Meena', 'Venkatesan', 'meena.venkatesan@example.com', 'meena_venkatesan', 'Meena@107', 112345678901, 9876543219),
('CU011TN', 'Ganesh', 'Pillai', 'ganesh.pillai@example.com', 'ganesh_pillai', 'Ganesh@108', 223456789012, 9876543220),
('CU012TN', 'Revathi', 'Ramesh', 'revathi.ramesh@example.com', 'revathi_ramesh', 'Revathi@109', 334567890123, 9876543221),
('CU013TN', 'Saravanan', 'Murthy', 'saravanan.murthy@example.com', 'saravanan_murthy', 'Saravanan@110', 445678901234, 9876543222),
('CU014TN', 'Divya', 'Balu', 'divya.balu@example.com', 'divya_balu', 'Divya@111', 556789012345, 9876543223),
('CU015TN', 'Manoj', 'Kannan', 'manoj.kannan@example.com', 'manoj_kannan', 'Manoj@112', 667890123456, 9876543224),
('CU016TN', 'Aishwarya', 'Sundar', 'aishwarya.sundar@example.com', 'aishwarya_sundar', 'Aishwarya@113', 778901234567, 9876543225),
('CU017TN', 'Prakash', 'Rajan', 'prakash.rajan@example.com', 'prakash_rajan', 'Prakash@114', 889012345678, 9876543226),
('CU018TN', 'Ranjani', 'Gopal', 'ranjani.gopal@example.com', 'ranjani_gopal', 'Ranjani@115', 990123456789, 9876543227),
('CU019TN', 'Balaji', 'Vasudevan', 'balaji.vasudevan@example.com', 'balaji_vasudevan', 'Balaji@116', 101234567890, 9876543228),
('CU020TN', 'Shankar', 'Perumal', 'shankar.perumal@example.com', 'shankar_perumal', 'Shankar@117', 212345678901, 9876543229);


create table Lease(
leaseID bigint Primary Key,
vehicleID varchar(50),
customerID varchar(10),
foreign key (vehicleID) references Vehicle(vehicleID),
foreign key (customerID) references Customer (customerID),
startDate date ,
endDate date ,
type enum ('DailyLease','MonthlyLease') not null)


create table Payment (
paymentID varchar(30),
leaseID bigint,
foreign key (leaseID) references Lease(leaseID),
paymentDate date,
amount bigint)


select * from Vehicle 
select * from Customer
select * from Lease
select * from Payment
use practice
select subject1 from details limit 1;
