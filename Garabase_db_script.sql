USE [master]
GO
/****** Object:  Database [GarageDb]    Script Date: 2/1/2021 1:08:11 AM ******/
CREATE DATABASE [GarageDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GarageDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GarageDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GarageDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\GarageDb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [GarageDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GarageDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GarageDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GarageDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GarageDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GarageDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GarageDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GarageDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GarageDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GarageDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GarageDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GarageDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GarageDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GarageDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GarageDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GarageDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GarageDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GarageDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GarageDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GarageDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GarageDb] SET RECOVERY FULL 
GO
ALTER DATABASE [GarageDb] SET  MULTI_USER 
GO
ALTER DATABASE [GarageDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GarageDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GarageDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GarageDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GarageDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GarageDb', N'ON'
GO
ALTER DATABASE [GarageDb] SET QUERY_STORE = OFF
GO
USE [GarageDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [GarageDb]
GO
/****** Object:  User [connect]    Script Date: 2/1/2021 1:08:12 AM ******/
CREATE USER [connect] FOR LOGIN [connect] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [connect]
GO
/****** Object:  Table [dbo].[Adm_AssetCategory]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_AssetCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Adm_AssetCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_TriggerType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_TriggerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TriggerName] [varchar](25) NULL,
 CONSTRAINT [PK_Adm_TriggerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trn_LogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trn_LogSheet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[LogTypeID] [int] NULL,
	[TriggerID] [int] NULL,
	[FrequencyID] [int] NULL,
	[AssetID] [int] NULL,
	[RegNo] [varchar](10) NULL,
	[PreviousValue] [float] NULL,
	[CurrentValue] [float] NULL,
	[LogStatus] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Comment] [varchar](255) NULL,
 CONSTRAINT [PK_Trn_LogSheet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_ManageTrigger]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_ManageTrigger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[TriggerID] [int] NULL,
	[TriggerValue] [int] NULL,
	[Threshold] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Adm_MaintenanceTrigger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_SummaryTriggerLog]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  *****
WHERE L.ID = 7

	  * ###[LogTypeID]###
	  *	ID	TriggerName
		1	H - Running Hours
		2	KM - Mileage
		3	F - Fuel Consumption
	  
*
		### [TriggerID] ###
		[Adm_ManageTrigger]
	  */
CREATE VIEW [dbo].[V_SummaryTriggerLog]
AS
SELECT        L.ID, L.CategoryID, C.CategoryName, L.LogTypeID, L.TriggerID, T.TriggerName, L.FrequencyID, L.AssetID, L.RegNo, L.PreviousValue, L.CurrentValue, L.LogStatus, L.CreatedOn, L.ModifiedOn, L.ModifiedBy, L.Comment, 
                         MT.Threshold, MT.TriggerValue
FROM            dbo.Trn_LogSheet AS L INNER JOIN
                         dbo.Adm_AssetCategory AS C ON L.CategoryID = C.ID INNER JOIN
                         dbo.Adm_TriggerType AS T ON L.LogTypeID = T.ID LEFT OUTER JOIN
                         dbo.Adm_ManageTrigger AS MT ON L.CategoryID = MT.CategoryID AND L.TriggerID = MT.TriggerID
GO
/****** Object:  Table [dbo].[Adm_AssetType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_AssetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetType] [varchar](20) NULL,
 CONSTRAINT [PK_Adm_AssetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_CategoryStatutoryLink]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_CategoryStatutoryLink](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[StatutoryID] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_CategoryStatutory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Color]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Color](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[color] [varchar](50) NULL,
	[code] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_Color] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Frequency]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Frequency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FrequencyName] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_Frequency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_FuelType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_FuelType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FuelName] [varchar](20) NULL,
 CONSTRAINT [PK_Adm_FuelType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_InsuranceType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_InsuranceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InsuranceName] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_InsuranceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_LogSheetType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_LogSheetType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LogSheetName] [varchar](150) NULL,
	[LogTrigger] [int] NULL,
 CONSTRAINT [PK_Adm_LogSheetType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_MaintenanceType]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_MaintenanceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaintenanceName] [varchar](30) NULL,
 CONSTRAINT [PK_Adm_MaintenanceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Make]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Make](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Make] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_Make] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_ManageLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_ManageLogSheet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[LogSheetTypeID] [int] NULL,
	[TriggerFrequency] [int] NULL,
	[TriggerTime] [time](7) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_ManageLogSheet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Model]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_Model] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Status]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_Adm_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adm_Statutory]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adm_Statutory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StatutoryName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Adm_Statutory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdmPartsCatalog]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmPartsCatalog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemDescription] [varchar](255) NULL,
	[PartNumber] [varchar](50) NULL,
	[CategoryID] [int] NULL,
	[MakeID] [int] NULL,
	[ModelID] [int] NULL,
	[Comment] [varchar](255) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_AdmPartsCatalog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gen_SystemArea]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gen_SystemArea](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](20) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[PageUrl] [varchar](255) NULL,
	[ImagePath] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[RoleAccessID] [varchar](20) NULL,
 CONSTRAINT [PK_Gen_SystemArea] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hdr_Asset]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hdr_Asset](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetTypeID] [int] NULL,
	[CategoryID] [int] NULL,
	[EngineNo] [varchar](30) NULL,
	[ChassisNo] [varchar](30) NULL,
	[RegNo] [varchar](10) NULL,
	[Make] [varchar](30) NULL,
	[ModelID] [varchar](30) NULL,
	[Year] [int] NULL,
	[EngineCapacity] [varchar](10) NULL,
	[FuelTypeID] [int] NULL,
	[Color] [varchar](20) NULL,
	[YearOfPurchase] [int] NULL,
	[InitialMileage] [float] NULL,
	[CurrentMileage] [float] NULL,
	[MileageLastService] [float] NULL,
	[LastServiceDate] [date] NULL,
	[AssetValue] [float] NULL,
	[TagNo] [varchar](30) NULL,
	[Comment] [varchar](255) NULL,
	[AssetStatus] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[InsuranceExpiryDate] [datetime] NULL,
	[RoadTaxExpiryDate] [datetime] NULL,
	[FitnessExpiryDate] [datetime] NULL,
 CONSTRAINT [PK_Hdr_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hdr_StatutoryRequirement]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hdr_StatutoryRequirement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AssetID] [int] NOT NULL,
	[RegNo] [varchar](25) NULL,
	[ChassisNo] [varchar](25) NULL,
	[StatutoryID] [int] NULL,
	[StatutoryAvailable] [bit] NULL,
	[InsuranceTypeID] [int] NULL,
	[InsuranceCompany] [varchar](50) NULL,
	[AmountPaid] [float] NULL,
	[DateFrom] [date] NULL,
	[DateTo] [date] NULL,
	[FileName] [varchar](255) NULL,
	[DateModified] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Hdr_StatutoryRequirement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trn_MileageTracker]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trn_MileageTracker](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[log_date] [datetime] NULL,
	[reg_No] [varchar](50) NULL,
	[current_mileage] [varchar](50) NULL,
	[isCurrent] [bit] NULL,
 CONSTRAINT [PK_trn_MileageTracker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trn_Status]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trn_Status](
	[ID] [int] NOT NULL,
	[TransStatus] [varchar](10) NULL,
 CONSTRAINT [PK_Trn_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdmPartsCatalog] ADD  CONSTRAINT [DF_AdmPartsCatalog_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Hdr_Asset] ADD  CONSTRAINT [DF_Hdr_Asset_CurrentMileage]  DEFAULT ((0)) FOR [CurrentMileage]
GO
ALTER TABLE [dbo].[Hdr_Asset] ADD  CONSTRAINT [DF_Hdr_Asset_MileageLastService]  DEFAULT ((0)) FOR [MileageLastService]
GO
ALTER TABLE [dbo].[trn_MileageTracker] ADD  CONSTRAINT [DF_trn_MileageTracker_log_date]  DEFAULT (getdate()) FOR [log_date]
GO
/****** Object:  StoredProcedure [dbo].[spAddLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spAddLogSheet]
		@CategoryID	int,
		@CurrentValue float,
		@RegNo varchar(50),
		@Comment varchar(255)


AS
BEGIN

	SET NOCOUNT ON;

	UPDATE Hdr_Asset SET CurrentMileage = @CurrentValue WHERE RegNo = @RegNo

	INSERT INTO [Trn_LogSheet]
	(
      [CategoryID]
      ,[LogTypeID]
      ,[TriggerID]
      ,[FrequencyID]
      ,[AssetID]
      ,[RegNo]
      ,[PreviousValue]
	  ,CurrentValue
      ,[LogStatus]
      ,[CreatedOn]
	  ,Comment

	)

	SELECT A.CategoryID,
	L.LogSheetTypeID,
	L.ID AS TriggerID,
	L.TriggerFrequency,
	A.ID AS AssetID,
	A.RegNo,
	@CurrentValue AS CurrentValue,
	0,
	0 AS [LogStatus],
	GETDATE() AS CreatedOn,
	@Comment AS Comment
	FROM [dbo].[Hdr_Asset] AS A
	INNER JOIN [Adm_ManageLogSheet] AS L ON A.CategoryID = L.CategoryID
	WHERE A.RegNo = @RegNo  AND L.CategoryID IN 
	(
		SELECT CategoryID FROM [Adm_ManageLogSheet] WHERE IsActive = 1  AND CategoryID IN (@CategoryID) AND L.TriggerFrequency = 1
		/** Trigger Frequency of 1 means Daily**/
	)

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAssetById]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAssetById]
	@ID INT

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 SELECT A.[ID]
      ,A.[AssetTypeID]
	  ,T.AssetType
      ,A.[CategoryID]
	  ,C.CategoryName
      ,A.[EngineNo]
      ,A.[ChassisNo]
      ,A.[RegNo]
      ,A.[Make]
	  ,M.Make AS [MakeName]
      ,A.[ModelID]
	  ,MM.ModelName
      ,A.[Year]
      ,A.[EngineCapacity]
      ,A.[FuelTypeID]
	  ,F.FuelName
      ,A.[Color]
      ,A.[YearOfPurchase]
      ,A.[InitialMileage]
      ,A.[CurrentMileage]
      ,A.[AssetValue]
      ,A.[TagNo]
      ,A.[Comment]
      ,A.[AssetStatus] AS StatusID
	  ,S.[status] AS [Status]
      ,A.[CreatedOn]
      ,A.[CreatedBy]
      ,A.[InsuranceExpiryDate]
      ,A.[RoadTaxExpiryDate]
      ,A.[FitnessExpiryDate]
  FROM [GarageDb].[dbo].[Hdr_Asset] AS A
  INNER JOIN Adm_AssetType AS T ON A.AssetTypeID = T.ID
  INNER JOIN Adm_AssetCategory AS C ON A.CategoryID = C.ID
  INNER JOIN Adm_Make AS M ON A.Make = M.ID
  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
  INNER JOIN Adm_FuelType AS F ON A.FuelTypeID = F.ID
  INNER JOIN Adm_Status AS S ON A.AssetStatus = S.ID
  WHERE A.ID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[spGetAssetCatelogue]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAssetCatelogue]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 SELECT A.[ID]
      ,A.[AssetTypeID]
	  ,T.AssetType
      ,A.[CategoryID]
	  ,C.CategoryName
      ,A.[EngineNo]
      ,A.[ChassisNo]
      ,A.[RegNo]
      ,A.[Make]
	  ,M.Make AS [MakeName]
      ,A.[ModelID]
	  ,MM.ModelName
      ,A.[Year]
      ,A.[EngineCapacity]
      ,A.[FuelTypeID]
	  ,F.FuelName
      ,A.[Color]
      ,A.[YearOfPurchase]
      ,A.[InitialMileage]
      ,A.[CurrentMileage]
      ,A.[AssetValue]
      ,A.[TagNo]
      ,A.[Comment]
      ,A.[AssetStatus] AS StatusID
	  ,S.[status] AS [Status]
      ,A.[CreatedOn]
      ,A.[CreatedBy]
      ,A.[InsuranceExpiryDate]
      ,A.[RoadTaxExpiryDate]
      ,A.[FitnessExpiryDate]
	  ,GETDATE() AS LoggedOn
  FROM [GarageDb].[dbo].[Hdr_Asset] AS A
  INNER JOIN Adm_AssetType AS T ON A.AssetTypeID = T.ID
  INNER JOIN Adm_AssetCategory AS C ON A.CategoryID = C.ID
  INNER JOIN Adm_Make AS M ON A.Make = M.ID
  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
  INNER JOIN Adm_FuelType AS F ON A.FuelTypeID = F.ID
  INNER JOIN Adm_Status AS S ON A.AssetStatus = S.ID


