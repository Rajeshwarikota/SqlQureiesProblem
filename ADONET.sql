CREATE DATABASE ADONET;
USE ADONET;

CREATE TABLE Customer(
    Id int primary key identity(1,1),
    Name varchar(50),
    City varchar(10),
    Address varchar(20),
    PhoneNumber varchar(10),
    Salary float
);

CREATE PROCEDURE SPGETALLCUSTOMERS
AS
BEGIN
    INSERT INTO Customer (Name, City, Address, PhoneNumber, Salary) VALUES ('Raji', 'Hyd', 'Telangana', '2345676789', 60000.00);
    INSERT INTO Customer (Name, City, Address, PhoneNumber, Salary) VALUES ('Yamini', 'suryapet', 'Telangana', '2345867678', 50000.00);
END;
  
EXEC SPGETALLCUSTOMERS

SELECT * FROM Customer;

CREATE PROCEDURE SPADDCUSTOMERS
@Name varchar(50),
@City varchar(10),
@Address varchar(20),
@PhoneNumber varchar(10),
@Salary float
AS
INSERT INTO Customer (Name, City, Address, PhoneNumber, Salary) VALUES (@Name,@City,@Address,@PhoneNumber,@Salary);

ALTER PROCEDURE SPDELETECUSTOMERS
@Name varchar(50)
AS
DELETE FROM Customer WHERE Name=@Name 

EXEC SPDELETECUSTOMERS 'Raji'

SELECT * FROM Customer;

ALTER PROCEDURE SPUPDATECUSTOMERS
@Name varchar(50),
@Salary float
AS
UPDATE Customer SET Name = @Name, Salary = @Salary WHERE Name = @Name
