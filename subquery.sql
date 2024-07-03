--------------------------------------------------------------------------------------
------------------------- SubQueries -------------------------------------------------
--------------------------------------------------------------------------------------

-- selects customers whose CustomerID is greater than all CustomerID values in the Orders table.
SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID > ALL (SELECT CustomerID FROM Orders);

-- selects customers whose CustomerID matches any CustomerID values in the Orders table.
SELECT CustomerID, FirstName, LastName
FROM Customers
WHERE CustomerID = ANY (SELECT CustomerID FROM Orders);

-- Find orders shipped by FedEx
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE ShipperID = (SELECT ShipperID FROM Shippers WHERE ShipperName = 'FedEx');

-- Find orders placed by customers with more than or equal 2 orders
SELECT OrderID, CustomerID, OrderDate
FROM Orders
WHERE CustomerID IN (SELECT CustomerID
                     FROM Orders
                     GROUP BY CustomerID
                     HAVING COUNT(*) >= 2);

-- Find orders with more than or equal 2 different products ordered
SELECT OrderID, COUNT(DISTINCT ProductID) AS NumProducts
FROM OrderDetails
GROUP BY OrderID
HAVING COUNT(DISTINCT ProductID) >= 2;

-- Find customers who have ordered more than 100 units in total
SELECT CustomerID
FROM Orders
WHERE OrderID IN (SELECT OrderID
                  FROM OrderDetails
                  GROUP BY OrderID
                  HAVING SUM(Quantity) > 100);
				  
-- Using both where and having
-- Find orders where the total quantity of products ordered exceeds 100 units after a specific date
SELECT od.OrderID, COUNT(*) AS NumProducts, SUM(od.Quantity) AS TotalQuantity
FROM OrderDetails od
JOIN Orders o ON od.OrderID = o.OrderID
WHERE o.OrderDate > '2023-06-01'  -- Filtering orders placed after June 1st, 2023
GROUP BY od.OrderID
HAVING SUM(Quantity) > 100;  -- Filtering orders where total quantity exceeds 100 units

-- selects customers for whom there exists an order in the Orders table.  "EXISTS: compare a value to a subquery or a list" More efficient.
SELECT CustomerID, FirstName, LastName  
FROM Customers
WHERE EXISTS (SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);

-- selects customers for whom there IN an order in the Orders table.  "IN: compare a value to a list" Less efficient.
SELECT CustomerID, FirstName, LastName  
FROM Customers
WHERE CustomerID IN (SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);