END
GO
/****** Object:  StoredProcedure [dbo].[spGetLogSheetById]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetLogSheetById]
	@ID INT

AS
BEGIN

	SET NOCOUNT ON;

	SELECT L.[ID]
      ,L.[CategoryID]
	  ,C.CategoryName
      ,L.[LogTypeID]
	  ,T.TriggerName AS LogType
      ,L.[TriggerID] AS AdmLogSheetID
      ,L.[FrequencyID]
	  ,F.FrequencyName
      ,L.[AssetID]
      ,L.[RegNo]
	  ,M.Make
	  ,MM.ModelName
      ,L.[PreviousValue]
      ,L.[CurrentValue]
      ,L.[LogStatus]
	  ,S.TransStatus
      ,L.[CreatedOn]
      ,ISNULL(L.[ModifiedOn],'') AS [ModifiedOn]
      ,ISNULL(L.[ModifiedBy],'') AS [ModifiedBy]
	  ,ISNULL(L.Comment,'') AS Comment
  FROM [GarageDb].[dbo].[Trn_LogSheet] AS L
  INNER JOIN Adm_Frequency AS F ON L.FrequencyID = F.ID
  INNER JOIN [Adm_TriggerType] AS T ON L.LogTypeID = T.ID
  INNER JOIN Adm_AssetCategory AS C ON L.CategoryID = C.ID
  INNER JOIN Hdr_Asset AS A ON L.AssetID = A.ID AND L.RegNo = L.RegNo
  INNER JOIN Adm_Make AS M ON A.Make = M.ID
  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
  INNER JOIN Trn_Status AS S ON L.LogStatus = S.ID
  WHERE L.LogStatus = 0 AND L.ID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[spGetLogSheetList]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetLogSheetList]
 @statusID int

AS
BEGIN

	SET NOCOUNT ON;

	IF @statusID = 0
	BEGIN
		SELECT L.[ID]
		  ,L.[CategoryID]
		  ,C.CategoryName
		  ,L.[LogTypeID]
		  ,T.TriggerName AS LogType
		  ,L.[TriggerID] AS AdmLogSheetID
		  ,L.[FrequencyID]
		  ,F.FrequencyName
		  ,L.[AssetID]
		  ,L.[RegNo]
		  ,M.Make
		  ,MM.ModelName
		  ,L.[PreviousValue]
		  ,L.[CurrentValue]
		  ,L.[LogStatus]
		  ,S.TransStatus
		  ,L.[CreatedOn]
		  ,ISNULL(L.[ModifiedOn],'') AS [ModifiedOn]
		  ,ISNULL(L.[ModifiedBy],'') AS [ModifiedBy]
		  ,ISNULL(L.Comment,'') AS Comment
	  FROM [GarageDb].[dbo].[Trn_LogSheet] AS L
	  INNER JOIN Adm_Frequency AS F ON L.FrequencyID = F.ID
	  INNER JOIN [Adm_TriggerType] AS T ON L.LogTypeID = T.ID
	  INNER JOIN Adm_AssetCategory AS C ON L.CategoryID = C.ID
	  INNER JOIN Hdr_Asset AS A ON L.AssetID = A.ID AND L.RegNo = L.RegNo
	  INNER JOIN Adm_Make AS M ON A.Make = M.ID
	  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
	  INNER JOIN Trn_Status AS S ON L.LogStatus = S.ID
	  WHERE L.LogStatus = 0
	END
	ELSE IF @statusID = 1
	BEGIN
		SELECT L.[ID]
		  ,L.[CategoryID]
		  ,C.CategoryName
		  ,L.[LogTypeID]
		  ,T.TriggerName AS LogType
		  ,L.[TriggerID] AS AdmLogSheetID
		  ,L.[FrequencyID]
		  ,F.FrequencyName
		  ,L.[AssetID]
		  ,L.[RegNo]
		  ,M.Make
		  ,MM.ModelName
		  ,L.[PreviousValue]
		  ,L.[CurrentValue]
		  ,L.[LogStatus]
		  ,S.TransStatus
		  ,L.[CreatedOn]
		  ,ISNULL(L.[ModifiedOn],'') AS [ModifiedOn]
		  ,ISNULL(L.[ModifiedBy],'') AS [ModifiedBy]
		  ,ISNULL(L.Comment,'') AS Comment
	  FROM [GarageDb].[dbo].[Trn_LogSheet] AS L
	  INNER JOIN Adm_Frequency AS F ON L.FrequencyID = F.ID
	  INNER JOIN [Adm_TriggerType] AS T ON L.LogTypeID = T.ID
	  INNER JOIN Adm_AssetCategory AS C ON L.CategoryID = C.ID
	  INNER JOIN Hdr_Asset AS A ON L.AssetID = A.ID AND L.RegNo = L.RegNo
	  INNER JOIN Adm_Make AS M ON A.Make = M.ID
	  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
	  INNER JOIN Trn_Status AS S ON L.LogStatus = S.ID
	  WHERE L.LogStatus = 1
	END

END
GO
/****** Object:  StoredProcedure [dbo].[spGetLogSheetSetup]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetLogSheetSetup]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT L.[ID]
      ,L.[CategoryID]
	  ,C.CategoryName
      ,L.[LogSheetTypeID]
	  ,T.TriggerName
      ,L.[TriggerFrequency]
	  ,F.FrequencyName
      ,L.[TriggerTime]
      ,L.[IsActive]
      ,L.[CreatedOn]
      ,L.[CreatedBy]
      ,L.[ModifiedOn]
      ,L.[ModifiedBy]
  FROM [GarageDb].[dbo].[Adm_ManageLogSheet] AS L
  LEFT JOIN Adm_AssetCategory AS C ON L.CategoryID = C.ID
  LEFT JOIN Adm_TriggerType AS T ON L.LogSheetTypeID = T.ID
  LEFT JOIN [Adm_Frequency] AS F ON L.TriggerFrequency = F.ID

END
GO
/****** Object:  StoredProcedure [dbo].[spGetMaintenanceTriggerList]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetMaintenanceTriggerList]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT T.[ID]
		  ,T.[CategoryID]
		  ,C.CategoryName
		  ,T.[TriggerID]
		  ,TP.TriggerName
		  ,T.[TriggerValue]
		  ,T.[Threshold]
		  ,T.[IsActive]
		  ,T.[CreatedBy]
		  ,T.[CreatedOn]
		  ,T.[ModifiedBy]
		  ,T.[ModifiedOn]
	  FROM [GarageDb].[dbo].[Adm_ManageTrigger] AS T
	  INNER JOIN Adm_AssetCategory AS C ON T.CategoryID = C.ID
	  INNER JOIN Adm_TriggerType AS TP ON T.TriggerID = TP.ID

END
GO
/****** Object:  StoredProcedure [dbo].[spGetPartsCatalog]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetPartsCatalog]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT P.[ID]
      ,P.[ItemDescription]
      ,P.[PartNumber]
      ,P.[CategoryID]
	  ,C.CategoryName
      ,P.[MakeID]
	  ,M.Make
      ,P.[ModelID]
	  ,MM.ModelName
      ,P.[Comment]
  FROM [GarageDb].[dbo].[AdmPartsCatalog] AS P
  INNER JOIN Adm_AssetCategory AS C ON P.CategoryID = C.ID
  INNER JOIN Adm_Make AS M ON P.MakeID = M.ID
  INNER JOIN Adm_Model AS MM ON P.ModelID = MM.ID
  WHERE P.IsDeleted = 0

END
GO
/****** Object:  StoredProcedure [dbo].[spGetStatutoryByCategoryId]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetStatutoryByCategoryId]
	@CategoryID int

AS
BEGIN

	SET NOCOUNT ON;

	SELECT L.[ID]
      ,L.[CategoryID]
	  ,C.CategoryName
      ,L.[StatutoryID]
	  ,S.StatutoryName
      ,L.[CreatedOn]
      ,L.[CreatedBy]
      ,L.[ModifiedOn]
      ,L.[ModifiedBy]
  FROM [GarageDb].[dbo].[Adm_CategoryStatutoryLink] AS L
  LEFT JOIN Adm_AssetCategory AS C ON L.CategoryID = C.ID
  LEFT JOIN Adm_Statutory AS S ON L.StatutoryID = S.ID
  WHERE L.CategoryID = @CategoryID

END
GO
/****** Object:  StoredProcedure [dbo].[spJobDailyLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spJobDailyLogSheet]

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [Trn_LogSheet]
	(
      [CategoryID]
      ,[LogTypeID]
      ,[TriggerID]
      ,[FrequencyID]
      ,[AssetID]
      ,[RegNo]
      ,[PreviousValue]
	  ,CurrentValue
      ,[LogStatus]
      ,[CreatedOn]

	)
  
	SELECT A.CategoryID,
	L.LogSheetTypeID,
	L.ID AS TriggerID,
	L.TriggerFrequency,
	A.ID AS AssetID,
	A.RegNo,
	ISNULL((SELECT TOP 1 L.CurrentValue FROM [Trn_LogSheet] AS L WHERE L.AssetID =A.ID ORDER BY ID DESC),0) AS PreviousValue,
	'' AS CurrentValue,
	0 AS [LogStatus],
	GETDATE() AS CreatedOn
	FROM [dbo].[Hdr_Asset] AS A
	INNER JOIN [Adm_ManageLogSheet] AS L ON A.CategoryID = L.CategoryID
	WHERE L.CategoryID IN 
	(
		SELECT CategoryID FROM [Adm_ManageLogSheet] WHERE IsActive = 1  AND CategoryID NOT IN (1) AND L.TriggerFrequency = 1
		/** Trigger Frequency of 1 means Daily**/
	)

