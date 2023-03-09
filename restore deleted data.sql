
IF OBJECT_ID('dbo.Test') IS NOT NULL
DROP TABLE Test
create table Test(ID int identity(1,1),Record varchar(100))

insert into Test
select 'Record1'

insert into Test
select 'Record2'


-- FULL Backup
BACKUP DATABASE DB123 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data.bak'
GO

insert into Test
select 'Record3'

insert into Test
select 'Record4'

BACKUP DATABASE DB123 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_1.trn' --with differential
GO


insert into Test
select 'Record5'

insert into Test
select 'Record6'

delete from Test where Record='Record4'

-- LOG Backup
BACKUP LOG DB123 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_2.trn'


IF OBJECT_ID('dbo.TMP_KAR') IS NOT NULL
DROP TABLE TMP_KAR
SELECT
[current lsn],[Begin Time],[transaction id],[operation],[transaction name],[context],[allocunitname],
[page id],[slot id],[end time],[number of locks],[lock Information] INTO TMP_KAR
from fn_dblog(NULL,NULL)
where operation IN ('LOP_INSERT_ROWS','LOP_MODIFY_ROW',
'LOP_DELETE_ROWS','LOP_BEGIN_XACT','LOP_COMMIT_XACT') AND
 [allocunitname] LIKE '%DBO.TEST%'

 IF OBJECT_ID('dbo.TMP_KAR1') IS NOT NULL
DROP TABLE TMP_KAR1
SELECT 
    [Begin Time],[Current LSN], [Transaction ID],Operation,Context,AllocUnitName INTO TMP_KAR1 
	FROM 
   fn_dblog(NULL, NULL) 
WHERE [Transaction ID] = (SELECT [transaction id] FROM TMP_KAR WHERE operation='LOP_DELETE_ROWS' ) AND [Begin Time] IS NOT NULL

insert into Test
select 'Record7'

insert into Test
select 'Record8'


-- LOG Backup
BACKUP LOG DB123 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_3.trn'

   -- Restore FULL database backup with NO RECOVERY
   RESTORE DATABASE Recover_Deleted_Data
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data.bak'
WITH MOVE 'DB123' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data.mdf',
MOVE 'DB123_LOG' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG.ldf',
REPLACE, NORECOVERY;

  RESTORE DATABASE Recover_Deleted_Data
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_1.trn' WITH NORECOVERY
/*

SELECT [current lsn],[Begin Time],[transaction id],[operation],[transaction name],[context],[allocunitname],
[page id],[slot id],[begin time],[end time],[number of locks],[lock Information],*
FROM fn_dump_dblog
(NULL,NULL,N'DISK',1,N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_2.trn', 
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT, 
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,
DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT, 
DEFAULT) WHERE [Transaction ID]='0000:00000513'  and Operation='LOP_BEGIN_XACT'
WHERE operation IN ('LOP_DELETE_ROWS') AND context='LCX_HEAP';
--WHERE operation IN ('LOP_INSERT_ROWS','LOP_MODIFY_ROW',
--'LOP_DELETE_ROWS','LOP_BEGIN_XACT','LOP_COMMIT_XACT');

SELECT
[current lsn],[Begin Time],[transaction id],[operation],[transaction name],[context],[allocunitname],
[page id],[slot id],[begin time],[end time],[number of locks],[lock Information],*
from sys.fn_dblog(NULL,NULL)
where operation IN ('LOP_INSERT_ROWS','LOP_MODIFY_ROW',
'LOP_DELETE_ROWS','LOP_BEGIN_XACT','LOP_COMMIT_XACT') AND
 [allocunitname] LIKE '%DBO.TEST%'
 */

 RESTORE DATABASE Recover_Deleted_Data
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_2.trn' WITH NORECOVERY

 DECLARE @DATE NVARCHAR(200)=(
SELECT 
    [Begin Time]--,[Current LSN], [Transaction ID],Operation,Context,AllocUnitName,* 
	FROM TMP_KAR1)
--SELECT @DATE 


  RESTORE DATABASE Recover_Deleted_Data
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_2.trn' WITH NORECOVERY 
, STOPAT = @DATE

DECLARE @DATE1 NVARCHAR(200)=(
SELECT 
    CONCAT('lsn:0x',[Current LSN])--,[Current LSN], [Transaction ID],Operation,Context,AllocUnitName,* 
	FROM TMP_KAR1)

--SELECT @DATE1 
 RESTORE LOG Recover_Deleted_Data
FROM
   DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_2.trn' WITH NORECOVERY
,STOPBEFOREMARK = @DATE1





  RESTORE DATABASE Recover_Deleted_Data
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Recover_Deleted_Data_LOG_3.trn' WITH NORECOVERY


GO

---BRING DATABASE ONLINE
--RESTORE LOG Recover_Deleted_Data WITH RECOVERY


