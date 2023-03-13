

Need to prepare
What
Why
When
scenarios





Tomorrow topics

Triggers

Whats new in sql server 2017,2019,2022

Cursor

Any major issues resolved in the current project

Rank rownumber dense rank




https://www.quora.com/What-are-the-most-common-and-challenging-SQL-query-interview-q

uestions

https://www.quora.com/What-are-SQL-real-time-interview-questions









SQL Performance Tuning

Idex fragmentation

ssas msx dax

Indexed views
 








SQL performance tuning is a tough task and key in handling the increasing load on a web application. So the interviewer would certainly dig you in and check how well do you know about the subject.
 
Therefore, we’ve selectively picked SQL performance tuning interview questions that could give you adequate coverage of the SQL performance tuning concept. Also, recently we’d published a set of SQL interview questions on complex queries. Go through it as well to get fully prepared for your SQL interview.

Q:-1. What is SQL Query Optimization?

Ans. Query Optimization is the process of writing the query in a way so that it could execute quickly. It is a signifcant step for any standard application.

Q:-2. What are some tips to improve the performance of SQL queries?

Ans. Optimizing SQL queries can bring substantial positive impact on the performance. It also depends on the level of RDBMS knowledge you have. Let’s now go over some of the tips for tuning SQL queries.

1.	Prefer to use views and stored procedures in spite of writing long queries. It’ll also help in minimizing network load.

2.	It’s better to introduce constraints instead of triggers. They are more efcient than triggers and can increase performance.

3.	Make use of table-level variables instead of temporary tables.

4.	The UNION ALL clause responds faster than UNION. It doesn’t look for duplicate rows whereas the UNION statement does that regardless of whether they exist or not.

5.	Prevent the usage of DISTINCT and HAVING clauses.

6.	Avoid excessive use of SQL cursors.

7.	Make use of SET NOCOUNT ON clause while building stored procedures. It represents the rows affected by a T-SQL statement. It would lead to reduced network trafc.

8.	It’s a good practice to return the required column instead of all the columns of a table.

9.	Prefer not to use complex joins and avoid disproportionate use of triggers.

10.	Create indexes for tables and adhere to the standards.

Q:-3. What are the bottlenecks that affect the performance of a Database?

Ans. In a web application, the database tier can prove to be a critical bottleneck in achieving the last mile of scalability. If a database has performance leakage, that can become a bottleneck and likely to cause the issue. Some of the common performance issues are as follows.
 
1.	Abnormal CPU usage is the most obvious performance bottleneck. However, you can fx it by extending CPU units or replacing with an advanced CPU. It may look like a simple issue but abnormal CPU usage can lead to other problems.

2.	Low memory is the next most common bottleneck. If the server isn’t able to manage the peak load, then it poses a big question mark on the performance. For any application, memory is very critical to perform as it’s way faster than the persistent memory. Also, when the RAM goes down to a specifc threshold, then the OS turns to utilize the swap memory. But it makes the application to run very slow.

You can resolve it by expanding the physical RAM, but it won’t solve memory leaks if there is any. In such a case, you need to profle the application to identify the potential leaks within its code.

3.	Too much dependency on external storage like SATA disk could also come as a bottleneck. Its impact gets visible while writing large data to the disk. If output operations are very slow, then it is a clear indication an issue becoming the bottleneck.

In such cases, you need to do scaling. Replace the existing drive with a faster one. Try upgrading to an SSD hard drive or something similar.

Q:-4. What are the steps involved in improving the SQL performance?

Ans.

Discover – First of all, fnd out the areas of improvement. Explore tools like Profler, Query execution plans, SQL tuning advisor, dynamic views, and custom stored procedures.

Review – Brainstorm the data available to isolate the main issues.

Propose – Here is a standard approach one can adapt to boost the performance.

However, you can customize it further to maximize the benefts.

1.	Identify felds and create indexes.

2.	Modify large queries to make use of indexes created.

3.	Refresh table and views and update statistics.

4.	Reset existing indexes and remove unused ones.

5.	Look for dead blocks and remove them.

Validate – Test the SQL performance tuning approach. Monitor the progress at a regular interval. Also, track if there is any adverse impact on other parts of the application.

Publish – Now, it’s time to share the working solution with everyone in the team. Let them know all the best practices so that they can use it with ease.
 
