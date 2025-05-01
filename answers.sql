--Question 1
-- Normalize the ProductDetail table to the 1st NF

-- Create the ProductDetail_to_1NF table
CREATE TABLE ProductDetail_to_1NF(
OrderID INT,
CustomerName VARCHAR(50),
Products VARCHAR(100)
);

-- Insert data into the ProductDetail_to_1NF table
INSERT INTO normalized_1NF(OrderID,CustomerName,Products)
VALUES(101,'John Doe','Laptop'),
(101,'John Doe','Mouse'),
(102,'Jane Smith','Tablet'),
(102,'Jane Smith','Keyboard'),
(102,'Jane Smithh','Mouse'),
(103,'Emily Clark','Phone');

--Question 2
-- Normalize the ProductDetail table to the 2nd NF

-- Creating the orders table
CREATE TABLE orders(
PK_ID INT PRIMARY KEY,
OrderID INT,
CustomerName VARCHAR(50)
);
-- Inserting data into the orders table
INSERT INTO orders(PK_ID,OrderID,CustomerName)
VALUES(1000,101,'John Doe'),
(1001,101,'John Doe'),
(1002,102,'Jane Smith'),
(1003,102,'Jane Smith'),
(1004,102,'Jane Smith'),
(1005,103,'Emily Crack');

-- Creating the orderProducts table
CREATE TABLE orderProducts(
ProductID INT PRIMARY KEY,
Product VARCHAR(100),
Quantity INT,
PK_ID INT,
FOREIGN KEY(PK_ID) REFERENCES orders(PK_ID)
);
-- Inserting data into the orderProducts table
INSERT INTO orderProducts(ProductID,Product,Quantity,PK_ID)
VALUES(1,'Laptop',2,1000),
(2,'Mouse',1,1001),
(3,'Tablet',3,1002),
(4,'Keyboard',1,1003),
(5,'Mouse',2,1004),
(6,'Phone',1,1005)