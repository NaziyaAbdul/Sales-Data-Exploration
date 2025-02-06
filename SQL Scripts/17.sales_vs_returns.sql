SELECT
  FORMAT(CAST(SUM(CASE WHEN Returned = 'No' THEN TransactionAmount ELSE 0 END) AS DECIMAL(18,2)), 'N2') AS SalesWithoutReturns,
  FORMAT(CAST(SUM(CASE WHEN Returned = 'Yes' THEN TransactionAmount ELSE 0 END) AS DECIMAL(18,2)), 'N2') AS SalesWithReturns,
  FORMAT(CAST(SUM(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS TotalSales,
  FORMAT(CAST(SUM(CASE WHEN Returned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)), 'N2') AS ReturnRate
FROM sales_data;
