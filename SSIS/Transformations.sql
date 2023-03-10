
Data Transformation: - to manage and transfer the extracted data to a separate file we have selected.

the components in the data flow of a package that aggregate, merge, distribute, and modify data.
Transformations: -

1.	SSIS Aggregate Transformation
2.	SSIS Data Conversion Transformation
3.	SSIS Copy Column Transformation
4.	SSIS Conditional Split Transformation
5.	SSIS Data Conversion Transformation
6.	SSIS Derived Column Transformation
7.	SSIS Lookup Transformation
 
8.	SSIS Union All Transformation
9.	SSIS Merge Transformation
10.	SSIS Merge Join Transformation
11.	SSIS Multicast Transformation
12.	SSIS Audit Transformation
13.	SSIS Cache Transform Transformation
14.	SSIS Character Map Transformation
15.	SSIS Data Mining Query Transformation
16.	SSIS DQS Cleansing Transformation
17.	SSIS Export Column Transformation
18.	SSIS Fuzzy Grouping Transformation
19.	SSIS Fuzzy LookUp Transformation
20.	SSIS Import Column Transformation
21.	SSIS OLEDB Command Transformation
22.	SSIS Percentage Sampling Transformation
23.	SSIS PIVOT Transformation
24.	SSIS Row Count Transformation
25.	SSIS Row Sampling Transformation
26.	SSIS Script Component Transformation
27.	SSIS Slowly Changing Dimension Transformation
28.	SSIS Sort Transformation
29.	SSIS Term Extraction Transformation
30.	SSIS Term LookUp Transformation
31.	SSIS UnPivot Transformation




In SSIS, transformations are available in two main categories?Synchronous and Asynchronous. During ETL design it?s recommended to use all Synchronous transformation components.


Synchronous are components like the Conditional Split or Derived Column Transformation where rows flow into memory buffers in the transformation and the same buffers come out. No rows are held and characteristically these transformations perform very quickly with marginal impact to Data Flow.


Output is synchronous with the input, it occurs at the same time and to process the given row does not need the information about the other row.


Ex : - Derived column,derived column,data conversion


Asynchronous transformation has two types, fully blocking and partial blocking. Partial blocking transformation is that transformation which creates new memory buffers for the output of the transformation than what comes into the transformation, like Union All Transformation; fully blocking transformations also require a new memory buffer similar to
 

partial blocking. Asynchronous transformations additionally cause a full block of the data like Sort and Aggregate transformations.


Each row cannot be processed individually; there are dependencies of one record with another record.


Ex: - Sort ,aggregate		
		
Diff between Synchronous & Asynchronous Transformations
Diff between Partially\ Semi Blocking &	Non-Blockin Transformations





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



1.	Can you use Lookup Transformation without using OLEDB Connection?
NA