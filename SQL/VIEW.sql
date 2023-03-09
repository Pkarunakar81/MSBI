

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