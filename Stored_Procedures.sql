--------------------------------------------------------------------------------------
------------------------- Stored Procedures ------------------------------------------
--------------------------------------------------------------------------------------

-- Retrieves orders placed by a specific customer ID
CREATE PROCEDURE GetOrdersByCustomerID
    @customerId INT
AS
BEGIN
    SELECT OrderID, OrderDate, ShipperID
    FROM Orders
    WHERE CustomerID = @customerId;
END;

-- ALTER PROCEDURE to select only OrderID and OrderDate
ALTER PROCEDURE GetOrdersByCustomerID
    @customerId INT
AS
BEGIN
    SELECT OrderID, OrderDate
    FROM Orders
    WHERE CustomerID = @customerId;
END;

-- Usage
DECLARE @customerId INT = 1;  -- Example CustomerID
EXEC GetOrdersByCustomerID @customerId;

-- List all orders for a given customer
CREATE PROCEDURE GetCustomerOrders
    @CustomerID INT
AS
BEGIN
    SELECT o.OrderID, o.OrderDate, o.ShipperID
    FROM Orders o
    WHERE o.CustomerID = @CustomerID;
END;

-- Find all products supplied by a specific supplier
CREATE PROCEDURE GetProductsBySupplier
    @SupplierID INT
AS
BEGIN
    SELECT p.ProductID, p.ProductName, p.Price
    FROM Products p
    WHERE p.SupplierID = @SupplierID;
END;

-- Get the total quantity of each product ordered
CREATE PROCEDURE GetTotalProductQuantity
AS
BEGIN
    SELECT od.ProductID, SUM(od.Quantity) AS TotalQuantity
    FROM OrderDetails od
    GROUP BY od.ProductID;
END;

-- Retrieve all orders handled by a specific employee within a date range
CREATE PROCEDURE GetEmployeeOrders
    @EmployeeID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT o.OrderID, o.CustomerID, o.OrderDate, o.ShipperID
    FROM Orders o
    WHERE o.EmployeeID = @EmployeeID
      AND o.OrderDate BETWEEN @StartDate AND @EndDate;
END;

-- Calculate the total sales for each product category
CREATE PROCEDURE GetTotalSalesByCategory
AS
BEGIN
    SELECT c.CategoryID, c.CategoryName, SUM(od.Quantity * p.Price) AS TotalSales
    FROM OrderDetails od
    JOIN Products p ON od.ProductID = p.ProductID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    GROUP BY c.CategoryID, c.CategoryName;
END;
