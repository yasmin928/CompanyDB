--------------------------------------------------------------------------------------
------------------------- Cursors ----------------------------------------------------
--------------------------------------------------------------------------------------
-- Example 1
SELECT ProductName, Price
FROM Products

-- USING Cursors
DECLARE @product_name VARCHAR(MAX), @list_price DECIMAL;

DECLARE cursor_product CURSOR
FOR SELECT productName, Price
FROM Products;

-- OPEN
OPEN cursor_product;

-- FETCH
FETCH NEXT FROM cursor_product INTO @product_name, @list_price;

-- Loop overall rows
WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT @product_name + ' ' + CAST(@list_price AS varchar);
	FETCH NEXT FROM cursor_product INTO
	@product_name,
	@list_price;
END;

-- CLOSE
CLOSE cursor_product;

-- Deallocate
DEALLOCATE cursor_product;

-- Example 2
SELECT c.CategoryName, p.ProductName, p.Price
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
Order by c.CategoryName

-- USING Cursors
DECLARE @category_name VARCHAR(MAX), @product_name VARCHAR(MAX), @list_price DECIMAL;

DECLARE curosr_product_by_category CURSOR
FOR SELECT c.CategoryName, p.ProductName, p.Price
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
Order by c.CategoryName

-- OPEN
OPEN curosr_product_by_category;

-- FETCH
FETCH NEXT FROM curosr_product_by_category INTO @category_name, @product_name, @list_price;

-- Loop overall rows
WHILE @@FETCH_STATUS = 0
BEGIN
	PRINT @category_name + ' ' + @product_name + ' ' + CAST(@list_price AS varchar);
	FETCH NEXT FROM curosr_product_by_category INTO
	@category_name,
	@product_name,
	@list_price;
END;

-- CLOSE
CLOSE curosr_product_by_category;

-- Deallocate
DEALLOCATE curosr_product_by_category;
