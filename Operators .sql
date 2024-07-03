--------------------------------------------------------------------------------------
------------------------- Arithmetic Operators ---------------------------------------
--------------------------------------------------------------------------------------

-- Retrieve all the employees that there last name is not starting with letter 'F'
SELECT * FROM Employees WHERE LastName NOT LIKE 'F%';

-- Retrieve Employee Name as one name
SELECT FirstName+LastName AS Employee_Name
from Employees

--------------------------------------------------------------------------------------
------------------------- Comparison Operators ---------------------------------------
--------------------------------------------------------------------------------------

-- Retrieve all the orders that there shipper has id = 3
SELECT * FROM Orders WHERE ShipperID=3;

-- Retrieve OrderID & ProductID if its quantity is bigger than 50
SELECT OrderID, ProductID FROM OrderDetails WHERE Quantity >50;

-- Retrieve OrderID & ProductID if its quantity is not equal to 30
SELECT OrderID, ProductID FROM OrderDetails WHERE Quantity <>30;

--------------------------------------------------------------------------------------
------------------------- Logical Operators ------------------------------------------
--------------------------------------------------------------------------------------

-- Retrieve OrderID & ProductID if ProductID = 5 and Quantity = 20
SELECT OrderID, ProductID 
FROM OrderDetails 
WHERE ProductID = 5 AND Quantity = 20;

-- Retrieve all the employees that there last name is not starting with letter 'F' or its first name starts with letter 'W'
SELECT * 
FROM Employees 
WHERE LastName NOT LIKE 'F%' OR FirstName NOT LIKE 'W%';

--------------------------------------------------------------------------------------
------------------------- Special Operators ------------------------------------------
--------------------------------------------------------------------------------------

-- selects customers whose CustomerID is between 5 and 10, inclusive
SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID BETWEEN 5 AND 10;

-- selects customers whose last names are either 'Frost', 'Rivers', or 'Vale'.  "IN: compare a value to a list" Less efficient
SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE LastName IN ('Frost', 'Rivers', 'Vale');
