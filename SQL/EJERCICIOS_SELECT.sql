use PACKT_ONLINE_SHOP;
SELECT * FROM ProductCategories;




--
use PACKT_ONLINE_SHOP;
SELECT ProductCategoryID, ProductCategoryName
FROM ProductCategories;



--Apodar las columnas
SELECT ProductCategoryName AS CATEGORY, ProductCategoryID AS ID
FROM ProductCategories;



-- Ordenar la consulta
SELECT ProductCategoryName AS 'CATEGORY NAME', ProductCategoryID AS ID
FROM ProductCategories
ORDER BY ProductCategoryName ASC;


SELECT ProductCategoryName AS 'CATEGORY NAME', ProductCategoryID AS ID
FROM ProductCategories
ORDER BY 'CATEGORY NAME' DESC;



-- Tomar datos unicos (valores no repetidos)
SELECT *
FROM Customers;

SELECT DISTINCT FirstName, LastName
FROM Customers;

SELECT DISTINCT FirstName
FROM Customers;

-- Operaciones matematicas
SELECT ProductID, Quantity, UnitPrice, (Quantity*UnitPrice) AS
  'Line Item Total'
FROM OrderItems;


-- Filtros
use PACKT_ONLINE_SHOP;
SELECT ProductName AS 'High-value Products', NetRetailPrice
FROM Products
WHERE NetRetailPrice > 14.99



--

SELECT ProductName,NetRetailPrice
FROM Products
WHERE NetRetailPrice BETWEEN 14.99 AND 50
ORDER BY NetRetailPrice;



