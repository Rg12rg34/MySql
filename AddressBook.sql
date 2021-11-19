#WELCOME TO ADDRESS BOOK MYSQL

#UC1 Ability to create a Address Book Service DB
create database address_book_service;
use address_book_service;
select database();

#UC2 - Ability to create a Address Book Table with first and last names, address, city, and email as its attributes
create table Contacts(id int unsigned NOT NULL AUTO_INCREMENT, Name varchar(150) NOT NULL, Address varchar(150) NOT NULL, City varchar(150) NOT NULL, State varchar(150) NOT NULL, Zip int NOT NULL, PhoneNumber int NOT NULL, Email varchar(150), primary key	(id));
select * from Contacts;

#UC3 - Ability to insert new Contacts to Address Book
insert into Contacts ( Name, Address, City, State, Zip, PhoneNumber, Email) VALUES ('Rahul', 'panwel', 'Mumbai', 'Maharashtra', 400089, 8881212, 'rahul@paisahipaisa.com'),('Ganshyam', 'Near Dadwadi', 'Jhalandar', 'Punjab', 230521, 2812512, 'ghanshyam@naukri.com'), ('Baburao Ganpatrao Apte', 'Star Garage', 'Mumbai', 'Maharashtra', 230532, 8881212, 'baburaoapte@stargarage.com');
select * from Contacts;


#UC4 - Ability to edit existing contact person using their name
UPDATE Contacts SET Address = 'Vileparle' WHERE Name in('Rahul');
select * from Contacts;

#UC5 - Delete Contact using Name
delete from Contacts where Name in('Rohit');
select * from Contacts;

#UC6 - Retrieve all Contact using City or State name
select * from Contacts where City = 'Mumbai' or State = 'Maharashtra';

#UC7 - Count Contact in Address Book using City or State name
select count(city) from Contacts where City = 'Mumbai' or State = 'Maharashtra';

#UC8 - Sort Contacts by Person's name in given City or State
select * from Contacts where City = 'Mumbai' order by Name asc;