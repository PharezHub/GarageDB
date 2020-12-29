USE [master]
GO
/****** Object:  Database [GarageDb]    Script Date: 12/29/2020 12:07:28 PM ******/
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
/****** Object:  User [connect]    Script Date: 12/29/2020 12:07:28 PM ******/
CREATE USER [connect] FOR LOGIN [connect] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [connect]
GO
/****** Object:  Table [dbo].[Adm_AssetCategory]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_AssetType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_CategoryStatutoryLink]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_Frequency]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_FuelType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_InsuranceType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_LogSheetType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_MaintenanceType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_ManageLogSheet]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_ManageTrigger]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_Statutory]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Adm_TriggerType]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Hdr_Asset]    Script Date: 12/29/2020 12:07:29 PM ******/
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
	[Model] [varchar](30) NULL,
	[Year] [int] NULL,
	[EngineCapacity] [varchar](10) NULL,
	[FuelTypeID] [int] NULL,
	[Color] [varchar](20) NULL,
	[YearOfPurchase] [int] NULL,
	[InitialMileage] [float] NULL,
	[CurrentMileage] [float] NULL,
	[AssetValue] [float] NULL,
	[TagNo] [varchar](30) NULL,
	[Comment] [varchar](255) NULL,
	[AssetStatus] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[InsuranceExpiryDate] [date] NULL,
	[RoadTaxExpiryDate] [date] NULL,
	[FitnessExpiryDate] [date] NULL,
 CONSTRAINT [PK_Hdr_Asset] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hdr_StatutoryRequirement]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  Table [dbo].[Trn_LogSheet]    Script Date: 12/29/2020 12:07:29 PM ******/
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
 CONSTRAINT [PK_Trn_LogSheet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[spGetMaintenanceTriggerList]    Script Date: 12/29/2020 12:07:29 PM ******/
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
/****** Object:  StoredProcedure [dbo].[spGetStatutoryByCategoryId]    Script Date: 12/29/2020 12:07:29 PM ******/
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
USE [master]
GO
ALTER DATABASE [GarageDb] SET  READ_WRITE 
GO


