SELECT ProductID, Name, Color, ListPrice
FROM Production.Product;
GO

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE NOT ListPrice = 0;
GO

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NULL;
GO

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL;
GO

SELECT ProductID, Name, Color, ListPrice
FROM Production.Product
WHERE Color IS NOT NULL AND ListPrice > 0;
GO

SELECT Name + ' ' + Color
FROM Production.Product
WHERE Color IS NOT NULL;
GO

SELECT Name, Color
FROM Production.Product
WHERE Color = 'Black' OR Color = 'Silver';
GO

SELECT ProductID, Name
FROM Production.Product
WHERE ProductID BETWEEN 400 AND 500;
GO

SELECT ProductID, Name, Color 
FROM Production.Product
Where Color = 'Black' AND Color = 'Blue';
GO

SELECT * FROM Production.Product
WHERE Name LIKE 's%';
GO

SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 's%'
ORDER BY Name;
GO

SELECT Name, ListPrice
FROM Production.Product
WHERE Name LIKE 'A%' OR Name LIKE 'S%'
ORDER BY Name;
GO

SELECT Name FROM Production.Product
WHERE Name LIKE 'spo%' AND Name NOT LIKE '%K'
ORDER BY Name;
GO

SELECT DISTINCT Color, Name FROM Production.Product
ORDER BY Name DESC;
GO

SELECT DISTINCT ProductSubcategoryID, Color
FROM Production.Product 
WHERE ProductSubcategoryID IS NOT NULL
AND Color IS NOT NULL;