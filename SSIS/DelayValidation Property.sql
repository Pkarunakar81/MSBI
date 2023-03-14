
DelayValidation Property:


DelayValidation Property is available on Task level, Connection Manager, Container and on Package level. By default the value of this property is set to false that means that when the package start execution, It validates all the Tasks, Containers, Connection Managers and objects( Tables,Views, Stored Procedures etc.) used by them. If any object such as table or destination file etc. is not available then Package validation fails and Package stop execution.

By setting this property to True, We enforce our SSIS Package not to validate that Task, Connection Manager or entire Package at start but validate at run time.


Real Time Examples for Using DelayValidation Property in SSIS Package:

Example 1: Make Use of Temp Table in SSIS Package

Example 2: Create Excel File with DateTime

Example 3: How to Create Multiple Files Dynamically From a SQL Server Table