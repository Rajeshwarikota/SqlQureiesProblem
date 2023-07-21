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