-- Create Database
CREATE DATABASE IF NOT EXISTS Car_Rental_System;
USE Car_Rental_System;

-- Create Vehicles Table
CREATE TABLE IF NOT EXISTS Vehicles (
    vehicleID VARCHAR(50) PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    dailyRate DECIMAL(10, 2),
    status ENUM('Available', 'NotAvailable') NOT NULL,
    passengerCapacity INT,
    engineCapacity VARCHAR(10)
);

-- Insert 20 sample entries into Vehicles Table
INSERT INTO Vehicles (vehicleID, make, model, dailyRate, status, passengerCapacity, engineCapacity) VALUES
('VH001A', 'Mahindra', 'Thar 2022', 85.00, 'Available', 4, '2.2'),
('VH002B', 'Mahindra', 'Bolero 2021', 60.00, 'NotAvailable', 7, '1.5'),
('VH003C', 'Toyota', 'Camry 2023', 90.00, 'Available', 5, '2.5'),
('VH004D', 'Hyundai', 'Tucson 2022', 75.00, 'Available', 5, '2.0'),
('VH005E', 'Ford', 'Mustang 2020', 120.00, 'NotAvailable', 4, '5.0'),
('VH006F', 'Chevrolet', 'Spark 2019', 50.00, 'Available', 4, '1.0'),
('VH007G', 'Nissan', 'Altima 2021', 85.00, 'NotAvailable', 5, '2.5'),
('VH008H', 'Honda', 'Civic 2022', 70.00, 'Available', 5, '1.8'),
('VH009I', 'BMW', 'X5 2023', 140.00, 'Available', 5, '3.0'),
('VH010J', 'Jeep', 'Wrangler 2021', 110.00, 'NotAvailable', 4, '3.6'),
('VH011K', 'Audi', 'Q7 2022', 150.00, 'Available', 7, '3.0'),
('VH012L', 'Volkswagen', 'Passat 2021', 80.00, 'Available', 5, '2.0'),
('VH013M', 'Kia', 'Sorento 2022', 78.00, 'NotAvailable', 7, '2.4'),
('VH014N', 'Mazda', 'CX-5 2023', 72.00, 'Available', 5, '2.5'),
('VH015O', 'Renault', 'Duster 2021', 65.00, 'Available', 5, '1.5'),
('VH016P', 'Ford', 'Explorer 2020', 100.00, 'NotAvailable', 7, '3.0'),
('VH017Q', 'Toyota', 'Highlander 2023', 105.00, 'Available', 7, '3.5'),
('VH018R', 'Chevrolet', 'Tahoe 2022', 130.00, 'Available', 7, '5.3'),
('VH019S', 'Honda', 'CR-V 2021', 75.00, 'Available', 5, '1.5'),
('VH020T', 'Hyundai', 'Santa Fe 2020', 82.00, 'NotAvailable', 5, '2.4');

-- Create Customers Table
CREATE TABLE IF NOT EXISTS Customers (
    customerID VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(50),
    userID VARCHAR(20),
    password VARCHAR(50),
    phoneNumber BIGINT,
    Aadhar_Number BIGINT
);

-- Insert 20 sample entries into Customers Table
INSERT INTO Customers (customerID, firstName, lastName, email, userID, password, phoneNumber, Aadhar_Number) VALUES
('CU001TN', 'Arun', 'Kumar', 'arun.kumar@example.com', 'arun_kumar', 'Arun@123', 9876543210, 123456789012),
('CU002TN', 'Priya', 'Subramani', 'priya.subramani@example.com', 'priya_subramani', 'Priya@456', 9876543211, 234567890123),
('CU003TN', 'Vijay', 'Raghavan', 'vijay.raghavan@example.com', 'vijay_raghavan', 'Vijay@789', 9876543212, 345678901234),
('CU004TN', 'Lakshmi', 'Iyer', 'lakshmi.iyer@example.com', 'lakshmi_iyer', 'Lakshmi@101', 9876543213, 456789012345),
('CU005TN', 'Suresh', 'Muthuraj', 'suresh.muthuraj@example.com', 'suresh_muthuraj', 'Suresh@102', 9876543214, 567890123456),
('CU006TN', 'Kavitha', 'Ravi', 'kavitha.ravi@example.com', 'kavitha_ravi', 'Kavitha@103', 9876543215, 678901234567),
('CU007TN', 'Rajesh', 'Narayanan', 'rajesh.narayanan@example.com', 'rajesh_narayanan', 'Rajesh@104', 9876543216, 789012345678),
('CU008TN', 'Deepa', 'Krishnan', 'deepa.krishnan@example.com', 'deepa_krishnan', 'Deepa@105', 9876543217, 890123456789),
('CU009TN', 'Anand', 'Mohan', 'anand.mohan@example.com', 'anand_mohan', 'Anand@106', 9876543218, 901234567890),
('CU010TN', 'Meena', 'Venkatesan', 'meena.venkatesan@example.com', 'meena_venkatesan', 'Meena@107', 9876543219, 112345678901),
('CU011TN', 'Ganesh', 'Pillai', 'ganesh.pillai@example.com', 'ganesh_pillai', 'Ganesh@108', 9876543220, 223456789012),
('CU012TN', 'Revathi', 'Ramesh', 'revathi.ramesh@example.com', 'revathi_ramesh', 'Revathi@109', 9876543221, 334567890123),
('CU013TN', 'Saravanan', 'Murthy', 'saravanan.murthy@example.com', 'saravanan_murthy', 'Saravanan@110', 9876543222, 445678901234),
('CU014TN', 'Divya', 'Balu', 'divya.balu@example.com', 'divya_balu', 'Divya@111', 9876543223, 556789012345),
('CU015TN', 'Manoj', 'Kannan', 'manoj.kannan@example.com', 'manoj_kannan', 'Manoj@112', 9876543224, 667890123456),
('CU016TN', 'Aishwarya', 'Sundar', 'aishwarya.sundar@example.com', 'aishwarya_sundar', 'Aishwarya@113', 9876543225, 778901234567),
('CU017TN', 'Prakash', 'Rajan', 'prakash.rajan@example.com', 'prakash_rajan', 'Prakash@114', 9876543226, 889012345678),
('CU018TN', 'Ranjani', 'Gopal', 'ranjani.gopal@example.com', 'ranjani_gopal', 'Ranjani@115', 9876543227, 990123456789),
('CU019TN', 'Balaji', 'Vasudevan', 'balaji.vasudevan@example.com', 'balaji_vasudevan', 'Balaji@116', 9876543228, 101234567890),
('CU020TN', 'Shankar', 'Perumal', 'shankar.perumal@example.com', 'shankar_perumal', 'Shankar@117', 9876543229, 212345678901);

