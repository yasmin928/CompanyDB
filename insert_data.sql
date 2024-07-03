-- Insert data into tables

-- Suppliers
INSERT INTO Suppliers (SupplierID, SupplierName) VALUES 
(1, '3M Company'),
(2, 'ABC Supply'),
(3, 'Acme Corporation'),
(4, 'BASF'),
(5, 'Bayer AG'),
(6, 'Bosch'),
(7, 'Caterpillar'),
(8, 'Chevron'),
(9, 'Cisco Systems'),
(10, 'Dell Technologies');

-- Categories
INSERT INTO Categories (CategoryID, CategoryName) VALUES 
(1, 'Electronics'),
(2, 'Home Appliances'),
(3, 'Automobiles'),
(4, 'Software'),
(5, 'Hardware');

-- Products
INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, Price) VALUES 
(1, 'Laptop', 10, 1, 300.50),
(2, 'Smartphone', 9, 1, 70),
(3, 'Tablet', 10, 1, 100),
(4, 'Washing Machine', 6, 2, 564),
(5, 'Refrigerator', 5, 2, 743.50),
(6, 'Microwave', 5, 2, 329.99),
(7, 'Car', 4, 3, 10800),
(8, 'Truck', 4, 3, 15952),
(9, 'Motorcycle', 4, 3, 7823),
(10, 'Operating System', 8, 4, 20),
(11, 'Antivirus Software', 8, 4, 10),
(12, 'Office Suite', 9, 4, 30.20),
(13, 'Processor', 6, 5, 45.82),
(14, 'Graphics Card', 6, 5, 50.63),
(15, 'Motherboard', 7, 5, 24),
(16, 'Smartwatch', 9, 1, 2500),
(17, 'Bluetooth Speaker', 10, 1, 55),
(18, 'Drone', 7, 1, 5350),
(19, 'Electric Scooter', 6, 3, 4200),
(20, 'Fitness Tracker', 8, 1, 1233),
(21, 'Smart Thermostat', 9, 2, 230),
(22, 'VR Headset', 10, 1, 320),
(23, 'Digital Camera', 7, 1, 623),
(24, 'Home Security System', 8, 2, 1000),
(25, 'Laptop Stand', 9, 5, 13),
(26, 'Portable Charger', 6, 5, 14.33),
(27, 'Wireless Mouse', 7, 5, 7.36),
(28, 'Smart Light Bulb', 8, 2, 3.20),
(29, 'Gaming Console', 9, 1, 19),
(30, 'Robot Vacuum', 10, 2, 240);

INSERT INTO Customers (CustomerID, FirstName, LastName) VALUES
(1, 'Alexander', 'Frost'),
(2, 'Olivia', 'Rivers'),
(3, 'Gabriel', 'Steele'),
(4, 'Sophia', 'Knight'),
(5, 'Sebastian', 'Fox'),
(6, 'Isabella', 'Lake'),
(7, 'Elijah', 'Stone'),
(8, 'Ava', 'Moon'),
(9, 'Lucas', 'Hawk'),
(10, 'Emma', 'Vale'),
(11, 'Xavier', 'Storm'),
(12, 'Mia', 'Ember'),
(13, 'Nathaniel', 'Brooks'),
(14, 'Chloe', 'Winter'),
(15, 'Dominic', 'Wolf'),
(16, 'Lily', 'Meadow'),
(17, 'Benjamin', 'Rivers'),
(18, 'Grace', 'Willow'),
(19, 'Zachary', 'Blaze'),
(20, 'Harper', 'Sky'),
(21, 'Noah', 'Reed'),
(22, 'Stella', 'Frost'),
(23, 'Ethan', 'Wilder'),
(24, 'Violet', 'Dawn'),
(25, 'Joshua', 'Brooks'),
(26, 'Aurora', 'Frost'),
(27, 'Caleb', 'Hawk'),
(28, 'Ivy', 'Rain'),
(29, 'Matthew', 'Frost'),
(30, 'Eleanor', 'Vale'),
(31, 'Jackson', 'Rivers'),
(32, 'Ruby', 'Brooks'),
(33, 'Nicholas', 'Stone'),
(34, 'Penelope', 'Sage'),
(35, 'Oliver', 'Steele'),
(36, 'Hazel', 'Lake'),
(37, 'Daniel', 'Swift'),
(38, 'Seraphina', 'Frost'),
(39, 'William', 'Reed'),
(40, 'Savannah', 'Vale'),
(41, 'Andrew', 'Night'),
(42, 'Isla', 'Wren'),
(43, 'Christopher', 'Fox'),
(44, 'Sophie', 'Quinn'),
(45, 'Jonathan', 'Ash'),
(46, 'Amelia', 'Dove'),
(47, 'Nathan', 'Drake'),
(48, 'Autumn', 'Frost'),
(49, 'Samuel', 'Falcon'),
(50, 'Delilah', 'Sky'),
(51, 'Isaac', 'Winter'),
(52, 'Rosemary', 'Vale'),
(53, 'Levi', 'Hawk'),
(54, 'Celeste', 'River'),
(55, 'Carter', 'Thorn'),
(56, 'Luna', 'Rose'),
(57, 'Tyler', 'Stone'),
(58, 'Freya', 'Snow'),
(59, 'Owen', 'Hawthorne'),
(60, 'Arabella', 'Star'),
(61, 'Gabriel', 'Ember'),
(62, 'Elodie', 'Storm'),
(63, 'Declan', 'Frost'),
(64, 'Astrid', 'Frost'),
(65, 'Alexander', 'Frost'),
(66, 'Elara', 'Wren'),
(67, 'Sebastian', 'Fox'),
(68, 'Lyra', 'Vale'),
(69, 'Julian', 'Hawk'),
(70, 'Delphine', 'Sky'),
(71, 'Felix', 'Rivers'),
(72, 'Seraphina', 'Lake'),
(73, 'Caleb', 'Steele'),
(74, 'Aurora', 'Frost'),
(75, 'Nathaniel', 'Brooks'),
(76, 'Isolde', 'Rain'),
(77, 'Lucas', 'Hawk'),
(78, 'Linnea', 'Meadow'),
(79, 'Tobias', 'Rivers'),
(80, 'Anneliese', 'Frost'),
(81, 'Zachary', 'Blaze'),
(82, 'Selene', 'Moon'),
(83, 'Elias', 'Wolf'),
(84, 'Calliope', 'Vale'),
(85, 'Jasper', 'Brooks'),
(86, 'Tamsin', 'Winter'),
(87, 'William', 'Rivers'),
(88, 'Ophelia', 'Frost'),
(89, 'Benjamin', 'Ash'),
(90, 'Maeve', 'Vale'),
(91, 'Tristan', 'Night'),
(92, 'Lyra', 'Quinn'),
(93, 'Micah', 'Frost'),
(94, 'Elowen', 'Dove'),
(95, 'Oliver', 'Steele'),
(96, 'Beatrix', 'Lake'),
(97, 'Gabriel', 'Frost'),
(98, 'Marigold', 'Vale'),
(99, 'Atticus', 'Hawk'),
(100, 'Elara', 'Wren')

