SELECT
  YEAR(TransactionDate) AS Year,
  MONTH(TransactionDate) AS Month,
  FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS MonthlySales
FROM sales_data
GROUP BY YEAR(TransactionDate), MONTH(TransactionDate)
ORDER BY Year DESC, Month DESC;

--sales by year
SELECT 
  YEAR(TransactionDate) AS Year, 
  FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS TotalSales
FROM sales_data
GROUP BY YEAR(TransactionDate)
ORDER BY Year DESC;
