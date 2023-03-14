Package level and project level deployment: -

Package Level Deployment(SQL Server 2005/8): - It will store the packages to the file system or msdb database. Package configurations files need to be done at the package level. Project parameters are not supported in this.

Convert to Package Deployment Model.
CreateDeploymentUtility property to True
AllowConfigurationChanges property is a key setting as well, and when set to True,

project level deployment(SQL 2012 onwards): - Right click on the project and deploy it will deploy all the packages in single shot. It will create an ispac file and deploy it to the server. It will store the ssis catalog.



4.	What is the use of a config file in SSIS?

Config file in SSIS is used to provide inputs to connection managers different properties that packages use to assign values at runtime dynamically.

5.	What kind of containers can you use with SSIS packages? sequence, for loops, and for each loop.
8.	How to back up or retrieve the SSIS packages?

If your package is deployed on SQL Server then you can back up the MSDB database as all the packages on SQL server deploy at MSDB.






6.	How to organize a SSIS Package on production?

manifest file is the utility that can be used to deploy the package using the wizard on the file system and SQL Server database.

SSIS can be organized through
1)	Manifest we can organize it:
a. Create deployment utility by setting its properties as true .
b. It will be formed in the bin folder of the solution once the package is built.
c. Copy all the files in the utility and use manifest file to display it on the Prod.
2)	Using DtsExec.exe utility.
3)Import Package directly in MSDB from SSMS by logging in Integration Services.


