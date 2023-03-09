create procedure ##mytemp as
begin
   select getdate()DATE into ##mytemptable;
end
GO

EXEC ##mytemp
SELECT * FROM #mytemptable
GO