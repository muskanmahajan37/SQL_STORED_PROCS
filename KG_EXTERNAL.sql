USE [master]
GO
/****** Object:  Database [KG_EXTERNAL]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE DATABASE [KG_EXTERNAL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KG_EXTERNAL-10-7-16', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KG_EXTERNAL-10-7-16.mdf' , SIZE = 232448000KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KG_EXTERNAL_log-10-7-2016', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KG_EXTERNAL_log-10-7-2016.ldf' , SIZE = 1593344KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KG_EXTERNAL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KG_EXTERNAL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET ARITHABORT OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KG_EXTERNAL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KG_EXTERNAL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KG_EXTERNAL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KG_EXTERNAL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KG_EXTERNAL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KG_EXTERNAL] SET  MULTI_USER 
GO
ALTER DATABASE [KG_EXTERNAL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KG_EXTERNAL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KG_EXTERNAL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KG_EXTERNAL] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KG_EXTERNAL', N'ON'
GO
USE [KG_EXTERNAL]
GO
/****** Object:  User [US\SQL_SC_PWRUSERS_R]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_SC_PWRUSERS_R] FOR LOGIN [US\SQL_SC_PWRUSERS_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_GBS_IT_USERS_R]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_GBS_IT_USERS_R] FOR LOGIN [US\SQL_GBS_IT_USERS_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [US\ISM_READ_WRITE]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\ISM_READ_WRITE] FOR LOGIN [US\ISM_READ_WRITE]
GO
/****** Object:  User [US\ISM_READ]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\ISM_READ] FOR LOGIN [US\ISM_READ]
GO
/****** Object:  User [US\ISM_ADMIN]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [US\ISM_ADMIN] FOR LOGIN [US\ISM_ADMIN]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_SC_PWRUSERS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_GBS_IT_USERS_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ_WRITE]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_READ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\ISM_ADMIN]
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
/****** Object:  Schema [ATTASKWF]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE SCHEMA [ATTASKWF]
GO
/****** Object:  Schema [ISM]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE SCHEMA [ISM]
GO
/****** Object:  Schema [K_PATH]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE SCHEMA [K_PATH]
GO
/****** Object:  Schema [SERVNOW]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE SCHEMA [SERVNOW]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_CRE_K_PATH_CIS_PROJ_RPT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: February 19, 2017
-- Description:	Select Data from various K-Path tables, 
--              pivoting certain fields to produce 
--              a usable dataset for CIS Projects.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_CRE_K_PATH_CIS_PROJ_RPT]
WITH EXEC AS CALLER
AS
DECLARE @DynamicPivotQuery AS NVARCHAR(MAX)
DECLARE @ColumnName AS NVARCHAR(MAX)

begin try drop table KG_EXTERNAL.STG.K_PATH_CIS_PROJ_RPT end try
begin catch end catch;

-- can't use temporary table in dynamic pivot
begin try drop table KG_EXTERNAL.STG.K_PATH_CIS_PROJ_DATA_PVT end try
begin catch end catch;

--Pick up Data
select pd.I_NODE as "Project Key", pl.TITLE as "Project Type", pd.STATUS as "Project Status",   
cast(a.DESCRIPTION as varchar(max)) as "Project Description",
cast(mdl.LABEL as varchar(132)) AS LABEL, cast(md.VALUE as varchar(255)) as VALUE
into #K_PATH_CIS_PROJ_DATA
FROM KG_EXTERNAL.K_PATH.sd_ProjectData pd 
join KG_EXTERNAL.K_PATH.sd_ProjectLayout pl on pl.LAYOUTID=pd.LAYOUTID and pl.STATUS='published'
JOIN KG_EXTERNAL.K_PATH.sd_formLayouts fl on fl.FORMGUID=pl.METAFORMGUID and fl.PUBLISHED=1 and fl.LATESTPUBLISHED=1
JOIN KG_EXTERNAL.K_PATH.sd_MetaDataLabels mdl on mdl.FORMGUID=pl.METAFORMGUID
left outer join KG_EXTERNAL.K_PATH.sd_MetaData md on mdl.FORMGUID=md.FORMGUID and md.FORMELEMENTGUID=mdl.FORMELEMENTGUID and md.I_NODE=pd.I_NODE
left outer join KG_EXTERNAL.K_PATH.sd_association a on pd.I_NODE=a.I_NODE
left outer join KG_EXTERNAL.K_PATH.Users u on upper(u.USERNAME)=upper(a.CREATEDBY)
WHERE pl.TITLE='Packaging Graphics US'
and pd.STATUS<>'Cancelled'
and md.VALUE is not null
and (mdl.LABEL like 'UPC #' or										
mdl.LABEL like  'SAP #' or
mdl.LABEL like  'Product' or	
mdl.LABEL like  'Package Type' or	
mdl.LABEL like  'Printer/Location' or	
mdl.LABEL like  'Files Shipped' or	
mdl.LABEL like  'Files Due to Printer' or
mdl.LABEL like  'Reason for Change (1)' or	
mdl.LABEL like  'Reason For Change Comment' or	
mdl.LABEL like  'Nutrition Fact(s)' or	
mdl.LABEL like  'Billing Category' or		
mdl.LABEL like  'C3 Submission') 
and pd.I_NODE in
(select I_NODE
from KG_EXTERNAL.K_PATH.sd_MetaDataLabels mdl
join KG_EXTERNAL.K_PATH.sd_MetaData md on mdl.FORMGUID=md.FORMGUID and md.FORMELEMENTGUID=mdl.FORMELEMENTGUID
WHERE cast(mdl.LABEL as varchar(132))='Nutrition Fact(s)'
  and (cast(md.VALUE as varchar(255)) like '%-LR' or
       cast(md.VALUE as varchar(255)) like '% LR'));
  
SELECT distinct "Project Key", LABEL, VALUE
into #K_PATH_CIS_PROJ_DATA_TO_PVT
from #K_PATH_CIS_PROJ_DATA 
WHERE VALUE is not NULL;

--Get distinct values of the PIVOT Column 
SELECT @ColumnName= ISNULL(@ColumnName + ',','') 
       + QUOTENAME(LABEL)
FROM (SELECT DISTINCT LABEL FROM #K_PATH_CIS_PROJ_DATA_TO_PVT) AS LABEL;

--Prepare the PIVOT query using the dynamic 
-- can't use temporary table in dynamic pivot
SET @DynamicPivotQuery = 
  N'SELECT "Project Key", ' + @ColumnName + ' 
    INTO KG_EXTERNAL.STG.K_PATH_CIS_PROJ_DATA_PVT
    FROM #K_PATH_CIS_PROJ_DATA_TO_PVT                                          
    PIVOT(max(VALUE)
          FOR  LABEL IN (' + @ColumnName + ')) AS PVTTable';

--SELECT @DynamicPivotQuery
--Execute the Dynamic Pivot Query
EXEC sp_executesql @DynamicPivotQuery;

SELECT distinct d."Project Type", d."Project Status", d."Project Description",
 p.*
 INTO KG_EXTERNAL.STG.K_PATH_CIS_PROJ_RPT
 from #K_PATH_CIS_PROJ_DATA d, KG_EXTERNAL.STG.K_PATH_CIS_PROJ_DATA_PVT p
 where d."Project Key"=p."Project Key";

drop table #K_PATH_CIS_PROJ_DATA;
drop table #K_PATH_CIS_PROJ_DATA_TO_PVT;
drop table KG_EXTERNAL.STG.K_PATH_CIS_PROJ_DATA_PVT

GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_CRE_K_PATH_PROJ_RPT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Wynter Johnson
-- Create date: February 7, 2017
-- Description:	Select Data from various K-Path tables, 
--              pivoting certain fields to produce 
--              a usable dataset.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_CRE_K_PATH_PROJ_RPT]
WITH EXEC AS CALLER
AS
DECLARE @DynamicPivotQuery AS NVARCHAR(MAX)
DECLARE @ColumnName AS NVARCHAR(MAX)

begin try drop table KG_EXTERNAL.STG.K_PATH_PROJ_RPT end try
begin catch end catch;

-- can't use temporary table in dynamic pivot
begin try drop table KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT end try
begin catch end catch;

--Pick up Data
select pd.I_NODE as "Project Key", md.GROUPIDX as "Group ID", pl.TITLE as "Project Type", pd.PROJECTCODE as "Project Number", INITIATIVENAME as "Name",  pd.STATUS as "Project Status", pd.REASONCODE as "Reason Code", 
pd.PROJECTEXTRADATE2 as "Revised Ship Date", pd.COMPRESSION as "Compression", 
datediff(day, pd.PROJECTSTARTDATE, pd.PROJECTEXTRADATE2) as "Cycle Time (Start to Revised)", 
CONCAT(u.FIRSTNAME,' ', u.LASTNAME) as "Created By",
cast(a.DESCRIPTION as varchar(max)) as "Project Description",
cast(mdl.LABEL as varchar(132)) AS LABEL, cast(md.VALUE as varchar(255)) as VALUE
into #K_PATH_PROJ_DATA
FROM KG_EXTERNAL.K_PATH.sd_ProjectData pd 
join KG_EXTERNAL.K_PATH.sd_ProjectLayout pl on pl.LAYOUTID=pd.LAYOUTID and pl.STATUS='published'
JOIN KG_EXTERNAL.K_PATH.sd_formLayouts fl on fl.FORMGUID=pl.METAFORMGUID and fl.PUBLISHED=1 and fl.LATESTPUBLISHED=1
JOIN KG_EXTERNAL.K_PATH.sd_MetaDataLabels mdl on mdl.FORMGUID=pl.METAFORMGUID
left outer join KG_EXTERNAL.K_PATH.sd_MetaData md on mdl.FORMGUID=md.FORMGUID and md.FORMELEMENTGUID=mdl.FORMELEMENTGUID and md.I_NODE=pd.I_NODE
left outer join KG_EXTERNAL.K_PATH.sd_association a on pd.I_NODE=a.I_NODE
left outer join KG_EXTERNAL.K_PATH.Users u on upper(u.USERNAME)=upper(a.CREATEDBY)
WHERE pd.PROJECTEXTRADATE2>='2015-01-01' -- Revised Ship Date > 31 Dec 2014
and pl.TITLE in ('PDR','SCR','PWR', 'BE', 'SPC')
and md.VALUE is not null
and (mdl.LABEL like 'Business Unit' or
mdl.LABEL like  'Logistic Innovation Manager' or	
mdl.LABEL like  'Region' or 	
mdl.LABEL like  'GSV' or	
mdl.LABEL like  'Number of Slots' or	
mdl.LABEL like  'Start Production Date' or
mdl.LABEL like  'Platform' or	
mdl.LABEL like  'Production Location' or	
mdl.LABEL like  'PDR Compression' or		
mdl.LABEL like  'Event Type' or	
mdl.LABEL like  'Is this project account specific?' or	
mdl.LABEL like  'Account Name' or	
mdl.LABEL like  'Launch SKU' or
mdl.LABEL like  'Project Description' or
mdl.LABEL like  'Launch Quantity');

CREATE INDEX K_PATH_PROJ_DATA_IX ON #K_PATH_PROJ_DATA("Project Key", "Group ID");

SELECT distinct "Project Key", "Group ID", LABEL, VALUE
into #K_PATH_PROJ_DATA_TO_PVT
from #K_PATH_PROJ_DATA 
WHERE VALUE is not NULL;

--Ensure that one of each values exists
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Business Unit');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Logistic Innovation Manager');	
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Region');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('GSV');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Number of Slots');	
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Start Production Date');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Platform');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Production Location');	
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('PDR Compression');	
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Event Type');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Is this project account specific?');	
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Account Name');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Launch SKU');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Project Description');
insert into #K_PATH_PROJ_DATA_TO_PVT (LABEL) VALUES ('Launch Quantity');

--Get distinct values of the PIVOT Column 
SELECT @ColumnName= ISNULL(@ColumnName + ',','') 
       + QUOTENAME(LABEL)
FROM (SELECT DISTINCT LABEL FROM #K_PATH_PROJ_DATA_TO_PVT) AS LABEL;

--Prepare the PIVOT query using the dynamic 
-- can't use temporary table in dynamic pivot
SET @DynamicPivotQuery = 
  N'SELECT "Project Key", "Group ID", ' + @ColumnName + ' 
    INTO KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT
    FROM #K_PATH_PROJ_DATA_TO_PVT                                          
    PIVOT(max(VALUE)
          FOR  LABEL IN (' + @ColumnName + ')) AS PVTTable';

--SELECT @DynamicPivotQuery
--Execute the Dynamic Pivot Query
EXEC sp_executesql @DynamicPivotQuery;

CREATE INDEX K_PATH_PROJ_DATA_PVT_IX ON KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT("Project Key", "Group ID");

SELECT distinct d."Project Key", d."Group ID", d."Project Type", d."Name", d."Project Number", d."Project Status", d."Reason Code", 
 d."Revised Ship Date", d."Compression", d."Cycle Time (Start to Revised)", d."Created By", d."Project Description",
 case when p."Business Unit" is not null then p."Business Unit" else p0."Business Unit" end as "Business Unit",
 case when p."Logistic Innovation Manager" is not null then p."Logistic Innovation Manager" else p0."Logistic Innovation Manager" end as "Logistic Innovation Manager",
 case when p."Region" is not null then p."Region" else p0."Region" end as "Region",
 case when p."Platform" is not null then p."Platform" else p0."Platform" end as "Platform",
 case when p."GSV" is not null then p."GSV" else p0."GSV" end as "GSV",
 case when p."Number of Slots" is not null then p."Number of Slots" else p0."Number of Slots" end as "Number of Slots",
 case when p."PDR Compression" is not null then p."PDR Compression" else p0."PDR Compression" end as "PDR Compression",
 case when p."Production Location" is not null then p."Production Location" else p0."Production Location" end as "Production Location", 
 case when p."Account Name" is not null then p."Account Name" else p0."Account Name" end as "Account Name",	
 case when p."Is this project account specific?" is not null then p."Is this project account specific?" else p0."Is this project account specific?" end as "Is this project account specific?",
 case when p."Event Type" is not null then p."Event Type" else p0."Event Type" end as "Event Type",
 case when p."Start Production Date" is not null then p."Start Production Date" else p0."Start Production Date" end as "Start Production Date",
 case when p."Launch SKU" is not null then p."Launch SKU" else p0."Launch SKU" end as "Launch SKU",
 case when p."Launch Quantity" is not null then p."Launch Quantity" else p0."Launch Quantity" end as "Launch Quantity"
 INTO KG_EXTERNAL.STG.K_PATH_PROJ_RPT
 from #K_PATH_PROJ_DATA d, KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT p, KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT p0
 where d."Project Key"=p."Project Key" and (d."Group ID"=p."Group ID"  or (d."Group ID" is null and p."Group ID" is null))
   and d."Project Key"=p0."Project Key" and (d."Group ID"<>0 and p0."Group ID"=0 or (d."Group ID" is null and p0."Group ID" is null) or (d."Group ID"=0 and p0."Group ID"=0))

drop table #K_PATH_PROJ_DATA;
drop table #K_PATH_PROJ_DATA_TO_PVT;
drop table KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT;



GO
/****** Object:  StoredProcedure [dbo].[USP_PROC_CRE_K_PATH_PROJ_RPT_bck]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Wynter Johnson
-- Create date: February 7, 2017
-- Description:	Select Data from various K-Path tables, 
--              pivoting certain fields to produce 
--              a usable dataset.
-- =============================================
CREATE PROCEDURE [dbo].[USP_PROC_CRE_K_PATH_PROJ_RPT_bck]
WITH EXEC AS CALLER
AS
DECLARE @DynamicPivotQuery AS NVARCHAR(MAX)
DECLARE @ColumnName AS NVARCHAR(MAX)

begin try drop table KG_EXTERNAL.STG.K_PATH_PROJ_RPT end try
begin catch end catch;

-- can't use temporary table in dynamic pivot
begin try drop table KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT end try
begin catch end catch;

--Pick up Data
select pd.I_NODE as "Project Key", pl.TITLE as "Project Type", pd.PROJECTCODE as "Project Number", INITIATIVENAME as "Name",  pd.STATUS as "Project Status", pd.REASONCODE as "Reason Code", 
pd.PROJECTEXTRADATE2 as "Revised Ship Date", pd.COMPRESSION as "Compression", 
datediff(day, pd.PROJECTSTARTDATE, pd.PROJECTEXTRADATE2) as "Cycle Time (Start to Revised)", 
CONCAT(u.FIRSTNAME,' ', u.LASTNAME) as "Created By",
cast(a.DESCRIPTION as varchar(max)) as "Project Description",
cast(mdl.LABEL as varchar(132)) AS LABEL, cast(md.VALUE as varchar(255)) as VALUE
into #K_PATH_PROJ_DATA
FROM KG_EXTERNAL.K_PATH.sd_ProjectData pd 
join KG_EXTERNAL.K_PATH.sd_ProjectLayout pl on pl.LAYOUTID=pd.LAYOUTID and pl.STATUS='published'
JOIN KG_EXTERNAL.K_PATH.sd_formLayouts fl on fl.FORMGUID=pl.METAFORMGUID and fl.PUBLISHED=1 and fl.LATESTPUBLISHED=1
JOIN KG_EXTERNAL.K_PATH.sd_MetaDataLabels mdl on mdl.FORMGUID=pl.METAFORMGUID
left outer join KG_EXTERNAL.K_PATH.sd_MetaData md on mdl.FORMGUID=md.FORMGUID and md.FORMELEMENTGUID=mdl.FORMELEMENTGUID and md.I_NODE=pd.I_NODE
left outer join KG_EXTERNAL.K_PATH.sd_association a on pd.I_NODE=a.I_NODE
left outer join KG_EXTERNAL.K_PATH.Users u on upper(u.USERNAME)=upper(a.CREATEDBY)
WHERE pd.PROJECTEXTRADATE2>='2015-01-01' -- Revised Ship Date > 31 Dec 2014
and pl.TITLE in ('PDR','SCR','PWR', 'BE', 'SPC')
and md.VALUE is not null
and (mdl.LABEL like 'Business Unit' or
mdl.LABEL like  'Logistic Innovation Manager' or	
mdl.LABEL like  'Region' or 	
mdl.LABEL like  'GSV' or	
mdl.LABEL like  'Number of Slots' or	
mdl.LABEL like  'Start Production Date' or
mdl.LABEL like  'Platform' or	
mdl.LABEL like  'Production Location' or	
mdl.LABEL like  'Bakery/Production Location' or	
mdl.LABEL like  'PDR Compression' or		
mdl.LABEL like  'Event Type' or	
mdl.LABEL like  'Is this project account specific?' or	
mdl.LABEL like  'Account Name' or	
mdl.LABEL like  'Launch SKU' or
mdl.LABEL like  'Project Description' or
mdl.LABEL like  'Launch Quantity');

SELECT distinct "Project Key", LABEL, VALUE
into #K_PATH_PROJ_DATA_TO_PVT
from #K_PATH_PROJ_DATA 
WHERE VALUE is not NULL;

--Get distinct values of the PIVOT Column 
SELECT @ColumnName= ISNULL(@ColumnName + ',','') 
       + QUOTENAME(LABEL)
FROM (SELECT DISTINCT LABEL FROM #K_PATH_PROJ_DATA_TO_PVT) AS LABEL;

--Prepare the PIVOT query using the dynamic 
-- can't use temporary table in dynamic pivot
SET @DynamicPivotQuery = 
  N'SELECT "Project Key", ' + @ColumnName + ' 
    INTO KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT
    FROM #K_PATH_PROJ_DATA_TO_PVT                                          
    PIVOT(max(VALUE)
          FOR  LABEL IN (' + @ColumnName + ')) AS PVTTable';

--SELECT @DynamicPivotQuery
--Execute the Dynamic Pivot Query
EXEC sp_executesql @DynamicPivotQuery;

SELECT distinct d."Project Type", d."Name", d."Project Number", d."Project Status", d."Reason Code", 
 d."Revised Ship Date", d."Compression", 
 d."Cycle Time (Start to Revised)", 
 d."Created By", d."Project Description",
 p.*
 INTO KG_EXTERNAL.STG.K_PATH_PROJ_RPT
 from #K_PATH_PROJ_DATA d, KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT p
 where d."Project Key"=p."Project Key";

drop table #K_PATH_PROJ_DATA;
drop table #K_PATH_PROJ_DATA_TO_PVT;
drop table KG_EXTERNAL.STG.K_PATH_PROJ_DATA_PVT

GO
/****** Object:  StoredProcedure [SERVNOW].[USP_SYS_USER_GROUP_KG]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vikram Ganti
-- Create date: 2017-01-30 11:59:01.523
-- Description:	Update new groups into the SYS_USER_GROUIP_KG transactional table.
-- =============================================

CREATE PROCEDURE [SERVNOW].[USP_SYS_USER_GROUP_KG]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT INTO [SERVNOW].[SYS_USER_GROUP_KG]
           ([SYS_ID]
           ,[U_REGION]
           ,[U_SUPPLIER]
           ,[U_SUB_SUPPLIER]
           ,[NAME]
           ,[SLT_GROUP]
           ,[PILLAR]
           ,[TEAM]
           ,[SUB_TEAM]
           ,[SILO]
           ,[SCOPE]
           ,[MODIFIED_BY]
           ,[MODIFIED_DATE])
SELECT [SYS_ID]
      ,[U_REGION]
      ,[U_SUPPLIER]
      ,[U_SUB_SUPPLIER]
      ,[NAME]
      ,NULL AS [SLT_GROUP]
      ,NULL AS [PILLAR]
      ,NULL AS [TEAM]
      ,NULL AS [SUB_TEAM]
      ,NULL AS [SILO]
      ,NULL AS [SCOPE]
      ,NULL AS [MODIFIED_BY]
      ,GETDATE() AS [MODIFIED_DATE]
  FROM [KG_EXTERNAL].[SERVNOW].[SYS_USER_GROUP]
  WHERE SYS_ID NOT IN (SELECT SYS_ID FROM [SERVNOW].[SYS_USER_GROUP_KG])

END


GO
/****** Object:  Table [ATTASKWF].[ISSUES_AUDITTYPES]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ATTASKWF].[ISSUES_AUDITTYPES](
	[REFERENCENUMBER] [float] NOT NULL,
	[AUDITTYPES] [varchar](2) NOT NULL,
 CONSTRAINT [PK_ISSUES_AUDITTYPES] PRIMARY KEY NONCLUSTERED 
(
	[REFERENCENUMBER] ASC,
	[AUDITTYPES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ATTASKWF].[ISSUES_CORE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ATTASKWF].[ISSUES_CORE](
	[ID] [varchar](32) NOT NULL,
	[ACTUALCOMPLETIONDATE] [varchar](28) NULL,
	[ACTUALCOST] [float] NULL,
	[ACTUALSTARTDATE] [varchar](28) NULL,
	[ACTUALWORKREQUIRED] [float] NULL,
	[APPROVALPROCESSID] [varchar](32) NULL,
	[ASSIGNEDTOID] [varchar](32) NULL,
	[AUTOCLOSUREDATE] [varchar](28) NULL,
	[CATEGORYID] [varchar](32) NULL,
	[COMMITDATE] [varchar](28) NULL,
	[CONDITION] [varchar](1) NULL,
	[CURRENTAPPROVALSTEPID] [varchar](32) NULL,
	[CUSTOMERID] [varchar](32) NULL,
	[DESCRIPTION] [varchar](1024) NULL,
	[ENTEREDBYID] [varchar](32) NULL,
	[ENTRYDATE] [varchar](28) NULL,
	[EXTREFID] [varchar](32) NULL,
	[HASDOCUMENTS] [varchar](5) NULL,
	[HASMESSAGES] [varchar](5) NULL,
	[HASNOTES] [varchar](5) NULL,
	[HASRESOLVABLES] [varchar](5) NULL,
	[HASTIMEDNOTIFICATIONS] [varchar](5) NULL,
	[ISCOMPLETE] [varchar](5) NULL,
	[ISHELPDESK] [varchar](5) NULL,
	[LASTCONDITIONNOTEID] [varchar](32) NULL,
	[LASTNOTEID] [varchar](32) NULL,
	[LASTUPDATEDATE] [varchar](28) NULL,
	[LASTUPDATEDBYID] [varchar](32) NULL,
	[NAME] [varchar](1024) NULL,
	[OBJCODE] [varchar](10) NULL,
	[OPTASKTYPE] [varchar](10) NULL,
	[OWNERID] [varchar](32) NULL,
	[DE:DIGITAL AGENCY NAME] [varchar](100) NULL,
	[DE:ESP SLA --- ELAPSED MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA --- MINUTES] [float] NULL,
	[DE:ESP SLA --- OCCURRENCES CALCULATED] [float] NULL,
	[DE:ESP SLA --- OCCURRENCES] [float] NULL,
	[DE:ESP SLA --- TICKING STOPPED] [varchar](28) NULL,
	[DE:ESP SLA --- WORKDAY MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA CLS ELAPSED MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA CLS MINUTES] [float] NULL,
	[DE:ESP SLA CLS OCCURRENCES CALCULATED] [float] NULL,
	[DE:ESP SLA CLS OCCURRENCES] [float] NULL,
	[DE:ESP SLA CLS TICKING SINCE] [varchar](28) NULL,
	[DE:ESP SLA CLS WORKDAY MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA HOURS INCLUDED] [varchar](20) NULL,
	[DE:ESP SLA INP ELAPSED MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA INP MINUTES] [float] NULL,
	[DE:ESP SLA INP OCCURRENCES CALCULATED] [float] NULL,
	[DE:ESP SLA INP OCCURRENCES] [float] NULL,
	[DE:ESP SLA INP TICKING SINCE] [varchar](28) NULL,
	[DE:ESP SLA INP TICKING STOPPED] [varchar](28) NULL,
	[DE:ESP SLA INP WORKDAY MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA MINUTES DRIVER] [varchar](20) NULL,
	[DE:ESP SLA MINUTES EXCLUDED] [float] NULL,
	[DE:ESP SLA MINUTES INCLUDED] [float] NULL,
	[DE:ESP SLA NEW ELAPSED MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA NEW MINUTES] [float] NULL,
	[DE:ESP SLA NEW OCCURRENCES CALCULATED] [float] NULL,
	[DE:ESP SLA NEW OCCURRENCES] [float] NULL,
	[DE:ESP SLA NEW TICKING SINCE] [varchar](28) NULL,
	[DE:ESP SLA NEW TICKING STOPPED] [varchar](28) NULL,
	[DE:ESP SLA NEW WORKDAY MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA ONH ELAPSED MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA ONH MINUTES] [float] NULL,
	[DE:ESP SLA ONH OCCURRENCES CALCULATED] [float] NULL,
	[DE:ESP SLA ONH OCCURRENCES] [float] NULL,
	[DE:ESP SLA ONH TICKING SINCE] [varchar](28) NULL,
	[DE:ESP SLA ONH TICKING STOPPED] [varchar](28) NULL,
	[DE:ESP SLA ONH WORKDAY MINUTES CALCULATED] [float] NULL,
	[DE:ESP SLA OCCURRENCES DRIVER] [varchar](20) NULL,
	[DE:ESP SLA PREVIOUS STATUS EQUATES WITH] [varchar](5) NULL,
	[DE:ESP SLA RESOLUTION COUNT] [float] NULL,
	[DE:ESP SLA RESOLUTION EFFICIENCY] [float] NULL,
	[DE:ESP SLA RESOLUTION PRIORITY TIME] [varchar](40) NULL,
	[DE:ESP SLA RESOLUTION RED] [varchar](28) NULL,
	[DE:ESP SLA RESOLUTION REQUIRED] [varchar](28) NULL,
	[DE:ESP SLA RESOLUTION TIME IN DAYS] [float] NULL,
	[DE:ESP SLA RESOLUTION TIME IN HOURS] [float] NULL,
	[DE:ESP SLA RESOLUTION TIME IN MINUTES] [float] NULL,
	[DE:ESP SLA RESOLUTION YELLOW] [varchar](28) NULL,
	[DE:ESP SLA RESPONSE COUNT] [float] NULL,
	[DE:ESP SLA RESPONSE PRIORITY MINUTES] [float] NULL,
	[DE:ESP SLA RESPONSE RED] [varchar](28) NULL,
	[DE:ESP SLA RESPONSE REQUIRED] [varchar](28) NULL,
	[DE:ESP SLA RESPONSE TIME IN MINUTES] [float] NULL,
	[DE:ESP SLA RESPONSE YELLOW] [varchar](28) NULL,
	[DE:ESP SLA START] [varchar](28) NULL,
	[DE:ESP SLA STATUS EQUATES WITH] [varchar](5) NULL,
	[DE:ENVIRONMENT DETAILS] [varchar](40) NULL,
	[DE:FIRSTRESPONSE] [float] NULL,
	[DE:HOURS INCLUDED TEST2] [float] NULL,
	[DE:REGION] [varchar](20) NULL,
	[DE:RESOLUTIONHOURS] [float] NULL,
	[DE:RESPONSIBLE] [varchar](40) NULL,
	[DE:TECH STACK] [varchar](40) NULL,
	[PLANNEDCOMPLETIONDATE] [varchar](28) NULL,
	[PLANNEDSTARTDATE] [varchar](28) NULL,
	[PREVIOUSSTATUS] [varchar](5) NULL,
	[PRIMARYASSIGNMENT] [varchar](40) NULL,
	[PRIORITY] [float] NULL,
	[PROJECTID] [varchar](32) NULL,
	[PROJECTEDDURATIONMINUTES] [float] NULL,
	[QUEUETOPICID] [varchar](32) NULL,
	[REFERENCENUMBER] [float] NOT NULL,
	[REMAININGDURATIONMINUTES] [float] NULL,
	[RESOLVINGOBJCODE] [varchar](5) NULL,
	[RESOLVINGOBJID] [varchar](32) NULL,
	[ROLEID] [varchar](32) NULL,
	[SEVERITY] [float] NULL,
	[SOURCEOBJCODE] [varchar](5) NULL,
	[SOURCEOBJID] [varchar](32) NULL,
	[STATUS] [varchar](10) NULL,
	[STATUSUPDATE] [varchar](1024) NULL,
	[SUBMITTEDBYID] [varchar](32) NULL,
	[TEAMID] [varchar](32) NULL,
	[URL] [varchar](500) NULL,
	[WORKREQUIRED] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMAN_PROD_prod]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMAN_PROD_prod](
	[MTRL] [varchar](18) NULL,
	[PLNT] [varchar](4) NULL,
	[PLNT_TYPE] [varchar](4) NULL,
	[FISC_WK] [varchar](8) NULL,
	[FRCST_QTY] [decimal](17, 2) NULL,
	[ACT_PRD_QTY] [decimal](17, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COMP_EXECUTIONS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COMP_EXECUTIONS](
	[JOB_NAME] [varchar](40) NULL,
	[DATE_EXECUTION] [varchar](8) NULL,
	[DATE_LAST_EXTRACTION] [varchar](8) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_DMND_WOS_CALC]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_DMND_WOS_CALC](
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[SNP_VER] [varchar](8) NULL,
	[FISCPER] [int] NULL,
	[FISCWEK] [int] NULL,
	[INV] [decimal](20, 3) NULL,
	[TOT_DMD] [decimal](20, 3) NULL,
	[LOAD_DATE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_DMND_WOS_CALC_DLY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_DMND_WOS_CALC_DLY](
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[SNP_VER] [varchar](8) NULL,
	[FISCPER] [int] NULL,
	[FISCWEK] [int] NULL,
	[INV] [decimal](20, 3) NULL,
	[TOT_DMD] [decimal](20, 3) NULL,
	[LOAD_DATE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INV_DMND_WOS_CALC_WKLY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INV_DMND_WOS_CALC_WKLY](
	[MATERIAL] [varchar](18) NULL,
	[PLANT] [varchar](4) NULL,
	[SNP_VER] [varchar](8) NULL,
	[FISCPER] [int] NULL,
	[FISCWEK] [int] NULL,
	[INV] [decimal](20, 3) NULL,
	[TOT_DMD] [decimal](20, 3) NULL,
	[LOAD_DATE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVNTRY_BY_LOT_SNAP_HISTORY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVNTRY_BY_LOT_SNAP_HISTORY](
	[SNAPSHOT] [date] NULL,
	[SKUNAME] [varchar](100) NULL,
	[MATERIAL_TYPE - TEST] [varchar](20) NULL,
	[BUSINESS_UNIT_TEXT] [varchar](20) NULL,
	[PLANT_MEDIUM_TEXT] [varchar](26) NULL,
	[OLD_MATERIAL_NUMBER_KEY] [varchar](25) NULL,
	[MATERIAL_CLASSIFICAT_MOD_SHIP] [varchar](32) NULL,
	[STATUS] [varchar](4) NULL,
	[LOT_CODE_KEY] [varchar](10) NULL,
	[EXPDATE] [date] NULL,
	[MFGDATE] [date] NULL,
	[TOTAL_SHELF_LIFE] [decimal](4, 0) NULL,
	[QTY] [decimal](17, 3) NULL,
	[SUM_LOT_QTY] [decimal](17, 3) NULL,
	[STANDARD_PRICE] [decimal](17, 2) NULL,
	[AGE_OF_INVENTORY] [varchar](16) NULL,
	[DAYS_REMAINING_FOR_EXPIRATION] [varchar](31) NULL,
	[MAX_STORAGE_PERIOD] [decimal](17, 3) NULL,
	[DAYS_REMAINING_FOR_STOP_SHIP] [varchar](30) NULL,
	[STSHDT] [varchar](10) NULL,
	[EXTENDED] [varchar](10) NULL,
	[EXTENDED_$] [varchar](10) NULL,
	[0-30_CS] [decimal](17, 3) NULL,
	[31-60_CS] [decimal](17, 3) NULL,
	[61-90_CS] [decimal](17, 3) NULL,
	[91-120_CS] [decimal](17, 3) NULL,
	[120_CS] [decimal](17, 3) NULL,
	[AGE_RISK_CS] [decimal](17, 3) NULL,
	[AGE_RISK_$] [decimal](17, 3) NULL,
	[SKU] [varchar](18) NULL,
	[PLANT_KEY] [varchar](4) NULL,
	[F0-30 CS] [decimal](17, 3) NULL,
	[31 -60 CS] [decimal](17, 3) NULL,
	[61 -90 CS] [decimal](17, 3) NULL,
	[91 -120 CS] [decimal](17, 3) NULL,
	[CREATED] [varchar](10) NULL,
	[_TEMA001] [varchar](8) NULL,
	[_TEMA002] [varchar](8) NULL,
	[_TEMA003] [varchar](8) NULL,
	[TOTAL_SHELF_LIFE_KEY] [varchar](22) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[plnt_cap]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[plnt_cap](
	[LOAD_PD] [date] NULL,
	[FISC_YR_PD] [varchar](8) NULL,
	[PLNT] [varchar](4) NULL,
	[RES] [varchar](150) NULL,
	[DT_FNL] [decimal](18, 2) NULL,
	[AVAL_CAP] [decimal](18, 3) NULL,
	[CAP_CONS] [decimal](18, 3) NULL,
	[RES_CAP_LVL_PCT] [decimal](18, 3) NULL,
	[DT_HRS] [decimal](18, 2) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLNT_CAP_UTIZ]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLNT_CAP_UTIZ](
	[LOAD_PD] [date] NULL,
	[FISC_YR_PD] [varchar](8) NULL,
	[PLNT] [varchar](4) NULL,
	[RES] [varchar](150) NULL,
	[DT_FNL] [decimal](18, 2) NULL,
	[AVAL_CAP] [decimal](18, 3) NULL,
	[CAP_CONS] [decimal](18, 3) NULL,
	[RES_CAP_LVL_PCT] [decimal](18, 3) NULL,
	[DT_HRS] [decimal](18, 2) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](20) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](20) NULL,
	[DW_DEL_BIT] [varchar](1) NULL,
	[DW_DEL_USR] [varchar](20) NULL,
	[DW_DEL_TS] [datetime2](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_PLANNED_INVENTORY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_PLANNED_INVENTORY](
	[ON_HAND_INVENTORY] [decimal](10, 2) NULL,
	[ON_HAND_UOM] [varchar](25) NULL,
	[SHORTAGE] [decimal](10, 2) NULL,
	[SHORTAGE_UOM] [varchar](25) NULL,
	[IN_TRANSIT] [decimal](10, 2) NULL,
	[IN_TRANSIT_UOM] [varchar](25) NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[PLANT] [varchar](4) NOT NULL,
	[WEEK] [int] NOT NULL,
	[SNAP_DATE] [varchar](10) NOT NULL,
	[FISCAL_YEAR_PERIOD] [int] NULL,
	[LOAD_DATE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATERIAL] ASC,
	[PLANT] ASC,
	[WEEK] ASC,
	[SNAP_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_SE_INVENTORY_VALUE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_SE_INVENTORY_VALUE](
	[VERSION] [varchar](25) NULL,
	[Product] [varchar](18) NULL,
	[Prod Desc] [varchar](255) NULL,
	[Brand] [varchar](100) NULL,
	[SCP Equity] [varchar](100) NULL,
	[Input Food] [varchar](100) NULL,
	[Tactical Model\Fiscal Week] [varchar](100) NULL,
	[Period 01 2017] [decimal](15, 2) NULL,
	[Period 02 2017] [decimal](15, 2) NULL,
	[Period 03 2017] [decimal](15, 2) NULL,
	[Period 04 2017] [decimal](15, 2) NULL,
	[Period 05 2017] [decimal](15, 2) NULL,
	[Period 06 2017] [decimal](15, 2) NULL,
	[Period 07 2017] [decimal](15, 2) NULL,
	[Period 08 2017] [decimal](15, 2) NULL,
	[Period 09 2017] [decimal](15, 2) NULL,
	[Period 10 2017] [decimal](15, 2) NULL,
	[Period 11 2017] [decimal](15, 2) NULL,
	[Period 12 2017] [decimal](15, 2) NULL,
	[Period 01 2018] [decimal](15, 2) NULL,
	[Period 02 2018] [decimal](15, 2) NULL,
	[Period 03 2018] [decimal](15, 2) NULL,
	[Period 04 2018] [decimal](15, 2) NULL,
	[Period 05 2018] [decimal](15, 2) NULL,
	[Period 06 2018] [decimal](15, 2) NULL,
	[Period 07 2018] [decimal](15, 2) NULL,
	[Period 08 2018] [decimal](15, 2) NULL,
	[Period 09 2018] [decimal](15, 2) NULL,
	[Period 10 2018] [decimal](15, 2) NULL,
	[Period 11 2018] [decimal](15, 2) NULL,
	[Period 12 2018] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[STG_SE_WEEKS_OF_SUPPLY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STG_SE_WEEKS_OF_SUPPLY](
	[VERSION] [varchar](25) NULL,
	[IP_BUSINESS_UNIT] [varchar](25) NULL,
	[IP_BRAND] [varchar](25) NULL,
	[Period 01 2017] [decimal](15, 2) NULL,
	[Period 02 2017] [decimal](15, 2) NULL,
	[Period 03 2017] [decimal](15, 2) NULL,
	[Period 04 2017] [decimal](15, 2) NULL,
	[Period 05 2017] [decimal](15, 2) NULL,
	[Period 06 2017] [decimal](15, 2) NULL,
	[Period 07 2017] [decimal](15, 2) NULL,
	[Period 08 2017] [decimal](15, 2) NULL,
	[Period 09 2017] [decimal](15, 2) NULL,
	[Period 10 2017] [decimal](15, 2) NULL,
	[Period 11 2017] [decimal](15, 2) NULL,
	[Period 12 2017] [decimal](15, 2) NULL,
	[Period 01 2018] [decimal](15, 2) NULL,
	[Period 02 2018] [decimal](15, 2) NULL,
	[Period 03 2018] [decimal](15, 2) NULL,
	[Period 04 2018] [decimal](15, 2) NULL,
	[Period 05 2018] [decimal](15, 2) NULL,
	[Period 06 2018] [decimal](15, 2) NULL,
	[Period 07 2018] [decimal](15, 2) NULL,
	[Period 08 2018] [decimal](15, 2) NULL,
	[Period 09 2018] [decimal](15, 2) NULL,
	[Period 10 2018] [decimal](15, 2) NULL,
	[Period 11 2018] [decimal](15, 2) NULL,
	[Period 12 2018] [decimal](15, 2) NULL,
	[LOAD_DATE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_KSCDS_USFOODS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_KSCDS_USFOODS](
	[Dist Chain Name] [varchar](255) NULL,
	[Retail Chain Name] [varchar](255) NULL,
	[In-Market Category] [varchar](255) NULL,
	[In-Market Sub Category] [varchar](255) NULL,
	[Sub Brand] [varchar](255) NULL,
	[Case Code] [float] NULL,
	[Month Short Description] [varchar](255) NULL,
	[Outbound $ (Kellogg) - CY] [float] NULL,
	[Outbound $ (Kellogg) - PY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_USFOODS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_USFOODS](
	[A SYS CODE] [float] NULL,
	[PROD DESCR] [varchar](255) NULL,
	[Region Name] [varchar](255) NULL,
	[DIVISION NBR] [float] NULL,
	[DIVISION NAME] [varchar](255) NULL,
	[MFR PROD NBR - ( MATERIAL)] [varchar](255) NULL,
	[PIM GTIN] [varchar](255) NULL,
	[ITEM STATUS] [float] NULL,
	[CLASS DESCRIPTION] [varchar](255) NULL,
	[CATEGORY DESCRIPTION] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[PURCHASE VENDOR DESC] [varchar](255) NULL,
	[On Hand] [float] NULL,
	[On Order] [float] NULL,
	[Weeks on Hand w/o Open Orders] [float] NULL,
	[Weeks on Hand w/ Open Orders] [float] NULL,
	[PURCHASE VENDOR NBR] [varchar](255) NULL,
	[13 WK QTY] [float] NULL,
	[5/21/2017] [float] NULL,
	[5/28/2017] [float] NULL,
	[6/4/2017] [float] NULL,
	[6/11/2017] [float] NULL,
	[6/18/2017] [float] NULL,
	[6/25/2017] [float] NULL,
	[7/2/2017] [float] NULL,
	[7/9/2017] [float] NULL,
	[7/16/2017] [float] NULL,
	[7/23/2017] [float] NULL,
	[7/30/2017] [float] NULL,
	[8/6/2017] [float] NULL,
	[8/13/2017] [float] NULL,
	[8/20/2017] [float] NULL,
	[8/27/2017] [float] NULL,
	[9/3/2017] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ISM].[PLANNED_INVENTORY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ISM].[PLANNED_INVENTORY](
	[ON_HAND_INVENTORY] [decimal](10, 2) NULL,
	[ON_HAND_UOM] [varchar](25) NULL,
	[SHORTAGE] [decimal](10, 2) NULL,
	[SHORTAGE_UOM] [varchar](25) NULL,
	[IN_TRANSIT] [decimal](10, 2) NULL,
	[IN_TRANSIT_UOM] [varchar](25) NULL,
	[MATERIAL] [varchar](18) NOT NULL,
	[PLANT] [varchar](4) NOT NULL,
	[WEEK] [int] NOT NULL,
	[SNAP_DATE] [varchar](10) NOT NULL,
	[FISCAL_YEAR_PERIOD] [int] NULL,
	[LOAD_DATE] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MATERIAL] ASC,
	[PLANT] ASC,
	[WEEK] ASC,
	[SNAP_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ISM].[SE_INVENTORY_VALUE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ISM].[SE_INVENTORY_VALUE](
	[VERSION] [varchar](25) NULL,
	[PRODUCT] [varchar](18) NULL,
	[PERIOD] [varchar](60) NULL,
	[AMOUNT_VALUE] [decimal](10, 2) NULL,
	[LOAD_DATE] [varchar](10) NULL,
	[PROD_DESC] [varchar](255) NULL,
	[BRAND] [varchar](100) NULL,
	[SCP_EQUITY] [varchar](100) NULL,
	[INPUT_FOOD] [varchar](100) NULL,
	[TACTICAL_MODEL\FISICAL_WEEK] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [ISM].[SE_WEEKS_OF_SUPPLY]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [ISM].[SE_WEEKS_OF_SUPPLY](
	[VERSION] [varchar](25) NULL,
	[IP_BUSINESS_UNIT] [varchar](25) NULL,
	[IP_BRAND] [varchar](25) NULL,
	[PERIOD] [varchar](60) NULL,
	[AMOUNT_VALUE] [decimal](10, 2) NULL,
	[LOAD_DATE] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_association]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_association](
	[CSID] [int] NULL,
	[I_NODE] [int] NULL,
	[F_NODE] [int] NULL,
	[PARENTID] [int] NULL,
	[INHERITPERMISSION] [int] NULL,
	[ITEM] [varchar](1200) NULL,
	[TYPE] [varchar](20) NULL,
	[DESCRIPTION] [ntext] NULL,
	[CREATEDTIME] [datetime2](7) NULL,
	[CREATEDBY] [varchar](50) NULL,
	[PATH] [ntext] NULL,
	[FULLPATH] [varchar](4000) NULL,
	[FILEPATH] [varchar](4000) NULL,
	[SORTINDEX] [int] NULL,
	[TEMPLATE] [varchar](100) NULL,
	[STATUS] [varchar](100) NULL,
	[DELETED] [varchar](10) NULL,
	[LASTMODIFIEDTIME] [datetime2](7) NULL,
	[LASTMODIFIEDBY] [varchar](50) NULL,
	[METAFORMGUID] [varchar](36) NULL,
	[METADATA] [ntext] NULL,
	[CONTENTSTARTDATE] [datetime2](7) NULL,
	[CONTENTENDDATE] [datetime2](7) NULL,
	[BLOCKDOWNLOAD] [int] NULL,
	[MSGBODY] [ntext] NULL,
	[DWSTATUS] [varchar](20) NULL,
	[STARTDATE] [datetime2](7) NULL,
	[ENDDATE] [datetime2](7) NULL,
	[ORACLEID] [decimal](18, 0) NULL,
	[WORKFLOWID] [decimal](18, 0) NULL,
	[FEATURED] [int] NULL,
	[INGEST] [int] NULL,
	[PREVIEW] [int] NULL,
	[DELETEDBY] [int] NULL,
	[DELETEDTIME] [datetime2](7) NULL,
	[ARCHIVED] [int] NULL,
	[CONTENT] [ntext] NULL,
	[THUMBID] [int] NULL,
	[BANNERJSON] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_formLayouts]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_formLayouts](
	[FORMID] [decimal](18, 0) NULL,
	[FORMGUID] [varchar](36) NULL,
	[TITLE] [varchar](500) NULL,
	[DESCRIPTION] [varchar](1000) NULL,
	[TYPE] [varchar](100) NULL,
	[WORKFLOWS] [varchar](1000) NULL,
	[PAGES] [varchar](1000) NULL,
	[FORMJSON] [ntext] NULL,
	[CREATEDBY] [decimal](18, 0) NULL,
	[CREATEDTIME] [datetime2](7) NULL,
	[PUBLISHED] [int] NULL,
	[LATESTSAVED] [int] NULL,
	[LATESTPUBLISHED] [int] NULL,
	[DELETED] [int] NULL,
	[DATAVIEWID] [int] NULL,
	[LOCATION] [varchar](4000) NULL,
	[SAVELABEL] [varchar](255) NULL,
	[EMAILPROMPT] [int] NULL,
	[ALLOWDRAFT] [int] NULL,
	[ENABLEFILELIST] [int] NULL,
	[GROUPSORT] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_MetaData]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_MetaData](
	[I_NODE] [int] NULL,
	[USERID] [int] NULL,
	[LABEL] [varchar](510) NULL,
	[VALUE] [ntext] NULL,
	[EMBEDDED] [int] NULL,
	[METAATTRIBUTEID] [int] NULL,
	[FORMGUID] [varchar](36) NULL,
	[FORMELEMENTGUID] [varchar](36) NULL,
	[FILEFIELDID] [int] NULL,
	[USERFIELDID] [int] NULL,
	[GROUPIDX] [decimal](18, 0) NULL,
	[USERGROUPID] [int] NULL,
	[ASSOCIATEDITEMID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_MetaDataLabels]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_MetaDataLabels](
	[CSID] [decimal](18, 0) NULL,
	[FORMGUID] [varchar](36) NULL,
	[FORMELEMENTGUID] [varchar](36) NULL,
	[LABEL] [ntext] NULL,
	[CONTROLTYPE] [varchar](16) NULL,
	[ALLOWFILTER] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_ProjectData]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_ProjectData](
	[I_NODE] [int] NULL,
	[INITIATIVENAME] [varchar](200) NULL,
	[REGION] [varchar](100) NULL,
	[STARTOFSHIPDATE] [datetime2](7) NULL,
	[BRAND] [varchar](100) NULL,
	[INITIATIVELEVEL] [varchar](100) NULL,
	[PROJECTIMAGE] [varchar](400) NULL,
	[KEYWORDS] [varchar](1000) NULL,
	[MILESTONE] [int] NULL,
	[MILESTONEDATE] [datetime2](7) NULL,
	[CATEGORY] [varchar](100) NULL,
	[STATUS] [varchar](100) NULL,
	[PROJECTCOLOUR] [varchar](50) NULL,
	[PROJECTFILENAME] [varchar](100) NULL,
	[BUDGETFILENAME] [varchar](100) NULL,
	[PROJECTSTARTDATE] [datetime2](7) NULL,
	[PROJECTENDDATE] [datetime2](7) NULL,
	[LAYOUTID] [decimal](18, 0) NULL,
	[PROJECTEXTRADATE1] [datetime2](7) NULL,
	[TEMPLATEID] [decimal](18, 0) NULL,
	[DRAFT] [int] NULL,
	[PROJECTCODE] [varchar](200) NULL,
	[PROJECTEXTRADATE2] [datetime2](7) NULL,
	[REASONCODE] [varchar](150) NULL,
	[COMPRESSION] [decimal](18, 0) NULL,
	[TASKTEMPLATE] [int] NULL,
	[ISBILLABLE] [int] NULL,
	[RATECARDID] [decimal](18, 0) NULL,
	[PROJECTSYMBOL] [varchar](50) NULL,
	[BUDGETTOTAL] [decimal](18, 2) NULL,
	[ACTUALSPENDTOTAL] [decimal](18, 2) NULL,
	[VARIANCETOTAL] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[sd_ProjectLayout]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[sd_ProjectLayout](
	[CSID] [int] NULL,
	[LAYOUTID] [decimal](18, 0) NULL,
	[TITLE] [varchar](100) NULL,
	[MILESTONEPHASES] [ntext] NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[STATUS] [varchar](32) NULL,
	[LEADTIME] [int] NULL,
	[DISCUSSIONLOCATION] [varchar](1) NULL,
	[METAFORMGUID] [varchar](36) NULL,
	[MODULEDETAILS] [ntext] NULL,
	[CREATEMODE] [ntext] NULL,
	[EDITMODE] [ntext] NULL,
	[GLOBALSETTINGS] [ntext] NULL,
	[ASSIGNEDUSERS] [text] NULL,
	[ASSIGNEDGROUPS] [text] NULL,
	[GUID] [varchar](36) NULL,
	[CREATEDTIME] [datetime2](7) NULL,
	[CREATEDBY] [varchar](50) NULL,
	[TEMPLATEMAPPINGS] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [K_PATH].[Users]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [K_PATH].[Users](
	[USERID] [int] NULL,
	[CSID] [int] NULL,
	[USERNAME] [varchar](50) NULL,
	[FIRSTNAME] [varchar](100) NULL,
	[LASTNAME] [varchar](100) NULL,
	[PASSWORD] [varchar](45) NULL,
	[EMAIL] [varchar](100) NULL,
	[COMPANY] [varchar](100) NULL,
	[DEPARTMENT] [varchar](50) NULL,
	[JOBTITLE] [varchar](200) NULL,
	[FULLNAME] [varchar](100) NULL,
	[LOGINTOKEN] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[PHONE] [varchar](20) NULL,
	[MOBILE] [varchar](20) NULL,
	[IMAGE] [varchar](60) NULL,
	[PWRESET] [varchar](1) NULL,
	[PWLINKEXPIRY] [datetime2](7) NULL,
	[FPASSWD] [varchar](100) NULL,
	[ALLOWEDDOMAIN] [int] NULL,
	[CURRENTLOGIN] [datetime2](7) NULL,
	[LASTLOGIN] [datetime2](7) NULL,
	[CREATEDATE] [datetime2](7) NULL,
	[STATUS] [varchar](32) NULL,
	[SUPERADMIN] [int] NULL,
	[OFFICEADDRESS] [varchar](400) NULL,
	[EVENTCLICK] [datetime2](7) NULL,
	[PEOPLECLICK] [datetime2](7) NULL,
	[METAFORMGUID] [varchar](36) NULL,
	[METADATA] [ntext] NULL,
	[ADMINACCESSLEVEL] [decimal](18, 0) NULL,
	[ADMINTOOLACCESS] [varchar](1000) NULL,
	[LOCKED] [int] NULL,
	[PASSWORDLASTUPDATED] [datetime2](7) NULL,
	[LASTMODIFIED] [datetime2](7) NULL,
	[ROLE] [varchar](500) NULL,
	[FTE] [real] NULL,
	[DAYSAVAILABLE] [varchar](50) NULL,
	[RATE] [real] NULL,
	[COLOUR] [varchar](25) NULL,
	[RECEIVENOTIFICATIONCENTREALERTS] [int] NULL,
	[TEMPUSER] [int] NULL,
	[ACTUALCOST] [real] NULL,
	[DOWNYLENORPGUSER] [int] NULL,
	[HIDEINTEAM] [int] NULL,
	[GUESTUSER] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[AIP_METRICS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[AIP_METRICS](
	[ID] [int] NOT NULL,
	[SUPPLIER] [varchar](255) NULL,
	[SUB_SUPPLIER] [varchar](255) NULL,
	[SLA_OWNER] [varchar](255) NULL,
	[TEAM] [varchar](255) NULL,
	[METRIC_MEASURE] [varchar](255) NULL,
	[METRIC_TARGET] [varchar](10) NULL,
	[METRIC_DESCRIPTION] [varchar](500) NULL,
 CONSTRAINT [PK_AIP_METRICS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[ASMT_ASSESSMENT_INSTANCE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[ASMT_ASSESSMENT_INSTANCE](
	[ASSESSMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSESSMENT_GROUP_VALUE] [varchar](32) NULL,
	[DUE_DATE] [date] NULL,
	[EXPIRATION_DATE] [date] NULL,
	[METRIC_TYPE_LINK] [varchar](255) NULL,
	[METRIC_TYPE_VALUE] [varchar](32) NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[PREVIEW] [varchar](5) NULL,
	[RELATED_ID_1_LINK] [varchar](255) NULL,
	[RELATED_ID_1_VALUE] [varchar](32) NULL,
	[RELATED_ID_2_LINK] [varchar](255) NULL,
	[RELATED_ID_2_VALUE] [varchar](32) NULL,
	[RELATED_ID_3_LINK] [varchar](255) NULL,
	[RELATED_ID_3_VALUE] [varchar](32) NULL,
	[RELATED_ID_4_LINK] [varchar](255) NULL,
	[RELATED_ID_4_VALUE] [varchar](32) NULL,
	[RELATED_TABLE_1] [varchar](40) NULL,
	[RELATED_TABLE_2] [varchar](40) NULL,
	[RELATED_TABLE_3] [varchar](40) NULL,
	[RELATED_TABLE_4] [varchar](40) NULL,
	[STATE] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TRIGGER_CONDITION_LINK] [varchar](255) NULL,
	[TRIGGER_CONDITION_VALUE] [varchar](32) NULL,
	[TRIGGER_ID_LINK] [varchar](255) NULL,
	[TRIGGER_ID_VALUE] [varchar](32) NULL,
	[TRIGGER_TABLE] [varchar](40) NULL,
	[USER_LINK] [varchar](255) NULL,
	[USER_VALUE] [varchar](32) NULL,
 CONSTRAINT [PK__ASMT_AI] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[ASMT_ASSESSMENT_INSTANCE_QUESTION]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[ASMT_ASSESSMENT_INSTANCE_QUESTION](
	[CATEGORY_LINK] [varchar](255) NULL,
	[CATEGORY_VALUE] [varchar](32) NULL,
	[INSTANCE_LINK] [varchar](255) NULL,
	[INSTANCE_VALUE] [varchar](32) NULL,
	[METRIC_LINK] [varchar](255) NULL,
	[METRIC_VALUE] [varchar](32) NULL,
	[SOURCE_ID_LINK] [varchar](255) NULL,
	[SOURCE_ID_VALUE] [varchar](32) NULL,
	[SOURCE_TABLE] [varchar](40) NULL,
	[STRING_VALUE] [varchar](4000) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [varchar](23) NULL,
	[VALUE] [int] NULL,
 CONSTRAINT [PK_ASMT_ASSESSMENT_INSTANCE_QUESTION] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[ASMT_METRIC]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[ASMT_METRIC](
	[ACTIVE] [varchar](5) NULL,
	[ALLOW_NOT_APPLICABLE] [varchar](5) NULL,
	[CATEGORY_LINK] [varchar](255) NULL,
	[CATEGORY_VALUE] [varchar](32) NULL,
	[DATATYPE] [varchar](40) NULL,
	[DEPENDS_ON_LINK] [varchar](255) NULL,
	[DEPENDS_ON_VALUE] [varchar](32) NULL,
	[DESCRIPTION] [varchar](1000) NULL,
	[DISPLAYED_WHEN] [varchar](1024) NULL,
	[DISPLAYED_WHEN_CHECKBOX] [varchar](40) NULL,
	[DISPLAYED_WHEN_TEMPLATE] [varchar](1024) NULL,
	[DISPLAYED_WHEN_YESNO] [varchar](40) NULL,
	[DURATION] [varchar](40) NULL,
	[MANDATORY] [varchar](5) NULL,
	[MAX] [int] NULL,
	[MAX_WEIGHT] [decimal](15, 3) NULL,
	[METHOD] [varchar](40) NULL,
	[METRIC_TYPE_LINK] [varchar](255) NULL,
	[METRIC_TYPE_VALUE] [varchar](32) NULL,
	[MIN] [int] NULL,
	[NAME] [varchar](1000) NOT NULL,
	[ORDER] [int] NULL,
	[PLUGIN] [varchar](100) NULL,
	[QUESTION] [varchar](1000) NULL,
	[RANDOMIZE_ANSWERS] [varchar](5) NULL,
	[SCALE] [varchar](40) NULL,
	[SCRIPT] [varchar](4000) NULL,
	[STRING_OPTION] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TEMPLATE_LINK] [varchar](255) NULL,
	[TEMPLATE_VALUE] [varchar](320) NULL,
	[WEIGHT] [decimal](15, 3) NULL,
	[LAST_UPDT_TM] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ASMT_METRIC] PRIMARY KEY NONCLUSTERED 
(
	[NAME] ASC,
	[SYS_ID] ASC,
	[LAST_UPDT_TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[ASMT_METRIC_RESULT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[ASMT_METRIC_RESULT](
	[ACTUAL_VALUE] [decimal](15, 3) NULL,
	[ASSESSMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSESSMENT_GROUP_VALUE] [varchar](32) NULL,
	[DURATION_VALUE] [varchar](40) NULL,
	[INSTANCE_LINK] [varchar](255) NULL,
	[INSTANCE_VALUE] [varchar](32) NULL,
	[INSTANCE_QUESTION_LINK] [varchar](255) NULL,
	[INSTANCE_QUESTION_VALUE] [varchar](32) NULL,
	[METRIC_LINK] [varchar](255) NULL,
	[METRIC_VALUE] [varchar](32) NULL,
	[METRIC_DEFINITION_LINK] [varchar](255) NULL,
	[METRIC_DEFINITION_VALUE] [varchar](32) NULL,
	[NORMALIZED_VALUE] [decimal](15, 3) NULL,
	[SCALED_VALUE] [decimal](15, 3) NULL,
	[SOURCE_ID_LINK] [varchar](255) NULL,
	[SOURCE_ID_VALUE] [varchar](32) NULL,
	[SOURCE_TABLE] [varchar](40) NULL,
	[STRING_VALUE] [varchar](2000) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[U_STRING_VALUE_ENGLISH_] [varchar](1000) NULL,
	[U_SUEVEY_QUES] [varchar](100) NULL,
	[U_SURVEY_RESPONSE_ENGLISH_] [varchar](4000) NULL,
	[USER_LINK] [varchar](255) NULL,
	[USER_VALUE] [varchar](32) NULL,
	[WEIGHTED_VALUE] [decimal](15, 3) NULL,
 CONSTRAINT [PK_ASMT_METRIC_RESULT] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[CMDB_CI]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[CMDB_CI](
	[ASSET_LINK] [varchar](255) NULL,
	[ASSET_VALUE] [varchar](32) NULL,
	[ASSET_TAG] [varchar](50) NULL,
	[ASSIGNED] [datetime2](7) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ATTRIBUTES] [varchar](4000) NULL,
	[CAN_PRINT] [varchar](5) NULL,
	[CATEGORY] [varchar](40) NULL,
	[CHANGE_CONTROL_LINK] [varchar](255) NULL,
	[CHANGE_CONTROL_VALUE] [varchar](32) NULL,
	[CHECKED_IN] [datetime2](7) NULL,
	[CHECKED_OUT] [datetime2](7) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMPANY_LINK] [varchar](255) NULL,
	[COMPANY_VALUE] [varchar](32) NULL,
	[CORRELATION_ID] [varchar](100) NULL,
	[COST] [float] NULL,
	[COST_CC] [varchar](3) NULL,
	[COST_CENTER_LINK] [varchar](255) NULL,
	[COST_CENTER_VALUE] [varchar](32) NULL,
	[DELIVERY_DATE] [datetime2](7) NULL,
	[DEPARTMENT_LINK] [varchar](255) NULL,
	[DEPARTMENT_VALUE] [varchar](32) NULL,
	[DISCOVERY_SOURCE] [varchar](40) NULL,
	[DNS_DOMAIN] [varchar](255) NULL,
	[DUE] [datetime2](7) NULL,
	[DUE_IN] [varchar](40) NULL,
	[FAULT_COUNT] [int] NULL,
	[FIRST_DISCOVERED] [datetime2](7) NULL,
	[FQDN] [varchar](255) NULL,
	[GL_ACCOUNT] [varchar](40) NULL,
	[INSTALL_DATE] [datetime2](7) NULL,
	[INSTALL_STATUS] [int] NULL,
	[INVOICE_NUMBER] [varchar](40) NULL,
	[IP_ADDRESS] [varchar](40) NULL,
	[JUSTIFICATION] [varchar](80) NULL,
	[LAST_DISCOVERED] [datetime2](7) NULL,
	[LEASE_ID] [varchar](40) NULL,
	[LOCATION_LINK] [varchar](255) NULL,
	[LOCATION_VALUE] [varchar](32) NULL,
	[MAC_ADDRESS] [varchar](40) NULL,
	[MAINTENANCE_SCHEDULE_LINK] [varchar](255) NULL,
	[MAINTENANCE_SCHEDULE_VALUE] [varchar](32) NULL,
	[MANAGED_BY_LINK] [varchar](255) NULL,
	[MANAGED_BY_VALUE] [varchar](32) NULL,
	[MANUFACTURER_LINK] [varchar](256) NULL,
	[MANUFACTURER_VALUE] [varchar](32) NULL,
	[MODEL_ID_LINK] [varchar](256) NULL,
	[MODEL_ID_VALUE] [varchar](32) NULL,
	[MODEL_NUMBER] [varchar](40) NULL,
	[MONITOR] [varchar](5) NULL,
	[NAME] [varchar](1000) NULL,
	[OPERATIONAL_STATUS] [int] NULL,
	[ORDER_DATE] [datetime2](7) NULL,
	[OWNED_BY_LINK] [varchar](255) NULL,
	[OWNED_BY_VALUE] [varchar](32) NULL,
	[PO_NUMBER] [varchar](40) NULL,
	[PURCHASE_DATE] [date] NULL,
	[SCHEDULE_LINK] [varchar](255) NULL,
	[SCHEDULE_VALUE] [varchar](32) NULL,
	[SERIAL_NUMBER] [varchar](100) NULL,
	[SHORT_DESCRIPTION] [varchar](1100) NULL,
	[SKIP_SYNC] [varchar](5) NULL,
	[START_DATE] [datetime2](7) NULL,
	[SUBCATEGORY] [varchar](40) NULL,
	[SUPPORT_GROUP_LINK] [varchar](255) NULL,
	[SUPPORT_GROUP_VALUE] [varchar](32) NULL,
	[SUPPORTED_BY_LINK] [varchar](255) NULL,
	[SUPPORTED_BY_VALUE] [varchar](32) NULL,
	[SYS_CLASS_NAME] [varchar](80) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](256) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[U_AD_LOCATION] [varchar](40) NULL,
	[U_APPROVED_RFC] [varchar](150) NULL,
	[U_CI_ALIAS] [varchar](100) NULL,
	[U_CI_CATEGORY] [varchar](40) NULL,
	[U_DATACENTER_LINK] [varchar](255) NULL,
	[U_DATACENTER_VALUE] [varchar](32) NULL,
	[U_DR_COVERAGE] [varchar](5) NULL,
	[U_DR_TIER_LEVEL] [varchar](40) NULL,
	[U_ENVIRONMENT] [varchar](40) NULL,
	[U_IP_NETMASK] [varchar](40) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_REPORTING_CATEGORIES] [varchar](1000) NULL,
	[U_SCIENCELOGIC_ID] [varchar](10) NULL,
	[U_SCIENCELOGIC_REGION] [varchar](40) NULL,
	[U_SCIENCELOGIC_URL] [varchar](256) NULL,
	[U_SUB_TYPE] [varchar](40) NULL,
	[U_TYPE] [varchar](40) NULL,
	[UNVERIFIED] [varchar](40) NULL,
	[VENDOR_LINK] [varchar](255) NULL,
	[VENDOR_VALUE] [varchar](32) NULL,
	[WARRANTY_EXPIRATION] [varchar](40) NULL,
 CONSTRAINT [PK__CMDB_CI] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[CMN_LOCATION]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[CMN_LOCATION](
	[CITY] [varchar](40) NULL,
	[COMPANY_LINK] [varchar](255) NULL,
	[COMPANY_VALUE] [varchar](32) NULL,
	[CONTACT_LINK] [varchar](255) NULL,
	[CONTACT_VALUE] [varchar](32) NULL,
	[COUNTRY] [varchar](40) NULL,
	[FAX_PHONE] [varchar](40) NULL,
	[FULL_NAME] [varchar](255) NULL,
	[LAT_LONG_ERROR] [varchar](1000) NULL,
	[LATITUDE] [float] NULL,
	[LONGITUDE] [float] NULL,
	[NAME] [varchar](100) NOT NULL,
	[PARENT_LINK] [varchar](255) NULL,
	[PARENT_VALUE] [varchar](32) NULL,
	[PHONE] [varchar](40) NULL,
	[PHONE_TERRITORY_LINK] [varchar](255) NULL,
	[PHONE_TERRITORY_VALUE] [varchar](32) NULL,
	[STATE] [varchar](40) NULL,
	[STOCK_ROOM] [varchar](5) NULL,
	[STREET] [varchar](255) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_ZONE] [varchar](40) NULL,
	[U___OF_EMPLOYEES] [varchar](40) NULL,
	[U_ACCESSORIES] [varchar](40) NULL,
	[U_ACTIVE] [varchar](5) NULL,
	[U_ADDRESS_2] [varchar](100) NULL,
	[U_COMMONLY_KNOWN_AS] [varchar](75) NULL,
	[U_FACILITY_SIZE__SQ_FT_] [varchar](40) NULL,
	[U_GENERIC_FIELD] [varchar](40) NULL,
	[U_HELPDESK_CONTACT] [varchar](40) NULL,
	[U_HOURS] [varchar](40) NULL,
	[U_ID] [varchar](40) NULL,
	[U_LOCATION_CATEGORY] [varchar](40) NULL,
	[U_LOCATION_CODE] [varchar](40) NULL,
	[U_LOCATION_ID] [varchar](40) NULL,
	[U_LYNC_ENABLED] [varchar](5) NULL,
	[U_PCS] [varchar](40) NULL,
	[U_PLANT_COORDINATOR] [varchar](40) NULL,
	[U_PLANT_MANAGER] [varchar](40) NULL,
	[U_PRIMARY_CONTACT_PLANT_COORDI] [varchar](5) NULL,
	[U_PRIMARY_CONTACT_PLANT_MGR_CO] [varchar](5) NULL,
	[U_PRIMARY_CONTACT_TECHNICAL_CO] [varchar](5) NULL,
	[U_PRIMARY_LOCATION_CONTACT] [varchar](5) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_SERVICE_TYPE] [varchar](40) NULL,
	[U_SKYPE_ENABLED] [varchar](5) NULL,
	[U_SRMS_LOCATION] [varchar](5) NULL,
	[U_TECHNICAL_COORDINATOR] [varchar](40) NULL,
	[U_TYPE] [varchar](40) NULL,
	[U_WHITE_GLOVE_LOCATION] [varchar](40) NULL,
	[ZIP] [varchar](40) NULL,
 CONSTRAINT [PK_CMN_LOCATION] PRIMARY KEY NONCLUSTERED 
(
	[NAME] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[CONTRACT_SLA]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[CONTRACT_SLA](
	[ACTIVE] [varchar](5) NULL,
	[COLLECTION] [varchar](40) NULL,
	[CONDITION_CLASS_LINK] [varchar](255) NULL,
	[CONDITION_CLASS_VALUE] [varchar](32) NULL,
	[DURATION] [datetime2](7) NULL,
	[NAME] [varchar](40) NOT NULL,
	[PAUSE_CONDITION] [varchar](1000) NULL,
	[RELATIVE_DURATION_WORKS_ON] [varchar](40) NULL,
	[RESET_CONDITION] [varchar](1000) NULL,
	[RETROACTIVE] [varchar](5) NULL,
	[SCHEDULE_LINK] [varchar](255) NULL,
	[SCHEDULE_VALUE] [varchar](32) NULL,
	[SET_START_TO] [varchar](40) NULL,
	[START_CONDITION] [varchar](1000) NULL,
	[STOP_CONDITION] [varchar](1000) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_OVERRIDES_LINK] [varchar](255) NULL,
	[SYS_OVERRIDES_VALUE] [varchar](32) NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIMEZONE] [varchar](40) NULL,
	[TYPE] [varchar](40) NULL,
 CONSTRAINT [PK__CONTRACT_SLA] PRIMARY KEY NONCLUSTERED 
(
	[NAME] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[EXCEPTIONS_RELATED_RECORD]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[EXCEPTIONS_RELATED_RECORD](
	[NUMBER] [varchar](40) NOT NULL,
	[U_RELATED_RECORD_NUMBER] [varchar](40) NOT NULL,
 CONSTRAINT [PK_EXCEPTION_RELATED_RECORD] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[U_RELATED_RECORD_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[INCIDENT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[INCIDENT](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](1024) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[BUSINESS_STC] [int] NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CALENDAR_STC] [int] NULL,
	[CALLER_ID_LINK] [varchar](255) NULL,
	[CALLER_ID_VALUE] [varchar](32) NULL,
	[CATEGORY] [varchar](80) NULL,
	[CAUSED_BY_LINK] [varchar](255) NULL,
	[CAUSED_BY_VALUE] [varchar](32) NULL,
	[CHILD_INCIDENTS] [int] NULL,
	[CLOSE_CODE] [varchar](40) NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY_LINK] [varchar](255) NULL,
	[CLOSED_BY_VALUE] [varchar](32) NULL,
	[CMDB_CI_LINK] [varchar](255) NULL,
	[CMDB_CI_VALUE] [varchar](32) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY_LINK] [varchar](255) NULL,
	[COMPANY_VALUE] [varchar](32) NULL,
	[CONTACT_TYPE] [varchar](40) NULL,
	[CORRELATION_DISPLAY] [varchar](40) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [int] NULL,
	[EXPECTED_START] [varchar](40) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[INCIDENT_STATE] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[LOCATION_LINK] [varchar](255) NULL,
	[LOCATION_VALUE] [varchar](32) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NOTIFY] [int] NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT] [int] NULL,
	[PARENT_INCIDENT_LINK] [varchar](255) NULL,
	[PARENT_INCIDENT_VALUE] [varchar](32) NULL,
	[PRIORITY] [int] NULL,
	[PROBLEM_ID_LINK] [varchar](255) NULL,
	[PROBLEM_ID_VALUE] [varchar](32) NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[REOPEN_COUNT] [int] NULL,
	[RESOLVED_AT] [datetime2](7) NULL,
	[RESOLVED_BY_LINK] [varchar](255) NULL,
	[RESOLVED_BY_VALUE] [varchar](32) NULL,
	[RFC_LINK] [varchar](255) NULL,
	[RFC_VALUE] [varchar](32) NULL,
	[SEVERITY] [int] NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[STATE] [int] NULL,
	[SUBCATEGORY] [varchar](255) NULL,
	[SYS_CLASS_NAME] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_WORKED] [varchar](20) NULL,
	[U_ACCENTURE_SLA] [datetime2](7) NULL,
	[U_APPOINTMENT_COMPLETED1] [varchar](5) NULL,
	[U_APPOINTMENT_TIME] [datetime2](7) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_BEST_CONTACT_NUMBER] [varchar](200) NULL,
	[U_BRIDGE_LAUNCHED] [datetime2](7) NULL,
	[U_BRIDGE_REQUESTED] [datetime2](7) NULL,
	[U_CALL_IN_REASON] [varchar](40) NULL,
	[U_CALL_IN_REASON_COUNTER] [varchar](40) NULL,
	[U_CAN_BE_RESOLVED_AT_SERVICE_D] [varchar](5) NULL,
	[U_CATEGORY_1] [varchar](40) NULL,
	[U_CATEGORY_2] [varchar](40) NULL,
	[U_CATEGORY_3] [varchar](40) NULL,
	[U_CHANGE_REQUEST] [varchar](1024) NULL,
	[U_CI_CATEGORY] [varchar](40) NULL,
	[U_CI_CLASSIFICATION] [varchar](40) NULL,
	[U_CI_TYPE] [varchar](255) NULL,
	[U_CRITICAL_INCIDENT] [varchar](5) NULL,
	[U_CUSTOMER_FOLLOW_UP_ATTEMPTS] [varchar](40) NULL,
	[U_DEFECT_ID_] [varchar](20) NULL,
	[U_DISPATCH_TYPE] [varchar](40) NULL,
	[U_DSS___] [varchar](40) NULL,
	[U_DSS___OF_VISITS] [varchar](40) NULL,
	[U_DSS_HANDLE_TIME] [varchar](40) NULL,
	[U_FCR] [varchar](5) NULL,
	[U_HUNGARY_QUESTION_1] [varchar](40) NULL,
	[U_HUNGARY_SURVEY_QUESTION2] [varchar](40) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](40) NULL,
	[U_INCIDENT_NEW_PRIORITY] [varchar](40) NULL,
	[U_INCIDENT_OLD_PRIORITY] [varchar](40) NULL,
	[U_INFOSYS_KOURIER_SLA] [datetime2](7) NULL,
	[U_INFOSYS_SLA] [datetime2](7) NULL,
	[U_INFOSYS_UNISYS_SLA] [datetime2](7) NULL,
	[U_ISSUE_TYPE] [varchar](40) NULL,
	[U_JUSTIFICATION] [varchar](1024) NULL,
	[U_KELLOGGS_SLA] [datetime2](7) NULL,
	[U_KNOWLEDGE_CANDIDATE] [varchar](5) NULL,
	[U_KNOWLEDGE_USED] [varchar](40) NULL,
	[U_L1_RESOLVABLE] [varchar](5) NULL,
	[U_L1_RESOLVABLE_DESCRIPTION] [varchar](4000) NULL,
	[U_LANGUAGE] [varchar](40) NULL,
	[U_LOCATION] [varchar](100) NULL,
	[U_LOCATION_NEW_LINK] [varchar](255) NULL,
	[U_LOCATION_NEW_VALUE] [varchar](32) NULL,
	[U_MAJOR_INCIDENT_MANAGER_LINK] [varchar](255) NULL,
	[U_MAJOR_INCIDENT_MANAGER_VALUE] [varchar](32) NULL,
	[U_MINDTREE_SLA] [datetime2](7) NULL,
	[U_MISSING_CI] [varchar](5) NULL,
	[U_MISSING_CI_NAME] [varchar](255) NULL,
	[U_MONITORING_LOCATION] [varchar](40) NULL,
	[U_MTR_DURATION] [datetime2](7) NULL,
	[U_OLD_PRIORITY] [varchar](40) NULL,
	[U_OLD_SUPPLIER] [varchar](40) NULL,
	[U_OPEN_URL] [varchar](1024) NULL,
	[U_OPENED_BY_COMPANY_SUPPLIER] [varchar](40) NULL,
	[U_PENDING_DUR] [varchar](40) NULL,
	[U_PENDING_DURATION] [datetime2](7) NULL,
	[U_PENDING_END_TIME] [datetime2](7) NULL,
	[U_PENDING_REASON] [varchar](40) NULL,
	[U_PENDING_START_TIME] [datetime2](7) NULL,
	[U_PR_METRIC] [varchar](40) NULL,
	[U_PRB_CANDIDATE_USER_LINK] [varchar](255) NULL,
	[U_PRB_CANDIDATE_USER_VALUE] [varchar](32) NULL,
	[U_PRIORITY_FLAG] [varchar](5) NULL,
	[U_PROBLEM_CANDIDATE] [varchar](5) NULL,
	[U_PROBLEM_CREATED] [varchar](5) NULL,
	[U_REASSIGNMENT] [varchar](40) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_REOPEN_ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[U_REOPEN_ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[U_REOPENED_DATE] [date] NULL,
	[U_REPORTED_BY_LINK] [varchar](255) NULL,
	[U_REPORTED_BY_VALUE] [varchar](32) NULL,
	[U_RESPONSE_SLA] [varchar](5) NULL,
	[U_SCIENCELOGIC_REGION] [varchar](40) NULL,
	[U_SD_GROUP] [varchar](5) NULL,
	[U_SD_RESOLVABLE] [varchar](40) NULL,
	[U_SD_START_TIME] [datetime2](7) NULL,
	[U_SELECT_CATEGORY] [varchar](40) NULL,
	[U_SILO_EID] [varchar](40) NULL,
	[U_SITE_CONTACT] [varchar](40) NULL,
	[U_SLA_EXCEPTION] [varchar](5) NULL,
	[U_SLA_SUPPLIER] [varchar](1000) NULL,
	[U_SLA_VALIDATION] [varchar](40) NULL,
	[U_SRMS_DISPATCH] [varchar](5) NULL,
	[U_SRMS_LOCATION_LINK] [varchar](255) NULL,
	[U_SRMS_LOCATION_VALUE] [varchar](32) NULL,
	[U_SRMS_RESOLVED] [datetime2](7) NULL,
	[U_SRMS_STATUS] [varchar](40) NULL,
	[U_SRMS_TICKET_NUMBER] [varchar](40) NULL,
	[U_SRMS_UPDATE] [varchar](5) NULL,
	[U_STYLE_OVERRIDE] [varchar](40) NULL,
	[U_SUB_SUPPLIER] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_SURVEY_COMMENTS] [varchar](1000) NULL,
	[U_SURVEY_QUESTION1] [varchar](40) NULL,
	[U_SURVEY_QUESTION2] [varchar](40) NULL,
	[U_UNABLE_TO_RESOLVE_AT_SERVICE] [varchar](40) NULL,
	[U_UNISYS_SLA] [datetime2](7) NULL,
	[U_UNISYS_SRMS_PRODUCT_STYLE] [varchar](40) NULL,
	[U_VENDOR_NAME_LINK] [varchar](255) NULL,
	[U_VENDOR_NAME_VALUE] [varchar](32) NULL,
	[U_VENDOR_TICKET_NUMBER] [varchar](240) NULL,
	[U_VIP_RESPONSE_TIME] [datetime2](7) NULL,
	[U_WORKAROUND] [varchar](40) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1024) NULL,
	[WORK_END] [datetime2](7) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [datetime2](7) NULL,
	[U_ESTIMATED_RESOLUTION_DATE] [date] NULL,
	[U_EXPECTED_RESOLUTION_TIME] [time](7) NULL,
	[U_CHECK_EXPECT] [varchar](5) NULL,
 CONSTRAINT [PK_INCIDENT] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[METRIC_DEFINITION]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[METRIC_DEFINITION](
	[ACTIVE] [varchar](5) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[FIELD] [varchar](40) NULL,
	[NAME] [varchar](40) NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[ORDER] [varchar](40) NULL,
	[SCRIPT] [varchar](4000) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [varchar](40) NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TABLE] [varchar](40) NULL,
	[TIMELINE] [varchar](5) NULL,
	[TYPE] [varchar](40) NULL,
 CONSTRAINT [PK_METRIC_DEFINITION] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[METRIC_INSTANCE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[METRIC_INSTANCE](
	[BUSINESS_DURATION] [varchar](40) NULL,
	[CALCULATION_COMPLETE] [varchar](5) NULL,
	[DEFINITION_LINK] [varchar](255) NULL,
	[DEFINITION_VALUE] [varchar](32) NULL,
	[DURATION] [varchar](40) NULL,
	[END] [datetime2](7) NULL,
	[FIELD] [varchar](40) NULL,
	[FIELD_VALUE] [varchar](40) NULL,
	[ID_LINK] [varchar](255) NULL,
	[ID_VALUE] [varchar](32) NOT NULL,
	[START] [datetime2](7) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [varchar](40) NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TABLE] [varchar](40) NULL,
	[U_HIDDEN_START_TIME] [datetime2](7) NULL,
	[VALUE] [varchar](100) NULL,
 CONSTRAINT [PK_METRIC_INSTANCE] PRIMARY KEY NONCLUSTERED 
(
	[ID_VALUE] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[PROBLEM]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[PROBLEM](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](40) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY_LINK] [varchar](255) NULL,
	[CLOSED_BY_VALUE] [varchar](32) NULL,
	[CMDB_CI_LINK] [varchar](255) NULL,
	[CMDB_CI_VALUE] [varchar](32) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY] [varchar](40) NULL,
	[CONTACT_TYPE] [varchar](40) NULL,
	[CORRELATION_DISPLAY] [varchar](40) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [varchar](40) NULL,
	[EXPECTED_START] [varchar](40) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[KNOWN_ERROR] [varchar](5) NULL,
	[LOCATION_LINK] [varchar](255) NULL,
	[LOCATION_VALUE] [varchar](32) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT_LINK] [varchar](255) NULL,
	[PARENT_VALUE] [varchar](32) NULL,
	[PRIORITY] [int] NULL,
	[PROBLEM_STATE] [int] NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[RELATED_INCIDENTS] [int] NULL,
	[RFC_LINK] [varchar](255) NULL,
	[RFC_VALUE] [varchar](32) NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[STATE] [int] NULL,
	[SYS_CLASS_NAME] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_WORKED] [varchar](40) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_CATEGORY] [varchar](40) NULL,
	[U_CI_CATEGORY] [varchar](40) NULL,
	[U_CI_CLASSIFICATION] [varchar](40) NULL,
	[U_CI_TYPE] [varchar](40) NULL,
	[U_FAILING_COMPONENT___DEVISE__] [varchar](4000) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](1024) NULL,
	[U_KB_ARTICLE_FOR_KNOWN_ERROR_LINK] [varchar](255) NULL,
	[U_KB_ARTICLE_FOR_KNOWN_ERROR_VALUE] [varchar](32) NULL,
	[U_LESSONS_LEARNED] [varchar](4000) NULL,
	[U_MISSING_CI] [varchar](40) NULL,
	[U_MISSING_CI_REQUIRED] [varchar](5) NULL,
	[U_PROBLEM_OCCURRED_DATE] [datetime2](7) NULL,
	[U_PROBLEMS_BUSINESS_IMPACT] [varchar](4000) NULL,
	[U_RCA_PARTICIPANTS] [varchar](1024) NULL,
	[U_RCA_REQUESTED_BY_LINK] [varchar](255) NULL,
	[U_RCA_REQUESTED_BY_VALUE] [varchar](32) NULL,
	[U_RCA_REVIEW_MEETING_DATE] [datetime2](7) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_RESOLUTION_CODE] [varchar](40) NULL,
	[U_ROOT_CAUSE_LINK] [varchar](255) NULL,
	[U_ROOT_CAUSE_VALUE] [varchar](32) NULL,
	[U_ROOT_CAUSE_ANALYSIS] [varchar](4000) NULL,
	[U_ROOT_CAUSE_DETAILS] [varchar](4000) NULL,
	[U_ROOT_CAUSE_IDENTIFIED_BY_LINK] [varchar](255) NULL,
	[U_ROOT_CAUSE_IDENTIFIED_BY_VALUE] [varchar](32) NULL,
	[U_ROOT_CAUSE_JUSTIFICATION] [varchar](4000) NULL,
	[U_ROOT_CAUSE_OF_THE_PROBLEM] [varchar](4000) NULL,
	[U_SOURCE] [varchar](40) NULL,
	[U_STATUS_REASON] [varchar](1000) NULL,
	[U_SUBCATEGORY] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_VENDOR_LINK] [varchar](255) NULL,
	[U_VENDOR_VALUE] [varchar](32) NULL,
	[U_VENDOR_TICKET_NO_] [varchar](40) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1000) NULL,
	[WORK_AROUND] [varchar](4000) NULL,
	[WORK_END] [datetime2](7) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [datetime2](7) NULL,
 CONSTRAINT [PK__PROBLEM] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[PROBLEM_TASK]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[PROBLEM_TASK](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](40) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY_LINK] [varchar](255) NULL,
	[CLOSED_BY_VALUE] [varchar](32) NULL,
	[CMDB_CI_LINK] [varchar](255) NULL,
	[CMDB_CI_VALUE] [varchar](32) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY] [varchar](40) NULL,
	[CONTACT_TYPE] [varchar](40) NULL,
	[CORRELATION_DISPLAY] [varchar](40) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [varchar](40) NULL,
	[EXPECTED_START] [datetime2](7) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[LOCATION] [varchar](40) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NUMBER] [varchar](40) NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT] [int] NULL,
	[PRIORITY] [int] NULL,
	[PROBLEM_LINK] [varchar](255) NULL,
	[PROBLEM_VALUE] [varchar](32) NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[STATE] [int] NULL,
	[SYS_CLASS_NAME] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_WORKED] [varchar](40) NULL,
	[U_A_QUESTION_1] [varchar](1024) NULL,
	[U_ACTION_LIST] [varchar](4000) NULL,
	[U_ANSWER] [varchar](1000) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_CHANGE_NUMBER_LINK] [varchar](255) NULL,
	[U_CHANGE_NUMBER_VALUE] [varchar](32) NULL,
	[U_CHANGE_REQUEST_RELATED] [varchar](40) NULL,
	[U_CONFIGURATION_ITEMS_IMPACTED_LINK] [varchar](255) NULL,
	[U_CONFIGURATION_ITEMS_IMPACTED_VALUE] [varchar](32) NULL,
	[U_CORRECTIVE_ACTIONS] [varchar](1024) NULL,
	[U_DUE_BY] [datetime2](7) NULL,
	[U_DURATION] [datetime2](7) NULL,
	[U_INCIDENT_END_DATE] [datetime2](7) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](1024) NULL,
	[U_INCIDENT_RESOLUTION] [varchar](1024) NULL,
	[U_INCIDENT_START_DATE] [datetime2](7) NULL,
	[U_KNOWN_ERROR] [varchar](40) NULL,
	[U_NETWORK_OUTAGE] [varchar](100) NULL,
	[U_PRIORITY] [varchar](40) NULL,
	[U_PROBLEM_DESCRIPTION] [varchar](100) NULL,
	[U_PROBLEM_LOCATION_LINK] [varchar](255) NULL,
	[U_PROBLEM_LOCATION_VALUE] [varchar](32) NULL,
	[U_PROBLEM_RECORD_NUMBER] [varchar](40) NULL,
	[U_PROBLEMS_BUSINESS_IMPACT] [varchar](1024) NULL,
	[U_QUESTION_2] [varchar](1024) NULL,
	[U_QUESTION_3] [varchar](1024) NULL,
	[U_QUESTION_4] [varchar](1024) NULL,
	[U_QUESTION_5] [varchar](1024) NULL,
	[U_QUESTION_6] [varchar](1024) NULL,
	[U_RCA_APPROVED_BY_LINK] [varchar](255) NULL,
	[U_RCA_APPROVED_BY_VALUE] [varchar](32) NULL,
	[U_RCA_COMPLETED_DATE] [date] NULL,
	[U_RCA_REQUESTED_BY_LINK] [varchar](255) NULL,
	[U_RCA_REQUESTED_BY_VALUE] [varchar](32) NULL,
	[U_RELATED_INCIDENT_NO] [varchar](40) NULL,
	[U_REQ] [varchar](4000) NULL,
	[U_ROOT_CAUSE_CODE_LINK] [varchar](255) NULL,
	[U_ROOT_CAUSE_CODE_VALUE] [varchar](32) NULL,
	[U_ROOT_CAUSE_DETAILS] [varchar](1024) NULL,
	[U_ROOT_CAUSE_IDENTIFIED_BY_LINK] [varchar](255) NULL,
	[U_ROOT_CAUSE_IDENTIFIED_BY_VALUE] [varchar](32) NULL,
	[U_ROOT_CAUSE_OF_THE_PROBLEM] [varchar](1024) NULL,
	[U_ROOT_CAUSE_SUPPORTER] [varchar](270) NULL,
	[U_STATUS_REASON] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_TARGET_DATE] [datetime2](7) NULL,
	[U_TASK_PRIORITY] [varchar](40) NULL,
	[U_WHEN_FIRST] [varchar](40) NULL,
	[U_WHEN_LAST] [varchar](40) NULL,
	[U_WORKAROUND] [varchar](1000) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1000) NULL,
	[WORK_END] [datetime2](7) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [datetime2](7) NULL,
 CONSTRAINT [PK_PROBLEM_TASK] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SC_REQUEST]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SC_REQUEST](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](40) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO] [varchar](40) NULL,
	[ASSIGNMENT_GROUP] [varchar](255) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CALENDAR_STC] [int] NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY_LINK] [varchar](255) NULL,
	[CLOSED_BY_VALUE] [varchar](32) NULL,
	[CMDB_CI] [varchar](255) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY] [varchar](255) NULL,
	[CONTACT_TYPE] [varchar](40) NULL,
	[CORRELATION_DISPLAY] [varchar](40) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DELIVERY_ADDRESS] [varchar](4000) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [varchar](40) NULL,
	[EXPECTED_START] [varchar](40) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[LOCATION] [varchar](255) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NUMBER] [varchar](40) NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT] [int] NULL,
	[PRICE] [varchar](15) NULL,
	[PRIORITY] [int] NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[REQUEST_STATE] [varchar](40) NULL,
	[REQUESTED_DATE] [datetime2](7) NULL,
	[REQUESTED_FOR_LINK] [varchar](255) NULL,
	[REQUESTED_FOR_VALUE] [varchar](32) NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[SPECIAL_INSTRUCTIONS] [varchar](4000) NULL,
	[STAGE] [varchar](80) NULL,
	[STATE] [int] NULL,
	[SYS_CLASS_NAME] [varchar](255) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_WORKED] [varchar](40) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_BACKEND] [varchar](40) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](40) NULL,
	[U_RECAST] [varchar](80) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1000) NULL,
	[WORK_END] [varchar](40) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [varchar](40) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SC_TASK]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SC_TASK](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](40) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CALENDAR_STC] [int] NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY_LINK] [varchar](255) NULL,
	[CLOSED_BY_VALUE] [varchar](32) NULL,
	[CMDB_CI_LINK] [varchar](255) NULL,
	[CMDB_CI_VALUE] [varchar](32) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY] [varchar](255) NULL,
	[CONTACT_TYPE] [varchar](255) NULL,
	[CORRELATION_DISPLAY] [varchar](255) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [int] NULL,
	[EXPECTED_START] [varchar](40) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[LOCATION_LINK] [varchar](255) NULL,
	[LOCATION_VALUE] [varchar](32) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT_LINK] [varchar](255) NULL,
	[PARENT_VALUE] [varchar](32) NULL,
	[PRIORITY] [int] NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[REQUEST_LINK] [varchar](255) NULL,
	[REQUEST_VALUE] [varchar](32) NULL,
	[REQUEST_ITEM_LINK] [varchar](255) NULL,
	[REQUEST_ITEM_VALUE] [varchar](32) NULL,
	[SC_CATALOG_LINK] [varchar](255) NULL,
	[SC_CATALOG_VALUE] [varchar](32) NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[STATE] [int] NULL,
	[SYS_CLASS_NAME] [varchar](255) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [varchar](23) NULL,
	[TIME_WORKED] [varchar](40) NULL,
	[U__CITY_] [varchar](40) NULL,
	[U__COUNTRY_] [varchar](40) NULL,
	[U__MAILING_ADDRESS_LINE_1_] [varchar](40) NULL,
	[U__STATE_] [varchar](40) NULL,
	[U__ZIP_CODE_] [varchar](40) NULL,
	[U_ASSIGNED] [datetime2](7) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_CASS_REQUEST_NUMBER] [varchar](40) NULL,
	[U_CUBICLE_NUMBER] [varchar](40) NULL,
	[U_DEVICE_ELIGIBILITY] [varchar](40) NULL,
	[U_DSS__] [varchar](40) NULL,
	[U_DSS___OF_VISITS] [varchar](280) NULL,
	[U_DSS_HANDLE_TIME] [varchar](40) NULL,
	[U_DUMMY_ASSIGNED_TO_LINK] [varchar](255) NULL,
	[U_DUMMY_ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[U_DUMMY_ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[U_DUMMY_ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[U_EMAIL_ID] [varchar](255) NULL,
	[U_ESTIMATED_DELIVERY_DATE_] [date] NULL,
	[U_FLOOR_NUMBER] [varchar](40) NULL,
	[U_HAVE_YOU_CREATED_THE_ID_] [varchar](40) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](40) NULL,
	[U_INFO_REQUIRED_FROM_USER_LINK] [varchar](255) NULL,
	[U_INFO_REQUIRED_FROM_USER_VALUE] [varchar](32) NULL,
	[U_ITEM_LINK] [varchar](255) NULL,
	[U_ITEM_VALUE] [varchar](32) NULL,
	[U_LEVEL_OF_EFFORT] [varchar](40) NULL,
	[U_LICENSE_AVAILABLE] [varchar](40) NULL,
	[U_LICENSE_PURCHASED] [varchar](40) NULL,
	[U_MAILING_ADDRESS_LINE_2_] [varchar](40) NULL,
	[U_NETWORK_ID] [varchar](40) NULL,
	[U_PENDING_DUR] [varchar](40) NULL,
	[U_PENDING_DURATION] [varchar](40) NULL,
	[U_PENDING_END_TIME] [datetime2](7) NULL,
	[U_PENDING_START_TIME] [datetime2](7) NULL,
	[U_PHONE_NUMBER] [varchar](100) NULL,
	[U_REPORT_RSA_LOCATION] [varchar](40) NULL,
	[U_REQUIREMENT_TITLE] [varchar](1200) NULL,
	[U_RSA_REQUEST_NUMBER] [varchar](40) NULL,
	[U_SELECTED_DEVICE] [varchar](40) NULL,
	[U_SHIPPER_VENDOR_NAME] [varchar](40) NULL,
	[U_SLA_TYPE] [varchar](40) NULL,
	[U_SRMS_LOCATION] [varchar](32) NULL,
	[U_SRMS_RESOLVED] [datetime2](7) NULL,
	[U_SRMS_STATUS] [varchar](1024) NULL,
	[U_SRMS_TICKET_NUMBER] [varchar](40) NULL,
	[U_SRMS_UPDATE] [varchar](5) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_SUPPLIER_NAME] [varchar](280) NULL,
	[U_TRACKING_NUMBER] [varchar](40) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1000) NULL,
	[WORK_END] [datetime2](7) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [datetime2](7) NULL,
 CONSTRAINT [PK__ML_SC_TASK] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SC_TASK_RELATED_RECORD]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SC_TASK_RELATED_RECORD](
	[SYS_ID] [varchar](32) NOT NULL,
	[parent.number] [varchar](40) NOT NULL,
 CONSTRAINT [PK_SC_TASK_RELATED_RECORD] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC,
	[parent.number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[STG_SC_TASK]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[STG_SC_TASK](
	[active] [varchar](1024) NULL,
	[activity_due] [varchar](1024) NULL,
	[approval] [varchar](1024) NULL,
	[approval_history] [varchar](1024) NULL,
	[approval_set] [varchar](1024) NULL,
	[assigned_to_link] [varchar](1024) NULL,
	[assigned_to_value] [varchar](1024) NULL,
	[assignment_group_link] [varchar](1024) NULL,
	[assignment_group_value] [varchar](1024) NULL,
	[business_duration] [varchar](1024) NULL,
	[calendar_duration] [varchar](1024) NULL,
	[calendar_stc] [varchar](1024) NULL,
	[close_notes] [varchar](1024) NULL,
	[closed_at] [varchar](1024) NULL,
	[closed_by_link] [varchar](1024) NULL,
	[closed_by_value] [varchar](1024) NULL,
	[cmdb_ci_link] [varchar](1024) NULL,
	[cmdb_ci_value] [varchar](1024) NULL,
	[comments] [varchar](1024) NULL,
	[comments_and_work_notes] [varchar](1024) NULL,
	[company] [varchar](1024) NULL,
	[contact_type] [varchar](1024) NULL,
	[correlation_display] [varchar](1024) NULL,
	[correlation_id] [varchar](1024) NULL,
	[description] [varchar](1024) NULL,
	[due_date] [varchar](1024) NULL,
	[escalation] [varchar](1024) NULL,
	[expected_start] [varchar](1024) NULL,
	[follow_up] [varchar](1024) NULL,
	[group_list] [varchar](1024) NULL,
	[impact] [varchar](1024) NULL,
	[knowledge] [varchar](1024) NULL,
	[location_link] [varchar](1024) NULL,
	[location_value] [varchar](1024) NULL,
	[made_sla] [varchar](1024) NULL,
	[number] [varchar](1024) NULL,
	[opened_at] [varchar](1024) NULL,
	[opened_by_link] [varchar](1024) NULL,
	[opened_by_value] [varchar](1024) NULL,
	[order] [varchar](1024) NULL,
	[parent_link] [varchar](1024) NULL,
	[parent_value] [varchar](1024) NULL,
	[priority] [varchar](1024) NULL,
	[reassignment_count] [varchar](1024) NULL,
	[request_link] [varchar](1024) NULL,
	[request_value] [varchar](1024) NULL,
	[request_item_link] [varchar](1024) NULL,
	[request_item_value] [varchar](1024) NULL,
	[sc_catalog_link] [varchar](1024) NULL,
	[sc_catalog_value] [varchar](1024) NULL,
	[short_description] [varchar](1024) NULL,
	[skills] [varchar](1024) NULL,
	[sla_due] [varchar](1024) NULL,
	[state] [varchar](1024) NULL,
	[sys_class_name] [varchar](1024) NULL,
	[sys_created_by] [varchar](1024) NULL,
	[sys_created_on] [varchar](1024) NULL,
	[sys_domain_link] [varchar](1024) NULL,
	[sys_domain_value] [varchar](1024) NULL,
	[sys_id] [varchar](1024) NULL,
	[sys_mod_count] [varchar](1024) NULL,
	[sys_updated_by] [varchar](1024) NULL,
	[sys_updated_on] [varchar](1024) NULL,
	[time_worked] [varchar](1024) NULL,
	[u__city_] [varchar](1024) NULL,
	[u__country_] [varchar](1024) NULL,
	[u__mailing_address_line_1_] [varchar](1024) NULL,
	[u__state_] [varchar](1024) NULL,
	[u__zip_code_] [varchar](1024) NULL,
	[u_assigned] [varchar](1024) NULL,
	[u_assignment_group_type] [varchar](1024) NULL,
	[u_cass_request_number] [varchar](1024) NULL,
	[u_cubicle_number] [varchar](1024) NULL,
	[u_device_eligibility] [varchar](1024) NULL,
	[u_dss__] [varchar](1024) NULL,
	[u_dss___of_visits] [varchar](1024) NULL,
	[u_dss_handle_time] [varchar](1024) NULL,
	[u_dummy_assigned_to_link] [varchar](1024) NULL,
	[u_dummy_assigned_to_value] [varchar](1024) NULL,
	[u_dummy_assignment_group_link] [varchar](1024) NULL,
	[u_dummy_assignment_group_value] [varchar](1024) NULL,
	[u_email_id] [varchar](1024) NULL,
	[u_estimated_delivery_date_] [varchar](1024) NULL,
	[u_floor_number] [varchar](1024) NULL,
	[u_have_you_created_the_id_] [varchar](1024) NULL,
	[u_incident_gp_type] [varchar](1024) NULL,
	[u_info_required_from_user_link] [varchar](1024) NULL,
	[u_info_required_from_user_value] [varchar](1024) NULL,
	[u_item_link] [varchar](1024) NULL,
	[u_item_value] [varchar](1024) NULL,
	[u_level_of_effort] [varchar](1024) NULL,
	[u_license_available] [varchar](1024) NULL,
	[u_license_purchased] [varchar](1024) NULL,
	[u_mailing_address_line_2_] [varchar](1024) NULL,
	[u_network_id] [varchar](1024) NULL,
	[u_pending_dur] [varchar](1024) NULL,
	[u_pending_duration] [varchar](1024) NULL,
	[u_pending_end_time] [varchar](1024) NULL,
	[u_pending_start_time] [varchar](1024) NULL,
	[u_phone_number] [varchar](1024) NULL,
	[u_report_rsa_location] [varchar](1024) NULL,
	[u_requirement_title] [varchar](1024) NULL,
	[u_rsa_request_number] [varchar](1024) NULL,
	[u_selected_device] [varchar](1024) NULL,
	[u_shipper_vendor_name] [varchar](1024) NULL,
	[u_sla_type] [varchar](1024) NULL,
	[u_srms_location] [varchar](1024) NULL,
	[u_srms_resolved] [varchar](1024) NULL,
	[u_srms_status] [varchar](1024) NULL,
	[u_srms_ticket_number] [varchar](1024) NULL,
	[u_srms_update] [varchar](1024) NULL,
	[u_supplier] [varchar](1024) NULL,
	[u_supplier_name] [varchar](1024) NULL,
	[u_tracking_number] [varchar](1024) NULL,
	[upon_approval] [varchar](1024) NULL,
	[upon_reject] [varchar](1024) NULL,
	[urgency] [varchar](1024) NULL,
	[user_input] [varchar](1024) NULL,
	[watch_list] [varchar](1024) NULL,
	[work_end] [varchar](1024) NULL,
	[work_notes] [varchar](1024) NULL,
	[work_notes_list] [varchar](1024) NULL,
	[work_start] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SYS_USER]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SYS_USER](
	[ACTIVE] [varchar](5) NULL,
	[BUILDING_LINK] [varchar](255) NULL,
	[BUILDING_VALUE] [varchar](32) NULL,
	[CALENDAR_INTEGRATION] [int] NULL,
	[CITY] [varchar](40) NULL,
	[COMPANY_LINK] [varchar](255) NULL,
	[COMPANY_VALUE] [varchar](32) NULL,
	[COST_CENTER_LINK] [varchar](255) NULL,
	[COST_CENTER_VALUE] [varchar](32) NULL,
	[COUNTRY] [varchar](3) NULL,
	[DATE_FORMAT] [varchar](40) NULL,
	[DEPARTMENT_LINK] [varchar](255) NULL,
	[DEPARTMENT_VALUE] [varchar](32) NULL,
	[EMAIL] [varchar](100) NULL,
	[EMPLOYEE_NUMBER] [varchar](40) NULL,
	[FAILED_ATTEMPTS] [int] NULL,
	[FIRST_NAME] [varchar](300) NULL,
	[GENDER] [varchar](40) NULL,
	[HOME_PHONE] [varchar](40) NULL,
	[INTERNAL_INTEGRATION_USER] [varchar](5) NULL,
	[INTRODUCTION] [varchar](40) NULL,
	[LAST_LOGIN] [date] NULL,
	[LAST_LOGIN_TIME] [datetime2](7) NULL,
	[LAST_NAME] [varchar](300) NULL,
	[LOCATION_LINK] [varchar](255) NULL,
	[LOCATION_VALUE] [varchar](32) NULL,
	[MANAGER_LINK] [varchar](255) NULL,
	[MANAGER_VALUE] [varchar](32) NULL,
	[MIDDLE_NAME] [varchar](50) NULL,
	[MOBILE_PHONE] [varchar](40) NULL,
	[NAME] [varchar](906) NULL,
	[NOTIFICATION] [int] NULL,
	[PHONE] [varchar](180) NULL,
	[PHOTO] [varchar](40) NULL,
	[PREFERRED_LANGUAGE] [varchar](3) NULL,
	[SCHEDULE_LINK] [varchar](255) NULL,
	[SCHEDULE_VALUE] [varchar](32) NULL,
	[SOURCE] [varchar](255) NULL,
	[STATE] [varchar](100) NULL,
	[STREET] [varchar](255) NULL,
	[SYS_CLASS_NAME] [varchar](80) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_FORMAT] [varchar](40) NULL,
	[TIME_ZONE] [varchar](40) NULL,
	[TITLE] [varchar](255) NULL,
	[U_ACCESS_VALID_UPTO] [datetime2](7) NULL,
	[U_ADMIN_ACCESS_REQD] [varchar](40) NULL,
	[U_COMP_CODE] [varchar](40) NULL,
	[U_COMPANY_CODE_LINK] [varchar](255) NULL,
	[U_COMPANY_CODE_VALUE] [varchar](32) NULL,
	[U_COMPANY_DESCRIPTION] [varchar](40) NULL,
	[U_COUNTRY] [varchar](40) NULL,
	[U_DEPARTMENT] [varchar](100) NULL,
	[U_DEVICE_OPTIONS] [varchar](40) NULL,
	[U_DEVICE_UPGRADE_ELIGIBLE] [varchar](40) NULL,
	[U_ELIGIBLE_FOR_KID] [varchar](40) NULL,
	[U_ELIGIBLE_FOR_STIPEND] [varchar](40) NULL,
	[U_HIDDEN_EMAIL] [varchar](40) NULL,
	[U_KNOW_TO_READ_ENGLISH] [varchar](40) NULL,
	[U_KNOW_TO_SPEAK_ENGLISH] [varchar](40) NULL,
	[U_KNOWLEDGE_REVIEWER] [varchar](5) NULL,
	[U_LAST_LOAD_DATE] [datetime2](7) NULL,
	[U_LOCATION] [varchar](100) NULL,
	[U_LOGIN_COUNTER] [int] NULL,
	[U_MOBILE_DEVICE_UPGRADE_ELIGIB] [varchar](40) NULL,
	[U_MY_IT_SERVICES_AND_TOOLS] [varchar](255) NULL,
	[U_OFFBOARDED_AT] [date] NULL,
	[U_PHYSICALDELIVERYOFFICENAME] [varchar](100) NULL,
	[U_PURPOSE_OF_CREATE_UPDATE] [varchar](40) NULL,
	[U_RECENTLY_OFF_BOARDED] [varchar](5) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_SERVICE_ACCOUNT] [varchar](5) NULL,
	[U_SERVICE_DESK_LOCATION] [varchar](40) NULL,
	[U_SKYPE_CHECK] [varchar](5) NULL,
	[U_SKYPE_ELIGIBLE] [varchar](40) NULL,
	[U_THE_BEST_WAY_TO_REACH_ME] [varchar](255) NULL,
	[U_USER_LANGUAGE] [varchar](40) NULL,
	[U_USER_TYPE] [varchar](40) NULL,
	[U_WHAT_DO_YOU_THINK_ABOUT_IT_] [varchar](255) NULL,
	[U_WORK_NOTES] [varchar](4000) NULL,
	[U_WORK_SELF] [varchar](40) NULL,
	[USER_NAME] [varchar](100) NOT NULL,
	[VIP] [varchar](5) NULL,
	[WEB_SERVICE_ACCESS_ONLY] [varchar](5) NULL,
	[ZIP] [varchar](40) NULL,
	[U_EMPLOYEE_FLAG] [varchar](5) NULL,
	[U_EXPIRATION_DATE] [date] NULL,
	[U_SEARCH_DEMO_SHOWN] [varchar](40) NULL,
	[U_USER_SOURCE] [varchar](40) NULL,
 CONSTRAINT [PK__SYS_USER__5B303E33A63B6A08] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SYS_USER_GROUP]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SYS_USER_GROUP](
	[ACTIVE] [varchar](40) NULL,
	[COST_CENTER_LINK] [varchar](255) NULL,
	[COST_CENTER_VALUE] [varchar](32) NULL,
	[DEFAULT_ASSIGNEE_LINK] [varchar](255) NULL,
	[DEFAULT_ASSIGNEE_VALUE] [varchar](32) NULL,
	[DESCRIPTION] [varchar](1000) NULL,
	[EMAIL] [varchar](100) NULL,
	[EXCLUDE_MANAGER] [varchar](5) NULL,
	[HOURLY_RATE] [varchar](15) NULL,
	[INCLUDE_MEMBERS] [varchar](5) NULL,
	[MANAGER_LINK] [varchar](255) NULL,
	[MANAGER_VALUE] [varchar](32) NULL,
	[NAME] [varchar](80) NOT NULL,
	[PARENT_LINK] [varchar](255) NULL,
	[PARENT_VALUE] [varchar](32) NULL,
	[SOURCE] [varchar](255) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [varchar](40) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [varchar](40) NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [varchar](40) NULL,
	[TYPE] [varchar](1024) NULL,
	[U_ALIAS] [varchar](100) NULL,
	[U_CONTENT_APPROVER_LINK] [varchar](255) NULL,
	[U_CONTENT_APPROVER_VALUE] [varchar](32) NULL,
	[U_DSS_GROUP] [varchar](5) NULL,
	[U_GROUP_ID] [varchar](40) NULL,
	[U_GROUP_TYPE] [varchar](40) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_RESPONSIBILITY] [varchar](40) NULL,
	[U_SRMS_GROUPS] [varchar](40) NULL,
	[U_SUB_SUPPLIER] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_SUPPORT_GROUP] [varchar](40) NULL,
	[U_WORK_NOTES] [varchar](4000) NULL,
 CONSTRAINT [PK_SYS_USER_GROUP] PRIMARY KEY NONCLUSTERED 
(
	[NAME] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[SYS_USER_GROUP_KG]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[SYS_USER_GROUP_KG](
	[SYS_ID] [varchar](32) NULL,
	[U_REGION] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[U_SUB_SUPPLIER] [varchar](40) NULL,
	[NAME] [varchar](80) NOT NULL,
	[SLT_GROUP] [nvarchar](255) NULL,
	[PILLAR] [nvarchar](255) NULL,
	[TEAM] [nvarchar](255) NULL,
	[SUB_TEAM] [nvarchar](255) NULL,
	[SILO] [nvarchar](255) NULL,
	[SCOPE] [nvarchar](255) NULL,
	[MODIFIED_BY] [nvarchar](255) NULL,
	[MODIFIED_DATE] [datetime2](7) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[TASK_SLA]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[TASK_SLA](
	[ACTIVE] [varchar](5) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[BUSINESS_PAUSE_DURATION] [datetime2](7) NULL,
	[BUSINESS_PERCENTAGE] [varchar](15) NULL,
	[BUSINESS_TIME_LEFT] [datetime2](7) NULL,
	[DURATION] [datetime2](7) NULL,
	[END_TIME] [datetime2](7) NULL,
	[HAS_BREACHED] [varchar](5) NULL,
	[PAUSE_DURATION] [datetime2](7) NULL,
	[PAUSE_TIME] [datetime2](7) NULL,
	[PERCENTAGE] [varchar](15) NULL,
	[PLANNED_END_TIME] [datetime2](7) NULL,
	[SCHEDULE_LINK] [varchar](255) NULL,
	[SCHEDULE_VALUE] [varchar](32) NULL,
	[SLA_LINK] [varchar](255) NULL,
	[SLA_VALUE] [varchar](32) NULL,
	[STAGE] [varchar](40) NULL,
	[START_TIME] [datetime2](7) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TASK_LINK] [varchar](255) NULL,
	[TASK_VALUE] [varchar](32) NULL,
	[TIME_LEFT] [datetime2](7) NULL,
	[TIMEZONE] [varchar](40) NULL,
	[U_SLA_AGEING] [varchar](40) NULL,
	[U_SLA_EXCEPTION] [varchar](5) NULL,
	[U_WORK_NOTES] [varchar](4000) NULL,
 CONSTRAINT [PK_TASK_SLA] PRIMARY KEY NONCLUSTERED 
(
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [SERVNOW].[U_SLA_EXCEPTION]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [SERVNOW].[U_SLA_EXCEPTION](
	[ACTIVE] [varchar](5) NULL,
	[ACTIVITY_DUE] [datetime2](7) NULL,
	[APPROVAL] [varchar](40) NULL,
	[APPROVAL_HISTORY] [varchar](40) NULL,
	[APPROVAL_SET] [varchar](40) NULL,
	[ASSIGNED_TO_LINK] [varchar](255) NULL,
	[ASSIGNED_TO_VALUE] [varchar](32) NULL,
	[ASSIGNMENT_GROUP_LINK] [varchar](255) NULL,
	[ASSIGNMENT_GROUP_VALUE] [varchar](32) NULL,
	[BUSINESS_DURATION] [datetime2](7) NULL,
	[CALENDAR_DURATION] [datetime2](7) NULL,
	[CLOSE_NOTES] [varchar](4000) NULL,
	[CLOSED_AT] [datetime2](7) NULL,
	[CLOSED_BY] [varchar](255) NULL,
	[CMDB_CI] [varchar](255) NULL,
	[COMMENTS] [varchar](4000) NULL,
	[COMMENTS_AND_WORK_NOTES] [varchar](1024) NULL,
	[COMPANY] [varchar](40) NULL,
	[CONTACT_TYPE] [varchar](40) NULL,
	[CORRELATION_DISPLAY] [varchar](40) NULL,
	[CORRELATION_ID] [varchar](40) NULL,
	[DESCRIPTION] [varchar](4000) NULL,
	[DUE_DATE] [datetime2](7) NULL,
	[ESCALATION] [varchar](40) NULL,
	[EXPECTED_START] [varchar](40) NULL,
	[FOLLOW_UP] [datetime2](7) NULL,
	[GROUP_LIST] [varchar](40) NULL,
	[IMPACT] [int] NULL,
	[KNOWLEDGE] [varchar](5) NULL,
	[LOCATION] [varchar](255) NULL,
	[MADE_SLA] [varchar](5) NULL,
	[NUMBER] [varchar](40) NOT NULL,
	[OPENED_AT] [datetime2](7) NULL,
	[OPENED_BY_LINK] [varchar](255) NULL,
	[OPENED_BY_VALUE] [varchar](32) NULL,
	[ORDER] [int] NULL,
	[PARENT] [varchar](255) NULL,
	[PRIORITY] [int] NULL,
	[REASSIGNMENT_COUNT] [int] NULL,
	[SHORT_DESCRIPTION] [varchar](1024) NULL,
	[SKILLS] [varchar](40) NULL,
	[SLA_DUE] [datetime2](7) NULL,
	[STATE] [int] NULL,
	[SYS_CLASS_NAME] [varchar](40) NULL,
	[SYS_CREATED_BY] [varchar](40) NULL,
	[SYS_CREATED_ON] [datetime2](7) NULL,
	[SYS_DOMAIN_LINK] [varchar](255) NULL,
	[SYS_DOMAIN_VALUE] [varchar](32) NULL,
	[SYS_ID] [varchar](32) NOT NULL,
	[SYS_MOD_COUNT] [int] NULL,
	[SYS_UPDATED_BY] [varchar](40) NULL,
	[SYS_UPDATED_ON] [datetime2](7) NULL,
	[TIME_WORKED] [varchar](40) NULL,
	[U_APPROVED_ON] [datetime2](7) NULL,
	[U_ASSIGNMENT_GROUP_TYPE] [varchar](40) NULL,
	[U_EXCEPTION_TYPE] [varchar](40) NULL,
	[U_INCIDENT_GP_TYPE] [varchar](1024) NULL,
	[U_JUSTIFICATION_TYPE] [varchar](40) NULL,
	[U_REJECTED_ON] [datetime2](7) NULL,
	[U_RELATED_RECORD_LINK] [varchar](255) NULL,
	[U_RELATED_RECORD_VALUE] [varchar](32) NULL,
	[U_STATUS] [varchar](40) NULL,
	[U_SUB_SUPPLIER] [varchar](40) NULL,
	[U_SUPPLIER] [varchar](40) NULL,
	[UPON_APPROVAL] [varchar](40) NULL,
	[UPON_REJECT] [varchar](40) NULL,
	[URGENCY] [int] NULL,
	[USER_INPUT] [varchar](255) NULL,
	[WATCH_LIST] [varchar](1000) NULL,
	[WORK_END] [varchar](40) NULL,
	[WORK_NOTES] [varchar](4000) NULL,
	[WORK_NOTES_LIST] [varchar](1024) NULL,
	[WORK_START] [varchar](40) NULL,
 CONSTRAINT [PK_U_SLA_EXCEPTION] PRIMARY KEY NONCLUSTERED 
(
	[NUMBER] ASC,
	[SYS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ASMT_METRIC]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ASMT_METRIC](
	[active] [varchar](1024) NULL,
	[allow_not_applicable] [varchar](1024) NULL,
	[category_link] [varchar](1024) NULL,
	[category_value] [varchar](1024) NULL,
	[datatype] [varchar](1024) NULL,
	[depends_on_link] [varchar](1024) NULL,
	[depends_on_value] [varchar](1024) NULL,
	[description] [varchar](1024) NULL,
	[displayed_when] [varchar](1024) NULL,
	[displayed_when_checkbox] [varchar](1024) NULL,
	[displayed_when_template] [varchar](1024) NULL,
	[displayed_when_yesno] [varchar](1024) NULL,
	[duration] [varchar](1024) NULL,
	[mandatory] [varchar](1024) NULL,
	[max] [varchar](1024) NULL,
	[max_weight] [varchar](1024) NULL,
	[method] [varchar](1024) NULL,
	[metric_type_link] [varchar](1024) NULL,
	[metric_type_value] [varchar](1024) NULL,
	[min] [varchar](1024) NULL,
	[name] [varchar](1024) NULL,
	[order] [varchar](1024) NULL,
	[plugin] [varchar](1024) NULL,
	[question] [varchar](1024) NULL,
	[randomize_answers] [varchar](1024) NULL,
	[scale] [varchar](1024) NULL,
	[script] [varchar](1024) NULL,
	[string_option] [varchar](1024) NULL,
	[sys_created_by] [varchar](1024) NULL,
	[sys_created_on] [varchar](1024) NULL,
	[sys_domain_link] [varchar](1024) NULL,
	[sys_domain_value] [varchar](1024) NULL,
	[sys_id] [varchar](1024) NULL,
	[sys_mod_count] [varchar](1024) NULL,
	[sys_updated_by] [varchar](1024) NULL,
	[sys_updated_on] [varchar](1024) NULL,
	[template_link] [varchar](1024) NULL,
	[template_value] [varchar](1024) NULL,
	[weight] [varchar](1024) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[HIST_WM_WHINV]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[HIST_WM_WHINV](
	[SUBPART_SUFFIX_TXT] [varchar](100) NULL,
	[WH_DUNS#] [varchar](100) NULL,
	[WH_Desc] [varchar](100) NULL,
	[UPC] [varchar](100) NULL,
	[UPC Desc] [varchar](100) NULL,
	[Day] [varchar](30) NULL,
	[WH_OnHand_CS] [decimal](10, 3) NULL,
	[WH_OnHand_EA] [decimal](10, 3) NULL,
	[WH_Shipped_CS] [decimal](10, 3) NULL,
	[WH_Shipped_EA] [decimal](10, 3) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[ISM_KNA_SCH_ADHERENCE]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[ISM_KNA_SCH_ADHERENCE](
	[PLNT_CD] [varchar](4) NULL,
	[PLANT] [varchar](100) NULL,
	[REGION] [varchar](100) NULL,
	[BUSINESS_UNIT] [varchar](100) NULL,
	[REASON_CODE] [varchar](255) NULL,
	[COMMENTS] [varchar](255) NULL,
	[FISC_YR] [decimal](4, 0) NULL,
	[FISC_PD] [decimal](3, 0) NULL,
	[FISC_QTR] [decimal](3, 0) NULL,
	[FISC_WK] [decimal](3, 0) NULL,
	[FISC_WK_STRT_DT] [date] NULL,
	[FISC_WK_END_DT] [date] NULL,
	[MATERIAL] [varchar](18) NULL,
	[MATERIAL_DESC] [varchar](255) NULL,
	[MATERIAL_TYPE] [varchar](4) NULL,
	[UOM] [varchar](3) NULL,
	[EXT_MAT_GRP] [varchar](18) NULL,
	[ACTL_LBS] [decimal](28, 7) NULL,
	[PLN_LBS] [decimal](28, 7) NULL,
	[PLANT_CD_SRC] [varchar](10) NULL,
	[MATERIAL_SRC] [varchar](18) NULL,
	[REASON_CODE_SRC] [varchar](255) NULL,
	[COMMENTS_SRC] [varchar](255) NULL,
	[FISC_YR_SRC] [varchar](10) NULL,
	[FISC_PD_SRC] [varchar](10) NULL,
	[FISC_WK_SRC] [varchar](10) NULL,
	[BUS_UNIT_SRC] [varchar](255) NULL,
	[PLNT_DESC_SRC] [varchar](255) NULL,
	[MATNR_DESC_SRC] [varchar](255) NULL,
	[EXT_MAT_GRP_SRC] [varchar](255) NULL,
	[ACTUAL_SRC] [decimal](28, 7) NULL,
	[PLAN_SRC] [decimal](28, 7) NULL,
	[MATNR_MARA] [varchar](18) NULL,
	[DW_CRE_TS] [datetime2](7) NULL,
	[DW_CRE_USR] [varchar](50) NULL,
	[DW_MOD_TS] [datetime2](7) NULL,
	[DW_MOD_USR] [varchar](50) NULL,
	[DW_DEL_BIT] [int] NULL,
	[DW_DEL_TS] [datetime2](7) NULL,
	[DW_DEL_USR] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[K_PATH_CIS_PROJ_RPT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[K_PATH_CIS_PROJ_RPT](
	[Project Type] [varchar](100) NULL,
	[Project Status] [varchar](100) NULL,
	[Project Description] [varchar](max) NULL,
	[Project Key] [int] NULL,
	[Reason For Change Comment] [varchar](255) NULL,
	[UPC #] [varchar](255) NULL,
	[Package Type] [varchar](255) NULL,
	[Files Due to Printer] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Nutrition Fact(s)] [varchar](255) NULL,
	[Printer/Location] [varchar](255) NULL,
	[Billing Category] [varchar](255) NULL,
	[Reason for Change (1)] [varchar](255) NULL,
	[Files Shipped] [varchar](255) NULL,
	[SAP #] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[K_PATH_PROJ_RPT]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[K_PATH_PROJ_RPT](
	[Project Key] [int] NULL,
	[Group ID] [decimal](18, 0) NULL,
	[Project Type] [varchar](100) NULL,
	[Name] [varchar](200) NULL,
	[Project Number] [varchar](200) NULL,
	[Project Status] [varchar](100) NULL,
	[Reason Code] [varchar](150) NULL,
	[Revised Ship Date] [datetime2](7) NULL,
	[Compression] [decimal](18, 0) NULL,
	[Cycle Time (Start to Revised)] [int] NULL,
	[Created By] [varchar](201) NOT NULL,
	[Project Description] [varchar](max) NULL,
	[Business Unit] [varchar](255) NULL,
	[Logistic Innovation Manager] [varchar](255) NULL,
	[Region] [varchar](255) NULL,
	[Platform] [varchar](255) NULL,
	[GSV] [varchar](255) NULL,
	[Number of Slots] [varchar](255) NULL,
	[PDR Compression] [varchar](255) NULL,
	[Production Location] [varchar](255) NULL,
	[Account Name] [varchar](255) NULL,
	[Is this project account specific?] [varchar](255) NULL,
	[Event Type] [varchar](255) NULL,
	[Start Production Date] [varchar](255) NULL,
	[Launch SKU] [varchar](255) NULL,
	[Launch Quantity] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[K_PATH_PROJ_RPT_bck]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[K_PATH_PROJ_RPT_bck](
	[Project Type] [varchar](100) NULL,
	[Name] [varchar](200) NULL,
	[Project Number] [varchar](200) NULL,
	[Project Status] [varchar](100) NULL,
	[Reason Code] [varchar](150) NULL,
	[Revised Ship Date] [datetime2](7) NULL,
	[Compression] [decimal](18, 0) NULL,
	[Cycle Time (Start to Revised)] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Created By] [varchar](201) NOT NULL
SET ANSI_PADDING ON
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Project Description] [varchar](max) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Project Key] [int] NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Business Unit] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Logistic Innovation Manager] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Region] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Platform] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [GSV] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Launch Quantity] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Number of Slots] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [PDR Compression] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Production Location] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Launch SKU] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Account Name] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Is this project account specific?] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Event Type] [varchar](255) NULL
ALTER TABLE [STG].[K_PATH_PROJ_RPT_bck] ADD [Start Production Date] [varchar](255) NULL

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[STORE_METADATA]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[STORE_METADATA](
	[Retailer-Datasource] [varchar](30) NULL,
	[Division] [varchar](30) NULL,
	[Retailer Store Nbr] [decimal](10, 0) NULL,
	[TD Linx ID] [decimal](10, 0) NULL,
	[Store Description] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_INFOMETRIC]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_INFOMETRIC](
	[Dist Chain Name] [varchar](30) NULL,
	[Retail Chain Name] [varchar](30) NULL,
	[In-Market Category] [varchar](40) NULL,
	[In-Market Sub Category] [varchar](40) NULL,
	[Sub Brand] [varchar](30) NULL,
	[Case Code] [int] NULL,
	[Month Short Description] [varchar](30) NULL,
	[Outbound $ (Kellogg) - CY] [int] NULL,
	[Outbound $ (Kellogg) - PY] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_INFOMETRICS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_INFOMETRICS](
	[Dist Chain Name] [varchar](255) NULL,
	[Retail Chain Name] [varchar](255) NULL,
	[In-Market Category] [varchar](255) NULL,
	[In-Market Sub Category] [varchar](255) NULL,
	[Sub Brand] [varchar](255) NULL,
	[Case Code] [float] NULL,
	[Month Short Description] [varchar](255) NULL,
	[Outbound $ (Kellogg) - CY] [float] NULL,
	[Outbound $ (Kellogg) - PY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_INFOMTRICS]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_INFOMTRICS](
	[Dist Chain Name] [varchar](255) NULL,
	[Retail Chain Name] [varchar](255) NULL,
	[In-Market Category] [varchar](255) NULL,
	[In-Market Sub Category] [varchar](255) NULL,
	[Sub Brand] [varchar](255) NULL,
	[Case Code] [float] NULL,
	[Month Short Description] [varchar](255) NULL,
	[Outbound $ (Kellogg) - CY] [float] NULL,
	[Outbound $ (Kellogg) - PY] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEMP_SYSCO]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEMP_SYSCO](
	[Company Number] [varchar](255) NULL,
	[Company Name] [varchar](255) NULL,
	[OPCO Zip Code] [varchar](255) NULL,
	[Pay To SUVC] [varchar](255) NULL,
	[Pay To Supplier Name] [varchar](255) NULL,
	[Ship From SUVC] [varchar](255) NULL,
	[Ship From Supplier Name] [varchar](255) NULL,
	[RDC Flag] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Item Number] [varchar](255) NULL,
	[Item Description] [varchar](255) NULL,
	[MPC] [varchar](255) NULL,
	[Pack] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Brand] [varchar](255) NULL,
	[On Hand Qty] [float] NULL,
	[Total Commited Units] [float] NULL,
	[Ordered Qty] [float] NULL,
	[Projected Qty] [varchar](255) NULL,
	[Projected Qty1] [varchar](255) NULL,
	[Projected Qty2] [varchar](255) NULL,
	[Projected Qty3] [varchar](255) NULL,
	[Projected Qty4] [varchar](255) NULL,
	[Projected Qty5] [float] NULL,
	[Projected Qty6] [varchar](255) NULL,
	[Projected Qty7] [varchar](255) NULL,
	[Projected Qty8] [varchar](255) NULL,
	[Projected Qty9] [float] NULL,
	[Projected Qty10] [varchar](255) NULL,
	[Projected Qty11] [varchar](255) NULL,
	[Projected Qty12] [float] NULL,
	[Projected Qty13] [varchar](255) NULL,
	[Projected Qty14] [varchar](255) NULL,
	[Projected Qty15] [varchar](255) NULL,
	[Projected Qty16] [varchar](255) NULL,
	[Projected Qty17] [varchar](255) NULL,
	[Projected Qty18] [varchar](255) NULL,
	[Projected Qty19] [varchar](255) NULL,
	[Projected Qty20] [varchar](255) NULL,
	[Projected Qty21] [varchar](255) NULL,
	[Projected Qty22] [varchar](255) NULL,
	[Projected Qty23] [varchar](255) NULL,
	[Projected Qty24] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEST_CCA_KOP_P10]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEST_CCA_KOP_P10](
	[Trid-Import CCA] [varchar](40) NULL,
	[Company Code] [varchar](20) NULL,
	[Cost Center] [varchar](22) NULL,
	[GL Account] [varchar](10) NULL,
	[Currency] [varchar](5) NULL,
	[Year] [int] NULL,
	[Period] [int] NULL,
	[Period-Year] [varchar](7) NULL,
	[Amount] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEST_KOP_CCA_P10]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEST_KOP_CCA_P10](
	[Trid-Import CCA] [varchar](40) NULL,
	[Company Code] [varchar](20) NULL,
	[Cost Center] [varchar](22) NULL,
	[GL Account] [varchar](10) NULL,
	[Currency] [varchar](5) NULL,
	[Year] [int] NULL,
	[Period] [int] NULL,
	[Period-Year] [varchar](7) NULL,
	[Amount] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[TEST_KOP_CCA_P10_1]    Script Date: 11/20/2018 5:26:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[TEST_KOP_CCA_P10_1](
	[Trid-Import CCA] [varchar](40) NULL,
	[Company Code] [varchar](20) NULL,
	[Cost Center] [varchar](22) NULL,
	[GL Account] [varchar](10) NULL,
	[Currency] [varchar](5) NULL,
	[Year] [int] NULL,
	[Period] [int] NULL,
	[Period-Year] [varchar](7) NULL,
	[Amount] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_ISSUE_CORE]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE UNIQUE CLUSTERED INDEX [PK_ISSUE_CORE] ON [ATTASKWF].[ISSUES_CORE]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KG_EXTERNAL_INV_DMND_WOS_CALC_IDX1]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE CLUSTERED INDEX [KG_EXTERNAL_INV_DMND_WOS_CALC_IDX1] ON [dbo].[INV_DMND_WOS_CALC]
(
	[SNP_VER] ASC,
	[MATERIAL] ASC,
	[PLANT] ASC,
	[FISCWEK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KG_EXTERNAL_INV_DMND_WOS_CALC_DLY_IDX1]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE CLUSTERED INDEX [KG_EXTERNAL_INV_DMND_WOS_CALC_DLY_IDX1] ON [dbo].[INV_DMND_WOS_CALC_DLY]
(
	[SNP_VER] ASC,
	[MATERIAL] ASC,
	[PLANT] ASC,
	[FISCWEK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [KG_EXTERNAL_INV_DMND_WOS_CALC_WKLY_IDX1]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE CLUSTERED INDEX [KG_EXTERNAL_INV_DMND_WOS_CALC_WKLY_IDX1] ON [dbo].[INV_DMND_WOS_CALC_WKLY]
(
	[SNP_VER] ASC,
	[MATERIAL] ASC,
	[PLANT] ASC,
	[FISCWEK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ISSUES_CORE]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ISSUES_CORE] ON [ATTASKWF].[ISSUES_CORE]
(
	[REFERENCENUMBER] ASC,
	[STATUS] ASC,
	[DE:RESPONSIBLE] ASC,
	[DE:REGION] ASC,
	[ACTUALCOMPLETIONDATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ASMT_ASSESSMENT_INSTANCE]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ASMT_ASSESSMENT_INSTANCE] ON [SERVNOW].[ASMT_ASSESSMENT_INSTANCE]
(
	[METRIC_TYPE_VALUE] ASC,
	[STATE] ASC,
	[TRIGGER_ID_VALUE] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ASMT_ASSESSMENT_INSTANCE_QUESTION]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ASMT_ASSESSMENT_INSTANCE_QUESTION] ON [SERVNOW].[ASMT_ASSESSMENT_INSTANCE_QUESTION]
(
	[INSTANCE_VALUE] ASC,
	[METRIC_VALUE] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ASMT_METRIC]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ASMT_METRIC] ON [SERVNOW].[ASMT_METRIC]
(
	[SYS_UPDATED_ON] ASC,
	[METRIC_TYPE_VALUE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ASMT_METRIC_RESULT]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_ASMT_METRIC_RESULT] ON [SERVNOW].[ASMT_METRIC_RESULT]
(
	[METRIC_VALUE] ASC,
	[INSTANCE_VALUE] ASC,
	[INSTANCE_QUESTION_VALUE] ASC,
	[ASSESSMENT_GROUP_VALUE] ASC,
	[METRIC_DEFINITION_VALUE] ASC,
	[U_SUEVEY_QUES] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CMDB_CI]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CMDB_CI] ON [SERVNOW].[CMDB_CI]
(
	[NAME] ASC,
	[CATEGORY] ASC,
	[SUBCATEGORY] ASC,
	[SYS_UPDATED_ON] ASC,
	[U_CI_CATEGORY] ASC,
	[U_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CMN_LOCATION]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CMN_LOCATION] ON [SERVNOW].[CMN_LOCATION]
(
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CONTRACT_SLA]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_CONTRACT_SLA] ON [SERVNOW].[CONTRACT_SLA]
(
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_INCIDENT]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_INCIDENT] ON [SERVNOW].[INCIDENT]
(
	[CMDB_CI_VALUE] ASC,
	[PROBLEM_ID_VALUE] ASC,
	[ASSIGNED_TO_VALUE] ASC,
	[ASSIGNMENT_GROUP_VALUE] ASC,
	[CLOSED_BY_VALUE] ASC,
	[OPENED_BY_VALUE] ASC,
	[RESOLVED_BY_VALUE] ASC,
	[PARENT_INCIDENT_VALUE] ASC,
	[CLOSED_AT] ASC,
	[OPENED_AT] ASC,
	[SUBCATEGORY] ASC,
	[SYS_UPDATED_ON] ASC,
	[U_CI_CATEGORY] ASC,
	[U_CI_CLASSIFICATION] ASC,
	[U_CI_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_METRIC_DEFINITION]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_METRIC_DEFINITION] ON [SERVNOW].[METRIC_DEFINITION]
(
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_METRIC_INSTANCE]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_METRIC_INSTANCE] ON [SERVNOW].[METRIC_INSTANCE]
(
	[ID_VALUE] ASC,
	[DEFINITION_VALUE] ASC,
	[TABLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PROBLEM]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_PROBLEM] ON [SERVNOW].[PROBLEM]
(
	[ASSIGNMENT_GROUP_VALUE] ASC,
	[CLOSED_BY_VALUE] ASC,
	[OPENED_BY_VALUE] ASC,
	[CMDB_CI_VALUE] ASC,
	[NUMBER] ASC,
	[PROBLEM_STATE] ASC,
	[SYS_UPDATED_ON] ASC,
	[U_CATEGORY] ASC,
	[U_CI_CATEGORY] ASC,
	[U_CI_CLASSIFICATION] ASC,
	[U_CI_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_PROBLEM_TASK]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_PROBLEM_TASK] ON [SERVNOW].[PROBLEM_TASK]
(
	[ASSIGNMENT_GROUP_VALUE] ASC,
	[ASSIGNED_TO_VALUE] ASC,
	[CLOSED_BY_VALUE] ASC,
	[OPENED_BY_VALUE] ASC,
	[CMDB_CI_VALUE] ASC,
	[NUMBER] ASC,
	[PROBLEM_VALUE] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [SYS_ID]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [SYS_ID] ON [SERVNOW].[SC_REQUEST]
(
	[SYS_ID] ASC,
	[NUMBER] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SC_TASK]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SC_TASK] ON [SERVNOW].[SC_TASK]
(
	[ASSIGNED_TO_VALUE] ASC,
	[ASSIGNMENT_GROUP_VALUE] ASC,
	[CLOSED_AT] ASC,
	[CLOSED_BY_VALUE] ASC,
	[CMDB_CI_VALUE] ASC,
	[OPENED_AT] ASC,
	[OPENED_BY_VALUE] ASC,
	[REQUEST_ITEM_VALUE] ASC,
	[SC_CATALOG_VALUE] ASC,
	[SYS_UPDATED_ON] ASC,
	[U_SUPPLIER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SYS_USER_GROUP]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SYS_USER_GROUP] ON [SERVNOW].[SYS_USER_GROUP]
(
	[SYS_UPDATED_ON] ASC,
	[U_SUB_SUPPLIER] ASC,
	[U_SUPPLIER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SYS_USER_GROUP_KG]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_SYS_USER_GROUP_KG] ON [SERVNOW].[SYS_USER_GROUP_KG]
(
	[SLT_GROUP] ASC,
	[PILLAR] ASC,
	[TEAM] ASC,
	[SUB_TEAM] ASC,
	[SILO] ASC,
	[SCOPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_TASK_SLA]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_TASK_SLA] ON [SERVNOW].[TASK_SLA]
(
	[SLA_VALUE] ASC,
	[STAGE] ASC,
	[SYS_UPDATED_ON] ASC,
	[TASK_VALUE] ASC,
	[U_SLA_EXCEPTION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_U_SLA_EXCEPTION]    Script Date: 11/20/2018 5:26:17 PM ******/
CREATE NONCLUSTERED INDEX [IX_U_SLA_EXCEPTION] ON [SERVNOW].[U_SLA_EXCEPTION]
(
	[STATE] ASC,
	[CLOSED_AT] ASC,
	[OPENED_AT] ASC,
	[SYS_UPDATED_ON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [SERVNOW].[SYS_USER_GROUP_KG] ADD  CONSTRAINT [DF_SYS_USER_GROUP_KG_MODIFIED_DATE]  DEFAULT (getdate()) FOR [MODIFIED_DATE]
GO
USE [master]
GO
ALTER DATABASE [KG_EXTERNAL] SET  READ_WRITE 
GO
