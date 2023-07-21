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

---------UC5-UPDATING CUSTOMER DETAILS USING NAMES------------------
UPDATE Customer SET Country='India', Salary=75000.00, Pincode='520165' WHERE Name='Chandu';

---------UC6-COUNTING CUSTOMERS AS PER COUNTRY----------------------
SELECT Country, COUNT(*) AS NumCustomers 
FROM Customer 
GROUP BY Country;

---------UC7-SHOWING CUSTOMERS MAX,MIN,Total,AVERAGE SALARIES-------
SELECT MAX(Salary) AS MaxSalary FROM Customer; 

SELECT MIN(Salary) AS MinSalary FROM Customer; 

SELECT SUM(Salary) AS MinSalary FROM Customer;

SELECT AVG(Salary) AS MinSalary FROM Customer;  

---------UC8-CREATING ORDER TABLE-----------------------------------
CREATE TABLE OrderTable (
  OrderId INT IDENTITY(1,1) PRIMARY KEY,
  ProductName VARCHAR(50),
  Quantity INT,
  Rating INT,
  CustomerId INT FOREIGN KEY REFERENCES Customer(Id)
);


