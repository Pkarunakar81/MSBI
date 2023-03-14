
Cursor is a Temporary Memory or Temporary Work Station. It is Allocated by Database Server at the Time of Performing DML(Data Manipulation Language) operations on Table by User. Cursors are used to store Database Tables. There are 2 types of Cursors: Implicit Cursors, and Explicit Cursors. These are explained as following below.

1.	Implicit Cursors:

Implicit Cursors are also known as Default Cursors of SQL SERVER. These Cursors are allocated by SQL SERVER when the user performs DML operations.

2.	Explicit Cursors :

Explicit Cursors are Created by Users whenever the user requires them. Explicit Cursors are used for Fetching data from Table in Row-By-Row Manner.



Fetch Data from cursor.

There are total 6 methods to access data from cursor. They are as follows :

FIRST is used to fetch only the first row from cursor table.

LAST is used to fetch only last row from cursor table.

NEXT is used to fetch data in forward direction from cursor table. PRIOR is used to fetch data in backward direction from cursor table. ABSOLUTE n is used to fetch the exact nth row from cursor table. RELATIVE n is used to fetch the data in incremental way as well as decremental way.
Syntax : FETCH NEXT/FIRST/LAST/PRIOR/ABSOLUTE n/RELATIVE n FROM cursor_name

Cursor: -allows for the traversal of records in a database

Working with SQL Cursor:

1.	DECLARE a cursor after any variable declaration. The cursor declaration must always be associated with a SELECT Statement.

2.	Open cursor to initialize the result set. The OPEN statement must be called before fetching rows from the result set.
3.	FETCH statement to retrieve and move to the next row in the result set.
 
4.	Call the CLOSE statement to deactivate the cursor.

5.	Finally use the DEALLOCATE statement to delete the cursor definition and release the associated resources.


DECLARE @name VARCHAR(50)  /* Declare All Required Variables */

DECLARE db_cursor CURSOR FOR /* Declare Cursor Name*/ SELECT name

FROM myDB.students

WHERE parent_name IN ('Sara', 'Ansh')


OPEN db_cursor  /* Open cursor and Fetch data into @name */
FETCH next

FROM db_cursor

INTO @name


CLOSE db_cursor /* Close the cursor and deallocate the resources */ DEALLOCATE db_cursor
