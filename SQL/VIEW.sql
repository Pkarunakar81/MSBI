


view : -database object that has no values. It is a virtual table that contains a subset of data within a table

takes less space

use of a view is to implement the security mechanism CREATE VIEW view_name AS

SELECT column_lists FROM table_name WHERE condition;

inline views
The inline view is a construct in Oracle SQL where you can place a query in the SQL FROM, clause, just as if the query was a table name.

What is inline view in SQL ?

●	An inline view is a SELECT statement in the FROM-clause of another SELECT statement. In-line views are commonly used to simplify complex queries by removing join operations and condensing several separate queries into a single query.

○	As mentioned in the View section, a view is a virtual table that has the characteristics of a table yet does not hold any actual data.
○	In an inline view construct, instead of specifying table name(s) after the FROM keyword, the source of the data actually comes from the inline view.
○	Inline view is sometimes referred to as derived table. These two terms are used interchangeably.
○	It is a subquery that appears in the From clause of the Select statement.
○	The inline view is a construct in Oracle SQL where you can place a query in the SQL FROM, clause, just as if the query was a table name.
○	This subquery is enclosed in parenthesis and may be given an alias name. The columns selected in the subquery can be referenced in the parent query.

Syntax:

●	The syntax for an inline view is,

SELECT "column_name" FROM (Inline View);


CREATE view test_kar --WITH SCHEMABINDING
AS
select AddressID,
AddressLine1,
AddressLine2,
StateProvinceID,
PostalCode,
SpatialLocation,
rowguid,
ModifiedDate from DBO.test

--SCHEMABINDING NEEDS TO ADD TO CREATE THE INDES TO THE VIEWS
--Syntax '*' is not allowed in schema-bound objects.
--Cannot schema bind view 'test_kar' because name 'ctedb..test' is invalid for schema binding. 
--Names must be in two-part format and an object cannot reference itself.

--Cannot create index on view 'test_kar'. It does not have a unique clustered index.
create UNIQUE CLUSTERED index ind on test_kar(addressid);
create NONCLUSTERED index ind1 on test_kar(addressid);

SET STATISTICS IO ON
select * from test_kar WITH (NOEXPAND)

Queries that use materialized views are generally faster and consume fewer resources than queries that retrieve the same data only from the base tables.

A Materialized View persists the data returned from the view definition query and automatically gets updated as data changes in the underlying tables. It improves the performance of complex queries (typically queries with joins and aggregations) while offering simple maintenance operations.



Subqueries: Correlated