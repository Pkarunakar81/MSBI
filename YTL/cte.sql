Using CTE query for SQL Table
Now let’s see on, how to use CTE query for our SQL server table data.

Create Database: First, we create a database for creating our table

 
 
 
 
--USE MASTER    
--GO    
---- 1) Check for the Database Exists .If the database is exist then drop and create new DB    
--IF EXISTS (SELECT [name] FROM sys.databases WHERE [name] = 'CTEDB' )    
--DROP DATABASE CTEDB    
--GO    
    
--CREATE DATABASE CTEDB    
--GO    
    
--USE CTEDB    
--GO   
 
Create Table: Now we create a sample Item Table on the created Database.

 
IF EXISTS ( SELECT [name] FROM sys.tables WHERE [name] = 'ItemDetails' )    
DROP TABLE ItemDetails    
GO    
    
CREATE TABLE ItemDetails    
(    
Item_ID int identity(1,1),    
Item_Name VARCHAR(100) NOT NULL,    
Item_Price int NOT NULL,    
Date VARCHAR(100) NOT NULL ,
CONSTRAINT [PK_ItemDetails] PRIMARY KEY CLUSTERED     
(     
[Item_ID] ASC     
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]     
) ON [PRIMARY]     
    
GO    
 
Insert Sample Data: We will insert few sample records for using in our CTE Query.

 
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Access Point',950,'2017-02-10')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('CD',350,'2017-02-13')     
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Desktop Computer',1400,'2017-02-16')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('DVD',1390,'2017-03-05')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('DVD Player',450,'2017-05-07')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Floppy',1250,'2017-05-07')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('HDD',950,'2017-07-10')       
Insert into ItemDetails(Item_Name,Item_Price,Date) values('MobilePhone',1150,'2017-07-10')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Mouse',399,'2017-08-12')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('MP3 Player ',897,'2017-08-14')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Notebook',750,'2017-08-16')     
Insert into ItemDetails(Item_Name,Item_Price, Date) values('Printer',675,'2017-07-18')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('RAM',1950,'2017-09-23')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('Smart Phone',679,'2017-09-10')    
Insert into ItemDetails(Item_Name,Item_Price,Date) values('USB',950,'2017-02-26')    
    
select * from ItemDetails
 
CTE Example:

 
;WITH itemCTE (Item_ID, Item_Name, Item_Price,SalesYear)
AS
(
  SELECT Item_ID, Item_Name, Item_Price ,YEAR(Date) SalesYear
  FROM ItemDetails   
)
 
Select * from itemCTE

CTE using Union ALL

 
;WITH itemCTE (Item_ID, Item_Name, Item_Price,MarketRate,SalesYear)
AS
(
    SELECT Item_ID, Item_Name, Item_Price ,'Present Price' as MarketRate,YEAR(Date) as SalesYear 
    FROM ItemDetails  
	UNION ALL
	 SELECT Item_ID as Item_ID, Item_Name,
			(Item_Price + (Item_Price *10 )/100) as Item_Price,
			'Future Price' as MarketRate,  YEAR(dateadd(YEAR, 1, Date))  as SalesYear
    FROM ItemDetails
	UNION ALL
	 SELECT Item_ID as Item_ID, Item_Name,
			(Item_Price + (Item_Price *20 )/100) as Item_Price,
			'Future Price' as MarketRate,  YEAR(dateadd(YEAR, 2, Date))  as SalesYear
    FROM ItemDetails
    
) 
SELECT * from itemCTE Order by Item_Name,SalesYear


Declare @ID int =1;
;with RecursiveCTE as  
   (  
      SELECT @ID as ID
        UNION ALL  
      SELECT  ID+ 1
  FROM  RecursiveCTE  
  WHERE ID <100
    )  ,
 
--SELECT * FROM RecursiveCTE

 DirectReports (Name, Title, EmployeeID, EmployeeLevel, Sort)  
AS (SELECT CONVERT(VARCHAR(255), e.FirstName + ' ' + e.LastName),  
        e.Title,  
        e.EmployeeID,  
        1,  
        CONVERT(VARCHAR(255), e.FirstName + ' ' + e.LastName)  
    FROM dbo.MyEmployees AS e  
    WHERE e.ManagerID IS NULL  
    UNION ALL  
    SELECT CONVERT(VARCHAR(255), REPLICATE ('|    ' , EmployeeLevel) +  
        e.FirstName + ' ' + e.LastName),  
        e.Title,  
        e.EmployeeID,  
        EmployeeLevel + 1,  
        CONVERT (VARCHAR(255), RTRIM(Sort) + '|    ' + FirstName + ' ' +   
                 LastName)  
    FROM dbo.MyEmployees AS e  
    JOIN DirectReports AS d ON e.ManagerID = d.EmployeeID  
    )  
SELECT EmployeeID, Name, Title, EmployeeLevel  
FROM DirectReports   
ORDER BY Sort;




Q01. What is Common Table Expression and which version of SQL supports the Common Table Expression?

Q02. What is the difference between Common Table Expression and Derived Table and SubQuery?

Q03. Is Nested CTE and Recursive CTE allowed in SQL?

Q04. Can you use the CTE without the alias name?

Q05. Can you JOIN a table with the CTE?

Q06. Can you use a CTE in the WHERE clause?

Q07. Are duplicate column names allowed in the CTE?

Q08. Is an anonymous column name or column with no name is allowed in the CTE?

Q09. Can you filter the record by applying the ORDER BY clause in the CTE?

Q10. Can you DELETE the records from the CTE? Does it also affect the actual underlying base table?




Q11. Can you UPDATE the records from the CTE? Does it also affect the actual underlying base table?

Q12. Can you INSERT the records from the CTE? Does it also affect the actual underlying base table?

Q13. Can you TRUNCATE the records from the CTE? Does it also affect the actual underlying base table?

Q14. What is the most common use of the CTE in SQL?

Q15. What is Table Value Constructor in SQL and how can you create it using CTE?

Q16. Can you specify the data types along with the column names in the CTE?

Q17. Can a CTE contain outer query references in MS SQL?

Q18. How can you get the third-highest salary using the CTE?

Q19. How can you check and remove the duplicate records using the CTE?

Q20. How can you apply multi-level aggregations in SQL?

Q21. How can you do data pagination in SQL?

Q22. What is Recursive CTE and what is the maximum level of the default recursion?

Q23. Does CTE use Temp DB internally?