--------------------------------------------------------------------------------------
------------------------- Aggregate Functions ----------------------------------------
--------------------------------------------------------------------------------------

-- Retrieve average quantity
SELECT AVG(Quantity) AS AvgQuantity
FROM OrderDetails;

-- retrieve the total number of rows
SELECT COUNT(*) AS TotalRows
FROM OrderDetails;

-- retrieve the first product ID appears in the table 
SELECT TOP 1 ProductID AS First_Product_ID
FROM OrderDetails;

-- Retrieve max quantity
SELECT MAX(Quantity) AS max_quantity
FROM OrderDetails;

-- retrieve all data from products and order by its price (desc, asc)
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC; -- ASC

--------------------------------------------------------------------------------------
------------------------- Scalar Functions -------------------------------------------
--------------------------------------------------------------------------------------

-- Converting names to upper CASE
SELECT UPPER(FirstName) AS first_name
FROM Customers;

-- Fetching first 3 characters
SELECT SUBSTRING(FirstName, 1, 3) AS char_name
FROM Customers;

-- Fetching Customers names and current system time. 
select (FirstName+LastName), GETDATE()
from Customers;
