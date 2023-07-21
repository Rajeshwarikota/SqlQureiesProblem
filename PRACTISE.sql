create Database Practise;
use Practise;

CREATE TABLE Branch (
    ID int PRIMARY KEY identity(1,1),
    Name varchar(100),
    Address varchar(100),
    Email varchar(100)
);
insert into Branch (Name,Address,Email) Values('Raji','Hyderabad','raji@gmail.com');
insert into Branch (Name,Address,Email) Values('Ammu','mumbai','ammu@gmail.com');
insert into Branch (Name,Address,Email) Values('Rani','Bangalore','rani@gmail.com');
insert into Branch (Name,Address,Email) Values('Mouni','chennai','mouni@gmail.com');
insert into Branch (Name,Address,Email) Values('Pallu','herala','pallu@gmail.com');

select * from Branch;

Alter Table Branch Add BloodGroup varchar(10);

update Branch  set PhoneNumber= 9876543455 where Name = 'Raji';

Alter Table Branch Add PhoneNumber varchar(10);

update Branch  set BloodGroup = 'O+' where ID = 1;

Alter Table Branch Drop  Column BloodGroup;