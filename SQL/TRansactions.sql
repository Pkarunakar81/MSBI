
TRansactions in sql: -	

A SQL transaction is a grouping of one or more SQL statements that interact with a database. A transaction in its entirety can commit to a database as a single logical unit or rollback (become undone) as a single logical unit.
 

A transaction is the propagation of one or more changes to the database.

Transaction is a set of operations performed in a logical sequence. It is executed as a whole, if any statement in the transaction fails, the whole transaction is marked as failed and not committed to the database.

ACID property:-contribute to the ability of a transaction to ensure data integrity.

●	Atomicity: This property ensures that the transaction(insert, update, delete) is completed in all-or-nothing way.

If one part of the transaction fails, the entire transaction fails, and the database state is left unchanged.
Its main features are COMMIT, ROLLBACK, and AUTO-COMMIT.

●	Consistency: This ensures that updates made to the database are valid and follows rules and restrictions.database changes state only when a transaction will be
committed successfully.
transaction is completed according to the defined rules, constraints, cascades, and triggers

●	Isolation: Every transaction is individual, and One transaction can’t access the result of other transactions until the transaction completes. Or, you can’t perform the same operation using multiple transactions at the same time.

●	Durability: This property ensures that the committed transactions are stored permanently in the database.

Once the transaction is completed, then the changes it has made to the database will be permanent. Even if there is a system failure or any abnormal changes also, this property will safeguard the committed data.

Transaction Control

The following commands are used to control transactions.

●	COMMIT − to save the changes.

●	ROLLBACK − to roll back the changes.

●	SAVEPOINT − creates points within the groups of transactions in which to ROLLBACK.

●	SET TRANSACTION − Place a name on a transaction.

The RELEASE SAVEPOINT command is used to remove a SAVEPOINT that you have created.

RELEASE SAVEPOINT SAVEPOINT_NAME;

The SET TRANSACTION command can be used to initiate a database transaction.

This command is used to specify characteristics for the transaction that follows. For

example, you can specify a transaction to be read only or read and write.

The syntax for a SET TRANSACTION command is as follows.
 
SET TRANSACTION [ READ WRITE | READ ONLY ];
