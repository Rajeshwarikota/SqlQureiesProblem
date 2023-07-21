--------------UC1-CREATE DATABASE--------------------------------------------
create Database EXAMPLE;
Use Example;
--------------UC2-CREATE CUSTOMERTABLE----------------------------------------
CREATE TABLE Customer (
     ID int primary key identity(1,1),
	 Name varchar(100),
	 PhoneNumber Varchar(15),
	 Address varchar(200)
);
---------UC3-ADDING CUSTOMER DETAILS-------------------------------
insert into Customer values ('Raji',9988776655,'Hyderabad')
insert into Customer values ('Teju',9966558877,'Chennai')
insert into Customer values ('Chandu',9988775522,'Bangalore')
insert into Customer values ('ammu',9955884422,'mumbai')

select * from Customer
---------UC4-ADDING NEW COLOUMNS AND UPDATING VALUES--------------
ALTER TABLE Customer ADD Country VARCHAR(50);
ALTER TABLE Customer ADD Salary DECIMAL(10,2);
ALTER TABLE Customer ADD Pincode VARCHAR(20);

UPDATE Customer SET Country ='USA', Salary=55000.00, Pincode='424001' WHERE Name='Raji';
UPDATE Customer SET Country='Canada', Salary=66000.00, Pincode='456001' WHERE Name='Teju';
UPDATE Customer SET Country='India', Salary=44000.00, Pincode='520140' WHERE Name='Chandu';
UPDATE Customer SET Country='UAE', Salary=46000.00, Pincode='529140' WHERE Name='ammu';

SELECT * FROM Customer;
