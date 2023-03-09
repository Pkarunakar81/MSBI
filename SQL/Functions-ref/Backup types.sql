--diff between file and file groups in sql server
-- FULL Backup
BACKUP DATABASE Demo 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Full.bak' 
GO
--all the data backup
-- Differential Backup
--changes happened after last backup
BACKUP DATABASE Demo 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Diff.bak' with differential
GO
--tail log backup
--backup the data currently active transaction log when database is offline,dmaged or missing data files
BACKUP LOG Demo
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Log.TRN'
WITH NORECOVERY , CONTINUE_AFTER_ERROR
---file backup
--Take the each file backup
BACKUP DATABASE Demo  file ='File_name'
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_File_name.fil'
GO
---file group backup
--Take the all the files that are in a partucular file group
BACKUP DATABASE Demo  filegroup ='Filegroup_name'
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Filegroup_name.flg'
GO
---partial backup
--mostly used in simple recovery mode
BACKUP DATABASE Demo  READ_WRITE_FILEGROUPS
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Filegroup_PARTIAL.BAK'
GO
--split backup
BACKUP DATABASE Demo  to
DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_full1.BAK',
DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_full2.BAK',
DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_full3.BAK'
--copy only backup
--cannot take differencial backup
--independent of sequence of other backups

BACKUP DATABASE Demo 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Full.bak' 
with copy_only

--mirror backup 
--we can have upto 3 mirror copies
BACKUP DATABASE Demo 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Full.bak' 
mirror TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Full_mirror.bak' 
GO
--compression backup
-- to decrease the size of the backup file

BACKUP DATABASE Demo 
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Demo_Full_comp.bak' 
with compression



weekly full
daily differential
4hr,1hr,30 min tlog backup


cannot restore to lower versions of sql server
