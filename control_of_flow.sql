--------------------------------------------------------------------------------------
------------------------- Control of Flow --------------------------------------------
--------------------------------------------------------------------------------------
-- Retrieve ProductID & ProductName with price greater than 500 and print a message if no records are retrieved
BEGIN
	SELECT ProductID, ProductName
	FROM Products
	WHERE Price > 500;
	
	IF @@ROWCOUNT = 0  -- Global Variable automatically identified by sql server.
		PRINT 'No product with price greater than 500 found';
END

-- Retrieve the product name appears in the first row after ordering by price in descending order
-- IF there is a value retrieved print a message show that this is the most expensive product
-- otherwise print no product found
BEGIN
	DECLARE @name VARCHAR(MAX);

	SELECT TOP 1 
		@name = ProductName
	FROM Products
	ORDER BY Price DESC;

	IF @@ROWCOUNT <> 0
	BEGIN  -- Specify to identify all of the statements at this block in case of if
		PRINT 'The most expensive product is ' + @name
	END
	ELSE
	BEGIN
		PRINT 'No Product found';
	END;
END

-- WE need to know if the sales in 2023 is greater than 1,000,000 or not
-- Print a Congratulations message if yes otherwise print enthusiastic message

-- Exploratory query "What years we have"
Select DISTINCT(LEFT(OrderDate, 4))
From Orders
-- OR
SELECT YEAR(OrderDate) from Orders
--------
BEGIN
	DECLARE @TotalSales INT;

	SELECT
		@TotalSales = SUM(od.Quantity * p.Price)
	from OrderDetails od
	JOIN Products p ON od.ProductID = p.ProductID
	JOIN Orders o ON o.OrderID = od.OrderID
	WHERE YEAR(o.OrderDate) = 2023;

	IF @TotalSales > 1000000
	BEGIN
		PRINT 'You got total sales of'+str(@TotalSales)+CHAR(10)+'Congratulations! Sales in 2023 exceeded $1,000,000!';
	END
	ELSE
	BEGIN
		PRINT 'Keep pushing! Let''s strive to exceed $1,000,000 in sales next year!';
	END
END
-- what is ASCII()
SELECT ASCII('A'), ASCII('a') -- >>65, 97
/*
65/2=32.5 >> 1
32/2=16   >> 0
16/2=8	  >> 0
8/2=4	  >> 0
4/2=2	  >> 0
2/2=1	  >> 0
1/2=0.5	  >> 1
*/

-- WHILE
DECLARE @counter INT = 0

WHILE @counter <= 50
BEGIN
	SET @counter = @counter + 1
	IF @counter = 10
		BREAK;
	if @counter = 5
		CONTINUE
	PRINT @Counter
	
END
