SELECT
  CASE 
    WHEN ShippingCost = 0 THEN 'Free Shipping'
    WHEN ShippingCost BETWEEN 1 AND 50 THEN 'Low Shipping Cost (1-50)'
    WHEN ShippingCost BETWEEN 51 AND 200 THEN 'Medium Shipping Cost (51-200)'
    WHEN ShippingCost > 200 THEN 'High Shipping Cost (200+)'
  END AS ShippingCostCategory,
  FORMAT(SUM(TransactionAmount), 'N2') AS TotalSales
FROM sales_data
GROUP BY 
  CASE 
    WHEN ShippingCost = 0 THEN 'Free Shipping'
    WHEN ShippingCost BETWEEN 1 AND 50 THEN 'Low Shipping Cost (1-50)'
    WHEN ShippingCost BETWEEN 51 AND 200 THEN 'Medium Shipping Cost (51-200)'
    WHEN ShippingCost > 200 THEN 'High Shipping Cost (200+)'
  END
ORDER BY TotalSales DESC;
