SELECT
  CASE
    WHEN CustomerAge BETWEEN 20 AND 30 THEN '20-30'
    WHEN CustomerAge BETWEEN 31 AND 40 THEN '31-40'
    WHEN CustomerAge BETWEEN 41 AND 50 THEN '41-50'
    WHEN CustomerAge BETWEEN 51 AND 60 THEN '51-60'
    WHEN CustomerAge > 60 THEN '60+'
    ELSE 'Unknown'
  END AS AgeGroup,
  FORMAT(CAST(SUM(TransactionAmount) AS INT), 'N0') AS TotalSales
FROM sales_data
GROUP BY CustomerAge
ORDER BY TotalSales DESC;
