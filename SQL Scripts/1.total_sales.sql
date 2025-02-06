SELECT FORMAT(CAST(SUM(TransactionAmount) AS int), 'N0') AS TotalSales
FROM sales_data;
