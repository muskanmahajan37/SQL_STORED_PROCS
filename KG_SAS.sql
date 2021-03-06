USE [master]
GO
/****** Object:  Database [KG_SAS]    Script Date: 11/20/2018 5:32:30 PM ******/
CREATE DATABASE [KG_SAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_SAS', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_SAS.mdf' , SIZE = 50200576KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_SAS_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_SAS_log.ldf' , SIZE = 640000KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_SAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_SAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_SAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_SAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_SAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_SAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_SAS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_SAS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_SAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_SAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_SAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_SAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_SAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_SAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_SAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_SAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_SAS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_SAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_SAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_SAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_SAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_SAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_SAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_SAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_SAS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_SAS] SET  MULTI_USER 
GO
ALTER DATABASE [KG_SAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_SAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_SAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_SAS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_SAS', N'ON'
GO
USE [KG_SAS]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:32:30 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE3]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE3] FOR LOGIN [US\SQL_DS_HYPERCARE3]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R] WITH DEFAULT_SCHEMA=[US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\SQL_CAPSIM_USERS_RW]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [US\SQL_CAPSIM_USERS_RW] FOR LOGIN [US\SQL_CAPSIM_USERS_RW]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKIPE01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKIPE01] FOR LOGIN [SAS_USKIPE01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_SNKS_RETL_ANLYTC]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_SNKS_RETL_ANLYTC] FOR LOGIN [SAS_SNKS_RETL_ANLYTC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_PU_USKSDC40]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_PU_USKSDC40] FOR LOGIN [SAS_PU_USKSDC40] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_KSC_DMND_PLNNG]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_KSC_DMND_PLNNG] FOR LOGIN [SAS_KSC_DMND_PLNNG] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_CONS]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_CONS] FOR LOGIN [SAS_CONS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_CAPSIM]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_CAPSIM] FOR LOGIN [SAS_CAPSIM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_Canada_DART]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [SAS_Canada_DART] FOR LOGIN [SAS_CAN_DART] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE ROLE [db_view_def]
GO
/****** Object:  DatabaseRole [db_exeproc]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE ROLE [db_exeproc]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE3]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_CAPSIM_USERS_RW]
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
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKIPE01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKDRK07]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKCRS01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_USKBPH02]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_SNKS_RETL_ANLYTC]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_PU_USKSDC40]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_KSC_DMND_PLNNG]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_KSC_DMND_PLNNG]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_KSC_DMND_PLNNG]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [SAS_CONS]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_CONS]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_CONS]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_CONS]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_CAPSIM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_CAPSIM]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_CAPSIM]
GO
ALTER ROLE [db_exeproc] ADD MEMBER [SAS_Canada_DART]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [SAS_Canada_DART]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SAS_Canada_DART]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [SAS_Canada_DART]
GO
ALTER ROLE [db_owner] ADD MEMBER [BODS]
GO
/****** Object:  Schema [ACCENTURE]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE SCHEMA [ACCENTURE]
GO
/****** Object:  Schema [CONS]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE SCHEMA [CONS]
GO
/****** Object:  Schema [USER_SALES]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE SCHEMA [USER_SALES]
GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SAS_SNACKS_GSV_BUD]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- ============================================================================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/30/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data from [KG_SAS ].[USER_SALES].[STG_SNACKS_GSV_BUDGET] table to Main GSV table
-- Comments			:
-- =============================================================================================
CREATE PROCEDURE   [dbo].[USP_LOAD_SAS_SNACKS_GSV_BUD] 
AS
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

DELETE  T
 FROM [KG_SAS].[USER_SALES].[SNACKS_GSV_BUDGET] AS T WITH(NOLOCK)
 INNER JOIN
  [KG_SAS].[USER_SALES].[STG_SNACKS_GSV_BUDGET]   AS S WITH (NOLOCK)
  ON
  --T.PLAN_TO_NBR = S.PLAN_TO_NBR
  --AND
  --T.SOLD_TO_NBR = S.SOLD_TO_NBR
  --AND
  --T.[CATEGORY] = S.Category
  --AND
  T.YR = SUBSTRING(S.[QTR],3,6)
  AND
  T.QTR = SUBSTRING(S.[QTR],1,1)
   INSERT INTO [KG_SAS].[USER_SALES].[SNACKS_GSV_BUDGET]
      ([PLAN_TO_NBR]
      ,[PLAN_TO_DESC]
      ,[SOLD_TO_NBR]
	  ,[BUDGET_GSV]
      ,[CATEGORY]
      ,[QTR]
      ,[YR]
	  ,LAST_MOD)

	  SELECT  
	   PLAN_TO_NBR
	  ,Plan_To_Description
	  ,CAST(CAST(SOLD_TO_NBR AS DECIMAL(10)) AS VARCHAR(10))
	  ,CAST(Budget_GSV AS NUMERIC(18,2)) 
	  ,Category
      ,SUBSTRING([QTR],1,1) AS QTR
	  ,SUBSTRING([QTR],3,6) AS YR
	  ,getdate()
	  FROM
	  [KG_SAS].[USER_SALES].[STG_SNACKS_GSV_BUDGET] WITH (NOLOCK)
			----
IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END












GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_SAS_SNACKS_POS_BUD]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











-- ============================================================================================
-- Author			:	Abhilash Mogili
-- Create date		:	01/30/2018
-- Modified By		:
-- Modified date	:	
-- Description		: Load the data from [KG_SAS ].[USER_SALES].[STG_SNACKS_POS_BUDGET] table	to main table
-- Comments			:
-- =============================================================================================
CREATE PROCEDURE   [dbo].[USP_LOAD_SAS_SNACKS_POS_BUD] 
AS
BEGIN
SET NOCOUNT ON;
SET IMPLICIT_TRANSACTIONS OFF;
BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

 DELETE T
 FROM [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET] AS T WITH(NOLOCK)
  INNER JOIN
   [KG_SAS].[USER_SALES].[STG_SNACKS_POS_BUDGET] AS S WITH (NOLOCK)
  ON
  --T.PLAN_TO_NBR = S.[Plan_To_Number]
  --AND
  --T.SOLD_TO_NBR = S.SOLD_TO_NBR
  --AND
  --T.[CATEGORY] = S.Category
  --AND
  T.YR = YEAR(getdate())
  AND
  T.QTR = SUBSTRING(S.[Quarter],4,1) 
  
   INSERT INTO [KG_SAS].[USER_SALES].[SNACKS_POS_BUDGET]
      ( [PLAN_TO_NBR]
      ,[PLAN_TO]
      ,[SOLD_TO_NBR]
      ,[CATEGORY]
      ,[QTR]
      ,[YAGO]
      ,[GO_PCT]
      ,[Q_TOTAL]
      ,[GO]
	  ,YR
	  ,LAST_MOD)

	  SELECT
	   [Plan_To_Number]
      ,[PLAN_TO]
      ,CAST(CAST(SOLD_TO_NBR AS DECIMAL(10)) AS VARCHAR(10))
      ,[Category]
      ,SUBSTRING([Quarter],4,1)
      ,[YAGO]
      ,[GO]
      ,[Budget]
      ,[GO_In_Dollars]
	  ,YEAR(getdate())
	  ,getdate()
	  FROM
	  [KG_SAS].[USER_SALES].[STG_SNACKS_POS_BUDGET] WITH (NOLOCK)

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
END

COMMIT TRANSACTION;
END



GO
/****** Object:  Table [ACCENTURE].[SrcOTCDeductionsLiveSnapshot]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot](
	[PROCESSOR_ID] [varchar](12) NULL,
	[PROCESSOR_NM] [varchar](80) NULL,
	[PERS_RESP_ID] [varchar](12) NULL,
	[PERS_RESP_NM] [varchar](80) NULL,
	[COORDINATOR_ID] [varchar](12) NULL,
	[COORDINATOR_NM] [varchar](80) NULL,
	[USR_ID] [varchar](12) NULL,
	[USR_NM] [varchar](80) NULL,
	[RELATION] [varchar](2) NULL,
	[CLASSIFICATION] [varchar](10) NULL,
	[IS_VOIDED] [varchar](1) NULL,
	[IS_CONFIRMED] [varchar](1) NULL,
	[PMT_IN_FLG] [varchar](1) NULL,
	[CASE_ID] [varchar](12) NULL,
	[COMB_FLG] [numeric](11, 0) NULL,
	[CASE_TITL] [varchar](80) NULL,
	[CASE_GUID] [varchar](32) NULL,
	[CASE_TYP] [varchar](4) NULL,
	[COMB_DSPUT_CASE_ID] [varchar](30) NULL,
	[DOC_TYP] [varchar](2) NULL,
	[CO_CD] [varchar](4) NULL,
	[DOC_TYP_DESC] [varchar](20) NULL,
	[ACCTG_DOC_NBR] [varchar](10) NULL,
	[DOC_HDR_TXT] [varchar](25) NULL,
	[ITM_TXT] [varchar](50) NULL,
	[REF_DOC_NBR] [varchar](16) NULL,
	[BILL_DOC] [varchar](10) NULL,
	[EXTR_REF] [varchar](30) NULL,
	[CHG_TM] [numeric](16, 0) NULL,
	[FIN_CUSTDISP_AMT] [numeric](16, 2) NULL,
	[FIN_CUSTDISP_CUR] [varchar](5) NULL,
	[FIN_NOT_SOLV_AMT] [numeric](16, 2) NULL,
	[CURR] [varchar](5) NULL,
	[ASGN] [varchar](18) NULL,
	[POST_KEY] [varchar](2) NULL,
	[POST_KEY_NM] [varchar](20) NULL,
	[FY] [int] NULL,
	[LN_ITM_NBR] [smallint] NULL,
	[OTC_CUST_CHNL] [varchar](255) NULL,
	[CUST_CHNL_TXT] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[CUST_NBR] [varchar](10) NULL,
	[CUST_MAIL_ADDR] [varchar](86) NULL,
	[PLNT_NBR] [varchar](12) NULL,
	[PLANTO_DESC] [varchar](35) NULL,
	[SALE_MGMT_A] [varchar](35) NULL,
	[SALE_MGMT_B] [varchar](35) NULL,
	[SALE_MGMT_C] [varchar](35) NULL,
	[SALE_MGMT_D] [varchar](35) NULL,
	[RSN_CD_PAY] [varchar](3) NULL,
	[RSN_CD_PAY_TXT] [varchar](20) NULL,
	[RSN_ESCAL_CD] [varchar](2) NULL,
	[RSN_ESCAL_DESC] [varchar](60) NULL,
	[RSN_CASE_CD] [varchar](4) NULL,
	[RSN_CASE_DESC] [varchar](60) NULL,
	[ROOT_CAUSE_CD] [varchar](4) NULL,
	[ROOT_CAUSE_DESC] [varchar](60) NULL,
	[CASE_STATUS] [varchar](3) NULL,
	[CASE_STATUS_DESC] [varchar](40) NULL,
	[CASE_CATG] [varchar](4) NULL,
	[BAS_LN_DT] [varchar](10) NULL,
	[PLN_CLO_DT] [varchar](10) NULL,
	[CRE_TM] [numeric](16, 0) NULL,
	[CLS_TM] [numeric](16, 0) NULL,
	[AGE] [numeric](11, 0) NULL,
	[PAY_METH_SUPL] [varchar](2) NULL,
	[AMT_LOC_CURR] [numeric](16, 2) NULL,
	[CUR_DISPUTED_AMT] [numeric](16, 2) NULL,
	[ORIG_AMT] [numeric](16, 2) NULL,
	[CLR_MANUALLY] [numeric](16, 2) NULL,
	[AMT_PAID] [numeric](16, 2) NULL,
	[AMT_CR] [numeric](16, 2) NULL,
	[DSPUT_CURR] [varchar](5) NULL,
	[DOC_DT] [varchar](10) NULL,
	[POST_DT] [varchar](10) NULL,
	[DED_USE_FLAG] [numeric](11, 0) NULL,
	[UNDR_TOLRNC_FLG] [numeric](11, 0) NULL,
	[CLSN_DT] [varchar](10) NULL,
	[OPN_FLG] [numeric](11, 0) NULL,
	[CLSN_PD] [smallint] NULL,
	[CLSN_YR] [numeric](11, 0) NULL,
	[HST_INT] [int] NULL,
	[CRE_PD] [smallint] NULL,
	[CRE_YR] [int] NULL,
	[CRE_PD_END_DT] [varchar](10) NULL,
	[CRE_INT] [int] NULL,
	[CRE_FLG] [numeric](11, 0) NULL,
	[INVLD_FLG] [numeric](11, 0) NULL,
	[HST_WK] [smallint] NULL,
	[HST_PD] [smallint] NULL,
	[HST_YR] [int] NULL,
	[SEQ_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HST_QTR] [int] NULL,
	[BatchId] [bigint] NULL,
	[CreateDttm] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[LAST_DAY_OF_WEEK_FLAG] [varchar](10) NULL,
	[REPORT_EXT_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[DATEMAP]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[DATEMAP](
	[FULLPERIOD] [varchar](15) NULL,
	[WEEK] [date] NULL,
	[DATE] [date] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WKOFYR] [float] NULL,
	[PERIODWK] [float] NULL,
	[FYEAR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[PCTACVWK]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[PCTACVWK](
	[UPC] [varchar](12) NULL,
	[DATE] [date] NULL,
	[MDN] [varchar](60) NULL,
	[PCTACV] [float] NULL,
	[SKU] [varchar](12) NULL,
	[DMMACV] [float] NULL,
	[MMACV] [float] NULL,
	[LOAD_DT] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_DEV_INCL_COMP]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_DEV_INCL_COMP](
	[Market] [varchar](15) NULL,
	[Product] [varchar](25) NULL,
	[Category_Level] [varchar](7) NULL,
	[DOL] [numeric](17, 3) NULL,
	[BDOL] [numeric](17, 3) NULL,
	[LBS] [numeric](17, 3) NULL,
	[BLBS] [numeric](17, 3) NULL,
	[WEEK] [date] NULL,
	[Milk_Lbs] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Bdol] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_DEV1]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_DEV1](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_DEV1_BACKUP]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_DEV1_BACKUP](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_FROZEN]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_FROZEN](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_FROZEN_LE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_FROZEN_LE](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_KASHI]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_KASHI](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_KASHI_LE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_KASHI_LE](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_LE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_LE](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_LE_BACKUP]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_LE_BACKUP](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_MF]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_MF](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_MF_LE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_MF_LE](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_SNACKS]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_SNACKS](
	[BU] [varchar](13) NULL,
	[Product] [varchar](25) NULL,
	[Category] [varchar](20) NULL,
	[Channel] [varchar](15) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[WEEK] [date] NULL,
	[Category_Level] [varchar](7) NULL,
	[Version] [date] NULL,
	[DOL] [float] NULL,
	[BDOL] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[Milk_Bdol] [float] NULL,
	[Milk_Blbs] [float] NULL,
	[Shipment_LBS] [float] NULL,
	[Shipment_LBS_D] [float] NULL,
	[Shipment_Dollars] [float] NULL,
	[Shipment_Dollars_D] [float] NULL,
	[TPM_Dollars] [float] NULL,
	[TPM_LBS] [float] NULL,
	[TPMLP_Dollars] [float] NULL,
	[TPMLP_LBS] [float] NULL,
	[DDPO_Dollars] [float] NULL,
	[DDPO_LBS] [float] NULL,
	[Remarketing_LBS] [float] NULL,
	[Remarketing_Dollars] [float] NULL,
	[COSTCO_Shipment_LBS] [float] NULL,
	[COSTCO_Shipment_Dollars] [float] NULL,
	[COSTCO_TPM_LBS] [float] NULL,
	[COSTCO_TPM_Dollars] [float] NULL,
	[Remarketing_IBP_GSV] [float] NULL,
	[Remarketing_IBP_LBS] [float] NULL,
	[DOL_Trend] [float] NULL,
	[LBS_Trend] [float] NULL,
	[Milk_Dol] [float] NULL,
	[Milk_Lbs] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [CONS].[SCIM_SNACKS_LE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [CONS].[SCIM_SNACKS_LE](
	[Category] [varchar](20) NULL,
	[FYEAR] [float] NULL,
	[QUARTER] [float] NULL,
	[PERIOD] [float] NULL,
	[BU] [varchar](6) NULL,
	[WEEK] [date] NULL,
	[Channel] [varchar](15) NULL,
	[LE_ConsumptionLBS] [float] NULL,
	[LE_ConsumptionDOL] [float] NULL,
	[LE_ShipmentLBS] [float] NULL,
	[LE_ShipmentDOL] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[ACCT] [varchar](32) NULL,
	[ACCTNAME] [varchar](44) NULL,
	[DATATYPE] [varchar](14) NULL,
	[REGION] [varchar](23) NULL,
	[FZ] [varchar](32) NULL,
	[MF] [varchar](32) NULL,
	[SN] [varchar](32) NULL,
	[SS] [varchar](32) NULL,
	[ACV] [float] NULL,
	[ACV_PRIOR] [float] NULL,
	[FZ_BASE] [varchar](32) NULL,
	[MF_BASE] [varchar](32) NULL,
	[SN_BASE] [varchar](32) NULL,
	[KA_BASE] [varchar](32) NULL,
	[SS_BASE] [varchar](32) NULL,
	[MKTKEY] [varchar](15) NULL,
	[MKTDESC] [varchar](37) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONS_AND_TPM_VERSION]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONS_AND_TPM_VERSION](
	[PERIOD] [float] NULL,
	[YEAR] [varchar](4) NULL,
	[TPM_VERSION] [date] NULL,
	[CONSENSUS_VERSION] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DART_RISK_VERSION_4]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DART_RISK_VERSION_4](
	[Category] [varchar](23) NULL,
	[MATERIAL] [varchar](11) NULL,
	[WEEK] [date] NULL,
	[STOCK] [float] NULL,
	[Demand_CS] [float] NULL,
	[Production_CS] [float] NULL,
	[Total_DEMAND_CS] [float] NULL,
	[Proj_Inventory_CS] [float] NULL,
	[DOS] [int] NULL,
	[Unmet_Dem_CS] [float] NULL,
	[LOT_CODE] [varchar](10) NULL,
	[Inventory_Risk_CS] [numeric](10, 0) NULL,
	[STOPSHIP_DT] [date] NULL,
	[EXPIRATION_DT] [date] NULL,
	[Matl_desc] [varchar](41) NULL,
	[No_demand] [varchar](12) NULL,
	[Material_Group] [varchar](24) NULL,
	[Material_Type] [varchar](38) NULL,
	[Priority] [varchar](255) NULL,
	[Min_DOS_Target] [float] NULL,
	[Max_DOS_Target] [float] NULL,
	[SC_PLANNER] [varchar](15) NULL,
	[TEAM_MGR] [varchar](15) NULL,
	[SKU_TYPE] [varchar](15) NULL,
	[COP] [float] NULL,
	[Inventory_Risk_dol] [money] NULL,
	[Supply_Risk_dol] [money] NULL,
	[Extendable] [varchar](4) NULL,
	[Age_Supply_Risk] [varchar](4) NULL,
	[Cases_in_transit] [float] NULL,
	[Cases_delivered] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HISTORY_ALL]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HISTORY_ALL](
	[ACCT] [varchar](6) NULL,
	[PGROUP] [varchar](13) NULL,
	[BRAND] [varchar](27) NULL,
	[WEEK] [date] NULL,
	[WEEKNO] [float] NULL,
	[WKOFYR] [float] NULL,
	[SEASON] [float] NULL,
	[WKSTRENGTH] [float] NULL,
	[UNITS] [float] NULL,
	[BUNITS] [float] NULL,
	[LBS] [float] NULL,
	[BLBS] [float] NULL,
	[PRICE] [numeric](9, 3) NULL,
	[BPRICE] [numeric](9, 3) NULL,
	[REGPRICE] [numeric](9, 3) NULL,
	[BVOLPRICE] [float] NULL,
	[DISCOUNT] [float] NULL,
	[DISCOUNT2] [float] NULL,
	[DIST] [float] NULL,
	[TOTDIST] [float] NULL,
	[FO] [float] NULL,
	[DO] [float] NULL,
	[FD] [float] NULL,
	[ANYDISP] [float] NULL,
	[ANYFEAT] [float] NULL,
	[LOGUNITS] [float] NULL,
	[LOGDISC] [float] NULL,
	[LOGDISC2] [float] NULL,
	[LOGFO] [float] NULL,
	[LOGDO] [float] NULL,
	[LOGFD] [float] NULL,
	[LOGANYDISP] [float] NULL,
	[LOGANYFEAT] [float] NULL,
	[LOGDIST] [float] NULL,
	[LOGTOTDIST] [float] NULL,
	[LOGPRICE] [float] NULL,
	[LOGPRICE2] [float] NULL,
	[LOGSEAS] [float] NULL,
	[LOGWKSTRENGTH] [float] NULL,
	[LAGDISC] [float] NULL,
	[LAGDISC2] [float] NULL,
	[LAGFO] [float] NULL,
	[LAGDO] [float] NULL,
	[LAGFD] [float] NULL,
	[LAGANYDISP] [float] NULL,
	[LAGANYFEAT] [float] NULL,
	[LOGCINCR] [float] NULL,
	[LOGKINCR] [float] NULL,
	[LOGKBRINCR] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_CLF_BIAS_REPORTING_TABLE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_CLF_BIAS_REPORTING_TABLE](
	[BUSINESS_UNIT] [varchar](60) NULL,
	[ALT_CATEGORY] [varchar](30) NULL,
	[SUBBARAND] [varchar](1) NULL,
	[Brand] [varchar](40) NULL,
	[Type] [varchar](40) NULL,
	[ALT_SEGMENT] [varchar](30) NULL,
	[QUARTER_NUMBER] [smallint] NULL,
	[PERIOD_NUMBER] [smallint] NULL,
	[BW_WEEK] [varchar](62) NULL,
	[WK] [varchar](12) NULL,
	[YEAR] [varchar](12) NULL,
	[WEEK_STARTING] [date] NULL,
	[PT_TEXT] [varchar](255) NULL,
	[PT_NAME] [varchar](255) NULL,
	[Level_A] [varchar](255) NULL,
	[Level_B] [varchar](255) NULL,
	[Level_C] [varchar](255) NULL,
	[Level_D] [varchar](255) NULL,
	[Level_E] [varchar](255) NULL,
	[TIER_NAME] [varchar](255) NULL,
	[Actual_GSV] [float] NULL,
	[Plan_GSV] [float] NULL,
	[Consensus_Dol] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KLG_PROMO_DUB_NEG]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KLG_PROMO_DUB_NEG](
	[PLAN_TO] [varchar](10) NULL,
	[PROMOTION] [varchar](24) NULL,
	[TYPE] [varchar](14) NULL,
	[QUARTER] [varchar](31) NULL,
	[PROMO_TYPE] [varchar](40) NULL,
	[Promo_Desc] [varchar](40) NULL,
	[PROMOTION_DESC] [varchar](40) NULL,
	[TYPEDESC] [varchar](40) NULL,
	[PT_NAME] [varchar](255) NULL,
	[REGION] [varchar](255) NULL,
	[PROMO_START_DATE] [date] NULL,
	[PROMO_END_DATE] [date] NULL,
	[BUSINESS_UNIT] [varchar](60) NULL,
	[KEY_EVENT] [varchar](3) NULL,
	[KEY_EVENT_DESC] [varchar](40) NULL,
	[PLANNED_SHIP_DOLLARS] [float] NULL,
	[Reserved_Total_KMF_DOL] [float] NULL,
	[PLANNED_SHIP_CASES] [float] NULL,
	[PLANNED_SHIP_UNITS] [float] NULL,
	[TPM_PLANNED_TPQ_EACHES] [float] NULL,
	[TPM_Planned_Retailer_Promotion] [float] NULL,
	[PLANNED_SHELF_PRICE] [numeric](18, 2) NULL,
	[COP] [float] NULL,
	[COP_PER_UNIT] [money] NULL,
	[PLAN_INCR_COP] [float] NULL,
	[EDLP_SPEND] [float] NULL,
	[LE_TOTAL_FIX_KMF] [float] NULL,
	[PLANNED_INCR_UNITS] [float] NULL,
	[PLAN_INCR_VOL] [float] NULL,
	[INCR_EDLP_SPEND] [float] NULL,
	[PLAN_SHIP_LB] [float] NULL,
	[PLAN_INCR_LB] [float] NULL,
	[PLAN_RET_SALES_DOL] [float] NULL,
	[PROMO_SCAN_PERC_TTL] [float] NULL,
	[SCAN_RATE_TTL] [float] NULL,
	[LUMP_SUM] [float] NULL,
	[PLAN_BASE_EA] [float] NULL,
	[PLAN_TPQ_EA] [float] NULL,
	[PLAN_INCR_EA] [float] NULL,
	[AVG_PROMO_PRICE] [float] NULL,
	[CASEPACK] [float] NULL,
	[KMF_P_UNIT] [float] NULL,
	[RED_K] [float] NULL,
	[LOW_PROMO_PRICE] [float] NULL,
	[MIN_NET_UNIT] [float] NULL,
	[PLAN_MIN_NET_UNIT] [float] NULL,
	[MIR] [float] NULL,
	[PP_FLAG] [float] NULL,
	[NET_FLAG] [float] NULL,
	[DOUBLE_NEG] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[primsums]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[primsums](
	[STATUS] [varchar](54) NULL,
	[UPC] [varchar](32) NULL,
	[MATERIAL_CODE] [varchar](11) NULL,
	[DESCRIPTION] [varchar](53) NULL,
	[PGROUP] [varchar](13) NULL,
	[TYPE] [varchar](32) NULL,
	[TYPEDESC] [varchar](36) NULL,
	[KLG_DESCRIPTION] [varchar](85) NULL,
	[MANUF] [varchar](19) NULL,
	[MFR] [varchar](5) NULL,
	[BRAND] [varchar](27) NULL,
	[SEGMENT] [varchar](27) NULL,
	[SIZE] [varchar](22) NULL,
	[CANNSEG] [varchar](3) NULL,
	[MODELID] [varchar](6) NULL,
	[CAT] [varchar](5) NULL,
	[BU] [varchar](6) NULL,
	[CPRIMKEY] [varchar](14) NULL,
	[CPRODKEY] [varchar](14) NULL,
	[PRIMKEY] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_SNACKS_GSV_BUDGET]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_SNACKS_GSV_BUDGET](
	[PLAN_TO_NBR] [float] NULL,
	[Plan_To_Description] [varchar](34) NULL,
	[SOLD_TO_NBR] [float] NULL,
	[Budget_GSV] [money] NULL,
	[Category] [varchar](11) NULL,
	[QTR] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[BW_Week] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[FROZEN_BRK_TRANSPOSE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[FROZEN_BRK_TRANSPOSE](
	[Age] [varchar](20) NULL,
	[Q4_Income] [varchar](100) NULL,
	[Q50a_Type_of_Store] [varchar](100) NULL,
	[respid] [float] NULL,
	[WEIGHT] [float] NULL,
	[Segments] [varchar](22) NULL,
	[Need_State] [varchar](18) NULL,
	[Q1_Age] [varchar](5) NULL,
	[Q2_Gender] [varchar](6) NULL,
	[Q3_Census_Division] [varchar](15) NULL,
	[Q5a_Race_or_Ethnicity] [varchar](28) NULL,
	[Q5b_Household_Language] [varchar](64) NULL,
	[Q6a_HH_Size] [float] NULL,
	[Q108C_Food_Delivery_Past_Year] [varchar](17) NULL,
	[Q109a_Exercise_Frequency] [varchar](20) NULL,
	[Q110a_Number_of_Freezers_in_HH] [varchar](15) NULL,
	[Q110c_Freezer_Space_in_HH] [varchar](46) NULL,
	[Q111_Marital_Status] [varchar](55) NULL,
	[Q112__Education_Level] [varchar](28) NULL,
	[Q114_Employment_Status] [varchar](18) NULL,
	[Q115_Home_Ownership] [varchar](20) NULL,
	[Q116_Home_Urbanization] [varchar](33) NULL,
	[Q108a_Eating_Styles] [varchar](40) NULL,
	[Q109b_Exercise_Activities] [varchar](40) NULL,
	[Q110b_Freezer_Types_in_HH] [varchar](40) NULL,
	[Q95_Type_of_Retailer] [varchar](40) NULL,
	[Retailer] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[FROZEN_SHOPPERS_TRANSPOSE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[FROZEN_SHOPPERS_TRANSPOSE](
	[Age] [varchar](20) NULL,
	[Assigned_Frozen_Category] [varchar](100) NULL,
	[Weights] [float] NULL,
	[respid] [float] NULL,
	[Segments] [varchar](17) NULL,
	[Missions] [varchar](21) NULL,
	[AGE_CATEGORY] [varchar](5) NULL,
	[Gender] [varchar](6) NULL,
	[Census_Division] [varchar](15) NULL,
	[Income] [varchar](21) NULL,
	[Race_Ethnicity] [varchar](28) NULL,
	[HH_Size] [varchar](12) NULL,
	[Marital_Status] [varchar](55) NULL,
	[Education_Level] [varchar](28) NULL,
	[Employment_Status] [varchar](18) NULL,
	[Home_Ownership] [varchar](20) NULL,
	[Home_Location_Description] [varchar](33) NULL,
	[Eat_at_restaurants] [varchar](17) NULL,
	[Online_deal_sites] [varchar](3) NULL,
	[Eating_style] [varchar](26) NULL,
	[How_often_do_you_exercise] [varchar](20) NULL,
	[How_many_freezers_in_HH] [varchar](15) NULL,
	[Online_deal_coupon_sites] [varchar](1) NULL,
	[Checkout_51] [varchar](1) NULL,
	[Coupons_com] [varchar](1) NULL,
	[Extreme_Coupon_Finder] [varchar](1) NULL,
	[Find_Save] [varchar](1) NULL,
	[Flipp] [varchar](1) NULL,
	[Grocery_iQ] [varchar](1) NULL,
	[Grocery_Pal] [varchar](1) NULL,
	[Grocery_Smarts] [varchar](1) NULL,
	[Grofers] [varchar](1) NULL,
	[Ibotta] [varchar](1) NULL,
	[Jet] [varchar](1) NULL,
	[Krazy_Coupon_Lady] [varchar](1) NULL,
	[Mydala] [varchar](1) NULL,
	[Reebee] [varchar](1) NULL,
	[Retale] [varchar](1) NULL,
	[SavingStar] [varchar](1) NULL,
	[Shopkick] [varchar](1) NULL,
	[ShopSavvy] [varchar](1) NULL,
	[The_Coupons_App] [varchar](1) NULL,
	[Other_deal_site] [varchar](1) NULL,
	[None] [varchar](1) NULL,
	[Activities] [varchar](1) NULL,
	[Running_Jogging] [float] NULL,
	[Walking_for_exercise] [float] NULL,
	[Swimming] [float] NULL,
	[Bicycling] [float] NULL,
	[Aerobics_Yoga] [float] NULL,
	[Lifting_weights] [float] NULL,
	[Playing_sports] [float] NULL,
	[None_of_the_above] [float] NULL,
	[Types_of_equipment] [varchar](1) NULL,
	[Laptop_Desktop_Computer] [float] NULL,
	[DVD_Player] [float] NULL,
	[DVR] [float] NULL,
	[Video_Game_Console] [float] NULL,
	[Smartphone] [float] NULL,
	[Tablet] [float] NULL,
	[HDTV] [float] NULL,
	[Smart_TV_Device] [float] NULL,
	[None_of_the_above__1] [float] NULL,
	[Social_media_sites] [varchar](1) NULL,
	[Facebook] [float] NULL,
	[Flickr] [float] NULL,
	[Instagram] [float] NULL,
	[Twitter] [float] NULL,
	[Snapchat] [float] NULL,
	[Google] [float] NULL,
	[LinkedIn] [float] NULL,
	[Vine] [float] NULL,
	[Pinterest] [float] NULL,
	[None_of_the_above__2] [float] NULL,
	[Enrollment] [varchar](1) NULL,
	[Supplemental_Nutrition_Assistanc] [float] NULL,
	[Women_Infant_Children_Program] [float] NULL,
	[None_of_the_above__3] [float] NULL,
	[Type_of_freezer_in_HH] [varchar](1) NULL,
	[Refrigerator_freezer] [float] NULL,
	[Chest_freezer] [float] NULL,
	[Upright_freezer] [float] NULL,
	[Portable_freezer] [float] NULL,
	[Mini_freezer] [float] NULL,
	[Drawer_freezer] [float] NULL,
	[Other] [float] NULL,
	[Eating_Styles] [varchar](100) NULL,
	[Retailer] [varchar](40) NULL,
	[Channel] [varchar](100) NULL,
	[Retailer_Frozen] [varchar](40) NULL,
	[Assigned] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[FROZEN_VEGGIE_TRANSPOSE]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[FROZEN_VEGGIE_TRANSPOSE](
	[Age] [varchar](20) NULL,
	[respid] [float] NULL,
	[Weights] [float] NULL,
	[Segment] [varchar](22) NULL,
	[Need_State] [varchar](17) NULL,
	[AGE_CATEGORY] [varchar](5) NULL,
	[Gender] [varchar](6) NULL,
	[Income] [varchar](21) NULL,
	[Race_or_Ethnicity] [varchar](29) NULL,
	[Household_Language] [varchar](64) NULL,
	[HH_Size] [varchar](12) NULL,
	[Exercise_Frequency] [varchar](20) NULL,
	[Marital_Status] [varchar](55) NULL,
	[Education_Level] [varchar](28) NULL,
	[Employment_Status] [varchar](18) NULL,
	[Home_Ownership] [varchar](20) NULL,
	[Home_Location] [varchar](33) NULL,
	[Freezers_in_HH] [varchar](15) NULL,
	[Freezer_Space] [varchar](46) NULL,
	[Length_of_Eating_Styles] [varchar](19) NULL,
	[Changes_in_Consumption] [varchar](39) NULL,
	[Regular_Activities] [varchar](1) NULL,
	[Running_Jogging] [float] NULL,
	[Walking_for_exercise] [float] NULL,
	[Swimming] [float] NULL,
	[Bicycling] [float] NULL,
	[Aerobics_Yoga] [float] NULL,
	[Lifting_Weights] [float] NULL,
	[Playing_sports] [float] NULL,
	[None_of_the_above] [float] NULL,
	[Types_of_Freezers] [varchar](1) NULL,
	[Refrigerator_freezer] [varchar](1) NULL,
	[Chest_freezer] [varchar](1) NULL,
	[Upright_freezer] [varchar](1) NULL,
	[Portable_freezer] [varchar](1) NULL,
	[Mini_freezer] [varchar](1) NULL,
	[Drawer_freezer] [varchar](1) NULL,
	[Other] [varchar](1) NULL,
	[Reasons_for_Eating_Style] [varchar](1) NULL,
	[Aligns_cultural_values] [varchar](1) NULL,
	[Grew_up_eating_style] [varchar](1) NULL,
	[Spouse_eating_style] [varchar](1) NULL,
	[Parents_eating_style] [varchar](1) NULL,
	[Friends_eating_style] [varchar](1) NULL,
	[Others_eating_style] [varchar](1) NULL,
	[Difficulty_digesting_meats] [varchar](1) NULL,
	[Makes_me_feel_energized] [varchar](1) NULL,
	[Had_a_health_scare] [varchar](1) NULL,
	[Medical_professional_recommended] [varchar](1) NULL,
	[Nutritionist__recommend] [varchar](1) NULL,
	[Physical_trainer_recommended] [varchar](1) NULL,
	[Started_follow_eating_style] [varchar](1) NULL,
	[Wanted_eat_healthier] [varchar](1) NULL,
	[Wanted_to_lose_weight] [varchar](1) NULL,
	[Wanted_to_lower_my_cholesterol] [varchar](1) NULL,
	[Lower_risk_heart_disease] [varchar](1) NULL,
	[Reduce_risk_getting_cancer] [varchar](1) NULL,
	[Avoid_food_contaminants] [varchar](1) NULL,
	[Avoid_food_borne_disease] [varchar](1) NULL,
	[Avoid_eating_processed_food] [varchar](1) NULL,
	[Slow_the_aging_process] [varchar](1) NULL,
	[Concerned_global_warming] [varchar](1) NULL,
	[Oceans_overfished_polluted] [varchar](1) NULL,
	[Save_money_eating_less_meat] [varchar](1) NULL,
	[Less_meat_is_good_environment] [varchar](1) NULL,
	[Eating_meat_is_cruel_to_animals] [varchar](1) NULL,
	[Didnt_support_factory_farming] [varchar](1) NULL,
	[Didnt_like_the_taste_of_meat] [varchar](1) NULL,
	[Developed_dislike_meat] [varchar](1) NULL,
	[Other_1] [varchar](1) NULL,
	[Eating_Styles] [varchar](100) NULL,
	[Channel] [varchar](100) NULL,
	[Retailer] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[REX_SALES_PRIORITIES_TEST]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[REX_SALES_PRIORITIES_TEST](
	[FNAME] [varchar](100) NULL,
	[GUID] [varchar](100) NULL,
	[YR] [varchar](6) NULL,
	[PD] [varchar](6) NULL,
	[PD_WK] [varchar](6) NULL,
	[ACTL_WK] [varchar](6) NULL,
	[BU] [varchar](6) NULL,
	[PLN_TO] [varchar](6) NULL,
	[CHN] [varchar](13) NULL,
	[ACCT_EXECUTV_NM] [varchar](9) NULL,
	[THEME] [varchar](8) NULL,
	[PRITY_TYP] [varchar](16) NULL,
	[CAL_STRT] [date] NULL,
	[CAL_END] [date] NULL,
	[CUST_WK] [varchar](6) NULL,
	[PRITY] [varchar](6) NULL,
	[DESCRIPTION] [varchar](11) NULL,
	[ACTN] [varchar](10) NULL,
	[TYP] [varchar](168) NULL,
	[CATG] [varchar](11) NULL,
	[BRAND] [varchar](22) NULL,
	[PACK_SZ] [varchar](6) NULL,
	[PACK_SZ_OTHR] [varchar](6) NULL,
	[LOC] [varchar](51) NULL,
	[LOC_OTHR] [varchar](6) NULL,
	[PROMTN] [varchar](15) NULL,
	[PROMTN_OTHR] [varchar](6) NULL,
	[PRC] [varchar](7) NULL,
	[MRGN] [varchar](6) NULL,
	[CMNT] [varchar](7) NULL,
	[TPR_1] [varchar](39) NULL,
	[TPR_2] [varchar](39) NULL,
	[TPR_3] [varchar](39) NULL,
	[TPR_4] [varchar](39) NULL,
	[TPR_5] [varchar](39) NULL,
	[TPR_6] [varchar](39) NULL,
	[TPR_7] [varchar](39) NULL,
	[TPR_8] [varchar](39) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_GSV_BUDGET]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_GSV_BUDGET](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_GSV_BUDGET_2018]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_GSV_BUDGET_2018](
	[PLAN_TO_NBR] [varchar](10) NULL,
	[PLAN_TO_DESC] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](10) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[BUDGET_GSV] [numeric](18, 2) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_POS_BUDGET]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_POS_BUDGET](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[SNACKS_POS_BUDGET_2018]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[SNACKS_POS_BUDGET_2018](
	[PLAN_TO_NBR] [varchar](20) NULL,
	[PLAN_TO] [varchar](100) NULL,
	[SOLD_TO_NBR] [varchar](20) NULL,
	[CATEGORY] [varchar](50) NULL,
	[QTR] [int] NULL,
	[YAGO] [varchar](50) NULL,
	[GO_PCT] [varchar](50) NULL,
	[Q_TOTAL] [float] NULL,
	[GO] [varchar](50) NULL,
	[YR] [int] NOT NULL,
	[LAST_MOD] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[STG_SNACKS_GSV_BUDGET]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[STG_SNACKS_GSV_BUDGET](
	[PLAN_TO_NBR] [float] NULL,
	[Plan_To_Description] [varchar](33) NULL,
	[SOLD_TO_NBR] [float] NULL,
	[Budget_GSV] [money] NULL,
	[Category] [varchar](12) NULL,
	[QTR] [varchar](6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [USER_SALES].[STG_SNACKS_POS_BUDGET]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [USER_SALES].[STG_SNACKS_POS_BUDGET](
	[Plan_To_Number] [float] NULL,
	[PLAN_TO] [varchar](35) NULL,
	[SOLD_TO_NBR] [float] NULL,
	[Category] [varchar](200) NULL,
	[Quarter] [varchar](4) NULL,
	[YAGO] [float] NULL,
	[GO] [float] NULL,
	[Budget] [float] NULL,
	[GO_In_Dollars] [float] NULL,
	[STDLINXSCD] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [USER_SALES].[UVW_FRZ_BRKFST]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
--	Author				:	Jayakannan Vinoth
-- Create date		:	03/29/2018
-- Description		:	Extract the Cambridge demand landscape Survey data for Frozen Breakfast Category.
-- ============================================= 



CREATE VIEW  [USER_SALES].[UVW_FRZ_BRKFST]

AS
SELECT A.[respid] as RESPDNT_ID
             ,A.[Age] as AGE
             ,A.[Age Group] as AGE_GRP
             ,A.[Gender] as GNDR
             ,A.[Income] as INCM
             ,A.[Race or Ethnicity] as RACE_OR_ETHN
             ,A.[HH Size] as HSE_HLD_SZ
             ,A.[Segments] as SEG
             ,A.[Need State] as NEED_ST
             ,A.[Channel] as CHNL
             ,A.[Retailer] as RETLR
             ,A.[Palates] as PLT
             ,AVG(WEIGHT) as WGT

FROM
(
SELECT 
[respid]
,[Age]
,[Q1_Age] as [Age Group]
       ,[Q2_Gender] as [Gender]
       ,[Q4_Income] as [Income]
      ,[Q5a_Race_or_Ethnicity] as [Race or Ethnicity]
       ,[Q6a_HH_Size] as [HH Size]
       ,[Segments]
       ,[Need_State] as [Need State]
	   -- Create Channel Hierarchy based on the Retailer grouping list provided. 
          ,CASE WHEN Retailer IN
(
 'Acme_Markets'
 ,'Ahold'         
 ,'Albertsons'     
 ,'ALDI'           
 ,'Bakers'         
 ,'BI_LO'          
 ,'City_Market'    
 ,'Cub' 
 ,'Delhaize'           
 ,'Dierbergs'      
 ,'Dillons'        
 ,'Dominicks'      
 ,'Fairway'        
 ,'FarmFresh'      
 ,'Food_4_Less'    
 ,'Food_Lion'      
 ,'Fred_Meyer'      
 ,'Frys_Food_Stores'
 ,'Giant'           
 ,'Giant_Eagle'     
 ,'Hannaford'       
 ,'Harris_Teeter'   
 ,'HEB'             
 ,'Hy_Vee'          
 ,'Ingles'          
 ,'Jewel_Osco'      
 ,'King_Soopers'    
 ,'Kroger'          
 ,'Lowes'           
 ,'Market_Street'   
 ,'Martins'         
 ,'Pavilions'       
 ,'Piggly_Wiggly'   
 ,'PriceRite'       
 ,'Publix'          
 ,'QFC'             
 ,'Ralphs'          
 ,'Randalls'        
 ,'Roundys'         
 ,'Safeway'         
 ,'Save_a_Lot'      
 ,'SaveMart'        
 ,'Schnucks'        
 ,'Shaws'           
 ,'ShopRite'        
 ,'Smiths'          
 ,'SpartanNash'     
 ,'Star_Market'     
 ,'Stop_and_Shop'   
 ,'Super_Saver'     
 ,'Tom_Thumb'       
 ,'United_Supermarkets'  
 ,'Vons'   
 ,'Walmart_Neighborhood_Market' 
 ,'Wegmans'       
 ,'Weis_Markets'  
 ,'WinCo_Foods'   
 ,'Winn_Dixie'    
 ,'Other_Grocery_Chain' 
 )  THEN 'Grocery Chain' 
 WHEN  Retailer IN ('Food_Cooperative'
,'Sprouts'
,'Whole_Foods'
,'Other_Specialty_Grocery_Store'
,'Trader_Joes'
) THEN  'Specialty Grocery Store'
WHEN Retailer IN
( 'Amigos'
,'Bashas'
,'Bravo'
,'C_Town'
,'El_Super'
,'Fiesta'
,'Food_City_Q96a' 
,'Food_City_Q96c'
,'Food_Town'
,'La_Michoacana'
,'Mi_Tienda'
,'Northgate_Market'
,'Sellers_Bros'
,'Vallarta'
,'Superior'
,'Other_Ethnic_Grocery_Store'
,'Sedanos'
,'Other_Hispanic_Grocery_Store'
,'Other_Asian_Grocery_Store'
)
THEN  'Ethnic Grocery Store'
WHEN Retailer IN ('Target'
,'Meijer'
,'Walmart_Supercenter'
,'Other_Mass_Merchandiser'
,'Kmart'
) THEN 'Superstore / Mass Merchandiser'
WHEN  Retailer IN (
'Other_Warehouse_Club'
,'BJs'
,'Costco'
,'Sams_Club'
)
THEN 'Warehouse Club'
WHEN  Retailer IN 
(
'Dollar_Tree'
,'Dollar_General'
,'Family_Dollar'
,'Other_Dollar_Store'

)
THEN  'Dollar Store'
WHEN Retailer IN
(
'CVS'
,'Duane_Reade'
,'Rite_Aid'
,'Walgreens'
,'Other_drug_store'
)
THEN 'Drug Store'
WHEN Retailer  IN (
'BP'
,'Caseys'
,'Chevron'
,'Circle_K'
,'CITGO'
,'Exxon_Mobil'
,'Marathon'
,'QuikTrip'
,'Sheetz'
,'Shell'
,'Speedway'
,'Sunoco'
,'Wawa'
,'Local_convenience_gas_station'
,'Other_convenience_gas_station'
,'Seven_Eleven'

)
THEN 'Convenience Store / Gas Station'

WHEN Retailer IN
(
'Amazon_com'
,'BJs_com'
,'Costco_com'
,'CVS_com'
,'FreshDirect'
,'Instacart'
,'Kroger_com'
,'Peapod'
,'SamsClub_com'
,'Seamless'
,'Target_com'
,'Walgreens_com'
,'Walmart_com'
,'Other_Website_App'
)
THEN  'Online'
WHEN Retailer = 'Corner_Store_Bodega' THEN 'Corner store/Bodega/Tienda la Esquina'
WHEN Retailer IS NULL THEN 'I Don''t Know'
END AS Channel
,CASE WHEN Retailer LIKE '%Food_City_%' THEN 'Food City'
            WHEN Retailer LIKE '%_com%' THEN REPLACE(Retailer,'_com','.com')
ELSE
REPLACE(Retailer,'_',' ') END AS Retailer
,[Q108a_Eating_Styles] AS Palates
,WEIGHT
FROM [USER_SALES].[FROZEN_BRK_TRANSPOSE] WITH (NOLOCK)
WHERE Retailer IS NOT NULL AND Retailer NOT LIKE '%Other%' 
) A
GROUP BY A.[respid]
             ,A.[Age]
             ,A.[Age Group]
             ,A.[Gender]
             ,A.[Income]
             ,A.[Race or Ethnicity]
             ,A.[HH Size]
             ,A.[Segments]
             ,A.[Need State]
             ,A.[Channel]
             ,A.[Retailer]
             ,A.[Palates]





GO
/****** Object:  View [USER_SALES].[UVW_FRZ_SHOPRS]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author				:	Jayakannan Vinoth
-- Create date		:	03/29/2018
-- Description		:	Extract the Cambridge demand landscape Survey data for Frozen Shoppers Category.
-- ============================================= 

CREATE VIEW  [USER_SALES].[UVW_FRZ_SHOPRS]

AS
SELECT		  A.[respid] as RESPDNT_ID
             ,A.[Age] as AGE
             ,A.[Age Group] as AGE_GRP
             ,A.[Gender] as GNDR
             ,A.[Income] as INCM
             ,A.[Race or Ethnicity] as RACE_OR_ETHN
             ,A.[HH Size] as HSE_HLD_SZ
             ,A.[Segments] as SEG
             ,A.[Missions] as MISSN
             ,A.[Channel] as CHNL
             ,A.[Retailer] as RETLR
             ,A.[Palates] as PLT
             ,AVG(Weights) as WGT

FROM
(
SELECT 
		 [respid]
		,[Age]
		,[AGE_CATEGORY] as [Age Group]
        ,[Gender] as [Gender]
        ,[Income] as [Income]
        ,[Race_Ethnicity] as [Race or Ethnicity]
        ,[HH_Size] as [HH Size]
        ,[Segments]
        ,[Missions]
	   -- Create Channel Hierarchy based on the Retailer grouping list provided.  
        ,CASE WHEN Retailer IN
		(
		'Acme_Markets' 
		 ,'Ahold'       
		 ,'Albertsons'     
		 ,'ALDI'           
		 ,'Bakers'         
		 ,'BI_LO'          
		 ,'City_Market'    
		 ,'Cub' 
		 ,'Delhaize'           
		 ,'Dierbergs'      
		 ,'Dillons'        
		 ,'Dominicks'      
		 ,'Fairway'        
		 ,'FarmFresh'      
		 ,'Food_4_Less'    
		 ,'Food_Lion'      
		 ,'Fred_Meyer'      
		 ,'Frys_Food_Stores'
		,'Giant'           
		 ,'Giant_Eagle'     
		 ,'Hannaford'       
		 ,'Harris_Teeter'   
		 ,'HEB'             
		 ,'Hy_Vee'          
		 ,'Ingles'          
		 ,'Jewel_Osco'      
		 ,'King_Soopers'    
		 ,'Kroger'          
		 ,'Lowes'           
		 ,'Market_Street'   
		 ,'Martins'         
		 ,'Pavilions'       
		 ,'Piggly_Wiggly'   
		 ,'PriceRite'       
		 ,'Publix'          
		 ,'QFC'             
		 ,'Ralphs'          
		 ,'Randalls'        
		 ,'Roundys'         
		 ,'Safeway'         
		 ,'Save_a_Lot'      
		 ,'SaveMart'        
		 ,'Schnucks'        
		 ,'Shaws'           
		 ,'ShopRite'        
		 ,'Smiths'          
		 ,'SpartanNash'     
		 ,'Star_Market'     
		 ,'Stop_and_Shop'   
		 ,'Super_Saver'     
		 ,'Tom_Thumb'       
		 ,'United_Supermarkets'  
		 ,'Vons'   
		 ,'Walmart_Neighborhood_Market' 
		 ,'Wegmans'       
		 ,'Weis_Markets'  
		 ,'WinCo_Foods'   
		 ,'Winn_Dixie'    
		 ,'Other_Grocery_Chain' 
		 )  THEN 'Grocery Chain' 
		 WHEN  Retailer IN ('Food_Cooperative'
		,'Sprouts'
		,'Whole_Foods'
		,'Other_Specialty_Grocery_Store'
		,'Trader_Joes'
		) THEN  'Specialty Grocery Store'
		WHEN Retailer IN
		( 'Amigos'
		,'Bashas'
		,'Bravo'
		,'C_Town'
		,'El_Super'
		,'Fiesta'
		,'Food_City'
		,'Food_Town'
		,'La_Michoacana'
		,'Mi_Tienda'
		,'Northgate_Market'
		,'Sellers_Bros'
		,'Vallarta'
		,'Superior'
		,'Other_Ethnic_Grocery_Store'
		,'Sedanos'
		,'Other_Hispanic_Grocery_Store'
		,'Other_Asian_Grocery_Store'
		 )
		THEN  'Ethnic Grocery Store'
		WHEN Retailer IN ('Target'
		,'Meijer'
		,'Walmart_Supercenter'
		,'Other_Mass_Merchandiser'
		,'Kmart'
		) THEN 'Superstore / Mass Merchandiser'
		WHEN  Retailer IN (
		'Other_Warehouse_Club'
		,'BJs'
		,'Costco'
		,'Sams_Club'
		)
		THEN 'Warehouse Club'
		WHEN  Retailer IN 
		(
		'Dollar_Tree'
		,'Dollar_General'
		,'Family_Dollar'
		,'Other_Dollar_Store'
		)
		THEN  'Dollar Store'
		WHEN Retailer IN
		(
		'CVS'
		,'Duane_Reade'
		,'Rite_Aid'
		,'Walgreens'
		,'Other_drug_store'
		)
		THEN 'Drug Store'
		WHEN Retailer  IN (
		'BP'
		,'Caseys'
		,'Chevron'
		,'Circle_K'
		,'CITGO'
		,'Exxon_Mobil'
		,'Marathon'
		,'QuikTrip'
		,'Sheetz'
		,'Shell'
		,'Speedway'
		,'Sunoco'
		,'Wawa'
		,'Local_convenience_gas_station'
		,'Other_convenience_gas_station'
		,'Seven_Eleven'
		)
		THEN 'Convenience Store / Gas Station'

		WHEN Retailer IN
		(
		'Amazon_com'
		,'BJs_com'
		,'Costco_com'
		,'CVS_com'
		,'FreshDirect'
		,'Instacart'
		,'Kroger_com'
		,'Peapod'
		,'SamsClub_com'
		,'Seamless'
		,'Target_com'
		,'Walgreens_com'
		,'Walmart_com'
		,'Other_Website_App'
		)
		THEN  'Online'
		WHEN Retailer = 'Corner_Store_Bodega' THEN 'Corner store/Bodega/Tienda la Esquina'
		WHEN Retailer IS NULL THEN 'I Don''t Know'
		END AS Channel
		,CASE 
							WHEN Retailer LIKE '%_com%' THEN REPLACE(Retailer,'_com','.com')
		ELSE
		REPLACE(Retailer,'_',' ') END AS Retailer
		,REPLACE([Eating_Styles],'_',' ')  AS Palates
		,[Weights]
FROM [KG_SAS ].[USER_SALES].[FROZEN_SHOPPERS_TRANSPOSE] WITH (NOLOCK)
WHERE Retailer IS NOT NULL AND Retailer NOT LIKE '%Other%' 
) A

GROUP BY
              A.[respid]
             ,A.[Age]
             ,A.[Age Group]
             ,A.[Gender]
             ,A.[Income]
             ,A.[Race or Ethnicity]
             ,A.[HH Size]
             ,A.[Segments]
             ,A.[Missions]
             ,A.[Channel]
             ,A.[Retailer]
             ,A.[Palates]









GO
/****** Object:  View [USER_SALES].[UVW_FRZ_VGTBL]    Script Date: 11/20/2018 5:32:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author				:	Jayakannan Vinoth
-- Create date		:	03/29/2018
-- Description		:	Extract the Cambridge demand landscape Survey data for Frozen Veggie Category.
-- ============================================= 



CREATE VIEW [USER_SALES].[UVW_FRZ_VGTBL]
AS
SELECT		   A.[respid] as RESPDNT_ID
             ,A.[Age] as AGE
             ,A.[Age Group] as AGE_GRP
             ,A.[Gender] as GNDR
             ,A.[Income] as INCM
             ,A.[Race or Ethnicity] as RACE_OR_ETHN
             ,A.[HH Size] as HSE_HLD_SZ
             ,A.[Segment] as SEG
             ,A.[Need State] as NEED_ST
             ,A.[Channel] as CHNL
             ,A.[Retailer] as RETLR
             ,A.[Palates] as PLT
             ,AVG(Weights) as WGT
FROM

(SELECT 
[respid]
,[Age]
,[AGE_CATEGORY] as [Age Group]
       ,[Gender] as [Gender]
       ,[Income] as [Income]
      ,[Race_or_Ethnicity] as [Race or Ethnicity]
       ,[HH_Size] as [HH Size]
       ,[Segment]
       ,[Need_State] as [Need State]
	   ---- Create Channel Hierarchy based on the Retailer grouping list provided.
          ,CASE WHEN Retailer IN
(
'Acme Markets'  
 ,'Ahold'         
 ,'Albertsons'     
 ,'ALDI'           
 ,'Bakers'         
 ,'BI LO'          
 ,'City Market'    
 ,'Cub'
 ,'Delhaize'            
 ,'Dierbergs'      
 ,'Dillons'        
 ,'Dominicks'      
 ,'Fairway'        
 ,'FarmFresh'      
 ,'Food 4 Less'    
 ,'Food Lion'      
 ,'Fred Meyer'      
 ,'Frys Food Stores'
,'Giant'           
 ,'Giant Eagle'     
 ,'Hannaford'       
 ,'Harris Teeter'   
 ,'HEB'             
 ,'Hy Vee'          
 ,'Ingles'          
 ,'Jewel Osco'      
 ,'King Soopers'    
 ,'Kroger'          
 ,'Lowes'           
 ,'Market Street'   
 ,'Martins'         
 ,'Pavilions'       
 ,'Piggly Wiggly'   
 ,'PriceRite'       
 ,'Publix'          
 ,'QFC'             
 ,'Ralphs'          
 ,'Randalls'        
 ,'Roundys'         
 ,'Safeway'         
 ,'Save a Lot'      
 ,'SaveMart'        
 ,'Schnucks'        
 ,'Shaws'           
 ,'ShopRite'        
 ,'Smiths'          
 ,'SpartanNash'     
 ,'Star Market'     
 ,'Stop and Shop'   
 ,'Super Saver'     
 ,'Tom Thumb'       
 ,'United Supermarkets'  
 ,'Vons'   
 ,'Walmart Neighborhood Market' 
 ,'Wegmans'       
 ,'Weis Markets'  
 ,'WinCo Foods'   
 ,'Winn Dixie'    
 ,'Other Grocery Chain' 
 )  THEN 'Grocery Chain' 
 WHEN  Retailer IN ('Food Cooperative'
,'Sprouts'
,'Whole Foods'
,'Other Specialty Grocery Store'
,'Trader Joes'
) THEN  'Specialty Grocery Store'
WHEN Retailer IN
( 'Amigos'
,'Bashas'
,'Bravo'
,'C Town'
,'El Super'
,'Fiesta'
,'Food City' 
,'Food Town'
,'La Michoacana'
,'Mi Tienda'
,'Northgate Market'
,'Sellers Bros'
,'Vallarta'
,'Superior'
,'Other Ethnic Grocery Store'
,'Sedanos'
,'Other Hispanic Grocery Store'
,'Other Asian Grocery Store'
)
THEN  'Ethnic Grocery Store'
WHEN Retailer IN ('Target'
,'Meijer'
,'Walmart Supercenter'
,'Other Mass Merchandiser'
,'Kmart'
) THEN 'Superstore / Mass Merchandiser'
WHEN  Retailer IN (
'Other Warehouse Club'
,'BJs'
,'Costco'
,'Sams Club'
)
THEN 'Warehouse Club'
WHEN  Retailer IN 
(
'Dollar Tree'
,'Dollar General'
,'Family Dollar'
,'Other Dollar Store'
)
THEN  'Dollar Store'
WHEN Retailer IN
(
  'CVS'
,'Duane Reade'
,'Rite Aid'
,'Walgreens'
,'Other drug store'
)
THEN 'Drug Store'
WHEN Retailer  IN (
'BP'
,'Caseys'
,'Chevron'
,'Circle K'
,'CITGO'
,'Exxon Mobil'
,'Marathon'
,'QuikTrip'
,'Sheetz'
,'Shell'
,'Speedway'
,'Sunoco'
,'Wawa'
,'Local convenience gas station'
,'Other convenience gas station'
,'Seven Eleven'
)
THEN 'Convenience Store / Gas Station'

WHEN Retailer IN
(
'Amazon com'
,'BJs com'
,'Costco com'
,'CVS com'
,'FreshDirect'
,'Instacart'
,'Kroger com'
,'Peapod'
,'SamsClub com'
,'Seamless'
,'Target com'
,'Walgreens com'
,'Walmart com'
,'Other Website App'
)
THEN  'Online'
WHEN Retailer = 'Corner Store Bodega' THEN 'Corner store/Bodega/Tienda la Esquina'
WHEN Retailer IS NULL THEN 'I Don''t Know'
END AS Channel
,REPLACE(Retailer,'_',' ') AS Retailer
,REPLACE([Eating_Styles],'_',' ')  AS Palates
,[Weights]
FROM [KG_SAS ].[USER_SALES].[FROZEN_VEGGIE_TRANSPOSE] WITH (NOLOCK)
WHERE Retailer IS NOT NULL  AND Retailer NOT LIKE '%Other%' 
) A
GROUP BY
             A.[respid]
             ,A.[Age]
             ,A.[Age Group]
             ,A.[Gender]
             ,A.[Income]
             ,A.[Race or Ethnicity]
             ,A.[HH Size]
             ,A.[Segment]
             ,A.[Need State]
             ,A.[Channel]
             ,A.[Retailer]
             ,A.[Palates]




GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_SNACKS_GSV_BUD]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE CLUSTERED INDEX [IDX_SNACKS_GSV_BUD] ON [USER_SALES].[SNACKS_GSV_BUDGET]
(
	[PLAN_TO_NBR] ASC,
	[CATEGORY] ASC,
	[QTR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_SNACKS_POS_BUD]    Script Date: 11/20/2018 5:32:31 PM ******/
CREATE CLUSTERED INDEX [IDX_SNACKS_POS_BUD] ON [USER_SALES].[SNACKS_POS_BUDGET]
(
	[SOLD_TO_NBR] ASC,
	[CATEGORY] ASC,
	[QTR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (sysdatetime()) FOR [CreateDttm]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (suser_sname()) FOR [CreatedBy]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT ('N') FOR [LAST_DAY_OF_WEEK_FLAG]
GO
ALTER TABLE [ACCENTURE].[SrcOTCDeductionsLiveSnapshot] ADD  DEFAULT (sysdatetime()) FOR [REPORT_EXT_DT]
GO
USE [master]
GO
ALTER DATABASE [KG_SAS] SET  READ_WRITE 
GO
