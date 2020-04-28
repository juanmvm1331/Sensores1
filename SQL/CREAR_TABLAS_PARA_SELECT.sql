-- SENTENCIAS SELECT

--¿Qué hace la declaración SELECT?
-- La instrucción SELECT se usa para seleccionar una o más columnas de una tabla, definiendo así cómo deberían verse las columnas de la salida

DROP DATABASE   IF     EXISTS PACKT_ONLINE_SHOP;
CREATE DATABASE PACKT_ONLINE_SHOP;
USE PACKT_ONLINE_SHOP;

CREATE TABLE Customers
(
	CustomerID INT NOT NULL IDENTITY(1,1),
	FirstName CHAR(50) NULL,
    	MiddleName CHAR(50) NULL,
	LastName CHAR(50) NULL,
	Address CHAR(250) NULL,
	Email CHAR(200) NULL,
	Phone CHAR(50) NULL,
	Notes VARCHAR(750) NULL,
	BalanceNotes VARCHAR(750) NULL,
    PRIMARY KEY (CustomerID)
);

CREATE TABLE OrderItems
(
	OrderItemID INT NOT NULL IDENTITY(1,1),
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	Quantity INT NOT NULL,
	UnitPrice DECIMAL(10, 2) NOT NULL,
	Discount DECIMAL(10, 2) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (OrderItemID)
);

CREATE TABLE Orders
(
	OrderID INT NOT NULL IDENTITY(1,1), --AUTO_INCREMENT
	CustomerID INT NOT NULL,
	OrderNumber CHAR(50) NOT NULL,
	OrderDate DATETIME NOT NULL,
	ShipmentDate DATETIME NULL,
	OrderStatus CHAR(10) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (OrderID)
);

CREATE TABLE Payments
(
	PaymentID INT NOT NULL IDENTITY(1,1),
	OrderID INT NOT NULL,
	PaymentDate DATETIME NOT NULL,
	PaymentType CHAR(50) NULL,
	PaymentRef CHAR(50) NULL,
	Amount DECIMAL(10, 2) NOT NULL,
	Notes VARCHAR(750) NULL,
	BalanceNotes VARCHAR(750) NULL,
    PRIMARY KEY (PaymentID, OrderID)
);

CREATE TABLE ProductCategories
(
	ProductCategoryID INT NOT NULL IDENTITY(1,1),
	ProductCategoryName CHAR(50) NOT NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (ProductCategoryID)
);

CREATE TABLE Products
(
	ProductID INT NOT NULL IDENTITY(1,1),
	ProductCategoryID INT NOT NULL,
	SupplierID INT NOT NULL,
	ProductName CHAR(50) NOT NULL,
	ProductImage CHAR(50) NULL,
	NetRetailPrice DECIMAL(10, 2) NULL,
	AvailableQuantity INT NOT NULL,
	WholesalePrice DECIMAL(10, 2) NOT NULL,
	UnitKGWeight DECIMAL(10, 5) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (ProductID)
);

CREATE TABLE Suppliers
(
	SupplierID INT NOT NULL IDENTITY(1,1),
	SupplierName CHAR(50) NOT NULL,
	Country CHAR(50) NOT NULL,
	Address CHAR(50) NULL,
	PhoneNumber CHAR(50) NULL,
	ContactPerson CHAR(50) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (SupplierID)
);

ALTER TABLE Orders
ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);


ALTER TABLE OrderItems
ADD FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE OrderItems
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE Payments
ADD FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);

ALTER TABLE Products
ADD FOREIGN KEY (ProductCategoryID) REFERENCES ProductCategories(ProductCategoryID);





























