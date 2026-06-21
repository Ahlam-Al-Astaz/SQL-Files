INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Ahlam Al-Ostad', 'Palestine'),
(2, 'Alaa Al-Ostad', 'Palestine'),
(3, 'Eman Al-Ostad', 'Palestine');
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(10248, 1, '2026-06-16', 500.00), -- Order for Ahlam
(10249, 2, '2026-06-16', 1200.50), -- Order for Alaa
(10250, 3, '2026-06-16', 75.20); -- Order for Eman 