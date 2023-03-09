IIF(Boolean_Expression, True_Value, Flase_Value)


SELECT 
	IIF(10 > 5, 'TRUE', 'FALSE') AS Result;


CHOOSE (Index, Value1, Value2, ....,ValueN)

SELECT CHOOSE(1, 'Apple', 'Orange', 'Kiwi', 'Cherry') AS Result1;

SELECT CHOOSE(2, 'Apple', 'Orange', 'Kiwi', 'Cherry') AS Result2;

SELECT CHOOSE(3, 'Apple', 'Orange', 'Kiwi', 'Cherry') AS Result3;

SELECT CHOOSE(4, 'Apple', 'Orange', 'Kiwi', 'Cherry') AS Result4;

