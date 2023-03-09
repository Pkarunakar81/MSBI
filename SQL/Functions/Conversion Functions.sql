
SQL CAST Function
The SQL Server CAST Function converts an expression from one data type to another. If it is unable to convert an expression into the desired data type, this function will return an Error. The syntax of the CAST Function is

select cast('123' as int)

CAST(Expression AS Data_Type [(Length)])

SELECT CAST(123 AS VARCHAR(50)) AS [result_name]
FROM [Source]


SQL TRY CAST
The SQL TRY CAST function is one of the Conversions functions, which is similar to the CAST Function. It is used to convert an expression from one data type to another. If it succeeds, then SQL TRY CAST will return the expression in the desired data type. Otherwise, it will return null.

SQL TRY CAST Function Syntax
The syntax of the SQL Server TRY_CAST Function is

TRY_CAST (Expression AS Data_Type [(Length)])

select TRY_CAST('123' as date)

-- For example
SELECT CAST (245 AS VARCHAR(50)) AS [result_name]
FROM [Source]

SQL CONVERT
This function converts an expression from one data type to another. If the SQL Server is unable to CONVERT an expression into the desired data type, then it returns an Error.

CONVERT (Data_Type [(Length)], Expression, [Style])

-- For example
SELECT CONVERT (VARCHAR(50), 245) AS [resultName]
FROM [Source]


CONVERT Function to format Date
The list of formatting styles is available in the SQL Server CONVERT function.

Without Century (yy)	With Century (yyyy)	Standard	Input/Output
–	0 to 100	This is the Default for both datetime and smalldatetime	mon dd yyyy hh:miAM (or PM)
1	101	The U.S.	1 = mm/dd/yy
101 = mm/dd/yyyy
2	102	ANSI	2 = yy.mm.dd
102 = yyyy.mm.dd
3	103	British/French	3 = dd/mm/yy
103 = dd/mm/yyyy
4	104	German	4 = dd.mm.yy
104 = dd.mm.yyyy
5	105	Italian	5 = dd-mm-yy
105 = dd-mm-yyyy
6	106	–	6 = dd mon yy
106 = dd mon yyyy
7	107	–	7 = Mon dd, yy
107 = Mon dd, yyyy
8	108	–	hh:mi:ss
–	9 or 109	Default + milliseconds	mon dd yyyy hh:mi:ss:mmmmAM (or PM)
10	110	USA	10 = mm-dd-yy
110 = mm-dd-yyyy
11	111	JAPAN	11 = yy/mm/dd
111 = yyyy/mm/dd
12	112	ISO	12 = yymmdd
112 = yyyymmdd
–	13 or 113	Europe Default + millisecond	dd mon yyyy hh:mi:ss:mmm(24h)
14	114	–	hh:mi:ss:mmm(24h)
–	20 or 120	ODBC canonical	yyyy-mm-dd hh:mi:ss(24h)
–	21 or 121	ODBC canonical with milliseconds. This is the Default for time, date, datetime2, and datetimeoffset	yyyy-mm-dd hh:mi:ss.mmm(24h)
–	126	ISO8601	yyyy-mm-ddThh:mi:ss.mmm (no Spaces)
–	127	ISO8601 with time zone Z	yyyy-mm-ddThh:mi:ss.mmmZ (no Spaces)
–	130	Hijri	dd mon yyyy hh:mi:ss:mmmAM
–	131	Hijri	dd/mm/yyyy hh:mi:ss:mmmAM
CONVERT Example to Format DATE

select convert(varchar(90),getdate(),114)

SQL TRY CONVERT
The SQL TRY CONVERT conversions Function is similar to the CONVERT Function. It is used to convert an expression from one data type to another. If it succeeds, then it will return the expression in the required data type.

select TRY_convert(int,'abc!@#',114)


SQL PARSE Function
The SQL PARSE function is a Conversions Function used to convert the String data to the requested data type 
and returns the result as an expression. It is recommended to use this SQL PARSE function to convert the string data 
to either Date time, or Number type.


PARSE (String_Value AS Data_Type [USING Culture])

-- For example
SELECT PARSE (String_Column_Value AS Data_Type USING 'en-US') AS [result_name]
FROM [Source]

select parse('10a' as int)
select try_parse('10a' as int)


