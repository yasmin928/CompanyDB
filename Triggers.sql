--------------------------------------------------------------------------------------
----------------------------- Triggers -----------------------------------------------
--------------------------------------------------------------------------------------

-- audits table
CREATE TABLE product_audits(
	change_id INT IDENTITY PRIMARY KEY,
    product_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    list_price DEC(10,2) NOT NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
	--FOREIGN KEY (product_id) REFERENCES Products(ProductID),
    CHECK(operation = 'INS' or operation='DEL') --Constraint CHECK
)

-- CREATE Trigger
CREATE TRIGGER trg_product_audits ON Products
AFTER INSERT, DELETE 
AS
BEGIN
	SET NOCOUNT ON; -- Ignore the message of how many rows affected

	INSERT INTO product_audits (product_id, product_name, category_id, list_price, updated_at, operation)

	SELECT i.ProductID, ProductName, CategoryID, i.Price, GETDATE(), 'INS'
	FROM inserted AS i

	UNION ALL

	SELECT d.ProductID, ProductName, CategoryID, d.Price, GETDATE(), 'DEL'
	FROM deleted AS d

END

-- Insert in products
INSERT INTO Products VALUES (32, 'Mouse', 7, 5, 56.5)
-- Delete from products
DELETE FROM Products WHERE PRODUCTID = 31 -- >> ERROE

DROP TABLE product_audits
CREATE TABLE product_audits(
	change_id INT IDENTITY PRIMARY KEY,
    product_id INT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    list_price DEC(10,2) NOT NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
	--FOREIGN KEY (product_id) REFERENCES Products(ProductID),
    CHECK(operation = 'INS' or operation='DEL') --Constraint CHECK
)
-- CHECK the trigger calls
SELECt * FROM product_audits
