

joins : -to retrieve data from multiple tables into a meaningful result set.

●	Selection is the process of identifying, accessing, and joining data into return data sets. The basic elements of selection in a SQL statement are the FROM and WHERE clauses.

○	The ANSI 89 syntax uses a cross join or comma-delimited list of tables, and places the join in the WHERE clause.


select a.id, b.id, b.address_1 from person a, address b where a.id = b.id



○	The ANSI 92 syntax uses a set of key words like INNER JOIN, LEFT JOIN, et cetera, and puts the join in an ON or USING clause, which are often referred to as subclauses.
 
select a.id, b.id, b.address_1 from person a inner join address b on a.id = b.id



types of joins

●	INNER JOIN: - matching records from two tables

●	LEFT OUTER JOIN: -to fetch all rows from the left-hand table and common records between the specified tables.

●	RIGHT OUTER JOIN : -to retrieve all rows from the right-hand table and only those rows from the other table that fulfilled the join condition.

●	FULL OUTER JOIN(combination of a Right and Left Join): -Full join can return data in 3

quadrants: The rows that match, the rows that are only in the Left table and the rows that are only in the Right table. Full Joins are often used when analyzing or evaluating data.

●	SELF JOIN: -used to join a table with itself,used to combine and compare the rows of the same table in the database.

●	CROSS JOIN : -CROSS JOIN returns a Cartesian product, or all records joined to all records in all tables.