-- Create a database for vehicle sales at a car dealership
CREATE DATABASE CarDealership;

-- Use the CarDealership database
USE CarDealership;

-- Create a table for vehicles
CREATE TABLE Vehicles (
  VIN CHAR(17) PRIMARY KEY,
  Make VARCHAR(255),
  Model VARCHAR(255),
  Year INT,
  Color VARCHAR(255),
  MSRP DECIMAL(10,2),
  SalePrice DECIMAL(10,2),
  Sold BIT
);

-- Create a table for sales
CREATE TABLE Sales (
  SaleID INT PRIMARY KEY,
  VIN CHAR(17),
  CustomerName VARCHAR(255),
  EmployeeName VARCHAR(255),
  SaleDate DATE,
  FOREIGN KEY (VIN) REFERENCES Vehicles (VIN)
);

-- Add some sample data to the Vehicles table
INSERT INTO Vehicles (VIN, Make, Model, Year, Color, MSRP, SalePrice, Sold)
VALUES
  ('1N4AL11D75C120918', 'Nissan', 'Altima', 2011, 'Blue', 18995.00, 17495.00, 1),
  ('1G1ZB5ST1GF154040', 'Chevrolet', 'Malibu', 2016, 'Silver', 15995.00, 14495.00, 1),
  ('2FMDK3KC3EBC83835', 'Ford', 'Escape', 2014, 'Red', 14495.00, 13495.00, 1),
  ('1G1ZB5E12CF346538', 'Chevrolet', 'Cruze', 2012, 'White', 12995.00, 11995.00, 1),
  ('5NMSG3AB9DH130040', 'Hyundai', 'Santa Fe', 2013, 'Black', 19995.00, 18495.00, 1);

-- Add some sample data to the Sales table
INSERT INTO Sales (SaleID, VIN, CustomerName, EmployeeName, SaleDate)
VALUES
  (1, '1N4AL11D75C120918', 'John Smith', 'Jane Doe', '2022-12-01'),
  (2, '1G1ZB5ST1GF154040', 'Jane Smith', 'John Doe', '2022-12-02'),
  (3, '2FMDK3KC3EBC83835', 'Michael Johnson', 'Samantha Williams', '2022-12-03'),
  (4, '1G1ZB5E12CF346538', 'Emily Williams', 'William Johnson', '2022-12-04'),
  (5, '5NMSG3AB9DH130040', 'David Brown', 'Emily Davis', '2022-12-05');