-- Employees
INSERT INTO Employees (EmployeeID, FirstName, LastName) VALUES
(1, 'Theodore', 'Frost'),
(2, 'Ella', 'Rivers'),
(3, 'Gideon', 'Steele'),
(4, 'Charlotte', 'Knight'),
(5, 'Maxwell', 'Fox'),
(6, 'Aria', 'Lake'),
(7, 'Isaiah', 'Stone'),
(8, 'Nora', 'Moon'),
(9, 'Henry', 'Hawk'),
(10, 'Scarlett', 'Vale'),
(11, 'Simon', 'Storm'),
(12, 'Avery', 'Ember'),
(13, 'Julian', 'Brooks'),
(14, 'Amara', 'Winter'),
(15, 'Ezra', 'Wolf'),
(16, 'Phoebe', 'Meadow'),
(17, 'Thomas', 'Rivers'),
(18, 'Fiona', 'Willow'),
(19, 'Landon', 'Blaze'),
(20, 'Lydia', 'Sky'),
(21, 'Asher', 'Reed'),
(22, 'Ivy', 'Frost'),
(23, 'Milo', 'Wilder'),
(24, 'Cora', 'Dawn'),
(25, 'Gavin', 'Brooks'),
(26, 'Elise', 'Frost'),
(27, 'Josiah', 'Hawk'),
(28, 'Luna', 'Rain'),
(29, 'Patrick', 'Frost'),
(30, 'Clara', 'Vale'),
(31, 'Archer', 'Rivers'),
(32, 'Hannah', 'Brooks'),
(33, 'Sawyer', 'Stone'),
(34, 'Madeline', 'Sage'),
(35, 'Roman', 'Steele'),
(36, 'Vivienne', 'Lake'),
(37, 'Gabriel', 'Swift'),
(38, 'Evangeline', 'Frost'),
(39, 'Owen', 'Reed'),
(40, 'Matilda', 'Vale'),
(41, 'Cameron', 'Night'),
(42, 'Eva', 'Wren'),
(43, 'Harrison', 'Fox'),
(44, 'Juliet', 'Quinn'),
(45, 'Nolan', 'Ash'),
(46, 'Adeline', 'Dove'),
(47, 'Micah', 'Drake'),
(48, 'Athena', 'Frost'),
(49, 'Silas', 'Falcon'),
(50, 'Evelyn', 'Sky')

-- Shippers
INSERT INTO Shippers (ShipperID, ShipperName) VALUES 
(1, 'DHL'),
(2, 'FedEx'),
(3, 'UPS'),
(4, 'TNT Express'),
(5, 'Blue Dart');

-- Orders
DECLARE @i INT = 1
WHILE @i <= 200
BEGIN
    INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES (
        @i,
        ((@i - 1) % 100) + 1,  -- CustomerID between 1 and 100
        ((@i - 1) % 50) + 1,   -- EmployeeID between 1 and 50
        DATEADD(DAY, @i, '2023-01-01'),  -- OrderDate increasing from 2023-01-01
        ((@i - 1) % 5) + 1    -- ShipperID between 1 and 5
    )
    SET @i = @i + 1
END

/*
IMPORTANT: modulo of a number 𝑛 with a larger number 𝑚(where n<m), the result will always be 𝑛.
*/

-- OrderDetails
--DECLARE @i INT = 1 -- ALready declared. Make sure to use this line if you commented the previous declared variable.
SET @i = 1
WHILE @i <= 400
BEGIN
    INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES (
        @i,
        ((@i - 1) % 200) + 1,  -- OrderID between 1 and 200
        ((@i - 1) % 30) + 1,   -- ProductID between 1 and 30
        ((@i - 1) % 100) + 1   -- Quantity between 1 and 100
    )
    SET @i = @i + 1
END
