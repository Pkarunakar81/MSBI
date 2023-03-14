

A unique key is a single or combination of fields that ensure all values stores in the column will be unique. It can accept a null value but only one null value per column is allowed. We can modify the unique key column values.


The unique key is also a unique identifier for records when the primary key is not present in the table.





SQL Injection: - type of vulnerability in website and web app code that allows attackers to control back-end operations and access, retrieve, and destroy sensitive data from databases.




Collation : -Collation refers to a set of rules that determine how data is sorted and compared.

●	Case sensitivity: A and a are treated differently.

●	Accent sensitivity: a and á are treated differently.

●	Kana sensitivity: Japanese kana characters Hiragana and Katakana are treated differently.

●	Width sensitivity: Same character represented in single-byte (half-width) and double-byte (full-width) are treated differently




5.What is the raw datatype?
Answer:
Raw datatype is used to store values in binary data format.
There are 2 types of RAW datatype:
1.Raw
2.Long Raw.
Long raw datatypes are used to store graphics,sound documents.

Raw datatype is variable length data type like varchar2 but basically it only stores data in 1 ‘s and 0’s means binary data format.
 

Ques.41. What are locks in SQL?

Ans. Locks in SQL are used for maintaining database integrity in case of concurrent execution of the same piece of data.

Ques.42. What are the different types of locks in the database?

Ans. The different types of locks in database are-

Shared locks - Allows data to be read-only(Select operations), prevents the data to be updated when in shared lock.

Update locks - Applied to resources that can be updated. There can be only one update lock on a data at a time.

Exclusive locks - Used to lock data being modifed(INSERT, UPDATE, or DELETE) by one transaction thus ensuring that multiple updates cannot be made to the same resource at the same time.

Intent locks - A notifcation mechanism using which a transaction conveys that intends to acquire lock on data.

Schema locks- Used for operations when schema or structure of the database is required to be updated.

Bulk Update locks - Used in case of bulk operations when the TABLOCK hint is used.






Ssis: - SQL Server Integration Services
 






SSIS Catalog: - used to store all the deployed packages,used to increase the security of the stored packages


types of connection or files that support SSIS



●	ODBC

●	OLEDB

●	.net SQLClient

●	Flat File

●	Excel

●	XML





most critical errors
Data Connection Errors:
Data Transformation Errors:
Expression Evaluation Errors:

Workflow : - sequential set of instructions or commands that instruct the program executor to follow specific flow when executing tasks and containers within an SSIS package. Data profiling task : - analysis is done to better understand the source data's state in terms of data cleaning, data pattern identification, numbers or nulls in data, etc.

doesn't help while developing standard recurring ETL packages.






3.	What is the Difference between Execute TSQL Task and Execute SQL Task? Execute the TSQL Task:
●	Pros: Takes less memory, faster performance

●	Cons: Output into variable not supported, Only supports ADO.net connection Execute SQL Task:

●	Pros: Support output into variables and multiple types of connection, parameterized query possible.
●	Cons: Takes more memory, slower performance compared to the TSQL task.

4.	What is the use of a config file in SSIS?

Config file in SSIS is used to provide inputs to connection managers different properties that packages use to assign values at runtime dynamically.

5.	What kind of containers can you use with SSIS packages? sequence, for loops, and for each loop.
8.	How to back up or retrieve the SSIS packages?

If your package is deployed on SQL Server then you can back up the MSDB database as all the packages on SQL server deploy at MSDB.
1.	Can you use Lookup Transformation without using OLEDB Connection?
NA
2.	What is the difference between Lookup and Merge Join Transformation?

Merge transformation is used to combine two sorted datasets (such as UNION operation).
Merge Join needs both inputs to be sorted.

SSIS Merge Join transformation is used to combine columns between different rows (such as SQL Joins(Full, Left, and inner join.)).
 

Look Up is used to find value(look for a value) in destination table with respect to source column values, i.e. check existence of source column value against destination column values.
 

Fuzzy Lookup transformation uses fuzzy matching to return one or more close matches in the reference table.

Fuzzy Grouping performs a data cleaning task by identifying rows of data that are likely to be duplicates.

Merge Join allows you to join to multiple columns based on one or more criterion, whereas a Lookup is more limited in that it only fetches a one or more values based on some matching column information -- the lookup query is going to be run for each value in your data source (though SSIS will cache the data source if it can).

Union All transformation can accept more than two datasets from input and combine.

3.	How many outputs can Aggregate Transformation have?

The Aggregate transformation has one input and one or more outputs.
Be prepared with These questions and topic:

6.	How to organize a SSIS Package on production?

manifest file is the utility that can be used to deploy the package using the wizard on the file system and SQL Server database.