END
GO
/****** Object:  StoredProcedure [dbo].[spJobMonthlyLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spJobMonthlyLogSheet]

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [Trn_LogSheet]
	(
      [CategoryID]
      ,[LogTypeID]
      ,[TriggerID]
      ,[FrequencyID]
      ,[AssetID]
      ,[RegNo]
      ,[PreviousValue]
      ,[LogStatus]
      ,[CreatedOn]

	)
  
	SELECT A.CategoryID,
	L.LogSheetTypeID,
	L.ID AS TriggerID,
	L.TriggerFrequency,
	A.ID AS AssetID,
	A.RegNo,
	ISNULL((SELECT TOP 1 L.CurrentValue FROM [Trn_LogSheet] AS L WHERE L.AssetID =A.ID		ORDER BY ID DESC),0) AS PreviousValue,
	0 AS [LogStatus],
	GETDATE() AS CreatedOn
	FROM [dbo].[Hdr_Asset] AS A
	INNER JOIN [Adm_ManageLogSheet] AS L ON A.CategoryID = L.CategoryID
	WHERE L.CategoryID IN 
	(
		SELECT CategoryID FROM [Adm_ManageLogSheet] WHERE IsActive = 1 AND L.TriggerFrequency = 3 AND CategoryID NOT IN (1)
		/** Trigger Frequency of 3 means Monthly**/
	)

