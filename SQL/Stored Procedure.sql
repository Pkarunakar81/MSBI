
Stored Procedure: - A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.
A stored procedure is a group of one or more pre-compiled SQL statements

It also provides a sense of security and functionality as users who can't access the data directly can be granted access via stored procedures.

CREATE PROCEDURE [schema_name].procedure_name
 
@parameter_name data_type,

....

parameter_name data_type

AS

BEGIN

--	SQL statements

--	SELECT, INSERT, UPDATE, or DELETE statement

END

Features of Stored Procedures in SQL Server

The following are the features of stored procedure in SQL Server:

●	Reduced Trafc: A stored procedure reduces network trafc between the application and the database server, resulting in increased performance. It is because instead of sending several SQL statements, the application only needs to send the name of the stored procedure and its parameters.

●	Stronger Security: The procedure is always secure because it manages which processes and activities we can perform. It removes the need for permissions to be granted at the database object level and simplifes the security layers.

●	Reusable: Stored procedures are reusable. It reduces code inconsistency, prevents unnecessary rewrites of the same code, and makes the code transparent to all applications or users.

●	Easy Maintenance: The procedures are easier to maintain without restarting or deploying the application.

●	Improved Performance: Stored Procedure increases the application performance. Once we create the stored procedures and compile them the frst time, it creates an execution plan reused for subsequent executions. The procedure is usually processed quicker because the query processor does not have to create a new plan.

Types of Stored Procedures

SQL Server categorizes the stored procedures mainly in two types:

1.	User-defned Stored Procedures

2.	System Stored Procedures

The server's administrative tasks depend primarily on system stored procedures.