Q:-5. What is a explain plan?

Ans. It’s a term used in Oracle. And it is a type of SQL clause in Oracle which displays the execution plan that its optimizer plans for executing the SELECT/UPDATE/INSERT/DELETE statements.

Q:-6. How do you analyze an explain plan?

Ans. While analyzing the explain plan, check the following areas.

1.	Driving Table

2.	Join Order

3.	Join Method

4.	Unintentional cartesian product

5.	Nested loops, merge sort, and hash join

6.	Full Table Scan

7.	Unused indexes

8.	Access paths

Q:-7. How do you tune a query using the explain plan?

Ans. The explain plan shows a complete output of the query costs including each subquery. The cost is directly proportional to the query execution time. The plan also depicts the problem in queries or sub-queries while fetching data from the query.

Q:-8. What is Summary advisor and what type of information does it provide?

Ans. Summary advisor is a tool for fltering and materializing the views. It can help in elevating the SQL performance by selecting the proper set of materialized views for a given workload. And it also provides data about the Materialized view recommendations.

Q:-9. What could most likely cause a SQL query to run as slow as 5 minutes?

Ans. Most probably, a sudden surge in the volume of data in a particular table could slow down the output of a SQL query. So collect the required stats for the target table. Also, monitor any change in the DB level or within the underlying object level.

Q:-10. What is a Latch Free Event? And when does it occur? Alos, how does the system handles it?

Ans. In Oracle, Latch Free wait event occurs when a session requires a latch, attempts to get it but fails because someone else has it.
 
So it sleeps with a wait eying for the latch to get free, wakes up and tries again. The time duration for it was inactive is the wait time for Latch Free. Also, there is no ordered queue for the waiters on a latch, so the one who comes frst gets it.

Q:-11. What is Proactive tuning and Reactive tuning?

Ans.

Proactive tuning – The architect or the DBA determines which combination of system resources and available Oracle features fulfll the criteria during Design and Development.

Reactive tuning – It is the bottom-up approach to discover and eliminate the bottlenecks. The objective is to make Oracle respond faster.

Q:-12. What are Rule-based Optimizer and Cost-based Optimizer?

Ans. Oracle determines how to get the required data for processing a valid SQL statement. It uses one of following two methods to take this decision.

Rule-based Optimizer – When a server doesn’t have internal statistics supporting the objects referenced by the statement, then the RBO method gets preference. However, Oracle will deprecate this method in the future releases.

Cost-based Optimizer – When there is an abundance of the internal statistics, the CBO gets the precedence. It verifes several possible execution plans and chooses the one with the lowest cost based on the system resources.

Q:-13. What are several SQL performance tuning enhancements in Oracle?

Ans. Oracle provides many performance enhancements, some of them are:

1.	Automatic Performance Diagnostic and Tuning Features

2.	Automatic Shared Memory Management – It gives Oracle control of allocating memory within the SGA.

3.	Wait-model improvements – A number of views have come to boost the Wait-model.

4.	Automatic Optimizer Statistics Collection – Collects optimizer statistics using a scheduled job called GATHER_STATS_JOB.

5.	Dynamic Sampling – Enables the server to enhance performance.

6.	CPU Costing – It’s the basic cost model for the optimizer (CPU+I/O), with the cost unit as time optimizer notifes.

7.	Rule Based Optimizer Obsolescence – No more used.
 
8.	Tracing Enhancements – End to End tracing which allows a client process to be identifed via the Client Identifer instead of using the typical Session ID.

Q:-14. What are the tuning indicators Oracle proposes?

Ans. The following high-level tuning indicators are available to establish if a database is experiencing bottlenecks or not:

1. Buffer Cache Hit Ratio.

It uses the following formula.

Hit Ratio = (Logical Reads – Physical Reads) / Logical Reads

Action: Advance the DB_CACHE_SIZE (DB_BLOCK_BUFFERS prior to 9i) to improve the hit ratio.

2. Library Cache Hit Ratio.

Action: Advance the SHARED_POOL_SIZE to increase the hit ratio.

Q:-15. What do you check frst if there are multiple fragments in the SYSTEM tablespace?

Ans. First of all, check if the users don’t have the SYSTEM tablespace as their TEMPORARY or DEFAULT tablespace assignment by verifying the DBA_USERS view.