END
GO
/****** Object:  StoredProcedure [dbo].[spJobWeeklyLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spJobWeeklyLogSheet]

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [Trn_LogSheet]
	(
      [CategoryID]
      ,[LogTypeID]
      ,[TriggerID]
      ,[FrequencyID]
      ,[AssetID]
      ,[RegNo]
      ,[PreviousValue]
      ,[LogStatus]
      ,[CreatedOn]

	)
  
	SELECT A.CategoryID,
	L.LogSheetTypeID,
	L.ID AS TriggerID,
	L.TriggerFrequency,
	A.ID AS AssetID,
	A.RegNo,
	ISNULL((SELECT TOP 1 L.CurrentValue FROM [Trn_LogSheet] AS L WHERE L.AssetID =A.ID		ORDER BY ID DESC),0) AS PreviousValue,
	0 AS [LogStatus],
	GETDATE() AS CreatedOn
	FROM [dbo].[Hdr_Asset] AS A
	INNER JOIN [Adm_ManageLogSheet] AS L ON A.CategoryID = L.CategoryID
	WHERE L.CategoryID IN 
	(
		SELECT CategoryID FROM [Adm_ManageLogSheet] WHERE IsActive = 1 AND L.TriggerFrequency = 2 AND CategoryID NOT IN (1)
		/** Trigger Frequency of 2 means Weekly**/
	)

