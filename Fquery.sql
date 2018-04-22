create database testDb;
GO
Use testDb;
GO
CREATE TABLE Countries(
CountryID int primary key identity(1,1),
CountryName nvarchar(50) not null,
PhoneCode nvarchar(24),
CreatedDate datetime default(getdate())
);
GO
CREATE TABLE Cities(
CityId INT PRIMARY KEY IDENTITY(1,1),
CityName NVARCHAR(50) Not Null,
PhoneCode nvarchar(24) null,
CreateDate datetime default(getdate()),
CountryID int foreign key references Countries(CountryID)
);
Go
create table Districts
(
DistrictID int primary key identity(1,1),
DistrictName nvarchar(50) not null,
PostalCode nvarchar(15),
CreatedDate datetime default(getdate()),
CityID int foreign key references Cities(CityID)
);
GO
create table Towns
(
TownID int primary key IDENTITY(1,1),
TownName nvarchar(50) not null,
CreatedDate datetime default (getdate()),
DistrictID int foreign key references Districts(DistrictID)
);