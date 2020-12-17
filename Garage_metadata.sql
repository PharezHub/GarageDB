USE [GarageDb]
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
