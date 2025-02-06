SELECT top 5 ProductName, cast(SUM(TransactionAmount)as int) AS TotalSales
FROM sales_data
GROUP BY ProductName
ORDER BY TotalSales DESC;
