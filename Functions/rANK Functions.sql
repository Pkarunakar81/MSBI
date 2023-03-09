
--  Functions	Description
--RANK	It will assign the rank number to each record present in a partition.
--DENSE_RANK	It will assign the number to each record within a partition without skipping the numbers.
--NTILE	This will assign the number to each record present in a partition.
--ROW_NUMBER	It will assign the sequential number to each unique record present in a partition.

SELECT ProductID,Name,ProductNumber
,ProductSubcategoryID
      ,RANK() OVER (ORDER BY ProductSubcategoryID DESC) AS RANK
      ,DENSE_RANK() OVER (ORDER BY ProductSubcategoryID DESC) AS [DENSE_RANK]
      ,ROW_NUMBER() OVER (ORDER BY ProductSubcategoryID DESC) AS [ROW NUMBER]
      ,NTILE(3) OVER (ORDER BY ProductSubcategoryID DESC) AS [NTILE NUMBER]
  FROM [Production].[Product]
  
