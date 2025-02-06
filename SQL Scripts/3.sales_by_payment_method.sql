SELECT PaymentMethod, SUM(TransactionAmount) AS TotalSales
FROM sales_data
GROUP BY PaymentMethod
ORDER BY TotalSales desc;
