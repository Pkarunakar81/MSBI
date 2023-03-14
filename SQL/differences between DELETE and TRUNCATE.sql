
DELETE—to delete a row,slower because it maintains the log,can roll back,and occupies more space.
TRUNCATE

What are the differences between DELETE and TRUNCATE?


DELETE COMMAND	TRUNCATE COMMAND
DELETE command is a DML	TRUNCATE command is a DDL command.
command.	
It is executed using a row lock,	It is executed using a table lock, and the whole table
each row in the table is locked for	is locked to remove all records.
deletion.	
WHERE clause can be used with	WHERE clause can’t be used with TRUNCATE.
DELETE to filter and delete specific	
data.	
It is used to remove rows from a	It removes all rows from a table.
table based on WHERE condition.	
It maintains the log, so it’s slower	It is faster performance wise because it has minimal
than TRUNCATE.	logging in the transaction log.
It removes rows one at a time and	It removes the data by deallocating the data pages
records an entry in the transaction	that are used to store the table data. It records only
log for each deleted row.	the page deallocations in the transaction log.
It uses more transaction space	It uses less transaction space that the DELETE
than TRUNCATE statement.	command.
It can be used with indexed views.	It cannot be used with indexed views.
DELETE command active	  whereas TRUNCATE does not.
