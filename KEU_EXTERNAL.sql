USE [master]
GO
/****** Object:  Database [KEU_EXTERNAL]    Script Date: 11/20/2018 5:00:21 PM ******/
CREATE DATABASE [KEU_EXTERNAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KEU_EXTERNAL', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KEU_EXTERNAL.mdf' , SIZE = 716800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'KEU_EXTERNAL_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KEU_EXTERNAL_log.ldf' , SIZE = 102400KB , MAXSIZE = 2048GB , FILEGROWTH = 51200KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KEU_EXTERNAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KEU_EXTERNAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_EXTERNAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KEU_EXTERNAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KEU_EXTERNAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KEU_EXTERNAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KEU_EXTERNAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KEU_EXTERNAL] SET  MULTI_USER 
GO
ALTER DATABASE [KEU_EXTERNAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KEU_EXTERNAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KEU_EXTERNAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KEU_EXTERNAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KEU_EXTERNAL', N'ON'
GO
USE [KEU_EXTERNAL]
GO
/****** Object:  User [US\USCUXB73]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\USCUXB73] FOR LOGIN [US\USCUXB73] WITH DEFAULT_SCHEMA=[US\USCUXB73]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE9]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE9] FOR LOGIN [US\SQL_DS_HYPERCARE9]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE2]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE2] FOR LOGIN [US\SQL_DS_HYPERCARE2]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:00:22 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE2]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKRRD01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPLG01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKPCL01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKNXA19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKMEW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKLCH06]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKXW01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKKFS02]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJXS19]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJTB03]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_USKJAK14]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [BW]    Script Date: 11/20/2018 5:00:23 PM ******/
CREATE SCHEMA [BW]
GO
/****** Object:  Schema [ECC]    Script Date: 11/20/2018 5:00:23 PM ******/
CREATE SCHEMA [ECC]
GO
/****** Object:  Schema [US\USCUXB73]    Script Date: 11/20/2018 5:00:23 PM ******/
CREATE SCHEMA [US\USCUXB73]
GO
/****** Object:  Schema [USER_SC]    Script Date: 11/20/2018 5:00:23 PM ******/
CREATE SCHEMA [USER_SC]
GO
/****** Object:  Table [BW].[ACTLS]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[ACTLS](
	[Sales Org Code] [int] NULL,
	[Sales Organization] [varchar](50) NULL,
	[Plan To] [varchar](6) NULL,
	[SKU Number] [varchar](18) NULL,
	[WEEK] [int] NULL,
	[AGI_DT] [int] NULL,
	[AGI Week] [varchar](7) NULL,
	[FISC_PD] [int] NULL,
	[Order Qty (CS)] [decimal](10, 3) NULL,
	[Shipped Qty (CS)] [decimal](10, 3) NULL,
	[RESTATES] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[ACTLS_DLY]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[ACTLS_DLY](
	[Sales Org Code] [int] NULL,
	[Sales Organization] [varchar](50) NULL,
	[Plan To] [varchar](6) NULL,
	[SKU Number] [varchar](18) NULL,
	[AGI Week] [varchar](7) NULL,
	[FISC_PD] [int] NULL,
	[AGI_DT] [varchar](255) NULL,
	[Order Qty (CS)] [decimal](10, 3) NULL,
	[Shipped Qty (CS)] [decimal](10, 3) NULL,
	[RESTATES] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[APO_FCST]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[APO_FCST](
	[SALESORG] [varchar](50) NULL,
	[SKU_NUMBER] [varchar](20) NULL,
	[FCST_WEEK] [varchar](7) NULL,
	[AGI_WEEK] [varchar](7) NULL,
	[FISC_WK] [int] NULL,
	[FISC_YR] [int] NULL,
	[FCSTWK] [int] NULL,
	[FCSTYR] [int] NULL,
	[APO_CS] [decimal](10, 3) NULL,
	[FICSPD] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[CFR_E2E]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[CFR_E2E](
	[Sales Organization] [varchar](50) NULL,
	[Plan To] [varchar](6) NULL,
	[MATERIAL] [varchar](18) NULL,
	[AGI_WK] [varchar](7) NULL,
	[FISCWK] [int] NULL,
	[FISC_PD] [int] NULL,
	[FISCYR] [int] NULL,
	[Sales document] [varchar](20) NULL,
	[Threshold Flag] [varchar](10) NULL,
	[Root Cause Level 1] [varchar](100) NULL,
	[RC Comment 1] [varchar](100) NULL,
	[Root Cause Level 2] [varchar](100) NULL,
	[RC Comment 2] [varchar](100) NULL,
	[Root Cause Level 3] [varchar](100) NULL,
	[Missed Volume] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[KSOP_FCST]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[KSOP_FCST](
	[SALESORG] [varchar](100) NULL,
	[SKU_NUMBER] [varchar](15) NULL,
	[KSOP_MONTH] [varchar](10) NULL,
	[AGI_WEEK] [varchar](10) NULL,
	[FISCWK] [int] NULL,
	[FISCYR] [int] NULL,
	[KSOPMO] [int] NULL,
	[KSOPYR] [int] NULL,
	[CONSENSUS_CS] [decimal](10, 3) NULL,
	[CONSENSUS_KG] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[PA_SALES]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[PA_SALES](
	[SALESORG] [varchar](50) NULL,
	[PLAN_TO] [varchar](6) NULL,
	[SKU_NUMBER] [varchar](18) NULL,
	[AGI_WEEK_SRC] [varchar](7) NULL,
	[PA_CS] [decimal](10, 3) NULL,
	[PA_KG] [decimal](10, 3) NULL,
	[FISC_PD] [varchar](20) NULL,
	[FISC_MN] [int] NULL,
	[FISC_YR] [int] NULL,
	[AGI_WK_NO] [int] NULL,
	[WEEK_NO] [varchar](50) NULL,
	[YEAR_NO] [int] NULL,
	[AGI_WEEK] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [BW].[PA_SALES_RUSSIA]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [BW].[PA_SALES_RUSSIA](
	[SALESORG] [varchar](50) NULL,
	[SKU_NUMBER] [varchar](18) NULL,
	[AGIWEEK] [varchar](7) NULL,
	[FISCWK] [int] NULL,
	[FISCYR] [int] NULL,
	[PA_CS] [decimal](10, 3) NULL,
	[PA_KG] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLUSTER_HRCHY_E2E]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLUSTER_HRCHY_E2E](
	[SALESORG] [varchar](20) NULL,
	[CLUSTER] [varchar](15) NULL,
	[EU_INCLUDE] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSL_CLUSTER_INFO]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSL_CLUSTER_INFO](
	[SALESORG] [int] NULL,
	[REGION_NAME] [varchar](150) NULL,
	[CLUSTER_NAME] [varchar](100) NULL,
	[ORG_NAME] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUST_HRCHY_E2E]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUST_HRCHY_E2E](
	[HL6] [varchar](6) NULL,
	[HL6_NAME] [varchar](40) NULL,
	[SALES_ORG_CODE] [varchar](4) NULL,
	[SALESORG] [varchar](50) NULL,
	[HL0] [varchar](6) NULL,
	[HL0_NAME] [varchar](25) NULL,
	[HL1] [varchar](6) NULL,
	[HL1_NAME] [varchar](35) NULL,
	[HL2] [varchar](6) NULL,
	[HL2_NAME] [varchar](35) NULL,
	[H L3] [varchar](6) NULL,
	[HL3_NAME] [varchar](35) NULL,
	[H L4] [varchar](6) NULL,
	[HL4_NAME] [varchar](35) NULL,
	[H L5] [varchar](6) NULL,
	[HL5_NAME] [varchar](35) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_CUST_DATA]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_CUST_DATA](
	[CUST] [varchar](30) NULL,
	[PROMTN_PLNNG_L8] [varchar](30) NULL,
	[PROMTN_PLNNG_L7] [varchar](30) NULL,
	[PLN_TO] [varchar](30) NULL,
	[CUST_AGGRD] [varchar](30) NULL,
	[BUYNG_GRP] [varchar](30) NULL,
	[NATL_PLNNG] [varchar](30) NULL,
	[NAT_BUYNG_GRP] [varchar](30) NULL,
	[CHNL_RPTG] [varchar](30) NULL,
	[RPTG_SALES_ORG_CUST_HIER_LVL_0] [varchar](30) NULL,
	[CUST_SUB_SUB_CHNL] [varchar](30) NULL,
	[CUST_SUB_CHNL] [varchar](30) NULL,
	[CUST_CHNL] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_CUST_TXT_DATA]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_CUST_TXT_DATA](
	[CUST] [varchar](30) NULL,
	[MEDIUM_DESC] [varchar](28) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_INVC_OPN_ORDR]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_INVC_OPN_ORDR](
	[SALES_ORG] [varchar](40) NULL,
	[SOLD_TO_PARTY] [varchar](30) NULL,
	[MATRL] [varchar](30) NULL,
	[GSV_DST] [decimal](18, 2) NULL,
	[GSV_DST_DOL] [decimal](18, 2) NULL,
	[GSV_DST_EURO] [decimal](18, 2) NULL,
	[NET_KGS] [decimal](18, 3) NULL,
	[STATUS] [varchar](20) NULL,
	[FISC_PD] [varchar](7) NULL,
	[CAL_DY] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_INVC_ORDR]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_INVC_ORDR](
	[FISC_PD] [varchar](7) NULL,
	[CAL_DY] [varchar](8) NULL,
	[SALES_ORG] [varchar](40) NULL,
	[SOLD_TO] [varchar](30) NULL,
	[MATRL] [varchar](30) NULL,
	[DT] [varchar](8) NULL,
	[GSV_DST] [decimal](18, 2) NULL,
	[GSV_ITALY] [decimal](18, 2) NULL,
	[NET_KGS] [decimal](18, 3) NULL,
	[UNIT_NET_KGS] [decimal](18, 2) NULL,
	[EURO_STD_GSV_EXCL_ITALY] [decimal](18, 2) NULL,
	[GSV_DST_DOL] [decimal](18, 2) NULL,
	[GSV_DST_EURO] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_MATRL_DATA]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_MATRL_DATA](
	[MATRL] [varchar](30) NULL,
	[MATRL_TXT] [varchar](40) NULL,
	[BRAND] [varchar](40) NULL,
	[BRAND_TXT] [varchar](26) NULL,
	[CATG] [varchar](40) NULL,
	[CATG_TXT] [varchar](40) NULL,
	[ALTN_CATG] [varchar](40) NULL,
	[ALTN_CATG_TXT] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_OPN_ORDR]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_OPN_ORDR](
	[FISC_PD] [varchar](7) NULL,
	[CAL_DY] [varchar](40) NULL,
	[SALES_ORG] [varchar](40) NULL,
	[SOLD_TO] [varchar](50) NULL,
	[MATRL] [varchar](30) NULL,
	[DT] [varchar](8) NULL,
	[GSV_EURO] [decimal](18, 2) NULL,
	[GSV_USD] [decimal](18, 2) NULL,
	[GSV] [decimal](18, 2) NULL,
	[KGS] [decimal](18, 3) NULL,
	[NET_TONS] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DST_OPN_ORDR_DT]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DST_OPN_ORDR_DT](
	[DT] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LKP_APPL_HIER]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LKP_APPL_HIER](
	[APPL_NM] [varchar](40) NULL,
	[SETCLASS] [varchar](4) NULL,
	[SUBCLASS] [varchar](12) NULL,
	[SETNAME] [varchar](24) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LSE_E2E]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LSE_E2E](
	[BU] [varchar](15) NULL,
	[CATEGORY] [varchar](100) NULL,
	[SALESORG] [varchar](100) NULL,
	[FISCYR] [varchar](4) NULL,
	[FISCPER] [varchar](2) NULL,
	[LSE] [float] NULL,
	[CLUSTER] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRL_MSTR]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATRL_MSTR](
	[MATRL_NBR] [varchar](18) NULL,
	[MATRL_DESC] [varchar](40) NULL,
	[BRAND] [varchar](10) NULL,
	[BRAND_DESC] [varchar](40) NULL,
	[CATG] [varchar](5) NULL,
	[CATG_DESC] [varchar](40) NULL,
	[ALTN_CATG] [varchar](40) NULL,
	[ALTN_CATG_DESC] [varchar](40) NULL,
	[GTIN] [varchar](8000) NULL,
	[NET_WGT] [decimal](13, 3) NULL,
	[DFU] [varchar](10) NULL,
	[FLAVOR] [varchar](30) NULL,
	[PKG_SZ] [varchar](30) NULL,
	[PACK_TYP_USE] [varchar](30) NULL,
	[FD_FRM] [varchar](30) NULL,
	[CURRENT_INSCOPE] [varchar](10) NULL,
	[SRC] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAS_MTRL_INSCOPE]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAS_MTRL_INSCOPE](
	[DFU] [varchar](10) NULL,
	[CURRENT_INSCOPE] [varchar](255) NULL,
	[BRAND_DESC] [varchar](255) NULL,
	[BRAND_SUB] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ECC].[FIN_COST_CONTROL]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ECC].[FIN_COST_CONTROL](
	[PROJECT] [varchar](24) NULL,
	[Project Group] [varchar](30) NULL,
	[PLANT] [varchar](4) NULL,
	[Plant Description] [varchar](30) NULL,
	[Project Manager] [varchar](25) NULL,
	[WBS] [varchar](24) NULL,
	[ACTIVITY] [varchar](5) NULL,
	[Material Component] [varchar](5) NULL,
	[DESCRIPTION] [varchar](40) NULL,
	[Vendor Name] [varchar](35) NULL,
	[PO/Req. Number] [varchar](10) NULL,
	[Line Number] [int] NULL,
	[Expected Delivery] [date] NULL,
	[APPROPRIATED] [decimal](11, 2) NULL,
	[Working Budget] [decimal](11, 2) NULL,
	[Open Commitments] [decimal](11, 2) NULL,
	[Spending Current Period] [decimal](11, 2) NULL,
	[Spending Current Year] [decimal](11, 2) NULL,
	[Spending All Years] [decimal](11, 2) NULL,
	[Exposure (Spending + Open Commit)] [decimal](11, 2) NULL,
	[Working Budget Remaining] [decimal](11, 2) NULL,
	[System Status] [varchar](4) NULL,
	[User Status] [varchar](4) NULL,
	[Current Projected Final Cost] [decimal](11, 2) NULL,
	[WBS Type] [int] NULL,
	[Extraction Date] [date] NULL,
	[SOURCE_SYSTEM] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[CATG_BU_MAP]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[CATG_BU_MAP](
	[CATEGORY] [varchar](50) NULL,
	[BU] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[CLUSTER_HRCHY]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[CLUSTER_HRCHY](
	[SALESORG] [varchar](20) NULL,
	[CLUSTER] [varchar](15) NULL,
	[EU_INCLUDE] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[CUST_PENALTIES_PLAN]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[CUST_PENALTIES_PLAN](
	[SALES_ORG] [varchar](50) NULL,
	[PLAN_TO] [varchar](6) NULL,
	[FISC_MN] [int] NULL,
	[FISC_YR] [int] NULL,
	[PENALTY_CS] [decimal](15, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[LSE_E2E]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[LSE_E2E](
	[BU] [varchar](15) NULL,
	[CATEGORY] [varchar](100) NULL,
	[SALESORG] [varchar](100) NULL,
	[FISCYR] [varchar](4) NULL,
	[FISCPER] [varchar](2) NULL,
	[LSE] [float] NULL,
	[CLUSTER] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[SAS_MATRL_MSTR]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[SAS_MATRL_MSTR](
	[SALESORG] [varchar](255) NULL,
	[DFU] [varchar](10) NULL,
	[ALT_CATEGORY_DESC] [varchar](255) NULL,
	[BRAND] [varchar](255) NULL,
	[BRAND_DESC] [varchar](255) NULL,
	[DFU_DESC] [varchar](255) NULL,
	[FLAVOUR] [varchar](255) NULL,
	[PRODUCT_PACK_TYPE] [varchar](255) NULL,
	[CUSTOMER_UNIT_SIZE] [float] NULL,
	[PACK_TYPE] [varchar](255) NULL,
	[NKG_CONVERSION] [float] NULL,
	[ABC] [varchar](255) NULL,
	[XYZ] [varchar](255) NULL,
	[CURRENT_INSCOPE] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SC].[STAT_FCST]    Script Date: 11/20/2018 5:00:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SC].[STAT_FCST](
	[Forecast Snapshot] [varchar](15) NULL,
	[SALESORG_DESCR] [varchar](255) NULL,
	[DFU] [varchar](15) NULL,
	[CALWEEK] [varchar](15) NULL,
	[FISCAL_PERIOD] [varchar](15) NULL,
	[FISCWK] [int] NULL,
	[FISCYR] [int] NULL,
	[FCSTPER] [int] NULL,
	[FCSTYR] [int] NULL,
	[FORECAST_PUBLISH] [varchar](15) NULL,
	[SEGMENTATION] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [KEU_EXTERNAL] SET  READ_WRITE 
GO
