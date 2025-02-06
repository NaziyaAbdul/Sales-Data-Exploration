SELECT
  CASE 
    WHEN FeedbackScore BETWEEN 1 AND 2 THEN 'Poor (1-2)'
    WHEN FeedbackScore BETWEEN 3 AND 4 THEN 'Neutral (3-4)'
    WHEN FeedbackScore = 5 THEN 'Excellent (5)'
  END AS FeedbackCategory,
  FORMAT(SUM(TransactionAmount), 'N2') AS TotalSales
FROM sales_data
GROUP BY 
  CASE 
    WHEN FeedbackScore BETWEEN 1 AND 2 THEN 'Poor (1-2)'
    WHEN FeedbackScore BETWEEN 3 AND 4 THEN 'Neutral (3-4)'
    WHEN FeedbackScore = 5 THEN 'Excellent (5)'
  END
ORDER BY TotalSales DESC;
