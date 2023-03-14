

A table is a set of organized data in the form of rows and columns.It enables users to store and display records in the structure format.
Fields are the components to provide the structure for the table. It stores the same category of data in the same data type.
A primary key is a field or the combination of fields that uniquely identify each record in the table.it cannot be null or empty. We cannot change or delete the primary key column values. The foreign key is used to link one or more tables together. It is also known as the referencing key. A foreign key is specified as a key(single or collection of fields ) that is related to the primary key of another table.

PRIMARY KEY (ID)
CONSTRAINT fk_customer FOREIGN KEY (Customer_Id)
REFERENCES customer(ID)
ON DELETE CASCADE
ON UPDATE CASCADE
– ON DELETE CASCADE ON UPDATE RESTRICT;

It means if we delete any customer record from the customer table, then the related records in the contact table should also be deleted. And the ON UPDATE CASCADE will update automatically on the parent table to referenced fields in the child table(Here, it is Customer_Id).





SELECT *
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = N'SalesPerson'
FROM SYS.COLUMNS
WHERE OBJECT_ID = OBJECT_ID('SALES.SalesPerson')

SELECT * FROM SYS.TABLES WHERE NAME='SalesPerson'
SELECT * FROM SYS.OBJECTS WHERE NAME='SalesPerson'

SELECT OBJECT_ID('SALES.SalesPerson','U')

IF OBJECT_ID('SalesPerson', 'U') IS NOT NULL 
BEGIN
SELECT 'A'
END
ELSE BEGIN
SELECT 'B'
END


IF OBJECT_ID('SALES.SalesPerson', 'U') IS NOT NULL 
BEGIN
SELECT 'A'
END
ELSE BEGIN
SELECT 'B'
END


IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'SalesPerson')
BEGIN
SELECT 'A'
END
ELSE BEGIN
SELECT 'B'
END


IF EXISTS(SELECT 1 FROM sys.Objects 
    WHERE  Object_id = OBJECT_ID(N'SALES.SalesPerson') 
           AND Type = N'U')
BEGIN
SELECT 'A'
END
ELSE BEGIN
SELECT 'B'
END
	   
IF EXISTS(SELECT 1 FROM sys.Tables 
WHERE  Name = N'SalesPerson')
BEGIN
SELECT 'A'
END
ELSE BEGIN
SELECT 'B'
END



