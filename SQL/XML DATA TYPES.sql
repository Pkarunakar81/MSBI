SQL FOR XML RAW
Use of Raw mode with FOR XML in SQL Server is to transform every row in the result set into an XML element. For this SQL FOR XML RAW mode example, we are using the New Employee table present in the SQL Test. The below screenshot show you the SQL Server tables inside that database.

  FOR XML RAW;
  FOR XML RAW, ELEMENTS;
  FOR XML RAW('EmployeeDetails'), ELEMENTS;

  FOR XML RAW('Employee'), 
          ROOT('EmployeeDetails'), ELEMENTS XSINIL;
		  
		  
		  
		  FOR XML RAW('Employee'), 
          ROOT('EmployeeDetails'), ELEMENTS XSINIL, XMLSCHEMA;
		  
		  
		  
		    FOR XML RAW('Employee'), 
          ROOT('EmployeeDetails'), ELEMENTS XSINIL, XMLSCHEMA('urn:tutorialgateway.org');


		  
SELECT TOP 10 * FROM 
[Sales].[Customer]
FOR XML RAW('EmployeeDetails'),ROOT('EmployeeDetails'), ELEMENTS XSINIL,XMLSCHEMA('urn:tutorialgateway.org');