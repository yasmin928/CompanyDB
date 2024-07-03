--------------------------------------------------------------------------------------
------------------------- user defined functions -------------------------------------
--------------------------------------------------------------------------------------

-- Calculate Total Quantity for an Order
CREATE FUNCTION dbo.GetTotalQuantityForOrder (@orderId INT)
RETURNS INT
AS
BEGIN
    DECLARE @totalQuantity INT;

    SELECT @totalQuantity = SUM(Quantity)
    FROM OrderDetails
    WHERE OrderID = @orderId;

    RETURN ISNULL(@totalQuantity, 0);
END;

-- Usage
DECLARE @orderId INT = 1;
SELECT dbo.GetTotalQuantityForOrder(@orderId) AS TotalQuantity;

-- Get the total number of orders for a given customer
CREATE FUNCTION GetTotalOrdersByCustomer
(
    @CustomerID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @TotalOrders INT;
    SELECT @TotalOrders = COUNT(*)
    FROM Orders
    WHERE CustomerID = @CustomerID;
    RETURN @TotalOrders;
END;

-- Calculate the total cost of an order
CREATE FUNCTION GetTotalOrderCost
(
    @OrderID INT
)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @TotalCost DECIMAL(18, 2);
    SELECT @TotalCost = SUM(od.Quantity * p.Price)
    FROM OrderDetails od
    JOIN Products p ON od.ProductID = p.ProductID
    WHERE od.OrderID = @OrderID;
    RETURN @TotalCost;
END;

-- Retrieve the name of a product based on its ID
CREATE FUNCTION GetProductName
(
    @ProductID INT
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @ProductName NVARCHAR(50);
    SELECT @ProductName = ProductName
    FROM Products
    WHERE ProductID = @ProductID;
    RETURN @ProductName;
END;

-- Get the full name of an employee based on their ID
CREATE FUNCTION GetEmployeeFullName
(
    @EmployeeID INT
)
RETURNS NVARCHAR(100)
AS
BEGIN
    DECLARE @FullName NVARCHAR(100);
    SELECT @FullName = FirstName + ' ' + LastName
    FROM Employees
    WHERE EmployeeID = @EmployeeID;
    RETURN @FullName;
END;


-- Check if a product belongs to a specific category
CREATE FUNCTION IsProductInCategory
(
    @ProductID INT,
    @CategoryID INT
)
RETURNS BIT
AS
BEGIN
    DECLARE @IsInCategory BIT;
    IF EXISTS (
        SELECT 1
        FROM Products
        WHERE ProductID = @ProductID
        AND CategoryID = @CategoryID
    )
    BEGIN
        SET @IsInCategory = 1;
    END
    ELSE
    BEGIN
        SET @IsInCategory = 0;
    END
    RETURN @IsInCategory;
END;
