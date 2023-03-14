

functions : - contains a set of SQL statements to perform a specific task.
to replicate the common task easily
The following are the rules for creating SQL Server functions:

●	A function must have a name, and the name cannot begin with a special character such as @, $, #, or other similar characters.

●	We can use a function anywhere such as AVG, COUNT, SUM, MIN, DATE, and other functions with the SELECT query in SQL.

●	Whenever a function is called, it compiles.

●	Functions must return a value or result.

●	Functions use only input parameters.

●	We cannot use TRY and CATCH statements in functions.

Types of Functions

SQL Server categorizes the functions into two types:

●	System Functions

●	User-Defined Functions(created by the user) System Functions(built-in functions)

●	String Functions (LEN, SUBSTRING, REPLACE, CONCAT, TRIM)

●	Date and Time Functions (datetime, datetime2, smalldatetime)

●	Aggregate Functions (COUNT, MAX, MIN, SUM, AVG,FIRST(),LAST() )

●	Mathematical Functions (ABS, POWER, PI, EXP, LOG)

●	Ranking Functions (RANK, DENSE_RANK, ROW_NUMBER, NTILE)

●	case manipulation functions: - LOWER ,UPPER ,INITCAP

●	Character manipulation
functions:-Concat,SUBSTR,LENGTH,INSTR,LPAD,RPAD,TRIM,REPLACE

The MOD function returns the remainder in a division operation.

LOCATE() - Used to fnd the index of the character in a string. Syntax - LOCATE(character,ColumnName)

COALESCE(NULL, NULL, NULL) will return NULL value as no non-NULL value is encountered in the parameters list.


user-defined functions mainly into two types:

1.	Scalar Functions : - accepts parameters, either single or multiple and returns a single value.

CREATE FUNCTION schema_name.function_name (parameter_list) RETURNS data_type AS

BEGIN statements RETURN value
END

2.	Table-Valued Functions: -user-defined function that returns data of a table type(can use same as table)

Table-valued functions are commonly used as parameterized views. Table-valued functions are more flexible than stored procedures because they can be used anywhere tables are used.


1.	Inline Table-Valued Functions: -This UDF function returns a table variable based on the action performed by the function.

--It creates a table-valued function to get employees CREATE FUNCTION fudf_GetEmployee() RETURNS TABLE
AS
RETURN (SELECT * FROM Employee)

We can use like SELECT * FROM udf_GetEmployee(); .

2. Multi-statement table-valued functions (MSTVF): -returns a table variable

It can contain single or multiple statements to produce the result, and it is also a function that returns the result of multiple statements in a tabular form.

CREATE FUNCTION MULTIVALUED()
RETURNS @Employee TABLE

(id INT, emp_name VARCHAR(50), salary INT) AS BEGIN
INSERT INTO @Employee
SELECT E.id, E.emp_name, E.salary FROM Employee E;
UPDATE @Employee SET emp_name = 'Graeme Smith' WHERE id = 3;
RETURN
END
We can use this as SELECT * FROM MULTIVALUED();

