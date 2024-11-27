/*
1. Provide a SQL script that initializes the database for the Pet Adoption Platform ”PetPals”.
2. Create tables for pets, shelters, donations, adoption events, and participants.
3. Define appropriate primary keys, foreign keys, and constraints.
4. Ensure the script handles potential errors, such as if the database or tables already exist.
*/

drop database  if exists PetPals
create database PetPals
use PetPals
select * from pets
create table Pets (
PetID int primary key unique ,
Name varchar(50),
Age int,
Breed varchar(50),
Type varchar(50),
AvailableForAdoption enum ('yes','no') not null )


create table Shelters(
ShelterID int primary key unique,
Name varchar(50),
Location varchar(50)
)

create table Donations(
DonationID int primary key unique,
DonorName varchar(50),
DonationType varchar(50),
DonationAmount decimal (10,2),
DonationItem varchar(50),
DonationDate datetime)

create table AdoptionEvents(
EventID int primary key unique,
EventName varchar(50),
EventDate datetime,
Location varchar(50))

create table Participants(
ParticipantID int  primary key unique,
ParticipantName varchar(50),
ParticipantType varchar(50),
EventID int, 
foreign key (EventID) references AdoptionEvents(EventID))

insert into Pets (PetID ,Name ,Age ,Breed ,Type ,AvailableForAdoption) values (1, 'Buddy', 3, 'Golden Retriever', 'Dog', 'yes'),
(2, 'Whiskers', 2, 'Siamese', 'Cat', 'yes'),
(3, 'Chirpy', 1, 'Parakeet', 'Bird', 'yes'),
(4, 'Spike', 5, 'Bulldog', 'Dog', 'yes'),
(5, 'Mittens', 4, 'Persian', 'Cat', 'no'),
(6, 'Nibbles', 1, 'Guinea Pig', 'Rodent', 'no'),
(7, 'Flash', 2, 'Husky', 'Dog', 'no'),
(8, 'Shadow', 7, 'Labrador', 'Dog', 'no'),
(9, 'Sassy', 3, 'Tabby', 'Cat', 'no'),
(10, 'Fluffy', 6, 'Angora', 'Rabbit', 'no');



insert into Shelters (ShelterID, Name, Location) values 
(1, 'Happy Tails Shelter', '123 Main St, Springfield'),
(2, 'Furry Friends Haven', '456 Elm St, Riverside'),
(3, 'Safe Paws Rescue', '789 Oak Ave, Centerville'),
(4, 'Pets Haven', '321 Pine Rd, Greenfield'),
(5, 'Hopeful Hearts Shelter', '111 Birch Blvd, Riverdale'),
(6, 'Rescue Me', '222 Willow St, Plainview'),
(7, 'Pawsitive Vibes', '333 Maple Ave, Springfield'),
(8, 'Four Paws Shelter', '444 Cedar Dr, Rivertown'),
(9, 'Animal Angels', '555 Pine Ln, Westview'),
(10, 'Faithful Friends', '666 Oakwood Dr, Northfield');

select * from Shelters
insert into Donations(DonationID, DonorName, DonationType, DonationAmount, DonationItem, DonationDate) values (1, 'John Doe', 'Cash', 100.00, 'N/A', '2024-11-01 10:30:00'),
(2, 'Jane Smith', 'Item', 0.00, 'Dog Food', '2024-11-05 14:45:00'),
(3, 'Emily Brown', 'Cash', 200.00, 'N/A', '2024-11-07 09:00:00'),
(4, 'Michael Johnson', 'Item', 0.00, 'Cat Toys', '2024-11-10 15:20:00'),
(5, 'Sarah Lee', 'Cash', 50.00, 'N/A', '2024-11-12 13:00:00'),
(6, 'David Wilson', 'Item', 0.00, 'Dog Beds', '2024-11-13 08:30:00'),
(7, 'Lucy Kim', 'Cash', 75.00, 'N/A', '2024-11-15 11:45:00'),
(8, 'Robert Martinez', 'Item', 0.00, 'Cat Food', '2024-11-17 14:10:00'),
(9, 'Laura Chen', 'Cash', 120.00, 'N/A', '2024-11-18 16:30:00'),
(10, 'James Allen', 'Item', 0.00, 'Dog Toys', '2024-11-19 09:00:00');


insert into AdoptionEvents values (1, 'Paws for Love Adoption Fair', '2024-12-01 10:00:00', 'Community Park'),
(2, 'Happy Tails Adoption Day', '2024-12-15 11:00:00', 'Shelter Grounds'),
(3, 'Forever Homes Event', '2024-12-20 13:00:00', 'City Mall Courtyard'),
(4, 'Find A Friend', '2025-01-05 14:00:00', 'Green Park'),
(5, 'Rescue & Rehome', '2025-01-10 09:30:00', 'Downtown Shelter'),
(6, 'Pet Adoption Drive', '2025-01-12 10:45:00', 'Community Hall'),
(7, 'Fur-ever Friends', '2025-01-20 12:00:00', 'Westside Plaza'),
(8, 'Open Hearts Adoption', '2025-01-25 11:30:00', 'Public Library'),
(9, 'Shelter Showcase', '2025-01-30 14:15:00', 'City Square'),
(10, 'Adopt A Paw', '2025-02-05 09:45:00', 'Eastwood Community Center');

