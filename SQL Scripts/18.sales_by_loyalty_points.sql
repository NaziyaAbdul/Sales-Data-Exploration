SELECT
  CASE 
    WHEN LoyaltyPoints BETWEEN 0 AND 1000 THEN '0-1000 Points'
    WHEN LoyaltyPoints BETWEEN 1001 AND 5000 THEN '1001-5000 Points'
    WHEN LoyaltyPoints BETWEEN 5001 AND 10000 THEN '5001-10000 Points'
    WHEN LoyaltyPoints > 10000 THEN '10000+ Points'
  END AS LoyaltyPointsRange,
  FORMAT(SUM(TransactionAmount), 'N2') AS TotalSales
FROM sales_data
GROUP BY 
  CASE 
    WHEN LoyaltyPoints BETWEEN 0 AND 1000 THEN '0-1000 Points'
    WHEN LoyaltyPoints BETWEEN 1001 AND 5000 THEN '1001-5000 Points'
    WHEN LoyaltyPoints BETWEEN 5001 AND 10000 THEN '5001-10000 Points'
    WHEN LoyaltyPoints > 10000 THEN '10000+ Points'
  END
ORDER BY TotalSales DESC;
