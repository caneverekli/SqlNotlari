use Northwind;

select * from Employees

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees

select FirstName,BirthDate from Employees

select Ad = FirstName ,Soyad = LastName ,Görev = Title, BirthDate As 'Dogum Tarihi' , [Ýþe Giriþ Tarihi] = HireDate from Employees

select City from Employees

select DISTINCT City from Employees

select Distinct FirstName,City from Employees

select TitleOfCourtesy +' ' + FirstName + ' ' + LastName As CombinedColumn from Employees

select CONCAT(FirstName,' ', LastName, ' ',TitleOfCourtesy) As Personel From Employees

insert into Categories (CategoryName, [Description]) Values ('My Category' , 'My Category is awesome') Select * From Categories

insert into Categories(Description) Values ('Yeni Açýklama') -- nullable olmayan kolona null geçilen query

select *
from Employees
where t.name 'Employees' and num_nulls=0;

select *
from Employees
where table_name='Employees' and num_nulls=0;

SELECT *
FROM information_schema.columns
WHERE table_name = 'Table_Name' and is_nullable = 'NO'

insert into Shippers values('MNG Kargo', '212 587 19 19')
select * from Shippers

select* from Customers

insert into Customers values ('BLG1','Bilge Adam','M. Vuranok','Adress','Ýstanbul','','1404','Turkey','904214','90424')
 
insert into Customers(CustomerID,CompanyName) values ('BLG11','Bilge Adam')

DELETE FROM Customers WHERE CustomerID = 'BLG11'

select * into Calisanlar from Employees

update Customers set CompanyName = 'vilge adam' where CompanyName = 'Bilge Adam'

