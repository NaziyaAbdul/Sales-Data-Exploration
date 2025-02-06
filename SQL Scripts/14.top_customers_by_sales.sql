SELECT top 10 CustomerID, FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS TotalSpent
FROM sales_data
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
