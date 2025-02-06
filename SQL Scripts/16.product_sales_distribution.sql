SELECT
  ProductName,
  FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS TotalSales
FROM sales_data
GROUP BY ProductName
ORDER BY TotalSales DESC;
