CREATE TABLE Customers(
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100),
Country VARCHAR(50)
);
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
Amount DECIMAL(10, 2),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
); 