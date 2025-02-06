SELECT
  CASE
    WHEN DiscountPercent BETWEEN 0 AND 10 THEN '0-10%'
    WHEN DiscountPercent BETWEEN 11 AND 20 THEN '11-20%'
    WHEN DiscountPercent BETWEEN 21 AND 30 THEN '21-30%'
    WHEN DiscountPercent BETWEEN 31 AND 40 THEN '31-40%'
    WHEN DiscountPercent > 40 THEN '41%+'
  END AS DiscountRange,
  FORMAT(CAST(AVG(TransactionAmount) AS DECIMAL(18,2)), 'N2') AS AverageSales
FROM sales_data
GROUP BY 
  CASE
    WHEN DiscountPercent BETWEEN 0 AND 10 THEN '0-10%'
    WHEN DiscountPercent BETWEEN 11 AND 20 THEN '11-20%'
    WHEN DiscountPercent BETWEEN 21 AND 30 THEN '21-30%'
    WHEN DiscountPercent BETWEEN 31 AND 40 THEN '31-40%'
    WHEN DiscountPercent > 40 THEN '41%+'
  END
ORDER BY DiscountRange;