insert into Participants (ParticipantID ,ParticipantName ,ParticipantType ,EventID)values (1, 'Happy Tails Shelter', 'Shelter', 1),
(2, 'Jane Smith', 'Adopter', 1),
(3, 'Furry Friends Haven', 'Shelter', 2),
(4, 'Emily Brown', 'Adopter', 2),
(5, 'Safe Paws Rescue', 'Shelter', 3),
(6, 'Michael Johnson', 'Adopter', 3),
(7, 'Pawsitive Vibes', 'Shelter', 4),
(8, 'John Doe', 'Adopter', 4),
(9, 'Pets Haven', 'Shelter', 5),
(10, 'Sarah Lee', 'Adopter', 5);


select * from adoptionevents
select * from donations
select * from participants
select * from pets
select * from shelters

/*
5.Write an SQL query that retrieves a list of available pets (those marked as available for adoption) from the "Pets" table. Include the pet's name, age, breed, and 
type in the result set. Ensure that the query filters out pets that are not available for adoption.
*/
select name,age,breed,type from pets where availableforadoption='1';


/* 
6.Write an SQL query that retrieves the names of participants (shelters and adopters) registered for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query joins the necessary 
tables to retrieve the participant names and types.
*/

select name, age, breed, type
from pets
where ownerid is null;

/*
7.Create a stored procedure in SQL that allows a shelter to update its information (name and location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information. Ensure that the procedure performs the update and handles
 potential errors, such as an invalid shelter ID.
 */
 select date_format(donationdate, '%y-%m') as monthyear,
       sum(donationamount) as totaldonationamount
from donations
group by monthyear;

/*
8.Write an SQL query that calculates and retrieves the total donation amount for each shelter (by shelter name) from the "Donations" table. The result should include the shelter name and the total donation amount. Ensure that the query 
handles cases where a shelter has received no donations.
*/
SELECT s.name AS sheltername, COALESCE(SUM(d.donationamount), 0) AS totaldonation
FROM shelters s
LEFT JOIN donations d ON s.shelterid = d.donationid
GROUP BY s.name;

/*
9.Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an owner (i.e., where "OwnerID" is null). Include the pet's name,
 age, breed, and type in the result set.
 */
 select p.name as petname, p.age, p.breed, p.type, s.name as sheltername
from pets p
join shelters s on p.shelterid = s.shelterid
where p.availableforadoption = 1;

/*
10.Write an SQL query that retrieves the total donation amount for each month and year (e.g., January 2023) from the "Donations" table. The result should include the month-year and the corresponding total donation amount. Ensure that the query handles cases where
 no donations were made in a specific month-year.
 */
 SELECT monthyear, SUM(donationamount) AS total_donation_amount
FROM (
    SELECT DATE_FORMAT(donationdate, '%Y-%m') AS monthyear, donationamount
    FROM donations
) AS monthly_donations
GROUP BY monthyear;
 
 /*
 11.Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or older than 5 years.*/
 
 select distinct breed
from pets
where age between 1 and 3 or age > 5;

/*
12.Retrieve a list of pets and their respective shelters where the pets are currently available for adoption.
*/
select name, age, breed, type
from pets
where availableforadoption = '1' ;


/*
13.Find the total number of participants in events organized by shelters located in specific city. Example: City=Chennai
*/
SELECT COUNT(*) AS total_participants 
FROM participants p
JOIN adoptionevents e ON p.eventid = e.eventid
JOIN shelters s ON e.location = s.location
WHERE s.location = 'Chennai';


 /*
 14.Retrieve a list of unique breeds for pets with ages between 1 and 5 years.
 */
 SELECT DISTINCT breed 
FROM pets 
WHERE age BETWEEN 1 AND 5;

/*
15.Find the pets that have not been adopted by selecting their information from the 'Pet' table.*/
SELECT * 
FROM pets 
WHERE availableforadoption = '0';

/*
16.Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and 'User' tables.
*/
SELECT p.name AS pet_name, pa.participantname AS adopter_name
FROM pets p
JOIN participants pa ON p.petid = pa.participantid
JOIN adoptionevents ae ON pa.eventid = ae.eventid
WHERE pa.participanttype = 'Adopter';


/*
17.Retrieve a list of all shelters along with the count of pets currently available for adoption in each shelter.
*/

SELECT s.name AS sheltername, COUNT(p.petid) AS availablepets
FROM shelters s
LEFT JOIN pets p ON s.shelterid = p.shelterid AND p.availableforadoption = 1
GROUP BY s.shelterid;



/*
18.Find pairs of pets from the same shelter that have the same breed.
*/
SELECT p1.name AS pet1_name, p2.name AS pet2_name, p1.breed, s.name AS shelter_name
FROM pets p1
JOIN pets p2 ON p1.shelterID = p2.shelterID AND p1.breed = p2.breed AND p1.petid < p2.petid
JOIN shelters s ON p1.shelterID = s.shelterID;

/*
19.List all possible combinations of shelters and adoption events.
*/
SELECT s.name AS shelter_name, e.eventname 
FROM shelters s
CROSS JOIN adoptionevents e;

/*
20.Determine the shelter that has the highest number of adopted pets.
*/
select s.name as sheltername, count(p.petid) as adoptedpets
from shelters s
join pets p on s.shelterid = p.shelterid
where p.availableforadoption = 0
group by s.shelterid
order by adoptedpets desc
limit 1;








