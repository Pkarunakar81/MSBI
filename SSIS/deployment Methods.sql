Package level and project level deployment: -

Package Level Deployment(SQL Server 2005/8): - It will store the packages to the file system or msdb database. Package configurations files need to be done at the package level. Project parameters are not supported in this.

Convert to Package Deployment Model.
CreateDeploymentUtility property to True
AllowConfigurationChanges property is a key setting as well, and when set to True,

project level deployment(SQL 2012 onwards): - Right click on the project and deploy it will deploy all the packages in single shot. It will create an ispac file and deploy it to the server. It will store the ssis catalog.
