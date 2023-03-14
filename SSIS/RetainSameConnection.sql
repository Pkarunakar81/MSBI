
What is the RetainSameConnection property and what is the impact?

Whenever a task uses a connection manager to connect to source or destination database, a connection is opened and closed with the execution of that task. Sometimes you might need to open a connection, execute multiple tasks and close it at the end of the execution. This is where the RetainSameConnection property of the connection manager might help you. When you set this
 

property to TRUE, the connection will be opened on the first time it is used and remain open until execution of the package completes.

How to create a temp table in SSIS?

A temporary table can be created in SSIS through the Execute SQL task. For this, the RetainSameConnection has to be set to True so that the table can be created in the Control Flow task. This table can be retained in another task.
