-- CREAR BASE DE DATOS

create database estudiantes

use estudiantes -- SE INDICA QUE BASE DE DATOS SE VA A USAR PARA ESA CONSULTA
create table estudiante
(
    EstudianteID      CHAR (4),
    NombreEstudiante VARCHAR (30),
    Grado       CHAR(1),
    Edad         INT,
    Curso      VARCHAR(50),
)

USE estudiantes;
INSERT INTO estudiante (EstudianteID, NombreEstudiante, Grado, Edad, Curso) 
VALUES 
('S001','Prashanth Jayaram', 'A', 36, 'Computer Science');

INSERT INTO estudiante (EstudianteID, NombreEstudiante, Grado, Edad, Curso)
VALUES 
('S002', 'FrankSolomon', 'B', 35, 'Physics'), 
('S003', 'Rachana Karia', 'B', 36, 'Electronics'),
('S004', 'Ambika Prashanth', 'C', 35, 'Mathematics');




----------------------------------------- OTRO EJEMPLO DE CREAR E INSERTAR DATOS

create database PACKT_ONLINE_SHOP;

use PACKT_ONLINE_SHOP;

create table Customers
(
    FirstName varchar(50) ,
    MiddleName varchar(50) ,
    LastName varchar(50) ,
    HomeAddress varchar(250) ,
    Email varchar(200) ,
    Phone varchar(50) ,
    Notes varchar(250)
);


use PACKT_ONLINE_SHOP;
INSERT INTO Customers (FirstName, MiddleName, LastName, HomeAddress, Email, Phone,Notes)
VALUES
('Joe', 'Greg', 'Smith', '2356 Elm St.', 'joesmith@sfghwert.com', '(310)555-1212', 'Always gets products home delivered'),
('Grace', 'Murray', 'Hopper', '123 Compilation Street', 'gmhopper@ftyuw46.com','(818) 555-3678', 'Compiler pioneer'),
('Ada', NULL, 'Lovelace', '22 Algorithm Way', 'adalovelace@fgjw54af.gov', '(717)555-3457', 'First software engineer'),
('Joseph', 'Force', 'Crater', '1313 Mockingbird Lane', 'judgecrater@ev56gfwrty.com','(212) 555-5678', 'Works everyday'),
('Jacqueline', 'Jackie', 'Cochran', '1701 Flightspeed Avenue', 'jackiecochrane@jryuwp8qe4w.gov', '(717) 555-3457', 'Researcher'),
(NULL, 'Paul', 'Jones', '126 Bonhomme Richard Ave.', 'jpjones@bonhommerichard.edu','(216) 555-6232', 'Admiral');

use PACKT_ONLINE_SHOP;
CREATE TABLE Products
(
	ProductID INT,
	ProductCategoryID INT,
	SupplierID INT,
	ProductName CHAR(50),
	NetRetailPrice DECIMAL(10, 2),
	AvailableQuantity INT NOT NULL,
	WholesalePrice DECIMAL(10, 2),
	UnitKGWeight DECIMAL(10, 5),
	Notes VARCHAR(750),
);


INSERT INTO Products ( ProductCategoryID, SupplierID, ProductName, NetRetailPrice, AvailableQuantity, WholesalePrice, UnitKGWeight, Notes )
VALUES
(5, 2, 'Calculatre', 24.99, 100, 17.99, 1, 'calculation application'),
(5, 5, 'Penwrite', 79.99, 27, 49.99, 2, 'word processing product'),
(1, 6, 'Vortex Generator', 2499.99, 1000, 1999.99, 0.01, 'space engine component'),
(1, 6, 'The Gourmet Crockpot', 24.99, 72, 19.99, 1.63, 'cookbook'),
(1, 6, 'Account Books', 14.99, 26, 9.99, 1.22, 'government accounting book'),
(3, 6, 'habanero peppers', 4.49, 189, 2.99, 0.009, 'hot peppers'),
(2, 1, '10-mm socket wrench', 3.49, 39, 1.89, 0.018, 'important tool'),
(3, 4, 'tomato sauce', 1.19, 1509, 0.89, 0.232, 'bottled in glass'),
(1, 6, 'pure vanilla', 10.39, 1509, 7.89, 0.032, 'high-quality vanilla'),
(3, 2, 'keyboard wrench', 399999.95, 6128, 149999.99, 521.38, 'handle with care'),
(2, 1, 'power cell', 47.89, 2346, 29.99, 0.298, 'ten amp-hours per cell');



-------------------------- CONDICIONALES

CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

CREATE TABLE department (
    departmentNo INT,
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) NOT NULL
);


INSERT INTO department (
    departmentNo,
    departmentName,
    departmentLoc
)
VALUES (
    1,
    'Engg',
    'Texas'
);


-- Especificar valores por defecto

DROP TABLE IF EXISTS department;
CREATE TABLE department (
    departmentNo INT IDENTITY(1,1),
    departmentName VARCHAR(20) NOT NULL,
    departmentLoc VARCHAR(50) DEFAULT 'NJ',
    departmentEstDate DATETIME DEFAULT GETDATE()
);

INSERT INTO department (departmentName)
VALUES ('MyDepartment');


INSERT INTO department (departmentName,departmentLoc)
VALUES
('Administration',DEFAULT),
('IT',DEFAULT);


-- Usar INSERT para ingresar datos desde otra base de datos
USE EMPLOYEE;
select *
into departmentdemo
from department

-- DELET

USE PACKT_ONLINE_SHOP
DELETE FROM products
    WHERE ProductName = 'tomato sauce'











