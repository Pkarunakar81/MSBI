SELECT  HOST_NAME() AS 'host_name()',
@@servername AS 'ServerName\InstanceName',
SERVERPROPERTY('servername') AS 'ServerName',
SERVERPROPERTY('machinename') AS 'Windows_Name',
SERVERPROPERTY('ComputerNamePhysicalNetBIOS') AS 'NetBIOS_Name',
SERVERPROPERTY('instanceName') AS 'InstanceName',
SERVERPROPERTY('IsClustered') AS 'IsClustered'

	SELECT @@SERVERNAME AS 'Server Name';  
	
EXEC sp_DROPSERVER 'KAR-ETL'

EXEC sp_ADDSERVER '10.10.10.1', 'local'

EXEC sp_dropserver '10.10.10.1';  
GO  
EXEC sp_addserver 'KAR-ETL', local;  
GO  
sp_dropremotelogin 'DESKTOP-6DLJL9U'
sp_helpserver
select 
srl.remote_name as RemoteLoginName, 
sss.srvname
from sys.remote_logins srl join sys.sysservers sss on srl.server_id = sss.srvid
GO
