create database BootcampDotnetDB
go;
use  BootcampDotNetDB
go;
create table [User]
(UserID INT PRIMARY KEY IDENTITY(1,1), UserName VARCHAR(100), BirthDate DATETIME, Ranking INT)

insert into [User]
values ('joni', '1998-12-20',1),('budi', '2000-04-12',2),('alan', '1999-01-09',3),('susi', '2003-05-26',4),('aaa', '1998-11-20',5)
insert into [User]
values ('aaa', '1998-11-20',5)
go;

create or alter proc GetUsers
as
begin
select * from [User]
end

go;

create or alter proc GetUser
@id int
as
begin
    select * from [User] where UserID = @id
end

 create table Food
(
    FoodID int primary key identity(1,1),
    FoodName VARCHAR(100),
    Price FLOAT,
    ChefID INT
)

create table Chef
(ChefID int primary key identity(1,1),
ChefName varchar(100))

insert into Food (FoodName, Price, ChefID)
values 
('food1', 12.3,1),
('food2', 12.3,1),
('food3', 12.3,2)
insert into Chef (ChefName) values ('tono'),('budi')
select * from Chef