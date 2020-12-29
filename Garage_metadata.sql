USE [GarageDb]
GO
SET IDENTITY_INSERT [dbo].[Adm_AssetCategory] ON 
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (1, N'Car', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (2, N'Forklift', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (3, N'Mobile Crane', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (4, N'Loader', 1)
GO
SET IDENTITY_INSERT [dbo].[Adm_AssetCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_AssetType] ON 
GO
INSERT [dbo].[Adm_AssetType] ([ID], [AssetType]) VALUES (1, N'New')
GO
INSERT [dbo].[Adm_AssetType] ([ID], [AssetType]) VALUES (2, N'Old')
GO
INSERT [dbo].[Adm_AssetType] ([ID], [AssetType]) VALUES (3, N'Refurbished')
GO
SET IDENTITY_INSERT [dbo].[Adm_AssetType] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_CategoryStatutoryLink] ON 
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, 3, 1, CAST(N'2020-12-19T11:13:47.630' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T11:13:51.380' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (4, 3, 3, CAST(N'2020-12-19T11:37:16.120' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T11:37:16.123' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (5, 1, 1, CAST(N'2020-12-19T23:16:17.513' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T23:16:17.513' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (6, 1, 2, CAST(N'2020-12-19T23:16:17.700' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T23:16:17.700' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (7, 1, 3, CAST(N'2020-12-19T23:16:17.703' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T23:16:17.703' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (8, 2, 1, CAST(N'2020-12-19T23:16:49.720' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-19T23:16:49.720' AS DateTime), N'ANYACCESS\ykatambo')
GO
SET IDENTITY_INSERT [dbo].[Adm_CategoryStatutoryLink] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_Frequency] ON 
GO
INSERT [dbo].[Adm_Frequency] ([ID], [FrequencyName]) VALUES (1, N'Daily')
GO
INSERT [dbo].[Adm_Frequency] ([ID], [FrequencyName]) VALUES (2, N'Weekly')
GO
INSERT [dbo].[Adm_Frequency] ([ID], [FrequencyName]) VALUES (3, N'Monthly')
GO
SET IDENTITY_INSERT [dbo].[Adm_Frequency] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_FuelType] ON 
GO
INSERT [dbo].[Adm_FuelType] ([ID], [FuelName]) VALUES (1, N'Petrol')
GO
INSERT [dbo].[Adm_FuelType] ([ID], [FuelName]) VALUES (2, N'Diesel')
GO
INSERT [dbo].[Adm_FuelType] ([ID], [FuelName]) VALUES (3, N'Kerosine')
GO
SET IDENTITY_INSERT [dbo].[Adm_FuelType] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_InsuranceType] ON 
GO
INSERT [dbo].[Adm_InsuranceType] ([ID], [InsuranceName]) VALUES (1, N'Comprehensive')
GO
INSERT [dbo].[Adm_InsuranceType] ([ID], [InsuranceName]) VALUES (2, N'Third-Party')
GO
SET IDENTITY_INSERT [dbo].[Adm_InsuranceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_MaintenanceType] ON 
GO
INSERT [dbo].[Adm_MaintenanceType] ([ID], [MaintenanceName]) VALUES (1, N'Scheduled')
GO
INSERT [dbo].[Adm_MaintenanceType] ([ID], [MaintenanceName]) VALUES (2, N'Breakdown')
GO
SET IDENTITY_INSERT [dbo].[Adm_MaintenanceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageLogSheet] ON 
GO
INSERT [dbo].[Adm_ManageLogSheet] ([ID], [CategoryID], [LogSheetTypeID], [TriggerFrequency], [TriggerTime], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 3, 1, 2, CAST(N'06:00:00' AS Time), 1, CAST(N'2020-12-26T00:06:23.587' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-26T00:06:23.587' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_ManageLogSheet] ([ID], [CategoryID], [LogSheetTypeID], [TriggerFrequency], [TriggerTime], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, 1, 2, 1, CAST(N'06:00:00' AS Time), 1, CAST(N'2020-12-26T00:06:42.250' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-26T00:06:42.250' AS DateTime), N'ANYACCESS\ykatambo')
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageLogSheet] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageTrigger] ON 
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, 3, 1, 650, 450, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-21T12:16:10.123' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-23T19:58:29.550' AS DateTime))
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, 1, 2, 10000, 9500, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:30:51.627' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:30:51.627' AS DateTime))
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, 4, 1, 1000, 500, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:31:42.027' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-23T19:58:16.863' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageTrigger] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_Statutory] ON 
GO
INSERT [dbo].[Adm_Statutory] ([ID], [StatutoryName], [IsActive]) VALUES (1, N'Insurance', 1)
GO
INSERT [dbo].[Adm_Statutory] ([ID], [StatutoryName], [IsActive]) VALUES (2, N'Road Tax', 1)
GO
INSERT [dbo].[Adm_Statutory] ([ID], [StatutoryName], [IsActive]) VALUES (3, N'Fitness (RATSA)', 1)
GO
SET IDENTITY_INSERT [dbo].[Adm_Statutory] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_TriggerType] ON 
GO
INSERT [dbo].[Adm_TriggerType] ([ID], [TriggerName]) VALUES (1, N'H - Running Hours')
GO
INSERT [dbo].[Adm_TriggerType] ([ID], [TriggerName]) VALUES (2, N'KM - Kilometers/Mileage')
GO
INSERT [dbo].[Adm_TriggerType] ([ID], [TriggerName]) VALUES (3, N'D - Days')
GO
SET IDENTITY_INSERT [dbo].[Adm_TriggerType] OFF
GO
