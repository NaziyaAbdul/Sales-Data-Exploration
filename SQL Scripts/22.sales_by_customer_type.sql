SELECT 
    CustomerType,
    FORMAT(SUM(TransactionAmount), 'N2') AS TotalSales
FROM (
    SELECT 
        TransactionAmount,
        CASE 
            WHEN CustomerID IN (SELECT DISTINCT CustomerID FROM sales_data WHERE TransactionDate < '2022-01-01') THEN 'Existing Customers'
            ELSE 'New Customers'
        END AS CustomerType
    FROM sales_data
) AS CategorizedSales
GROUP BY CustomerType
ORDER BY TotalSales DESC;
