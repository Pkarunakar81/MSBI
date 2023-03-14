
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
