SELECT Customers.CustomerName, Orders.OrderID, orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;