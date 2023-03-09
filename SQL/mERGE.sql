MERGE [Destination table] AS ds
USING  [Source Table] AS st -- Include the columns Name
ON ds.[Common column] = st.[Common Column]
-- It's not about matching, You have to add the expressions
WHEN MATCHED THEN INSERT | DELETE | UPDATE--WE CAN WRITE THE CONDITION AS WELL HERE
WHEN NOT MATCHED THEN INSERT | DELETE | UPDATE 