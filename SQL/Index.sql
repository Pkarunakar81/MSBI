

Index : - data structure that provides a quick lookup of data in a column or columns of a table.

used to increase the performance and allow faster retrieval of records from the table Indexing reduces the number of data pages we need to visit to find a particular data page.

different types of indexes
 

●	Unique Index
 

●	Clustered Index

●	Non-Clustered Index

●	Bit-Map Index

●	Normal Index

●	Composite Index

●	B-Tree Index

●	Function-Based Index

unique index

to enforce the uniqueness of values in single or multiple columns can create more than one unique index in a single table

CREATE UNIQUE INDEX index_name ON table_name (index_column1, index_column2,...);

clustered index : - sort and store the data rows in the table or view based on their key values.(Like a Dictionary)

store the data information and the data itself.

There can be only one clustered index per table, because the data rows themselves can be stored in only one order.(determines the order of the table data) automatically created when the primary key is generated

non-clustered index

indexes other than PRIMARY indexes (clustered indexes) are called non-clustered indexes creates a logical ordering of data rows and uses pointers for accessing the physical data files. Therefore, reading from a clustered index is slower.

the logical order of index does not match the physical stored order of the rows on disk. It cannot be able to alter the physical order of the table and maintain the logical order of data.

can create 0 to 249 non-clustered indexes