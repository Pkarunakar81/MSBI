
Functions	Description
ASCII	--It returns the ASCII code of the leftmost character of a character expression.

select ascii('a')

CHAR	--Convert the integer value (ASCII code) to a character

select CHAR(97)

CHARINDEX	--It returns the index position of a specified expression

select CHARINDEX('@','CHARINDEX@gmail.com')

CONCAT	Combine or concatenate two or more and return the string.

select concat('abc','def')
CONCAT_WS	This function concatenates two or more SQL Server words using a separator.


select concat_ws(' | ','def','ghi','xyz')

SOUNDEX	--This SQL String function returns the SOUNDEX code.
DIFFERENCE	--Return the difference between the SOUNDEX values of the specified character expressions

select SOUNDEX('Cat'),SOUNDEX('men'),DIFFERENCE('Cat','men')

FORMAT	--Format the expression with the specified format.

DECLARE @Vardate DATETIME = GETDATE() 
SELECT FORMAT(@Vardate, 'd', 'en-US' ) AS 'Result 1',  FORMAT(@Vardate, 'D', 'en-US' ) AS 'Result 2'
SELECT FORMAT(@Vardate, 'f', 'en-US' ) AS 'Result 3',  FORMAT(@Vardate, 'F', 'en-US' ) AS 'Result 4'
SELECT FORMAT(@Vardate, 'g', 'en-US' ) AS 'Result 5',  FORMAT(@Vardate, 'G', 'en-US' ) AS 'Result 6'
SELECT FORMAT(@Vardate, 'm', 'en-US' ) AS 'Result 7',  FORMAT(@Vardate, 'M', 'en-US' ) AS 'Result 8'
SELECT FORMAT(@Vardate, 'O', 'en-US' ) AS 'Result 9',  FORMAT(@Vardate, 'R', 'en-US' ) AS 'Result 10'
SELECT FORMAT(@Vardate, 's', 'en-US' ) AS 'Result 11', FORMAT(@Vardate, 'S', 'en-US' ) AS 'Result 12'
SELECT FORMAT(@Vardate, 't', 'en-US' ) AS 'Result 13', FORMAT(@Vardate, 'T', 'en-US' ) AS 'Result 14'
SELECT FORMAT(@Vardate, 'u', 'en-US' ) AS 'Result 15', FORMAT(@Vardate, 'U', 'en-US' ) AS 'Result 16'
SELECT FORMAT(@Vardate, 'Y', 'en-US' ) AS 'Result 17'

LEN	--To find the length of a specified expression
select len('abc')

LEFT	--Returns the leftmost characters from the specified expression

select left('abcdefg',4)
LTRIM	--It removes the empty spaces from the Left side of a character’s expression
select LTRIM('   abcdefg')

LOWER	--It converts the given text or expression to Lowercase.
select LOWER('   ABCDEFG')
NCHAR	--It returns the Unicode character at the specified integer value

select NCHAR(97)

QUOTENAME	--It returns the Unicode with the delimiters
		select QUOTENAME('ABCDEFG','{')
REPLACE	--We can use this SQL Server function to replace the existing string with a new value.
		select REPLACE('ABCDEFG','a','aa')
REPLICATE	--Repeat the existing sentence a given number of times.
		select REPLICATE('ABCDEFG',5)
REVERSE	--It helps to reverse the specified expression
		select REVERSE('   ABCDEFG')
RIGHT	--Return the rightmost characters from a given expression
		select RIGHT('   ABCDEFG  ',6)
RTRIM	--It removes empty spaces from the Right-hand side of a given expression.
		select RTRIM('   ABCDEFG          ')
PATINDEX	--It is used to return the starting index position of the first occurrence of a pattern in an expression.
		select PATINDEX('%fG%','ABCDEFG')
SPACE	--Returns the string of repeated spaces.
		SELECT CONCAT('ABC',SPACE(20),'DEF')
STR	--It returns the string representation of the numeric expression.
		SELECT STR('12345',50)
STRING_ESCAPE	--It escapes the special characters from the text.
/*
SQL STRING_ESCAPE Function
The SQL STRING_ESCAPE String Function is used to escape special characters from string expression, and returns a string with escaped characters. The basic syntax of the STRING_ESCAPE function is

STRING_ESCAPE (String_Expression, type)
The list of arguments available for STRING_ESCAPE in SQL Server is:
String_Expression: Please specify a valid String Expression
type: Currently, this SQL Server function accepts only JSON type
*/
		SELECT STRING_ESCAPE('        """@1#$%""''@','JSON')
STRING_SPLIT	--Split the character expression using the separator.
		DECLARE @Expression varchar(50)
SET @Expression = 'Learn SQL Server at Tutorial Gateway For Free!' 

SELECT * FROM STRING_SPLIT (@Expression, ' ')

STRING_AGG	--It concatenates the string expressions and places a specified separator in between them.

		DECLARE @TABLE TABLE (ID INT,NAME VARCHAR(2)) INSERT INTO @TABLE VALUES('1','A'),('9','A'),('2','B'),('3','C')
		SELECT STRING_AGG(ID,'@') FROM @TABLE GROUP BY NAME

STUFF	--Insert one string inside another string
		DECLARE @Character_Expression varchar(50)
		SET @Character_Expression = 'Learn Server' 
		-- Starting Position = 6 and End Position = 0
		SELECT STUFF (@Character_Expression, 5, 0, ' SQL') AS 'SQLSTUFF' 

SUBSTRING	--It returns a specified number of characters from the given expression.
		select SUBSTRING('ab@c!d#@@@@',3,3)

TRANSLATE	--It translates the string expression by replacing the specified characters with a new set of characters.
		select TRANSLATE('ab@c!d#@@@@','@','~')

TRIM	--Remove the empty spaces from both the right and left sides.
		SELECT TRIM('    babc   ')
UNICODE	--Return the Unicode (integer) value, as defined in Unicode standards.
		SELECT UNICODE('babc')
UPPER	--This function converts the given text or expression to Uppercase.
		SELECT UPPER('abc')