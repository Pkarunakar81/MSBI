WITH Fibonacci (PrevN, N) AS
(
     SELECT 0, 1
     UNION ALL
     SELECT N, PrevN + N
     FROM Fibonacci
     WHERE N < 1000000000
)
SELECT PrevN as Fibo
     FROM Fibonacci
     OPTION (MAXRECURSION 0);
	 
	 
	 CREATE TABLE #Fibonacci (value BIGINT)
GO

INSERT INTO #Fibonacci(value) SELECT 0
INSERT INTO #Fibonacci(value) SELECT 1
SELECT * FROM #Fibonacci
GO

INSERT INTO #Fibonacci(value) 
SELECT SUM(value) FROM ( SELECT TOP 2 * FROM #Fibonacci ORDER BY value DESC ) AS value
GO 10   --  Loop insert 10 value...

SELECT * FROM #Fibonacci
DROP TABLE #Fibonacci

By default maximum recursion level supported by CTE is 100. But CTE provides an option to change it by means of the MAXRECURSION hint. 
MAXRECURSION hint value can be between 0 to 32,767. Specifying it’s value as 0 means no limit.



 Following are the places where we can utilize Fibonacci series:

·         MERGE sort
·         Search Algorithms
·         Network Topology
·         Lossy compression in Data encoding, Streaming Media, and internet telephony.  
