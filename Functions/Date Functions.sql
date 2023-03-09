---Date formats
select
cast(getdate() as date)
,cast(getdate() as time(7))
,cast(getdate() as smalldatetime)--1900-01-01 through 2079-06-06---     4 bytes, fixed---------One minute
,cast(getdate() as datetime)--1753-01-01 through 9999-12-31-------8 bytes, fixed------------Rounded to increments of .000, .003, or .007 seconds
,cast(getdate() as datetime2(7))----0001-01-01 thru 9999-12-31--------6 to 8 bytes depending on the precision*--------100 nanoseconds
, cast(getdate() as datetimeoffset(7))----0001-01-01 through 9999-12-31--------------8 to 10 bytes, depending on the precision--------100 nanoseconds-----Time zone------14:00 through +14:00

--DATALENGTH() function to return the number of bytes used for each of our values:


select SYSDATETIME(), SYSUTCDATETIME()


Function	Syntax	Return Data Type	Description
SELECT DateName(MM,GETDATE())	--DATENAME (datepart, dt)	NVARCHAR	Returns the specified datename from the user specified.
SELECT DatePart(MM,GETDATE())	--DATEPART (datepart, dt)	int	Returns the specified datepart from the user given.
SELECT DAY(GETDATE())	DAY(dt)	int	Returns the Day part.
SELECT Month(GETDATE())	MONTH(dt)	int	The Month part of the user-specified.
SELECT YEAR(GETDATE())	YEAR(dt)


Function Name	Syntax	Return Datatype	Description
SELECT DateFromParts(2023,03,01)	DATEFROMPARTS (year, month, day)	date	It returns the Date value from the given parts.
SELECT DateTime2FromParts(2023,03,01,20,20,20,20,7)	datetime2fromparts (year, month, day, hours, minute, seconds, fractions, precision)	datetime2 (precision)	Returns datetime2 value with specified precision from given parts.
SELECT DateTimeFromParts(2023,03,01,20,20,20,20)	datetimefromparts (year, month, day, hour, minute, seconds, milliseconds)	datetime	datetime value from given parts.
SELECT DateTimeOffsetFromParts(2023,03,01,20,20,20,20,12,30,7)	datetimeoffsetfroomparts (year, month, day, hour, minute, seconds, fractions, hour_offset, minute_offset, precision)	datetime (precision)	datetimeoffset value with specified offsets and precision from given parts.
SELECT SmallDateTimeFromParts(2023,03,01,20,20)	smalldatetimefromparts (year, month, day, hours, minute)	smalldatetime	It returns smalldatetime value from the given parts.
SELECT TimeFromParts(01,20,20,20,7)	TIMEFROMPARTS (hours, minutes, seconds, fractions, precision)	time (precision)	It returns a Time value with specified precision.





Datepart	Abbreviations	Description
year	yy,yyyy	Display the difference between the Start and End date in terms of Years
quarter	qq, q	This Datepart displays the difference between the Start and End date in terms of Quarters
month	mm, m	Display the difference between the Start and End date in terms of Months
dayofyear	dy, y	Display the difference between the Start and End date in terms of Days of a Year (1 to 365)
day	dd, d	This Datepart in Sql Server Datediff display the difference between the Start and End date in terms of Day (1 to 31)
week	wk, ww	Display the difference between Start and End in terms of Week
weekday	dw, w	Display the difference between Start and End in terms of Weekday
hour	hh	This Datepart in it displays the difference between Start and End in terms of Hours
minute	mi, n	Display the difference between Start and End in terms of Minute
second	ss, s	It displays the difference between Start and End in terms of Seconds
millisecond	ms	Display the difference between the Start date and End in terms of Milliseconds
microsecond	mcs	This Datediff argument displays the difference between the Start and End date in terms of Microsecond
nanosecond	ns	It will print the difference between Start and End in terms of Nanoseconds.


SELECT DATEDIFF(DD,GETDATE(),GETDATE()-5)
SELECT DATEDIFF_BIG(DD,GETDATE(),GETDATE()-5)



Functions to modify Date and Time Values
The below SQL Server functions help you to alter or modify the user-specified date.

Name	Syntax	Return Data Type	Description
DateAdd	DATEADD(datepart, number, dt)	The data type of date argument	This date function returns a new datetime value by adding a user-specified number.
EoMonth	EOMONTH(start_date, Months_to_add)	Date, or return type of the first argument.	Returns the last day of the month with an optional offset.
select SwitchOffset(getdate(),'-00:30')	--SWITCHOFFSET (DATETIMEOFFSET, Time_Zone)	datetimeoffset with a fractional precision of the first argument.	It changes the time zone offset of a DATETIMEOFFSET value. Remember, it preserves the UTC value
select ToDateTimeOffset(getdate(),'-05:30') 	--TODATETIMEOFFSET (Expression, Time_Zone)	datetimeoffset with a fractional precision of the first argument.	It transforms the datetime2 value into datetimeofset value.


The following shown SQL Server date and time functions will change the default formats. By this, you can change the default return format of a date and time.

Name	Syntax	Return Data Type	Description
select @@DateFirst	@@DATEFIRST	tinyint	The current value of the session.
Set DateFirst	SET DATEFIRST specific_number	Not Applicable	You can set the first day of a week from number 1 to 7
Set DateFormat	SET DATEFORMAT specific_format	Not Applicable	You can set the format of a date.
select @@Language	@@LANGUAGE	Not Applicable	This Sql Date function returns the Language that is currently in use.
Set Language	SET LANGUAGE language_Name	Not Applicable	You can set or change the default language as per your requirement.
sp_helplanguage	sp_helplanguage language_Name	Not Applicable	It returns all the information about the given language and its formats.


select isdate(getdate())

