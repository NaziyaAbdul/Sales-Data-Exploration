SELECT Region, SUM(TransactionAmount) AS TotalSales
FROM sales_data
GROUP BY Region
ORDER BY TotalSales DESC;
