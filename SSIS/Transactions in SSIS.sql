
Transactions in SSIS
 
Transaction support is built into SSIS. The TransactionOption property exists at the package level, container level (e.g. For Loop, Foreach Loop, Sequence, etc.), as well as just about any Control Flow task (e.g. Execute SQL task, Data Flow task, etc.). TransactionOption can be set to one of the following:

●	Required - if a transaction exists join it else start a new one

●	Supported - It does not start a new transaction,if a transaction exists join it (this is the default)
●	NotSupported - do not join an existing transaction


Transaction Isolation Levels

The transaction isolation level determines the duration that locks are held. We'll use SQL Server as an example. The following transaction isolation levels are available in SQL Server:

●	READ UNCOMMITTED - reads do not acquire share locks and they don't wait on locks. This is often referred to as a dirty read because you can read modifed data that hasn't been committed yet and it could get rolled back after you read it.

●	READ COMMITTED - reads acquire share locks and wait on any data modifed by a transaction in process. This is the SQL Server default.

●	REPEATABLE READ - same as READ COMMITTED but in addition share locks are retained on rows read for the duration of the transaction. In other words any row that is read cannot be modifed by another connection until the transaction commits or rolls back.

●	SERIALIZABLE - same as REPEATABLE READ but in addition no other connection can insert rows if the new rows would appear in a SELECT
 
statement already issued. In other words if you issue a select statement in a transaction using the SERIALIZABLE isolation level you will get the same exact result set if you issue the select statement again within the same transaction.
