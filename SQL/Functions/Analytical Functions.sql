SQL CUME_DIST
The SQL Server CUME_DIST is one of the Analytic Functions, which is used to calculate the cumulative distribution of rows in a partition or entire row set. The basic syntax of the CUME_DIST is as shown below:

SELECT *,CUME_DIST() 
           OVER ( --PARTITION BY ProductID
                  ORDER BY salesytd
                )
FROM [Sales].[SalesPerson]

SQL FIRST_VALUE
The SQL Server FIRST_VALUE is one of the Analytic functions. This FIRST_VALUE function will return the First Value in each partition, and the basic syntax of it is as shown below:

SELECT FIRST VALUE([Scalar Expression]) 
                  OVER (
                         PARTITION_BY_Clause 
                         ORDER_BY_Clause
                        )
FROM [Source].....





SQL LAST_VALUE
The SQL LAST_VALUE is an Analytic function that returns the Last Value in an ordered set of values. The basic syntax of the LAST_VALUE is as shown below:

SELECT LAST VALUE([Scalar Expression]) 
                  OVER (
                         PARTITION_BY_Clause 
                         ORDER_BY_Clause
                        )
FROM [Source]


SQL LAG Function
The SQL LAG is one of the Analytic functions, which is exactly opposite to LEAD. This lag function allows you to access the data from a previous row without using any SELF JOIN. The basic syntax of the LAG is as shown below:

SELECT LAG([Scalar Expression], [Offset], [Default]) 
                  OVER (
                         PARTITION_BY_Clause 
                         ORDER_BY_Clause
                        )
FROM [Source]
SQL LEAD Function
The SQL Server LEAD is one of the Analytic functions. This function allows you to access the data from a subsequent row without using any SELF JOIN. The basic syntax of the LEAD is as shown below:

SELECT LEAD([Scalar Expression], [Offset], [Default]) 
                  OVER (
                         PARTITION_BY_Clause 
                         ORDER_BY_Clause
                        )
FROM [Source]



SQL PERCENTILE_CONT
The SQL Server PERCENTILE_CONT is one of the Analytic functions, which will calculate a percentile based on the continuous distribution of column values in a table. The basic syntax of the PERCENTILE_CONT is

SELECT PERCENTILE_CONT(Numerical_Literal)
       WITHIN GROUP ( ORDER BY_Clause)
        OVER ( PARTITION_BY_Clause )
FROM [Source]


SQL PERCENTILE_DISC
The SQL PERCENTILE_DISC will calculate a percentile of the sorted values within an entire row set, or within the partitions in a table. The basic syntax of the PERCENTILE_DISC in SQL Server analytic function is as shown below:

SELECT PERCENTILE_DISC(Numerical_Literal)
       WITHIN GROUP ( ORDER BY_Clause)
        OVER ( PARTITION_BY_Clause )
FROM [Source]




SELECT *,PERCENTILE_CONT(0.25)  within group (order by salesytd)
           OVER ( PARTITION BY TerritoryID
                )
FROM [Sales].[SalesPerson]


SELECT *,PERCENTILE_DISC(0.25) within group (order by salesytd)
           OVER ( PARTITION BY TerritoryID
                )
FROM [Sales].[SalesPerson]



SQL PERCENT_RANK Function
The SQL Server PERCENT_RANK is one of the Analytic functions, which will calculate the relative rank of each row. This function will return the rank from a range of values greater than 0 and less than 1. The basic syntax of the PERCENT_RANK is:

SELECT PERCENT_RANK() 
               OVER (
                      PARTITION_BY_Clause 
                      ORDER_BY_Clause
                     )
FROM [Source]


SELECT *,percent_rank() 
           OVER ( --PARTITION BY ProductID
                  ORDER BY salesytd
                )
FROM [Sales].[SalesPerson]

