
Triggers in SQL Server


The trigger is a database object similar to a stored procedure that is executed automatically when an event occurs in a database. There are different kinds of events that can activate a trigger like inserting or deleting rows in a table, a user logging into a database server instance, an update to a table column, a table being created, altered, or dropped, etc.

There are three types of triggers in SQL Server

●	DML triggers are automatically fired when an INSERT, UPDATE or DELETE event occurs on a table.

●	DDL triggers are automatically invoked when a CREATE, ALTER, or DROP event occurs in a database. It is fired in response to a server scoped or database scoped event.

●	Logon trigger is invoked when a LOGON event is raised when a user session is established.
 
INSTEAD OF Triggers

AFTER Triggers
FOR Triggers




CREATE TRIGGER [schema_name.]trigger_name

ON table_name
{FOR | AFTER | INSTEAD OF} {[INSERT] [,] [UPDATE] [,] [DELETE]}
AS
{sql_statements}