-- Create Leases Table
CREATE TABLE Leases (
    leaseID INT AUTO_INCREMENT PRIMARY KEY,  -- Auto-increment for leaseID
    vehicleID VARCHAR(50),
    customerID VARCHAR(10),
    startDate DATE,
    endDate DATE,
    type ENUM('DailyLease', 'MonthlyLease') NOT NULL,
    FOREIGN KEY (vehicleID) REFERENCES Vehicles(vehicleID),
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);


-- Insert 20 sample entries into Leases Table
INSERT INTO Leases (vehicleID, customerID, startDate, endDate, type) VALUES 
( 'VH001A', 'CU001TN', '2024-11-01', '2024-11-10', 'DailyLease'),
(  'VH003C', 'CU002TN', '2024-11-05', '2024-11-15', 'MonthlyLease'),
(  'VH005E', 'CU003TN', '2024-11-01', '2024-12-01', 'MonthlyLease'),
(  'VH008H', 'CU004TN', '2024-11-08', '2024-11-18', 'DailyLease'),
(  'VH011K', 'CU005TN', '2024-11-01', '2024-12-01', 'MonthlyLease'),
(  'VH006F', 'CU006TN', '2024-11-10', '2024-11-20', 'DailyLease'),
(  'VH018R', 'CU007TN', '2024-11-15', '2024-12-15', 'MonthlyLease'),
( 'VH014N', 'CU008TN', '2024-11-11', '2024-11-21', 'DailyLease'),
(  'VH019S', 'CU009TN', '2024-11-18', '2024-12-18', 'MonthlyLease'),
(  'VH013M', 'CU010TN', '2024-11-05', '2024-11-15', 'DailyLease'),
(  'VH004D', 'CU011TN', '2024-11-02', '2024-11-12', 'DailyLease'),
(  'VH017Q', 'CU012TN', '2024-11-09', '2024-11-19', 'DailyLease'),
(  'VH015O', 'CU013TN', '2024-11-04', '2024-11-14', 'DailyLease'),
(  'VH010J', 'CU014TN', '2024-11-12', '2024-12-12', 'MonthlyLease'),
(  'VH002B', 'CU015TN', '2024-11-03', '2024-11-13', 'DailyLease'),
(  'VH012L', 'CU016TN', '2024-11-07', '2024-11-17', 'DailyLease'),
(  'VH007G', 'CU017TN', '2024-11-20', '2024-12-20', 'MonthlyLease'),
(  'VH016P', 'CU018TN', '2024-11-06', '2024-11-16', 'DailyLease'),
(  'VH020T', 'CU019TN', '2024-11-13', '2024-12-13', 'MonthlyLease'),
(  'VH009I', 'CU020TN', '2024-11-14', '2024-11-24', 'DailyLease');

-- Create Payments Table
CREATE TABLE IF NOT EXISTS Payments (
    paymentID VARCHAR(30),
    leaseID VARCHAR(50),
    paymentDate DATE,
    amount DECIMAL(10, 2)

);

-- Insert 20 sample entries into Payments Table
INSERT INTO Payments (paymentID, leaseID, paymentDate, amount) VALUES 
('PM001', 'LE001', '2024-11-01', 1500.00),
('PM002', 'LE002', '2024-11-02', 2000.00),
('PM003', 'LE003', '2024-11-03', 500.00),
('PM004', 'LE004', '2024-11-04', 3000.00),
('PM005', 'LE005', '2024-11-05', 1200.00),
('PM006', 'LE006', '2024-11-06', 800.00),
('PM007', 'LE007', '2024-11-07', 1000.00),
('PM008', 'LE008', '2024-11-08', 700.00),
('PM009', 'LE009', '2024-11-09', 2200.00),
('PM010', 'LE010', '2024-11-10', 1100.00),
('PM011', 'LE011', '2024-11-11', 900.00),
('PM012', 'LE012', '2024-11-12', 1800.00),
('PM013', 'LE013', '2024-11-13', 1400.00),
('PM014', 'LE014', '2024-11-14', 1600.00),
('PM015', 'LE015', '2024-11-15', 500.00),
('PM016', 'LE016', '2024-11-16', 2100.00),
('PM017', 'LE017', '2024-11-17', 2500.00),
('PM018', 'LE018', '2024-11-18', 1300.00),
('PM019', 'LE019', '2024-11-19', 750.00),
('PM020', 'LE020', '2024-11-20', 2900.00);

-- Verify the Tables
SELECT * FROM Vehicles;
SELECT * FROM Customers;
SELECT * FROM Leases;
SELECT * FROM Payments;





ALTER TABLE Leases
DROP FOREIGN KEY leases_ibfk_1;
