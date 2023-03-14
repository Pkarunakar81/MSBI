
5.	In order to speed up the loading of millions of records from the source file what should i do.? We have few the below properties in SSIS

Avoid Sort T/F wherever possible

Drop all Non-Clustered Indexes and Clustered Index on the destination table Avoid SELECT *--more the columns less no of rows in the buffer

OLEDB Destination Settings: - fast load,Keep Identity ,Table Lock,Check Constraints(recommendation is to un-check it if you are sure that the incoming data is not going to violate constraints of the destination table.),Rows per batch ,Maximum insert commit size,DefaultBufferSize(small as 64 KB and as large as 100 MB),DefaultBufferMaxRows

Keep Identity : -

By default this setting is unchecked which means the destination table (if it has an identity column) will create identity values on its own.

Keep Nulls – Again by default this setting is unchecked which means default value will be inserted (if the default constraint is defined on the target column) during insert into the destination table if NULL value is coming from the source for that particular column. If you check this option then the default constraint on the destination table's column will be ignored and the preserved NULL of the source column will be inserted into the destination.

Rows per batch:(default value for this setting is -1)

Each batch is copied to the transaction log, which will cause it to grow quickly, but offers the ability to back up that transaction log after each batch. Also, having a large batch will negatively affect memory if you have indexes on the target table, and if you are not using table locking, you might have more blocking going on.

Maximum insert commit size

Changing the default value for this setting will put overhead on the dataflow engine to commit several times. but at the same time it will release the pressure on the transaction log and tempdb to grow specifically during high volume data transfers.

http://msbijobs.blogspot.com/p/company-wise-interview-questions.html
 

#7 - DefaultBufferSize and DefaultBufferMaxRows :
The execution tree creates buffers for storing incoming rows and performing transformations.

The number of buffers created is dependent on how many rows fit into a buffer and how many rows fit into a buffer dependent on a few other factors. The first consideration is the estimated row size, which is the sum of the maximum sizes of all the columns from the incoming records. The second consideration is the DefaultBufferMaxSize property of the data flow task. This property specifies the default maximum size of a buffer. The default value is 10 MB and its upper and lower boundaries are constrained by two internal properties of SSIS which are MaxBufferSize (100MB) and MinBufferSize (64 KB). It means the size of a buffer can be as small as 64 KB and as large as 100 MB. The third factor is, DefaultBufferMaxRows which is again a property of data flow task which specifies the default number of rows in a buffer. Its default value is 10000.

If the size exceeds the DefaultBufferMaxSize then it reduces the rows in the buffer. For better buffer performance you can do two things.

First you can remove unwanted columns from the source and set data type in each column appropriately, especially if your source is a flat file. This will enable you to accommodate as many rows as possible in the buffer.

Second, if your system has sufficient memory available, you can tune these properties to have a small number of large buffers, which could improve performance. Beware if you change the values of these properties to a point where page spooling (see Best Practices #8) begins, it adversely impacts performance. So before you set a value for these properties, first thoroughly test in your environment and set the values appropriately.
