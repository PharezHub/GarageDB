USE [GarageDb]
GO
SET IDENTITY_INSERT [dbo].[Adm_AssetCategory] ON 
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (1, N'Cars', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (2, N'Folk Lift', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (3, N'ACE Cranes', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (4, N'Tafe Tractor', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (5, N'Light Trucks', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (6, N'Busses', 1)
GO
INSERT [dbo].[Adm_AssetCategory] ([ID], [CategoryName], [IsActive]) VALUES (7, N'Trucks', 1)
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
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (9, 1, 1, CAST(N'2021-01-21T16:58:16.770' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-21T16:58:16.770' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (10, 1, 2, CAST(N'2021-01-21T16:58:16.823' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-21T16:58:16.823' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_CategoryStatutoryLink] ([ID], [CategoryID], [StatutoryID], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (11, 1, 3, CAST(N'2021-01-21T16:58:16.827' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-21T16:58:16.827' AS DateTime), N'ANYACCESS\ykatambo')
GO
SET IDENTITY_INSERT [dbo].[Adm_CategoryStatutoryLink] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_Color] ON 
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (1, N'White', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (2, N'Blue', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (3, N'Silver', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (4, N'Black', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (5, N'Red', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (6, N'Green', NULL)
GO
INSERT [dbo].[Adm_Color] ([ID], [color], [code]) VALUES (7, N'Orange', NULL)
GO
SET IDENTITY_INSERT [dbo].[Adm_Color] OFF
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
SET IDENTITY_INSERT [dbo].[Adm_Make] ON 
GO
INSERT [dbo].[Adm_Make] ([ID], [Make]) VALUES (1, N'Toyota')
GO
INSERT [dbo].[Adm_Make] ([ID], [Make]) VALUES (2, N'Mercedes')
GO
INSERT [dbo].[Adm_Make] ([ID], [Make]) VALUES (3, N'CAT')
GO
SET IDENTITY_INSERT [dbo].[Adm_Make] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageLogSheet] ON 
GO
INSERT [dbo].[Adm_ManageLogSheet] ([ID], [CategoryID], [LogSheetTypeID], [TriggerFrequency], [TriggerTime], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, 3, 1, 1, CAST(N'06:00:00' AS Time), 1, CAST(N'2021-01-23T01:41:49.190' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-23T01:41:49.190' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_ManageLogSheet] ([ID], [CategoryID], [LogSheetTypeID], [TriggerFrequency], [TriggerTime], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, 1, 2, 1, CAST(N'06:00:00' AS Time), 1, CAST(N'2021-01-23T01:42:14.463' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-23T01:42:14.463' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Adm_ManageLogSheet] ([ID], [CategoryID], [LogSheetTypeID], [TriggerFrequency], [TriggerTime], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, 4, 1, 1, CAST(N'06:00:00' AS Time), 1, CAST(N'2021-01-23T01:42:29.350' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-23T01:42:29.350' AS DateTime), N'ANYACCESS\ykatambo')
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageLogSheet] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageTrigger] ON 
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, 3, 1, 650, 450, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-21T12:16:10.123' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-08T08:27:13.040' AS DateTime))
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (2, 1, 2, 10000, 9500, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:30:51.627' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:30:51.627' AS DateTime))
GO
INSERT [dbo].[Adm_ManageTrigger] ([ID], [CategoryID], [TriggerID], [TriggerValue], [Threshold], [IsActive], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (3, 4, 1, 1000, 500, 1, N'ANYACCESS\ykatambo', CAST(N'2020-12-23T14:31:42.027' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2020-12-23T19:58:16.863' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Adm_ManageTrigger] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_Model] ON 
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (1, N'Corolla')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (2, N'Camry')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (3, N'CAT Loader')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (4, N'Mark II')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (5, N'Land Cruser')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (6, N'Toyota Prado')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (7, N'Verosa')
GO
INSERT [dbo].[Adm_Model] ([ID], [ModelName]) VALUES (8, N'HIACE QUANTUM')
GO
SET IDENTITY_INSERT [dbo].[Adm_Model] OFF
GO
SET IDENTITY_INSERT [dbo].[Adm_Status] ON 
GO
INSERT [dbo].[Adm_Status] ([ID], [status]) VALUES (1, N'Active')
GO
INSERT [dbo].[Adm_Status] ([ID], [status]) VALUES (2, N'Standby')
GO
INSERT [dbo].[Adm_Status] ([ID], [status]) VALUES (3, N'Inactive')
GO
SET IDENTITY_INSERT [dbo].[Adm_Status] OFF
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
INSERT [dbo].[Adm_TriggerType] ([ID], [TriggerName]) VALUES (2, N'KM - Mileage')
GO
INSERT [dbo].[Adm_TriggerType] ([ID], [TriggerName]) VALUES (3, N'F - Fuel Consumption')
GO
SET IDENTITY_INSERT [dbo].[Adm_TriggerType] OFF
GO
SET IDENTITY_INSERT [dbo].[AdmPartsCatalog] ON 
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (1, N'Air Filter', N'NA', 1, 1, 2, N'Air Filter', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (2, N'Fuel Filter', N'NA', 1, 1, 2, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (3, N'Oil Lubricating Filter', N'', 1, 1, 2, N'Camry 2003 model. This spare is often found in AutoWorld Zambia, Chingola Branch.', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (4, N'Oil Lubricating Filter', N'', 1, 1, 2, N'', 1)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (5, N'Brake Shoes/ Brake Pads.', N'AXA112AXX', 1, 1, 2, N'Comment added for an item.', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (6, N'Air Filter', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (7, N'Oil Lubricating Filter', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (8, N'Fuel Filter(Element)', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (9, N'Fan Belt', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (10, N'Brake Shoes/Brake Pads', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (11, N'Shock Absorbers', N'', 6, 1, 8, N'', 0)
GO
INSERT [dbo].[AdmPartsCatalog] ([ID], [ItemDescription], [PartNumber], [CategoryID], [MakeID], [ModelID], [Comment], [IsDeleted]) VALUES (12, N'Tyres 195R15', N'', 6, 1, 8, N'', 0)
GO
SET IDENTITY_INSERT [dbo].[AdmPartsCatalog] OFF
GO
SET IDENTITY_INSERT [dbo].[Gen_SystemArea] ON 
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (1, N'Garage', N'New Asset', N'Capture New Asset', N'Asset/AddAsset', N'/images/add-file.png', 1, N'All')
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (2, N'Garage', N'Pending Logsheet', N'Capture Running Hours, Mileage and Fuel Consumption', N'Logsheet/LogList', N'/images/document.png', 1, N'All')
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (3, N'Garage', N'Alert', N'Alerts', N'Category/Index', N'/images/mail.png', 1, N'All')
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (6, N'Garage', N'New Logsheet', N'Capture Mileage and Fuel Consumption', N'Logsheet/Utilization', N'/images/calculator.png', 1, N'All')
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (7, N'Garage', N'Asset Catalog', N'Asset Catalog', N'Asset/Index', N'/images/growth.png', 1, N'All')
GO
INSERT [dbo].[Gen_SystemArea] ([ID], [ModuleName], [Title], [Description], [PageUrl], [ImagePath], [Status], [RoleAccessID]) VALUES (8, N'Garage', N'Spare Parts Catalog', N'Spares Catalog', N'Spares/SparesList', N'/images/repair-tools.png', 1, N'All')
GO
SET IDENTITY_INSERT [dbo].[Gen_SystemArea] OFF
GO
SET IDENTITY_INSERT [dbo].[Hdr_Asset] ON 
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (1, 1, 1, N'AZ12312E2D', N'FW3232E22EW', N'ACZ 676', N'1', N'1', 2001, N'1500CC', 1, N'4', 2010, 0, 1, 0, NULL, 80000, N'NA', N'Phasellus vulputate dui quam, a pretium lorem vestibulum nec. Cras risus nisi, sollicitudin eget dui eu, porta tincidunt sem. Donec consectetur, leo vel tincidunt imperdiet, nibh nisl consectetur orci, ut porttitor purus dui vitae nibh. Donec ut rhoncus e', 1, CAST(N'2021-01-18T10:39:49.313' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (2, 2, 1, N'32SDFSD2343', N'ASA342342', N'ABB 2342', N'1', N'1', 2010, N'2000 CC', 1, N'3', 2011, 0, 0, 0, NULL, 0, N'NA', N'NONE', 2, CAST(N'2021-01-18T12:24:53.913' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (3, 2, 1, N'234KO334SD', N'234ASDADA234', N'ADD 3234', N'1', N'2', 2017, N'2500 CC', 2, N'3', 2020, 0, 0, 0, NULL, 0, NULL, NULL, 1, CAST(N'2021-01-18T12:31:28.490' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (4, 0, 0, NULL, NULL, NULL, N'0', N'0', NULL, NULL, 0, N'0', 0, 0, 0, 0, NULL, 0, NULL, NULL, 1, CAST(N'2021-01-18T12:37:25.380' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (5, 1, 1, N'34234L3232D', N'2FD2423O22', N'ABG 232', N'1', N'2', 2013, N'2500 CC', 2, N'1', 2015, 0, 0, 0, NULL, 0, N'NA', N'NONE', 3, CAST(N'2021-01-18T12:39:47.473' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (6, 2, 1, N'FK2323923', N'D3234D22', N'LP3400', N'1', N'1', 2010, N'1200 CC', 2, N'4', 2017, 78000, 78000, 0, NULL, 7520, N'na', N'Testing comment.', 1, CAST(N'2021-01-18T13:07:29.167' AS DateTime), N'ANYACCESS\ykatambo', NULL, NULL, NULL)
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (8, 1, 1, N'23FWW343', N'E234EERR23', N'AAB 3424', N'1', N'2', 2010, N'2500 CC', 2, N'5', 2018, 45000, 45500, 45000, NULL, 0, N'OK', N'OK', 1, CAST(N'2021-01-18T17:10:44.670' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-12-31T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime), CAST(N'2021-12-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (9, 2, 1, N'AZ12312E2D5', N'E234EERR234', N'AAB 34244', N'1', N'1', 2000, N'2500 CC', 2, N'2', 2000, 0, 0, 0, NULL, 0, N'NA', N'oj', 1, CAST(N'2021-01-18T17:21:03.850' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-31T00:00:00.000' AS DateTime), CAST(N'2021-01-31T00:00:00.000' AS DateTime), CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (10, 1, 1, N'23FWW3432', N'E234EERR234', N'ABB2341', N'1', N'1', 2010, N'2000 CC', 1, N'3', 2018, 45000, 45000, 0, NULL, 98000, N'na', N'testing comment section.', 1, CAST(N'2021-01-18T17:25:08.140' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-08-31T00:00:00.000' AS DateTime), CAST(N'2021-03-31T00:00:00.000' AS DateTime), CAST(N'2021-06-30T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (11, 1, 1, N'D3242DF234', N'234DF2342F67', N'ADD1212', N'1', N'1', 2010, N'1500', 1, N'1', 2020, 102000, 108201, 0, NULL, 93000, NULL, N'none', 1, CAST(N'2021-01-21T16:33:19.257' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-06-30T00:00:00.000' AS DateTime), CAST(N'2021-04-30T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (12, 1, 4, N'LE2234234', N'T234WW3233', N'AAB23424', N'3', N'3', 2018, N'4500', 2, N'7', 2021, 472200, 472200, 0, NULL, 100000, N'CAT101', N'ok', 1, CAST(N'2021-01-22T22:56:47.033' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-04-30T00:00:00.000' AS DateTime), CAST(N'2021-03-31T00:00:00.000' AS DateTime), CAST(N'2021-03-31T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Hdr_Asset] ([ID], [AssetTypeID], [CategoryID], [EngineNo], [ChassisNo], [RegNo], [Make], [ModelID], [Year], [EngineCapacity], [FuelTypeID], [Color], [YearOfPurchase], [InitialMileage], [CurrentMileage], [MileageLastService], [LastServiceDate], [AssetValue], [TagNo], [Comment], [AssetStatus], [CreatedOn], [CreatedBy], [InsuranceExpiryDate], [RoadTaxExpiryDate], [FitnessExpiryDate]) VALUES (13, 2, 3, N'34ER23422FF', N'G43SS224AA', N'CA2342', N'3', N'3', 2000, N'23400', 2, N'5', 2018, 0, 0, 0, NULL, 0, N'CRANE70', N'main crane', 1, CAST(N'2021-01-23T01:21:35.567' AS DateTime), N'ANYACCESS\ykatambo', CAST(N'2021-01-31T00:00:00.000' AS DateTime), CAST(N'2021-01-31T00:00:00.000' AS DateTime), CAST(N'2021-01-31T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Hdr_Asset] OFF
GO
SET IDENTITY_INSERT [dbo].[Hdr_StatutoryRequirement] ON 
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (1, 0, N'AAB 3424', N'E234EERR23', 1, 1, 1, N'Professional Insurance', 90000, CAST(N'2021-01-01' AS Date), CAST(N'2021-12-31' AS Date), NULL, CAST(N'2021-01-18T17:10:56.593' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (2, 0, N'AAB 34244', N'E234EERR234', 1, 1, 1, N'Professional Insurance', 90000, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-18T17:21:16.837' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (3, 0, N'AAB 34244', N'E234EERR234', 2, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-18T17:21:26.463' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (4, 0, N'AAB 34244', N'E234EERR234', 3, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-18T17:22:16.450' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (5, 0, N'ABB2341', N'E234EERR234', 1, 1, 1, N'Professional Insurance', 78000, CAST(N'2021-01-01' AS Date), CAST(N'2021-08-31' AS Date), NULL, CAST(N'2021-01-18T17:25:08.157' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (6, 0, N'ABB2341', N'E234EERR234', 2, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-03-31' AS Date), NULL, CAST(N'2021-01-18T17:25:08.160' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (7, 0, N'ABB2341', N'E234EERR234', 3, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-06-30' AS Date), NULL, CAST(N'2021-01-18T17:25:08.160' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (8, 0, N'ADD1212', N'234DF2342F67', 1, 1, 1, N'Mopani Copper Mines Plc', 55000, CAST(N'2021-01-01' AS Date), CAST(N'2021-06-30' AS Date), NULL, CAST(N'2021-01-21T16:33:19.563' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (9, 0, N'ADD1212', N'234DF2342F67', 2, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-04-30' AS Date), NULL, CAST(N'2021-01-21T16:33:19.610' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (10, 0, N'ADD1212', N'234DF2342F67', 3, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2022-02-01' AS Date), NULL, CAST(N'2021-01-21T16:33:19.613' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (11, 0, N'AAB23424', N'T234WW3233', 1, 1, 1, N'Mopani Copper Mines Plc', 98000, CAST(N'2021-01-01' AS Date), CAST(N'2021-04-30' AS Date), NULL, CAST(N'2021-01-22T22:56:47.280' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (12, 0, N'AAB23424', N'T234WW3233', 2, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-03-31' AS Date), NULL, CAST(N'2021-01-22T22:56:47.323' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (13, 0, N'AAB23424', N'T234WW3233', 3, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-03-31' AS Date), NULL, CAST(N'2021-01-22T22:56:47.327' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (14, 0, N'CA2342', N'G43SS224AA', 1, 1, 1, N'Mopani Copper Mines Plc', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-23T01:21:35.807' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (15, 0, N'CA2342', N'G43SS224AA', 2, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-23T01:21:35.850' AS DateTime), N'ANYACCESS\ykatambo')
GO
INSERT [dbo].[Hdr_StatutoryRequirement] ([ID], [AssetID], [RegNo], [ChassisNo], [StatutoryID], [StatutoryAvailable], [InsuranceTypeID], [InsuranceCompany], [AmountPaid], [DateFrom], [DateTo], [FileName], [DateModified], [ModifiedBy]) VALUES (16, 0, N'CA2342', N'G43SS224AA', 3, 1, 0, N'', 0, CAST(N'2021-01-01' AS Date), CAST(N'2021-01-31' AS Date), NULL, CAST(N'2021-01-23T01:21:35.853' AS DateTime), N'ANYACCESS\ykatambo')
GO
SET IDENTITY_INSERT [dbo].[Hdr_StatutoryRequirement] OFF
GO
SET IDENTITY_INSERT [dbo].[Trn_LogSheet] ON 
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (1, 4, 1, 3, 1, 12, N'AAB23424', 0, 12, 1, CAST(N'2021-01-23T01:45:18.200' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (2, 3, 1, 1, 1, 13, N'CA2342', 0, 8, 1, CAST(N'2021-01-23T01:45:18.200' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (3, 4, 1, 3, 1, 12, N'AAB23424', 12, 25, 1, CAST(N'2021-01-23T01:47:07.783' AS DateTime), CAST(N'2021-01-23T16:32:30.327' AS DateTime), N'ANYACCESS\ykatambo', NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (4, 3, 1, 1, 1, 13, N'CA2342', 8, 14, 1, CAST(N'2021-01-23T01:47:07.783' AS DateTime), CAST(N'2021-01-23T16:33:14.783' AS DateTime), N'ANYACCESS\ykatambo', NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (5, 4, 1, 3, 1, 12, N'AAB23424', 25, 0, 1, CAST(N'2021-01-23T16:34:16.267' AS DateTime), CAST(N'2021-01-23T18:40:09.830' AS DateTime), N'ANYACCESS\ykatambo', NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (6, 3, 1, 1, 1, 13, N'CA2342', 14, 0, 1, CAST(N'2021-01-23T16:34:16.267' AS DateTime), CAST(N'2021-01-23T17:29:15.697' AS DateTime), N'ANYACCESS\ykatambo', NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (7, 1, 2, 2, 1, 8, N'AAB 3424', 45000, 45500, 1, CAST(N'2021-01-25T15:58:16.267' AS DateTime), CAST(N'2021-01-26T16:57:18.640' AS DateTime), N'ANYACCESS\ykatambo', N'This section of the path covers the objectives found in the Develop for Azure Storage section of the exam guide, including:')
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (8, 1, 2, 2, 1, 9, N'AAB 34244', 0, 200, 1, CAST(N'2021-01-27T16:25:21.297' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (10, 1, 2, 2, 1, 6, N'LP3400', 78000, 0, 0, CAST(N'2021-01-27T16:52:30.520' AS DateTime), NULL, NULL, NULL)
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (11, 1, 2, 2, 1, 11, N'ADD1212', 102000, 102500, 1, CAST(N'2021-01-27T16:56:56.250' AS DateTime), CAST(N'2021-01-27T16:57:25.980' AS DateTime), N'ANYACCESS\ykatambo', N'going out')
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (12, 1, 2, 2, 1, 11, N'ADD1212', 102501, 102800, 1, CAST(N'2021-01-27T16:59:45.683' AS DateTime), CAST(N'2021-01-27T17:00:39.393' AS DateTime), N'ANYACCESS\ykatambo', N'Copyright © 2020 Concept. All rights reserved. Developed by PharezHub.')
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (13, 1, 2, 2, 1, 11, N'ADD1212', 102800, 108201, 1, CAST(N'2021-01-27T17:01:50.567' AS DateTime), CAST(N'2021-01-27T17:10:32.500' AS DateTime), N'ANYACCESS\ykatambo', N'test data by security.')
GO
INSERT [dbo].[Trn_LogSheet] ([ID], [CategoryID], [LogTypeID], [TriggerID], [FrequencyID], [AssetID], [RegNo], [PreviousValue], [CurrentValue], [LogStatus], [CreatedOn], [ModifiedOn], [ModifiedBy], [Comment]) VALUES (14, 1, 2, 2, 1, 1, N'ACZ 676', 1, 0, 0, CAST(N'2021-01-27T17:03:10.523' AS DateTime), NULL, NULL, N'Driver: Lungu Lengwe. Going to collect a parcel for DHL')
GO
SET IDENTITY_INSERT [dbo].[Trn_LogSheet] OFF
GO
SET IDENTITY_INSERT [dbo].[trn_MileageTracker] ON 
GO
INSERT [dbo].[trn_MileageTracker] ([ID], [log_date], [reg_No], [current_mileage], [isCurrent]) VALUES (3, CAST(N'2021-01-07T23:23:14.650' AS DateTime), N'ABC 3456', N'200', 1)
GO
INSERT [dbo].[trn_MileageTracker] ([ID], [log_date], [reg_No], [current_mileage], [isCurrent]) VALUES (4, CAST(N'2021-01-07T23:33:56.397' AS DateTime), N'ABC 3456', N'200', 1)
GO
SET IDENTITY_INSERT [dbo].[trn_MileageTracker] OFF
GO
INSERT [dbo].[Trn_Status] ([ID], [TransStatus]) VALUES (0, N'Pending')
GO
INSERT [dbo].[Trn_Status] ([ID], [TransStatus]) VALUES (1, N'Approved')
GO
INSERT [dbo].[Trn_Status] ([ID], [TransStatus]) VALUES (2, N'Rejected')
GO
