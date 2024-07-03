-- Select data to verify
SELECT * FROM Suppliers;
SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Shippers;
SELECT * FROM Orders;
SELECT * FROM OrderDetails;

-- Select data with different column names
SELECT ShipperName AS Shipping_company_name
FROM Shippers;
