SELECT customers.CustomerName, orders.OrderID, orders.Amount
FROM customers 
INNER JOIN orders
ON customers.CustomerID = orders.CustomerID;