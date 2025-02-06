SELECT
  CASE 
    WHEN DeliveryTimeDays <= 3 THEN 'Fast Delivery (<=3 Days)'
    WHEN DeliveryTimeDays BETWEEN 4 AND 7 THEN 'Standard Delivery (4-7 Days)'
    WHEN DeliveryTimeDays > 7 THEN 'Slow Delivery (>7 Days)'
  END AS DeliveryTimeCategory,
  FORMAT(SUM(TransactionAmount), 'N2') AS TotalSales
FROM sales_data
GROUP BY 
  CASE 
    WHEN DeliveryTimeDays <= 3 THEN 'Fast Delivery (<=3 Days)'
    WHEN DeliveryTimeDays BETWEEN 4 AND 7 THEN 'Standard Delivery (4-7 Days)'
    WHEN DeliveryTimeDays > 7 THEN 'Slow Delivery (>7 Days)'
  END
ORDER BY TotalSales DESC;
