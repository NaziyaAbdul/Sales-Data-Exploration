SELECT StoreType, SUM(TransactionAmount) AS TotalSales
FROM sales_data
GROUP BY StoreType
ORDER BY TotalSales DESC;