SSIS can be organized through
1)	Manifest we can organize it:
a. Create deployment utility by setting its properties as true .
b. It will be formed in the bin folder of the solution once the package is built.
c. Copy all the files in the utility and use manifest file to display it on the Prod.
2)	Using DtsExec.exe utility.
3)Import Package directly in MSDB from SSMS by logging in Integration Services.


7.	Which programming language can be used to code embedded functions in SSRS?
 

Visual Basic
 
8.	How to create Drill-Down reports?

Apply the Row Grouping from the parent Group to the child group.

9.	How we can handle Early Arriving Facts.

Late-arriving dimensions (sometimes called early-arriving facts) occur when you have dimension data arriving in the data warehouse later than the fact data that references that dimension.

The fact row will be held in the suspense table until the associated dimension record has been processed.

10.	What are the Command Line Utilities available in Reporting Service

Rsconfig(RS.EXE) utility: - script host that you can use to perform scripted operations.

Powershell cmdlets: - to configure and manage a report server connection to the report server database.

Rskeymgmt Utility– Encryption key management tool. You can use it to back up, apply, recreate, and delete symmetric keys. You can also use this tool to attach a report server instance to a shared report server database.

Error handling: -

In SSIS errors may occur because of the following reasons.
1.	Data conversion errors
2.	Lookup errors

3.	Expression evaluation errors There are two types of errors in SSIS.
1.	Truncation

A truncation generates results that might be usable. For example, if you try to insert 10 character values into 5 charter length columns.

2.	Error:

This is a failure of the SSIS component and it generates the NULL result. For example: If you are trying to convert an alpha-numeric string to an integer. This will result in a data conversion error.

We can configure the SSIS component to handle the error and truncation in SSIS transformations.

Fail Component: The Data Flow task fails when an error or a truncation occurs. Failure is the default option for an error and a truncation.

Ignore Failure: The error or the truncation is ignored and the data row is directed to the output of the transformation or source.

Redirect Row: The error or the truncation data row is directed to the error output of the source, transformation, or destination.

Event handlers: -
 



logging mode property.

Disabled,Enabled,Use Parent Setting

Data viewers

Column Chart

Grid

Histogram

Scatter Plot





How to achieve parallelism in SSIS?

Parallelism is achieved using the MaxConcurrentExecutable property of the package. Its default is -1 and is calculated as the number of processors + 2.

Using the MaxConcurrent Executable property of the package. Its default is -1 and it is calculated as a number of processors +2

What is the Data Path and how is it different from a Precedence Constraint? Answer: Data Path is used in a Data Flow task to connect to different components of a Data Flow and show the transition of the data from one component to another. A data path contains the Meta information of the data fowing through it, such as the columns, data type, size, etc. When we talk about differences between the data path and precedence constraint; the data path is used in the data fow, which shows the fow of data. Whereas the precedence constraint is used in control fow, which shows control fow or transition from one task to another task

What is the RetainSameConnection property and what is the impact?

Whenever a task uses a connection manager to connect to source or destination database, a connection is opened and closed with the execution of that task. Sometimes you might need to open a connection, execute multiple tasks and close it at the end of the execution. This is where the RetainSameConnection property of the connection manager might help you. When you set this
 

property to TRUE, the connection will be opened on the first time it is used and remain open until execution of the package completes.

How to create a temp table in SSIS?

A temporary table can be created in SSIS through the Execute SQL task. For this, the RetainSameConnection has to be set to True so that the table can be created in the Control Flow task. This table can be retained in another task.

What is the use of Bulk Insert Task in SSIS?

Bulk Insert Task is used to upload large amounts of data from flat files into Sql Server. It supports only OLE DB connections for destination databases.

6. difference between OLEDB destination and SQL Server destination.

ans : OLEDB destination loads the records in batches, whereas SQL Server destination loads all the records at one go..

13.	Have you used sort transformation? Why did you use that? (Or) why have you not used that?
14.	How many types of transformations? What are they?
15.	The difference between merge join and lookup? which is better? why not merge join.

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

9.	Better performance with parallel execution
10.	When to use event logging and when to avoid it.

11.	Monitoring the SSIS Performance with Performance Counters Launch Performance Monitor:

1.	Start -> All Programs -> Administrative Tools -> Performance
2.	Load the SSIS related Counters
In the Performance Object, select SQL Server:SSIS Pipeline and SQL Server:SSIS Service.

SSIS provides a set of performance counters. Among them, the following few are helpful when you
tune or debug your package:
Buffers in use
Flat buffers in use
Private buffers in use
Buffers spooled
Rows read
Rows written

“Buffers in use”, “Flat buffers in use” and “Private buffers in use” are useful to discover leaks. During package execution time, we will see these counters fluctuating. But once the package finishes execution, their values should return to the same value as what they were before the execution. Otherwise, buffers are leaked.

