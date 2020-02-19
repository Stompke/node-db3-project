-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
from Product as p
JOIN Category as c ON c.Id = p.CategoryId;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.Id, s.CompanyName 
FROM [order] AS o
JOIN Shipper AS s ON o.ShipVia = s.Id
where o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select p.ProductName, d.Quantity
from [Order] AS o
JOIN OrderDetail AS d ON o.Id = d.OrderId
JOIN Product as p ON p.Id = d.ProductId
WHERE o.Id = 10251
ORDER BY p.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.id as Order_Id , c.CompanyName, e.LastName as Customers_Last_Name 
from [Order] AS o
JOIN Employee AS e ON e.Id = o.EmployeeId
JOIN Customer as c ON c.Id = o.CustomerId;