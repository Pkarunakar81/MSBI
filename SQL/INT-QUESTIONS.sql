Write a query to print 1 to 100 in sql server without using loops?
Ans: Use Recursive common table expression:
;WITH CTE
AS
(
SELECT 1 [Sequence]
UNION ALL
SELECT [Sequence] + 1 FROM CTE WHERE [Sequence] <100
)
SELECT * FROM CTE

Using Loop:
DECLARE @i INT
SET @i = 0
WHILE (@i < 100)
BEGIN
SELECT @i = @i + 1
PRINT @i
END


Ans: Select top 1 * from <TableName> order by newId()




1. 
Table Name : Employee
Column Name : Emp_Name
PAUL
SMITH
ABDUL

OUTPUT - PAUL,SMITH,ABDUL


select concat_ws(',',emp_name) from employee


DECLARE @TABLE TABLE (ID INT,NAME VARCHAR(20)) INSERT INTO @TABLE VALUES('1','PAUL'),('9','SMITH'),('2','ABDUL')
		SELECT STRING_AGG(NAME,',') FROM @TABLE

2. 
Table Name : Employee
Column Name : Emp_Email
paul@gmail.com
Abdul@outlook.com
Teja@yahoomail.com

Output :
@gmail.com
@outlook.com
@yahoomail.com


select right(emp_email,len(emp_email)-charindex('@',emp_email)+1) from Employee;
select right(emp_email,len(emp_email)-PARINDEX('%@%',emp_email)+1) from Employee;



You are being you being assigned a task to move 5 million rows from one server to another using T-SQL with a linked server.
 What will you consider to avoid transaction log fill up at destination server?
 
batch process

SELECT *
FROM Table
ORDER BY ID
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY


employee
emp_id,emp_name,designation

salary
emp_id,salary,salary_date

--latest salary of 

DROP TABLE #EMPLOYEE
CREATE TABLE #EMPLOYEE(emp_id INT,emp_name VARCHAR(100),designation VARCHAR(100))
CREATE TABLE #salary(emp_id INT,salary MONEY,salary_date DATETIME)

INSERT INTO #EMPLOYEE
SELECT 1101,'A','MAN' UNION ALL
SELECT 1102,'B','SUP' UNION ALL
SELECT 1103,'C','SENIOR'

INSERT INTO #salary
SELECT 1101,100,'2022-01-01' UNION ALL
SELECT 1101,100,'2022-02-01' UNION ALL
SELECT 1101,100,'2022-03-01' UNION ALL
SELECT 1102,200,'2022-10-01' UNION ALL
SELECT 1102,200,'2022-10-01' UNION ALL
SELECT 1102,200,'2022-11-01' UNION ALL
SELECT 1102,200,'2022-12-01' UNION ALL
SELECT 1103,300,'2023-01-01' UNION ALL
SELECT 1103,300,'2023-02-01' 

karuna  feb
kiran sep-

teja 
SELECT * FROM #EMPLOYEE A
LEFT JOIN (
SELECT *,ROW_NUMBER() OVER (PARTITION  BY EMP_ID ORDER BY SALARY_DATE DESC)RN FROM #salary
) B ON A.EMP_ID=B.EMP_ID WHERE B.RN=1
 



Create table #temp
(
Num int
)
insert into #temp
select 1  union 
select 2  union 
select 3  union 
select 4  union 
select 5  union 
select 6  union 
select 7  union 
select 8  union 
select 9  union 
select 10 union 
select 11 union 
select 12 union 
select 13 union 
select 14 union 
select 15 union 
select 16 union 
select 17 union 
select 18 union 
select 90 union 
select 20

SELECT *,NUM/5 Div from #temp
where NUM % 5=0



emp_email

add column  not null

alter table emp add address v


alter table emp_email add NAME2 VARCHAR(10) CONSTRAINT TEST  NULL DEFAULT(3) WITH VALUES ;



create table #temp
(
ID int,
Amount int
)
insert into #temp
select 1,100 union
select 2,200 union
select 3 ,300

select * from #temp

Desired O/P
ID   Amount
1    100
2    300
3    600


WITH    CTE
            AS ( SELECT   [ID] ,RunningTotal = Amount
                FROM     #temp
				WHERE    [ID] IN ( SELECT  MIN(ID) FROM    #temp)
                UNION ALL
                SELECT   y.[ID] ,RunningTotal = x.RunningTotal + y.Amount
                FROM     CTE x  JOIN #temp y ON y.id = x.id+1
                )SELECT  *  FROM    CTE ORDER BY 1 ,2 
OPTION  ( MAXRECURSION 10000 );



select *,sum(amount) over(order by id)Running_Total 
from #temp

SELECT * ,(
SELECT SUM(T2.amount)  
 FROM #temp AS T2
       WHERE T2.[ID] <= T1.[ID]
) AS [Running Total]
FROM #temp AS T1

fibonaci


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


Recursive Common Table Expression
CTEs provide a mechanism to write easy to understand, more readable and maintainable recursive queries. 
Prior to CTEs only mechanism to write recursive query is by means of recursive function or stored procedure. 
And these recursive functions or stored procedures support only up-to 32 levels of recursion. 
By default CTEs support a maximum recursion level of 100. CTEs also provide an option to set a MAXRECURSION level value between 0 to 32,767. 
Specifying it’s value as 0 means no limit to the recursion level, you agreed for a risk in case of a poorly written query resulting in infinite recursion level.


By default maximum recursion level supported by CTE is 100. But CTE provides an option to change it by means of the MAXRECURSION hint. 
MAXRECURSION hint value can be between 0 to 32,767. Specifying it’s value as 0 means no limit.



 Following are the places where we can utilize Fibonacci series:

·         MERGE sort
·         Search Algorithms
·         Network Topology
·         Lossy compression in Data encoding, Streaming Media, and internet telephony.  


