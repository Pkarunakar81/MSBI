
--SELECT * FROM TEST

SELECT [transaction id] FROM TMP_KAR WHERE operation='LOP_DELETE_ROWS' and Operation='LOP_BEGIN_XACT'

SELECT
[current lsn],[Begin Time],[transaction id],[operation],[transaction name],[context],[allocunitname],
[page id],[slot id],[end time],[number of locks],[lock Information] INTO TMP_KAR
from fn_dblog(NULL,NULL)
where operation IN ('LOP_INSERT_ROWS','LOP_MODIFY_ROW',
'LOP_DELETE_ROWS','LOP_BEGIN_XACT','LOP_COMMIT_XACT') AND
 [allocunitname] LIKE '%DBO.TEST%'

SELECT 
    [Current LSN], [Begin Time], [Transaction ID],Operation,Context,
    AllocUnitName,* FROM 
   fn_dblog(NULL, NULL) 
WHERE [Transaction ID] = '0000:0003126f' and Operation='LOP_BEGIN_XACT'