END
GO
/****** Object:  StoredProcedure [dbo].[spOffSiteUtilization]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spOffSiteUtilization]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	/*OffSite Utilization*/
	 SELECT LL.[ID]
		  ,A.[AssetTypeID]
		  ,T.AssetType
		  ,A.[CategoryID]
		  ,C.CategoryName
		  ,A.[EngineNo]
		  ,A.[ChassisNo]
		  ,A.[RegNo]
		  ,A.[Make]
		  ,M.Make AS [MakeName]
		  ,A.[ModelID]
		  ,MM.ModelName
		  ,A.[Year]
		  ,A.[EngineCapacity]
		  ,A.[FuelTypeID]
		  ,F.FuelName
		  ,A.[Color]
		  ,A.[YearOfPurchase]
		  ,A.[InitialMileage]
		  ,ISNULL(A.[CurrentMileage], 0.00) AS [CurrentMileage]
		  ,A.[AssetValue]
		  ,A.[TagNo]
		  ,A.[Comment]
		  ,A.[AssetStatus] AS StatusID
		  ,S.[status] AS [Status]
		  ,A.[CreatedOn]
		  ,A.[CreatedBy]
		  ,A.[InsuranceExpiryDate]
		  ,A.[RoadTaxExpiryDate]
		  ,A.[FitnessExpiryDate]
		  ,LL.CreatedOn AS LoggedOn
	  FROM [GarageDb].[dbo].[Hdr_Asset] AS A
	  INNER JOIN Adm_AssetType AS T ON A.AssetTypeID = T.ID
	  INNER JOIN Adm_AssetCategory AS C ON A.CategoryID = C.ID
	  INNER JOIN Adm_Make AS M ON A.Make = M.ID
	  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
	  INNER JOIN Adm_FuelType AS F ON A.FuelTypeID = F.ID
	  INNER JOIN Adm_Status AS S ON A.AssetStatus = S.ID
	  LEFT JOIN [Trn_LogSheet] AS LL ON A.RegNo = LL.RegNo

	  WHERE LL.LogStatus = 0 AND A.RegNo IN 
	  (
		SELECT DISTINCT [RegNo]
		FROM [GarageDb].[dbo].[Trn_LogSheet]
		WHERE [LogTypeID] IN (2) AND CategoryID IN (1) AND LogStatus = 0
	  )

	  /*
	  * [LogTypeID] Naming
	  *	ID	TriggerName
		1	H - Running Hours
		2	KM - Mileage
		3	F - Fuel Consumption
	  */
  
