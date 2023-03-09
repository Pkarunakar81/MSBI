

select 
min(StandardCost)
,max(StandardCost)
,avg(StandardCost)
,sum(StandardCost)
,var(StandardCost)
,varp(StandardCost)
/*--Calculating the Mean or Average
Mean = Sum of each individual/Total number of items

Statistical Variance of selected records

--Calculating the Statistical Variance
Variance = ((OriginalValue – Mean)² + (OriginalValue – Mean)² +.... )/(Total number of items - 1)

VARP	Statistical Variance for the population

--Calculating the Statistical Variance
Variance = ((OriginalValue – Mean)² + (OriginalValue – Mean)² +.... )/Total number of items
 */
 --The SQL COUNT_BIG Function is used to Count the number of items/rows selected by the SELECT Statement. 
 --It works the same as the Count function, but it returns the bigint.
,count_big(productid)
,count(1)
,CHECKSUM(productid)
FROM [Production].[ProductCostHistory]
group by productid

--The SQL CHECKSUM_AGG is one of the Aggregate Function, which is used to return the checksum of the values in a Group. 
--Or we can say, CHECKSUM_AGG will detect the changes in a column. 
--For this CHECKSUM_AGG demo, We are going to use the below-shown data
select CHECKSUM_agg(cast(ProductID as int))
FROM [Production].[ProductCostHistory]
group by productid


--The SQL GROUPING is one of the Aggregate Functions, which is used to indicate whether the specified column in a GROUP BY Clause aggregated or not. This Grouping function will return one for aggregated and zero for not aggregated.
--It is the subclass of the GROUP BY clause that performs an aggregate operation on multiple levels in a hierarchy 
--and prepares summary reports. 

--GROUPING	It is used to indicate whether or not the specified column in a GROUP BY Clause is aggregated.
--GROUPING_ID	This SQL Server function is used to return the level of grouping.

SELECT ProductID
      ,GROUPING(StandardCost) AS 'Grouping'
      ,GROUPING(StandardCost) AS 'Grouping 2'
      ,GROUPING_id(ProductID,StandardCost) AS 'Grouping 2'
      ,SUM(StandardCost) as income
FROM [Production].[ProductCostHistory]
GROUP BY ProductID
        ,StandardCost WITH ROLLUP
		
		
		select distinct productid,sum(StandardCost) over( order by productid)
		FROM [Production].[ProductCostHistory] 

STDEV	Calculates the Standard Deviation of the selected records
STDEVP	It is used to calculate the Standard Deviation for the population


--Calculating the Mean or Average
Mean = Sum of each individual/Total number of items

--Calculating the Statistical Variance
Variance = ((OriginalValue – Mean)² + (OriginalValue – Mean)² +.... )/(Total number of items - 1)

--Calculating Standard Deviation
Standard Deviation = Square root (Variance)


--Calculating the Mean or Average
Mean = Sum of each individual/Total number of items

--Calculating the Statistical Variance
Variance = ((OriginalValue – Mean)² + (OriginalValue – Mean)² +.... ) / Total number of items

--Calculating Standard Deviation
Standard Deviation = Square root (Variance)

select stdev(StandardCost)
,stdevp(StandardCost) FROM [Production].[ProductCostHistory]

