SELECT CustomerGender, SUM(TransactionAmount) AS TotalSales
FROM sales_data
GROUP BY CustomerGender
ORDER BY TotalSales DESC;