“Buffers spooled” has an initial value of 0. When it goes above 0, it indicates that the engine has started memory swapping. In a case like this, set Data Flow Task properties BLOBTempStoragePath and BufferTempStoragePath appropriately for maximal I/O bandwidth.Buffers Spooled: The number of buffers currently written to the disk. If the data flow engine runs low on physical memory, buffers not currently used are written to disk and then reloaded when needed.
 
“Rows read” and “Rows written” show how many rows the entire Data Flow has processed.
12. FastParse property

The Fast Parse option in SSIS can be used for very fast loading of flat file data. It will speed up parsing of integer, date and time types if the conversion does not have to be locale-sensitive. This option is set on a per-column basis using the Advanced Editor for the flat file source.




Define data warehouse: -

Data warehousing (DW) is a method of gathering and analyzing data from many sources in order to get useful business insights
Star Schema,Snowflake Schema
1.	What is the difference between Char and VARCHAR
2.	What is difference between VARCHAR and NVARCHAR
3.	What are different Types of Constraints Available in SQL Server
4.	How to Enable Change Data Capture(CDC) on Database in SQL Server
5.	How to Disable Change Data Capture(CDC) on Database in SQL Server

What is Data Mining?


Data mining is analyzing data from different perspectives, dimensions, and patterns and summarizing them into meaningful content. Data is often retrieved or queried from the database in its format. On the other hand, it can be defined as the method or process of turning raw data into useful information.

Data Lake


A data lake is a centralized repository for structure and unstructured data storage. It can be used to store raw data without any structure schema, and there is no need to perform any ETL or transformation job. Any type of data can be stored here, like images, text, files, and videos, and even it can store machine learning model artifacts, real-time and analytics output, etc. Data retrieval processing can be done via export, so the schema is defined on reading. It mainly stores raw and unprocessed data. The main focus is to capture and store as much data as possible.



What is Data Modelling?


Data Modelling is a very simple step of simplifying an entity here in the concept of data engineering. It will simplify complex software by simply breaking it up into diagrams and further breaking it into flow charts. Flowcharts are a simple representation of how a complex entity can be broken down into a simple diagram. This will give a visual representation, an easier understanding of the complex problem, and even better readability to a person who might not be proficient in that particular software usage.
 
What is a dimensional model in a data warehouse?


A dimensional model is a design approach for organizing data in a data warehouse. It consists of fact tables and dimension tables. Fact tables store quantitative data (e.g., sales, cost, revenue) and are typically linked to one or more dimension tables, which store descriptive data (e.g., product, customer, time). Dimensional modeling lets users quickly understand and analyze data by breaking it down into smaller, more manageable pieces.

What is a Fact? What are the types of Facts?


A fact may be a central component of a multi-dimensional model that contains the measures to be analyzed. Facts are related to dimensions.

Types of facts are:

●	Additive Facts

●	Semi-additive Facts
●	Non-additive Facts



What is the Data Pipeline?


Data Pipeline refers to any set of process elements that move data from one system to a different one. Data Pipeline is often built for an application that uses data to bring value. It is often used to integrate the info across the applications, build info-driven web products, and complete data mining activities. Data engineers build the data pipeline.

What is Dimensional Data Modeling?


Dimensional modeling is a set of guidelines to design database table structures for easier and faster data retrieval. It is a widely accepted technique. The benefits of using dimensional modeling are its simplicity and faster query performance. Dimension modeling elaborates logical and physical data models to further detail model data and data-related requirements. Dimensional models map the aspects of every process within the business.

Dimensional Modelling is a core design concept used by many data warehouse designers design data warehouses. During this design model, all the info is stored in two sorts of tables.
 

●	Facts table

●	Dimension table
 
The fact table contains the facts or measurements of the business, and the dimension table contains the context of measurements by which the facts are calculated. Dimension modeling is a method of designing a data warehouse.

Types of Dimensional Modelling are listed below:

●	Conceptual Modelling

●	Logical Modelling
●	Physical Modelling




scd
lokup(how to select full cachemode and partial cache mode)
fuzzy lookup
properties in ssis package
sql server versions
2 tables how to find the records not in the first or second table.
Environmental variables
isolation levels
parameters in ssis catalog
statements inside the triggers
have you used delay validation
parallel load in ssis and how to enable it
how to handle performance issues in sql, ssis

what is the difference between lookup & merge transformation? have you handle any performance issue in ssis package functions used in derived column transformation

Explain the types of Perfmon counters for SSIS? Differentiate Execute TSQL Task and Execute SQL Task. What do you mean by Process Bytes in SSIS?

Process bytes represent the amount of memory presently used by integration services.




what is, dimensional modeling
types of fact tables.
coding standards in sql, ssis.
reverse the string in sql
data modeling and data mining
what id mdx
diff between tabular and multidimensional modelsntional
