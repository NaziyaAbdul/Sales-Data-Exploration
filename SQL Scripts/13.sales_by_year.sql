
SELECT 
  YEAR(TransactionDate) AS Year, 
  FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS TotalSales
FROM sales_data
GROUP BY YEAR(TransactionDate)
ORDER BY Year DESC;
