
CREATE TABLE Person ( 
  ID SERIAL PRIMARY KEY,
  Name TEXT,
  Age integer, 
  Height integer,
  City TEXT,
  FavoriteColor TEXT
  );
  
  INSERT INTO Person
    ( Name, Age, Height, City, FavoriteColor )
   VALUES 
     ('Jimmy', 22, 179.832, 'Akron', 'Green'),
     ('Ryan', 42, 188.976, 'Tampa', 'Coral'), 
     ('Edna', 18, 156, 'Baltimore', 'White Smoke'), 
     ('Jason', 63, 175, 'Glendale', 'Medium Purple'), 
     ('Samuel', 12, 176, 'Fresno','Crimson');

SELECT * FROM Person
ORDER BY Height DESC;

SELECT * FROM Person
ORDER BY Height ASC;

SELECT * FROM Person
ORDER BY Age DESC;

SELECT * FROM Person
WHERE age = 18;

SELECT * FROM Person
WHERE age < 20 OR age > 30;

SELECT * FROM Person
WHERE age <> 27;

SELECT * FROM Person
WHERE FavoriteColor <> 'red';

SELECT * FROM Person
WHERE FavoriteColor <> 'red' OR FavoriteColor <> 'blue';

SELECT * FROM Person
WHERE FavoriteColor = 'Orange' OR FavoriteColor = 'Green';

SELECT * FROM Person
WHERE FavoriteColor IN ('Orange', 'Green', 'Blue');

SELECT * FROM Person
WHERE FavoriteColor IN ('Yellow', 'Purple');


CREATE TABLE Orders ( 
  ID SERIAL PRIMARY KEY,
  PersonID Integer,
  ProductName TEXT,
  ProductPrice DECIMAL,
  Quantity INTEGER);

  
  INSERT INTO Orders
    (PersonID, ProductName, ProductPrice, Quantity)
   VALUES 
     (1, 'Pepsi', 2.01, 5),
     (2, 'Coke', 3.42, 10),
     (3, 'Squirt', 2.45, 8),
     (4, 'Sprite' , 3.02, 12),
     (5, 'RC' , 1.52, 4);

     SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;


SELECT SUM(ProductPrice*Quantity) FROM Orders;

SELECT SUM(ProductPrice*Quantity) FROM Orders
WHERE PersonID = 1;


INSERT INTO Artist 
( Name ) 
VALUES 
('Arcade Fire'), 
('Drake'), 
 ('The Alex Band');


SELECT * FROM Artist 
ORDER BY Name Desc LIMIT 10;


SELECT * FROM Artist 
ORDER BY Name Asc LIMIT 5;

SELECT * FROM Artist 
WHERE Name LIKE 'Black%';

SELECT * FROM Artist 
WHERE Name LIKE '%Black%';

SELECT FirstName, LastName 
FROM Employee 
WHERE City = 'Calgary';

SELECT FirstName, LastName, MIN(BirthDate) 
FROM Employee;

SELECT FirstName, LastName, MAX(BirthDate) 
FROM Employee;

SELECT * FROM employee
WHERE ReportsTo = (SELECT EmployeeID FROM employee WHERE FirstName = 'Nancy'
                  	AND LastName = 'Edwards');

SELECT count(*) FROM employee WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE BillingCountry = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE Total > 5;

SELECT count(*) FROM invoice
WHERE BillingState IN ('AZ', 'TX', 'CA')

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
