
Normalization is used to minimize redundancy(causes the waste of space in the disk),inconsistency and dependency by organizing fields and tables of a database. 
Normalization is mainly used to add, delete or modify a field that can be made in a single table.
to remove redundancy and remove the insert, delete and update distractions. 
Normalization breaks the table into small partitions and then links them using different relationships to avoid the chances of redundancy
If not performing the Normalization it leads to waste of space in the disk and inconsistency . 
There are some rules of database normalization, which is commonly known as Normal From, and they are:

●	First normal form(1NF) more than one value per record divided into separate individual records
●	Second normal form(2NF): - relational must be in 1NF and relation must not contain any partial dependency. elimination of partial dependencies
●	Third normal form(3NF): - if it satisfies the conditions for the second normal form and there is no transitive dependency between the non-prime attributes.to
remove the transitively dependent
●	Boyce-Codd normal form(BCNF) NON PRIME ATTRIBUTES.
This inconsistency will lead to the maintenance problem and affect the ACID properties as well.
https://www.simplilearn.com/tutorials/sql-tutorial/what-is-normalization-in-sql
Denormalization:-to optimize the efficiency of the database infrastructure.
Normalizing results in data being split into multiple tables; denormalizing results in data from normalized tables brought in a single table.
As the data grows in the normalized tables, this query consumes more and more resources. We need to denormalize to improve performance since 
indexing does not give us the best performance in this case.
