--------------------------------------------------------------------------------------
------------------------- JOIN -------------------------------------------------------
--------------------------------------------------------------------------------------

-- For each category, list category_id, number of products, max price, lowest price, avgerage price
SELECT 
    CategoryID,
    COUNT(ProductID) AS NumberOfProducts,
    MAX(Price) AS MaxPrice,
    MIN(Price) AS LowestPrice,
    AVG(Price) AS AveragePrice
FROM 
    Products
GROUP BY CategoryID;

-- For each category, list category_id, category_name, number of products, max price, lowest price, avgerage price
SELECT 
    c.CategoryID,
    c.CategoryName,
    COUNT(p.ProductID) AS NumberOfProducts,
    MAX(p.Price) AS MaxPrice,
    MIN(p.Price) AS LowestPrice,
    AVG(p.Price) AS AveragePrice
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

-- OR
-- ORDER BY NumberOfProducts desc;
-- OR
-- HAVING COUNT(p.ProductID) > 4
-- ORDER BY NumberOfProducts desc;