END
GO
/****** Object:  StoredProcedure [dbo].[spOnSiteUtilization]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spOnSiteUtilization]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	/*On-Site Utilization*/
	 SELECT A.[ID]
		  ,A.[AssetTypeID]
		  ,T.AssetType
		  ,A.[CategoryID]
		  ,C.CategoryName
		  ,A.[EngineNo]
		  ,A.[ChassisNo]
		  ,A.[RegNo]
		  ,A.[Make]
		  ,M.Make AS [MakeName]
		  ,A.[ModelID]
		  ,MM.ModelName
		  ,A.[Year]
		  ,A.[EngineCapacity]
		  ,A.[FuelTypeID]
		  ,F.FuelName
		  ,A.[Color]
		  ,A.[YearOfPurchase]
		  ,A.[InitialMileage]
		  ,ISNULL(A.[CurrentMileage], 0.00) AS [CurrentMileage]
		  ,A.[AssetValue]
		  ,A.[TagNo]
		  ,A.[Comment]
		  ,A.[AssetStatus] AS StatusID
		  ,S.[status] AS [Status]
		  ,A.[CreatedOn]
		  ,A.[CreatedBy]
		  ,A.[InsuranceExpiryDate]
		  ,A.[RoadTaxExpiryDate]
		  ,A.[FitnessExpiryDate]
		  ,GETDATE() AS LoggedOn
	  FROM [GarageDb].[dbo].[Hdr_Asset] AS A
	  INNER JOIN Adm_AssetType AS T ON A.AssetTypeID = T.ID
	  INNER JOIN Adm_AssetCategory AS C ON A.CategoryID = C.ID
	  INNER JOIN Adm_Make AS M ON A.Make = M.ID
	  INNER JOIN Adm_Model AS MM ON A.ModelID = MM.ID
	  INNER JOIN Adm_FuelType AS F ON A.FuelTypeID = F.ID
	  INNER JOIN Adm_Status AS S ON A.AssetStatus = S.ID
	  WHERE A.CategoryID NOT IN (2,3,4) AND  A.RegNo NOT IN 
	  (
		SELECT DISTINCT [RegNo]
		FROM [GarageDb].[dbo].[Trn_LogSheet]
		WHERE [LogTypeID] IN (2) AND CategoryID IN (1) AND LogStatus = 0
	  )

	  /*
	  * [LogTypeID] Naming
	  *	ID	TriggerName
		1	H - Running Hours
		2	KM - Mileage
		3	F - Fuel Consumption
	  */
  
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateLogSheet]    Script Date: 2/1/2021 1:08:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateLogSheet]
		@ID	int,
		@CurrentValue float,
		@LogStatus int,
		@ModifiedOn	datetime,
		@ModifiedBy	varchar(50),
		@LogTypeID int,
		@Comment	varchar(255)

AS
BEGIN

	SET NOCOUNT ON;

	UPDATE H SET H.CurrentMileage = @CurrentValue
		FROM [Trn_LogSheet] AS L
		INNER JOIN Hdr_Asset AS H ON H.RegNo = L.RegNo
		WHERE L.ID = @ID

	  UPDATE [Trn_LogSheet] SET CurrentValue = @CurrentValue,
							[LogStatus] = @LogStatus,
							[ModifiedOn] = @ModifiedOn,
							[ModifiedBy] = @ModifiedBy,
							[Comment] = @Comment

						WHERE ID = @ID


END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "L"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "T"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 102
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MT"
            Begin Extent = 
               Top = 6
               Left = 662
               Bottom = 136
               Right = 832
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_SummaryTriggerLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_SummaryTriggerLog'
GO
USE [master]
GO
ALTER DATABASE [GarageDb] SET  READ_WRITE 
GO
