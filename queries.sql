-- Using Joins
​
SELECT Products.ProductId, Products.ProductName, Suppliers.SupplierName, Suppliers.Phone 
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
​
-- include the category name in addition to the product data
SELECT c.CategoryName as Category, p.*
FROM Products as p
JOIN Categories as c ON p.CategoryID = c.CategoryID
​
-- include the category name and supplier name in addition to the product data
SELECT c.CategoryName as Category, p.ProductName, p.Price, s.SupplierName as SuppliedBy
FROM Products as p
JOIN Categories as c ON p.CategoryID = c.CategoryID
JOIN Suppliers as s ON p.SupplierID = s.SupplierID
​
-- all suppliers, even if they have no products associated with them
SELECT *
FROM [Suppliers] as s 
LEFT JOIN Products as p -- the key is the LEFT join
	ON s.SupplierID = p.SupplierID;
