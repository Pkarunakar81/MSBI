---configuration functions
select @@Language
select @@LangId
select @@Max_Connections
select @@Max_Precision
select @@ServerName
select @@ServiceName
select @@SpId
select @@Version


---system functions
select @@Identity
select @@pack_Received
select IsNull(null,1)
select IsNumeric(1)
Error_Line
Error_Number
Error_Message
Error_Severity
Error_State
Host_Id
Host_Name


BEGIN TRY
    DECLARE @Number tinyint,
	    @Result tinyint;
    SET @Number = 252;
    SET @Result = @Number /0;
SELECT @Number AS Number, 
       @Result AS Result;
END TRY
BEGIN CATCH
  PRINT N'Error Line = ' + CAST(ERROR_LINE() AS nvarchar(100));
  PRINT N'Error Message = ' + CAST(ERROR_MESSAGE() AS nvarchar(100));
  PRINT N'Error Number = ' + CAST(ERROR_NUMBER() AS nvarchar(100));
    PRINT N'Error Severity = ' + CAST(ERROR_SEVERITY() AS VARCHAR(100));
    PRINT N'Error State = ' + CAST(ERROR_STATE() AS VARCHAR(100));
END CATCH

select *from sys.messages where language_id=1033

select host_id()
select host_name()


--statistical functions
select @@Connections
select @@CPU_Busy
select @@Idle
select @@IO_Busy
select @@Pack_Sent
select @@Packet_Errors
select @@TimeTicks
select @@Total_Read
select @@Total_Write
select @@TOTAL_ERRORS

