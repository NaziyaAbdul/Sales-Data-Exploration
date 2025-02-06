SELECT SUM(TransactionAmount) AS TotalSales
FROM sales_data
WHERE Returned = 'No';
