USE [AdventureWorks2019]
GO
/****** Object:  Table [Sales].[SalesPerson]    Script Date: 29-12-2021 09:13:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesPerson](
	[BusinessEntityID] [int] NOT NULL,
	[TerritoryID] [int] NULL,
	[SalesQuota] [money] NULL,
	[Bonus] [money] NOT NULL,
	[CommissionPct] [smallmoney] NOT NULL,
	[SalesYTD] [money] NOT NULL,
	[SalesLastYear] [money] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SalesPerson_BusinessEntityID] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (274, NULL, NULL, 0.0000, 0.0000, 559697.5639, 0.0000, N'48754992-9ee0-4c0e-8c94-9451604e3e02', CAST(N'2010-12-28T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (275, 2, 300000.0000, 4100.0000, 0.0120, 3763178.1787, 1750406.4785, N'1e0a7274-3064-4f58-88ee-4c6586c87169', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (276, 4, 250000.0000, 2000.0000, 0.0150, 4251368.5497, 1439156.0291, N'4dd9eee4-8e81-4f8c-af97-683394c1f7c0', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (277, 3, 250000.0000, 2500.0000, 0.0150, 3189418.3662, 1997186.2037, N'39012928-bfec-4242-874d-423162c3f567', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (278, 6, 250000.0000, 500.0000, 0.0100, 1453719.4653, 1620276.8966, N'7a0ae1ab-b283-40f9-91d1-167abf06d720', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (279, 5, 300000.0000, 6700.0000, 0.0100, 2315185.6110, 1849640.9418, N'52a5179d-3239-4157-ae29-17e868296dc0', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (280, 1, 250000.0000, 5000.0000, 0.0100, 1352577.1325, 1927059.1780, N'be941a4a-fb50-4947-bda4-bb8972365b08', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (281, 4, 250000.0000, 3550.0000, 0.0100, 2458535.6169, 2073505.9999, N'35326ddb-7278-4fef-b3ba-ea137b69094e', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (282, 6, 250000.0000, 5000.0000, 0.0150, 2604540.7172, 2038234.6549, N'31fd7fc1-dc84-4f05-b9a0-762519eacacc', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (283, 1, 250000.0000, 3500.0000, 0.0120, 1573012.9383, 1371635.3158, N'6bac15b2-8ffb-45a9-b6d5-040e16c2073f', CAST(N'2011-05-24T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (284, 1, 300000.0000, 3900.0000, 0.0190, 1576562.1966, 0.0000, N'ac94ec04-a2dc-43e3-8654-dd0c546abc17', CAST(N'2012-09-23T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (285, NULL, NULL, 0.0000, 0.0000, 172524.4512, 0.0000, N'cfdbef27-b1f7-4a56-a878-0221c73bae67', CAST(N'2013-03-07T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (286, 9, 250000.0000, 5650.0000, 0.0180, 1421810.9242, 2278548.9776, N'9b968777-75dc-45bd-a8df-9cdaa72839e1', CAST(N'2013-05-23T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (287, NULL, NULL, 0.0000, 0.0000, 519905.9320, 0.0000, N'1dd1f689-df74-4149-8600-59555eef154b', CAST(N'2012-04-09T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (288, 8, 250000.0000, 75.0000, 0.0180, 1827066.7118, 1307949.7917, N'224bb25a-62e3-493e-acaf-4f8f5c72396a', CAST(N'2013-05-23T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (289, 10, 250000.0000, 5150.0000, 0.0200, 4116871.2277, 1635823.3967, N'25f6838d-9db4-4833-9ddc-7a24283af1ba', CAST(N'2012-05-23T00:00:00.000' AS DateTime))
INSERT [Sales].[SalesPerson] ([BusinessEntityID], [TerritoryID], [SalesQuota], [Bonus], [CommissionPct], [SalesYTD], [SalesLastYear], [rowguid], [ModifiedDate]) VALUES (290, 7, 250000.0000, 985.0000, 0.0160, 3121616.3202, 2396539.7601, N'f509e3d4-76c8-42aa-b353-90b7b8db08de', CAST(N'2012-05-23T00:00:00.000' AS DateTime))
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_Bonus]  DEFAULT ((0.00)) FOR [Bonus]
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_CommissionPct]  DEFAULT ((0.00)) FOR [CommissionPct]
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_SalesYTD]  DEFAULT ((0.00)) FOR [SalesYTD]
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_SalesLastYear]  DEFAULT ((0.00)) FOR [SalesLastYear]
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_rowguid]  DEFAULT (newid()) FOR [rowguid]
GO
ALTER TABLE [Sales].[SalesPerson] ADD  CONSTRAINT [DF_SalesPerson_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID] FOREIGN KEY([BusinessEntityID])
REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [FK_SalesPerson_Employee_BusinessEntityID]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID] FOREIGN KEY([TerritoryID])
REFERENCES [Sales].[SalesTerritory] ([TerritoryID])
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [FK_SalesPerson_SalesTerritory_TerritoryID]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [CK_SalesPerson_Bonus] CHECK  (([Bonus]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_Bonus]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [CK_SalesPerson_CommissionPct] CHECK  (([CommissionPct]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_CommissionPct]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [CK_SalesPerson_SalesLastYear] CHECK  (([SalesLastYear]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesLastYear]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [CK_SalesPerson_SalesQuota] CHECK  (([SalesQuota]>(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesQuota]
GO
ALTER TABLE [Sales].[SalesPerson]  WITH CHECK ADD  CONSTRAINT [CK_SalesPerson_SalesYTD] CHECK  (([SalesYTD]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] CHECK CONSTRAINT [CK_SalesPerson_SalesYTD]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key for SalesPerson records. Foreign key to Employee.BusinessEntityID' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'BusinessEntityID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Territory currently assigned to. Foreign key to SalesTerritory.SalesTerritoryID.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'TerritoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Projected yearly sales.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'SalesQuota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bonus due if quota is met.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'Bonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_Bonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Commision percent received per sale.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'CommissionPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_CommissionPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales total year to date.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'SalesYTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_SalesYTD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales total of previous year.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'SalesLastYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of 0.0' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_SalesLastYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of NEWID()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_rowguid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time the record was last updated.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'COLUMN',@level2name=N'ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default constraint value of GETDATE()' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'DF_SalesPerson_ModifiedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary key (clustered) constraint' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'PK_SalesPerson_BusinessEntityID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sales representative current information.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key constraint referencing Employee.EmployeeID.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'FK_SalesPerson_Employee_BusinessEntityID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foreign key constraint referencing SalesTerritory.TerritoryID.' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'FK_SalesPerson_SalesTerritory_TerritoryID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [Bonus] >= (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'CK_SalesPerson_Bonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [CommissionPct] >= (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'CK_SalesPerson_CommissionPct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [SalesLastYear] >= (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'CK_SalesPerson_SalesLastYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [SalesQuota] > (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'CK_SalesPerson_SalesQuota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Check constraint [SalesYTD] >= (0.00)' , @level0type=N'SCHEMA',@level0name=N'Sales', @level1type=N'TABLE',@level1name=N'SalesPerson', @level2type=N'CONSTRAINT',@level2name=N'CK_SalesPerson_SalesYTD'
GO
