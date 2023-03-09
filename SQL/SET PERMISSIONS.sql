SQL DATEFIRST
The SQL DATEFIRST Set Function will set the first Day of the week from 1 through 7. If your default language is Us English, then by default 7 (Sunday) is set as the first Day. The basic syntax of the DATEFIRST in SQL Server is

SET DATEFIRST { number (or number_variable) }

-- For example,
SET DATEFIRST 4;


SQL SET NOCOUNT ON
The SQL SET NOCOUNT ON and OFF is one set function used to stop the number of rows affected message from a query or Stored Procedure to the client.


You can stop the above messages by using this SET NOCOUNT ON. 


SQL ROWCOUNT
The SQL Server ROWCOUNT Set Function causes the server to stop the query processing after the specified numbers are returned. The basic syntax of the ROWCOUNT is as shown below:

SET ROWCOUNT { number (or number variable) }

-- For example,
SET ROWCOUNT 4;

SQL SET LANGUAGE
The SQL LANGUAGE is one of the Set Function, which will set the Language or change the default language. This Set language Statement determines the system message and DateTime format. The syntax of it is

SET LANGUAGE Language_Name

select @@language--us_english
SET LANGUAGE us_english
SELECT DATENAME(month, GETDATE()) AS 'Month Name'

SET LANGUAGE French
SELECT DATENAME(month, GETDATE()) AS 'Month Name'

SET LANGUAGE Italian
SELECT DATENAME(month, GETDATE()) AS 'Month Name'



SQL SET DATEFORMAT
The SQL SET DATEFORMAT Functions will set the Order of the Date: Month, Year, Day. This Statement supports formats like dmy, mdy, ymd, ydm, and dym where d = Date, m = month, and y = Year.

The basic syntax of the DATEFORMAT is as shown below:


SET DATEFORMAT DateFormat_Name

-- Setting as date/Month/Year
SET DATEFORMAT dmy
DECLARE @dt DATETIME2 = '01-02-2016 12:03:28.000'
SELECT @dt AS 'date from DMY Format'

DECLARE @dt1 DATETIME2 = '02/05/2016 12:03:28.000'
SELECT @dt1 AS 'date from DMY Format'

-- Setting as Month/date/year
SET DATEFORMAT mdy
DECLARE @dt2 DATETIME2 = '01-02-2016 12:03:28.000'
SELECT @dt2 AS 'date from MDY Format'