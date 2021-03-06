USE [master]
GO
/****** Object:  Database [KNA_FIN]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE DATABASE [KNA_FIN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KNA_FIN', FILENAME = N'E:\SQL_DATA\MSSQL13.ANALYTICSPROD\Data\KNA_FIN.mdf' , SIZE = 66052096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 256000KB )
 LOG ON 
( NAME = N'KNA_FIN_log', FILENAME = N'L:\SQL_LOGS\MSSQL13.ANALYTICSPROD\Logs\KNA_FIN_log.ldf' , SIZE = 18330624KB , MAXSIZE = 2048GB , FILEGROWTH = 102400KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KNA_FIN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KNA_FIN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KNA_FIN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KNA_FIN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KNA_FIN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KNA_FIN] SET ARITHABORT OFF 
GO
ALTER DATABASE [KNA_FIN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KNA_FIN] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_FIN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KNA_FIN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KNA_FIN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KNA_FIN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KNA_FIN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KNA_FIN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KNA_FIN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KNA_FIN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KNA_FIN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KNA_FIN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KNA_FIN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KNA_FIN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KNA_FIN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KNA_FIN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KNA_FIN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KNA_FIN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KNA_FIN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KNA_FIN] SET  MULTI_USER 
GO
ALTER DATABASE [KNA_FIN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KNA_FIN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KNA_FIN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KNA_FIN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KNA_FIN', N'ON'
GO
USE [KNA_FIN]
GO
/****** Object:  User [US\SQL_KG_ZBB_R]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_KG_ZBB_R] FOR LOGIN [US\SQL_KG_ZBB_R]
GO
/****** Object:  User [us\SQL_KEYSTONE_SA_PROD_R]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [us\SQL_KEYSTONE_SA_PROD_R] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD_R]
GO
/****** Object:  User [US\SQL_Keystone_SA_Prod]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_Keystone_SA_Prod] FOR LOGIN [US\SQL_KEYSTONE_SA_PROD]
GO
/****** Object:  User [US\SQL_DS_ZBB_SUPPORT_R]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DS_ZBB_SUPPORT_R] FOR LOGIN [US\SQL_DS_ZBB_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_SUPPORT_R]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DS_SUPPORT_R] FOR LOGIN [US\SQL_DS_SUPPORT_R]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE7]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE7] FOR LOGIN [US\SQL_DS_HYPERCARE7]
GO
/****** Object:  User [US\SQL_DS_HYPERCARE4 ]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DS_HYPERCARE4 ] FOR LOGIN [US\SQL_DS_HYPERCARE4]
GO
/****** Object:  User [US\SQL_DS_ANALYTICS_R]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DS_ANALYTICS_R] FOR LOGIN [US\SQL_DS_ANALYTICS_R]
GO
/****** Object:  User [US\SQL_DATA_SERVICES]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [US\SQL_DATA_SERVICES] FOR LOGIN [US\SQL_DATA_SERVICES]
GO
/****** Object:  User [SQL_SPARK_PROD]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SQL_SPARK_PROD] FOR LOGIN [SQL_SPARK_PROD] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SQL_ACCENTURE]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SQL_ACCENTURE] FOR LOGIN [SQL_ACCENTURE] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKRRD01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKRRD01] FOR LOGIN [SAS_USKRRD01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPLG01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKPLG01] FOR LOGIN [SAS_USKPLG01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKPCL01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKPCL01] FOR LOGIN [SAS_USKPCL01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKNXA19]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKNXA19] FOR LOGIN [SAS_USKNXA19] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKMEW01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKMEW01] FOR LOGIN [SAS_USKMEW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKLCH06]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKLCH06] FOR LOGIN [SAS_USKLCH06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKXW01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKKXW01] FOR LOGIN [SAS_USKKXW01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKKFS02]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKKFS02] FOR LOGIN [SAS_USKKFS02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJXS19]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKJXS19] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJTB03]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKJTB03] FOR LOGIN [SAS_USKJTB03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKJAK14]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKJAK14] FOR LOGIN [SAS_USKJAK14] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKDRK07]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKDRK07] FOR LOGIN [SAS_USKDRK07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKCRS01]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKCRS01] FOR LOGIN [SAS_USKCRS01] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SAS_USKBPH02]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [SAS_USKBPH02] FOR LOGIN [SAS_USKBPH02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BODS]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE USER [BODS] FOR LOGIN [BODS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_view_def]    Script Date: 11/20/2018 5:44:32 PM ******/
CREATE ROLE [db_view_def]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_KG_ZBB_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [us\SQL_KEYSTONE_SA_PROD_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_Keystone_SA_Prod]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ZBB_SUPPORT_R]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_SUPPORT_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE7]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_HYPERCARE4 ]
GO
ALTER ROLE [db_view_def] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_datareader] ADD MEMBER [US\SQL_DS_ANALYTICS_R]
GO
ALTER ROLE [db_owner] ADD MEMBER [US\SQL_DATA_SERVICES]
GO
ALTER ROLE [db_owner] ADD MEMBER [SQL_SPARK_PROD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SQL_ACCENTURE]
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
/****** Object:  Schema [KNA_ZBB]    Script Date: 11/20/2018 5:44:33 PM ******/
CREATE SCHEMA [KNA_ZBB]
GO
/****** Object:  Schema [STG]    Script Date: 11/20/2018 5:44:33 PM ******/
CREATE SCHEMA [STG]
GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Acct_Hrchy]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Venkata
-- Create date: May 12, 2016
-- Description:	populate acct hirarchy from  ZBB_CST_CT Cost Element Hierarchy.

/*Author : Merlyn
Alter date : Jan 29th 2018
Descritpion : Changes requried for 2018 hierarchy
task number : TASK0463514*/
-- =============================================
CREATE PROCEDURE [dbo].[USP_DQ_Load_Acct_Hrchy]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @ACCT_HRCHY TABLE
            (
              ACCT_NBR NVARCHAR(10) ,
              ACCT_DESC NVARCHAR(60) NULL ,
              SCOPE_IND NVARCHAR(10) NULL ,
              ACCT_CATEG NVARCHAR(40) NULL ,
              ACCT_SUB_CATEG NVARCHAR(40) NULL ,
              Created_by NVARCHAR(100) NULL ,
              Created_TS DATETIME NULL ,
              Modified_by NVARCHAR(100) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by NVARCHAR(100) NULL ,
              Deleted_TS DATETIME NULL
            );
	        
		   
        INSERT  INTO @ACCT_HRCHY
                ( ACCT_NBR ,
                  ACCT_DESC ,
                  SCOPE_IND ,
                  ACCT_CATEG ,
                  ACCT_SUB_CATEG ,
                  Created_by ,
                  Created_TS
                )
                /*SELECT  b.[Cost Element] ,
                        b.[Cost Element Name] ,
                        'IN SCOPE' ,
                        a.DESCRIPTION_LEVEL1 ,
                        a.DESCRIPTION_LEVEL2 ,
                        USER_NAME() ,
                        GETDATE()
                FROM    KNA_ECC.STG.COST_ELEMENT_ZBB_HIERARCHY a ,
                        KNA_ECC.STG.COST_ELEMENTS_ZBB b
                WHERE   b.SETNAME = a.SETNAME
                        AND b.[Hierarchy Parent] = a.SETNAME and a.SETNAME='6245100020';*/
						-- changed for 2018 hierarchy ref-TASK0463514
						SELECT a.SETNAME  ,a.[LVL5_SETNAME_DESC],'IN SCOPE' ,ltrim(rtrim(a.[LVL3_SETNAME_DESC])),ltrim(rtrim(a.[LVL4_SETNAME_DESC])) ,USER_NAME() ,
                        GETDATE() from KG_VIEWS.[KNA].[UVW_COST_ELMNT_HIER_UNRVL]  a
						 where a.SETCLASS='0102' and a.SETTYPE='X'
		  and a.SUBCLASS='COA'
		 and a.APPL_NM IN ('KNA_ZBB_MT') ; 
		



-- Merge Statement
        MERGE KNA_FIN.KNA_ZBB.Acct_Hrchy_ZBB AS stm
        USING
            ( SELECT    ACCT_NBR ,
                        ACCT_DESC ,
                        ACCT_CATEG ,
                        ACCT_SUB_CATEG,
						SCOPE_IND
              FROM      @ACCT_HRCHY
            ) AS sd
        ON stm.Acct_Nbr = sd.ACCT_NBR
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.Acct_Desc = sd.ACCT_DESC ,
                    stm.Acct_Categ = sd.ACCT_CATEG ,
                    stm.Acct_Sub_Categ = sd.ACCT_SUB_CATEG ,
                    stm.DW_Mod_Usr = USER_NAME() ,
                    stm.DW_Mod_Ts = GETDATE(),
					stm.DW_Del_Bit=0,
					stm. DW_Del_Usr=null
					
        WHEN NOT MATCHED THEN
            INSERT ( Acct_Nbr ,
                     Acct_Desc ,
                     Acct_Categ ,
                     Acct_Sub_Categ ,
					 SCOPE_IND,
                     DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.ACCT_NBR ,
                     sd.ACCT_DESC ,
                     sd.ACCT_CATEG ,
                     sd.ACCT_SUB_CATEG ,
					 sd.SCOPE_IND,
                     USER_NAME() ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT(Acct_Nbr)
        FROM    KNA_FIN.KNA_ZBB.Acct_Hrchy_ZBB a
        WHERE   a.Acct_Nbr NOT IN ( SELECT  ACCT_NBR
                                    FROM    @ACCT_HRCHY );
        PRINT @cnt;

        UPDATE  KNA_FIN.KNA_ZBB.Acct_Hrchy_ZBB
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   Acct_Nbr NOT IN ( SELECT    ACCT_NBR
                                  FROM      @ACCT_HRCHY ); 

    END;











GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Airfare]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_DQ_Load_Airfare]
    @Cntry_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_Load_Airfare
PURPOSE & 
Description :  This script will load data into Airfare table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version

2.0			06/20/2016		 USCARK01				 2.Updated  Version.	

-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_Load_Airfare] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
    BEGIN
        BEGIN TRY
            IF ( @Cntry_flag = 'CA' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Airfare_Detl_CA]
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            [Gcn] = LTRIM(RTRIM([Gcn])) ,
                            [Clnt_Cd] = LTRIM(RTRIM([Clnt_Cd])) ,
                            [Lctr] = LTRIM(RTRIM([Lctr])) ,
                            [Trvlr] = LTRIM(RTRIM([Trvlr])) ,
                            [Invc_Dt] = LTRIM(RTRIM([Invc_Dt])) ,
                            [Invc_Num] = LTRIM(RTRIM([Invc_Num])) ,
                            [Agcy] = LTRIM(RTRIM([Agcy])) ,
                            [Agcy_Num] = LTRIM(RTRIM([Agcy_Num])) ,
                            [Bkng_Src] = LTRIM(RTRIM([Bkng_Src])) ,
                            [Bkng_Agnt_Bkng_Agnt_Id] = LTRIM(RTRIM([Bkng_Agnt_Bkng_Agnt_Id])) ,
                            [Local_Air_Rsn_Cd] = LTRIM(RTRIM([Local_Air_Rsn_Cd])) ,
                            [Local_Air_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Air_Rsn_Cd_Desc])) ,
                            [Glbl_Air_Rsn_Cd] = LTRIM(RTRIM([Glbl_Air_Rsn_Cd])) ,
                            [Glbl_Air_rsn_cd_Desc] = LTRIM(RTRIM([Glbl_Air_rsn_cd_Desc])) ,
                            [Fare_Accptd_Cd] = LTRIM(RTRIM([Fare_Accptd_Cd])) ,
                            [Fare_Accptd_Cd_Desc] = LTRIM(RTRIM([Fare_Accptd_Cd_Desc])) ,
                            [CrdtCrd_Num] = LTRIM(RTRIM([CrdtCrd_Num])) ,
                            [CrdtCrd_Typ] = LTRIM(RTRIM([CrdtCrd_Typ])) ,
                            [Crdtcrd_Exprtn] = LTRIM(RTRIM([Crdtcrd_Exprtn])) ,
                            [Rfnd_Indctr] = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            [Exchng_Indctr] = LTRIM(RTRIM([Exchng_Indctr])) ,
                            [True_Tckt_Cnt] = LTRIM(RTRIM([True_Tckt_Cnt])) ,
                            [Rnd_Trp_Indctr] = LTRIM(RTRIM([Rnd_Trp_Indctr])) ,
                            [Shrt_Long_Hl_Indctr] = LTRIM(RTRIM([Shrt_Long_Hl_Indctr])) ,
                            [Orig_Docnum] = LTRIM(RTRIM([Orig_Docnum])) ,
                            [Int_Dom] = LTRIM(RTRIM([Int_Dom])) ,
                            [Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])) ,
                            [Trvlr_Ctry] = LTRIM(RTRIM([Trvlr_Ctry])) ,
                            [Tcktng_Ctry] = LTRIM(RTRIM([Tcktng_Ctry])) ,
                            [Trip_Lgth] = LTRIM(RTRIM([Trip_Lgth])) ,
                            [Trvl_Strt_Dt] = LTRIM(RTRIM([Trvl_Strt_Dt])) ,
                            [Tkt_Num] = LTRIM(RTRIM([Tkt_Num])) ,
                            [Crir_Cd] = LTRIM(RTRIM([Crir_Cd])) ,
                            [Crir_Nm] = LTRIM(RTRIM([Crir_Nm])) ,
                            [Orgn_Aprt_Cd] = LTRIM(RTRIM([Orgn_Aprt_Cd])) ,
                            [Orig_Cty] = LTRIM(RTRIM([Orig_Cty])) ,
                            [Orig_Arprt] = LTRIM(RTRIM([Orig_Arprt])) ,
                            [Orig_Cntry] = LTRIM(RTRIM([Orig_Cntry])) ,
                            [Dest_Ctry] = LTRIM(RTRIM([Dest_Ctry])) ,
                            [Rtng] = LTRIM(RTRIM([Rtng])) ,
                            [Bkng_Clas_Sumry] = LTRIM(RTRIM([Bkng_Clas_Sumry])) ,
                            [Fr_Bss_Sumry] = LTRIM(RTRIM([Fr_Bss_Sumry])) ,
                            [Cbn] = LTRIM(RTRIM([Cbn])) ,
                            [Tour_Cd] = LTRIM(RTRIM([Tour_Cd])) ,
                            [Bkng_Dt] = LTRIM(RTRIM([Bkng_Dt])) ,
                            [Dd_Adv_Bkng] = LTRIM(RTRIM([Dd_Adv_Bkng])) ,
                            [Dd_Adv_Bkng_Grp] = LTRIM(RTRIM([Dd_Adv_Bkng_Grp])) ,
                            [Dd_Adv_Pur] = LTRIM(RTRIM([Dd_Adv_Pur])) ,
                            [Dd_Adv_Purgrp] = LTRIM(RTRIM([Dd_Adv_Purgrp])) ,
                            [Mlg] = LTRIM(RTRIM([Mlg])) ,
                            [Cst_Pr_Ml] = LTRIM(RTRIM([Cst_Pr_Ml])) ,
                            [Tx_Amt] = LTRIM(RTRIM([Tx_Amt])) ,
                            [Tkt_Amt_Mns_Txs] = LTRIM(RTRIM([Tkt_Amt_Mns_Txs])) ,
                            [Tot_Tkt_Amt] = LTRIM(RTRIM([Tot_Tkt_Amt])) ,
                            [Low_Fr] = LTRIM(RTRIM([Low_Fr])) ,
                            [Full_Fare] = LTRIM(RTRIM([Full_Fare])) ,
                            [Amt_Lst] = LTRIM(RTRIM([Amt_Lst])) ,
                            [Full_Fare_Svngs] = LTRIM(RTRIM([Full_Fare_Svngs])) ,
                            [Cntr_Svngs] = LTRIM(RTRIM([Cntr_Svngs])) ,
                            [Fare_Bfr_Dscnt] = LTRIM(RTRIM([Fare_Bfr_Dscnt])) ,
                            [Fare_Cmpr2] = LTRIM(RTRIM([Fare_Cmpr2])) ,
                            [Fare_Cmpr3] = LTRIM(RTRIM([Fare_Cmpr3])) ,
                            [Fare_Cmpr4] = LTRIM(RTRIM([Fare_Cmpr4])) ,
                            [Fare_Cmpr5] = LTRIM(RTRIM([Fare_Cmpr5])) ,
                            [Fare_Cmpr6] = LTRIM(RTRIM([Fare_Cmpr6])) ,
                            [Cst_Cntr_Ion] = LTRIM(RTRIM([Cst_Cntr_Ion]));

/*********************Removing Commas Start *************************************/
	
                    UPDATE  [STG].[STG_Airfare_Detl_CA]
                    SET     [Mlg] = REPLACE([Mlg], ',', '') ,
                            [Cst_Pr_Ml] = REPLACE(LTRIM(RTRIM([Cst_Pr_Ml])),
                                                  ',', '') ,
                            [Tx_Amt] = REPLACE(LTRIM(RTRIM([Tx_Amt])), ',', '') ,
                            [Tkt_Amt_Mns_Txs] = REPLACE(LTRIM(RTRIM([Tkt_Amt_Mns_Txs])),
                                                        ',', '') ,
                            [Tot_Tkt_Amt] = REPLACE(LTRIM(RTRIM([Tot_Tkt_Amt])),
                                                    ',', '') ,
                            [Low_Fr] = REPLACE(LTRIM(RTRIM([Low_Fr])), ',', '') ,
                            [Full_Fare] = REPLACE(LTRIM(RTRIM([Full_Fare])),
                                                  ',', '') ,
                            [Amt_Lst] = REPLACE(LTRIM(RTRIM([Amt_Lst])), ',',
                                                '') ,
                            [Full_Fare_Svngs] = REPLACE(LTRIM(RTRIM([Full_Fare_Svngs])),
                                                        ',', '') ,
                            [Cntr_Svngs] = REPLACE(LTRIM(RTRIM([Cntr_Svngs])),
                                                   ',', '') ,
                            [Fare_Bfr_Dscnt] = REPLACE(LTRIM(RTRIM([Fare_Bfr_Dscnt])),
                                                       ',', '') ,
                            [Fare_Cmpr2] = REPLACE(LTRIM(RTRIM([Fare_Cmpr2])),
                                                   ',', '') ,
                            [Fare_Cmpr3] = REPLACE(LTRIM(RTRIM([Fare_Cmpr3])),
                                                   ',', '') ,
                            [Fare_Cmpr4] = REPLACE(LTRIM(RTRIM([Fare_Cmpr4])),
                                                   ',', '') ,
                            [Fare_Cmpr5] = REPLACE(LTRIM(RTRIM([Fare_Cmpr5])),
                                                   ',', '') ,
                            [Fare_Cmpr6] = REPLACE(LTRIM(RTRIM([Fare_Cmpr6])),
                                                   ',', '');

/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Airfare_Detl_CA]
                    SET     [Cst_Pr_Ml] = REPLACE(REPLACE([Cst_Pr_Ml], '(',
                                                          '-'), ')', '') ,
                            [Tx_Amt] = REPLACE(REPLACE([Tx_Amt], '(', '-'),
                                               ')', '') ,
                            [Tkt_Amt_Mns_Txs] = REPLACE(REPLACE([Tkt_Amt_Mns_Txs],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Tot_Tkt_Amt] = REPLACE(REPLACE([Tot_Tkt_Amt], '(',
                                                            '-'), ')', '') ,
                            [Low_Fr] = REPLACE(REPLACE([Low_Fr], '(', '-'),
                                               ')', '') ,
                            [Full_Fare] = REPLACE(REPLACE([Full_Fare], '(',
                                                          '-'), ')', '') ,
                            [Amt_Lst] = REPLACE(REPLACE([Amt_Lst], '(', '-'),
                                                ')', '') ,
                            [Full_Fare_Svngs] = REPLACE(REPLACE([Full_Fare_Svngs],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Cntr_Svngs] = REPLACE(REPLACE([Cntr_Svngs], '(',
                                                           '-'), ')', '') ,
                            [Fare_Bfr_Dscnt] = REPLACE(REPLACE([Fare_Bfr_Dscnt],
                                                              '(', '-'), ')',
                                                       '') ,
                            [Fare_Cmpr2] = REPLACE(REPLACE([Fare_Cmpr2], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr3] = REPLACE(REPLACE([Fare_Cmpr3], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr4] = REPLACE(REPLACE([Fare_Cmpr4], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr5] = REPLACE(REPLACE([Fare_Cmpr5], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr6] = REPLACE(REPLACE([Fare_Cmpr6], '(',
                                                           '-'), ')', '');

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Invc_Num],
                                                              [Tkt_Num] ORDER BY [Tkt_Num] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Airfare_Detl_CA] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    WHERE   [Tkt_Num] IS NULL
                            OR [Tkt_Num] = '';

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    WHERE   [Invc_Num] IS NULL
                            OR [Invc_Num] = '';


/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Cst_Pr_Ml]) <> 1
                            AND [Cst_Pr_Ml] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Tx_Amt]) <> 1
                            AND [Tx_Amt] IS NOT NULL;



                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Tkt_Amt_Mns_Txs]) <> 1
                            AND [Tkt_Amt_Mns_Txs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Low_Fr]) <> 1
                            AND [Low_Fr] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Full_Fare]) <> 1
                            AND [Full_Fare] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Amt_Lst]) <> 1
                            AND [Amt_Lst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Full_Fare_Svngs]) <> 1
                            AND [Full_Fare_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Cntr_Svngs]) <> 1
                            AND [Cntr_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Bfr_Dscnt]) <> 1
                            AND [Fare_Bfr_Dscnt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Cmpr2]) <> 1
                            AND [Fare_Cmpr2] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Cmpr3]) <> 1
                            AND [Fare_Cmpr3] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Cmpr4]) <> 1
                            AND [Fare_Cmpr4] IS NOT NULL;
  

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Cmpr5]) <> 1
                            AND [Fare_Cmpr5] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   ISNUMERIC([Fare_Cmpr6]) <> 1
                            AND [Fare_Cmpr6] IS NOT NULL;

                  
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA] G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[Airfare_Detl_NA] a
                                    INNER JOIN ( SELECT [Tkt_Num] ,
                                                        [Invc_Num]
                                                 FROM   [KNA_FIN].[STG].[STG_Airfare_Detl_CA]
                                               ) b ON a.[Tkt_Num] = b.[Tkt_Num]
                                                      AND a.[Invc_Num] = b.[Invc_Num];



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.[Airfare_Detl_NA]
                                    ( Agcy ,
                                      Agcy_Num ,
                                      Amt_Lst ,
                                      Bkng_Agnt_Bkng_Agnt_Id ,
                                      Bkng_Clas_Sumry ,
                                      Bkng_Dt ,
                                      Bkng_Src ,
                                      Cbn ,
                                      Crir_Cd ,
                                      Crir_Nm ,
                                      Clnt_Cd ,
                                      Clnt_Nm ,
                                      Cntr_Svngs ,
                                      Cost_Pr_Ml ,
                                      Crdtcrd_Exprtn ,
                                      CrdtCrd_Num ,
                                      CrdtCrd_Typ ,
                                      Cst_Cntr_Ion ,
                                      Dd_Adv_Bkng ,
                                      Dd_Adv_Bkng_Grp ,
                                      Dd_Adv_Pur ,
                                      Dd_Adv_Purgrp ,
                                      Dest_Arprt ,
                                      Dest_Arprt_Cd ,
                                      Dest_Ctry ,
                                      Dest_Cty ,
                                      Exchng_Indctr ,
                                      Fare_Accptd_Cd ,
                                      Fare_Accptd_Cd_Desc ,
                                      Fr_Bss_Sumry ,
                                      Fare_Bfr_Dscnt ,
                                      Fare_Cmpr2 ,
                                      Fare_Cmpr3 ,
                                      Fare_Cmpr4 ,
                                      Fare_Cmpr5 ,
                                      Fare_Cmpr6 ,
                                      Full_Fare ,
                                      Full_Fare_Svngs ,
                                      Gcn ,
                                      Glbl_Air_Rsn_Cd ,
                                      Glbl_Air_rsn_cd_Desc ,
                                      Int_Dom ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Lctr ,
                                      Local_Air_Rsn_Cd ,
                                      Local_Air_Rsn_Cd_Desc ,
                                      Low_Fr ,
                                      Mlg ,
                                      Orgn_Aprt_Cd ,
                                      Orig_Arprt ,
                                      Orig_Cntry ,
                                      Orig_Cty ,
                                      Orig_Docnum ,
                                      Rec_Key ,
                                      Rfnd_Indctr ,
                                      Rnd_Trp_Indctr ,
                                      Rtng ,
                                      Shrt_Long_Hl_Indctr ,
                                      Tx_Amt ,
                                      Tkt_Amt_Mns_Txs ,
                                      Tkt_Num ,
                                      Tcktng_Ctry ,
                                      Tot_Tkt_Amt ,
                                      Tour_Cd ,
                                      Trvl_Strt_Dt ,
                                      Trvlr_Ctry ,
                                      Trip_Lgth ,
                                      True_Tckt_Cnt ,
                                      Trvl_Sctr ,
                                      Trvlr ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr
                                    )
                                    SELECT  Agcy ,
                                            Agcy_Num ,
                                            Amt_Lst ,
                                            Bkng_Agnt_Bkng_Agnt_Id ,
                                            Bkng_Clas_Sumry ,
                                            CAST(Bkng_Dt AS DATE) ,
                                            Bkng_Src ,
                                            Cbn ,
                                            Crir_Cd ,
                                            Crir_Nm ,
                                            Clnt_Cd ,
                                            Clnt_Nm ,
                                            CAST(Cntr_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Cst_Pr_Ml AS DECIMAL(18, 2)) ,
                                            Crdtcrd_Exprtn ,
                                            CrdtCrd_Num ,
                                            CrdtCrd_Typ ,
                                            Cst_Cntr_Ion ,
                                            Dd_Adv_Bkng ,
                                            Dd_Adv_Bkng_Grp ,
                                            Dd_Adv_Pur ,
                                            Dd_Adv_Purgrp ,
                                            Dest_Arprt ,
                                            Dest_Arprt_Cd ,
                                            Dest_Ctry ,
                                            Dest_Cty ,
                                            Exchng_Indctr ,
                                            Fare_Accptd_Cd ,
                                            Fare_Accptd_Cd_Desc ,
                                            Fr_Bss_Sumry ,
                                            Fare_Bfr_Dscnt ,
                                            CAST(Fare_Cmpr2 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr3 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr4 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr5 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr6 AS DECIMAL(18, 2)) ,
                                            CAST(Full_Fare AS DECIMAL(18, 2)) ,
                                            CAST(Full_Fare_Svngs AS DECIMAL(18,
                                                              2)) ,
                                            Gcn ,
                                            Glbl_Air_Rsn_Cd ,
                                            Glbl_Air_rsn_cd_Desc ,
                                            Int_Dom ,
                                            CAST(Invc_Dt AS DATE) ,
                                            CAST(Invc_Num AS INT) ,
                                            Lctr ,
                                            Local_Air_Rsn_Cd ,
                                            Local_Air_Rsn_Cd_Desc ,
                                            CAST(Low_Fr AS DECIMAL(18, 2)) ,
                                            Mlg ,
                                            Orgn_Aprt_Cd ,
                                            Orig_Arprt ,
                                            Orig_Cntry ,
                                            Orig_Cty ,
                                            Orig_Docnum ,
                                            Rec_Key ,
                                            Rfnd_Indctr ,
                                            Rnd_Trp_Indctr ,
                                            Rtng ,
                                            Shrt_Long_Hl_Indctr ,
                                            CAST(Tx_Amt AS DECIMAL(18, 2)) ,
                                            CAST(Tkt_Amt_Mns_Txs AS DECIMAL(18,
                                                              2)) ,
                                            Tkt_Num ,
                                            Tcktng_Ctry ,
                                            CAST(Tot_Tkt_Amt AS DECIMAL(18, 2)) ,
                                            Tour_Cd ,
                                            CAST(Trvl_Strt_Dt AS DATE) ,
                                            Trvlr_Ctry ,
                                            Trip_Lgth ,
                                            True_Tckt_Cnt ,
                                            Trvl_Sctr ,
                                            Trvlr ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_CA];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into AIRFARE_DETAIL Table:0';
                            PRINT @InsCount;

                        END; 



                END; --CA
            IF ( @Cntry_flag = 'US' )
                BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Airfare_Detl_US]
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            [Gcn] = LTRIM(RTRIM([Gcn])) ,
                            [Clnt_Cd] = LTRIM(RTRIM([Clnt_Cd])) ,
                            [Lctr] = LTRIM(RTRIM([Lctr])) ,
                            [Trvlr] = LTRIM(RTRIM([Trvlr])) ,
                            [Invc_Dt] = LTRIM(RTRIM([Invc_Dt])) ,
                            [Invc_Num] = LTRIM(RTRIM([Invc_Num])) ,
                            [Agcy] = LTRIM(RTRIM([Agcy])) ,
                            [Agcy_Num] = LTRIM(RTRIM([Agcy_Num])) ,
                            [Bkng_Src] = LTRIM(RTRIM([Bkng_Src])) ,
                            [Bkng_Agnt_Id] = LTRIM(RTRIM([Bkng_Agnt_Id])) ,
                            [Local_Air_Rsn_Cd] = LTRIM(RTRIM([Local_Air_Rsn_Cd])) ,
                            [Local_Air_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Air_Rsn_Cd_Desc])) ,
                            [Glbl_Air_Rsn_Cd] = LTRIM(RTRIM([Glbl_Air_Rsn_Cd])) ,
                            [Glbl_Air_rsn_cd_Desc] = LTRIM(RTRIM([Glbl_Air_rsn_cd_Desc])) ,
                            [Fare_Accptd_Cd] = LTRIM(RTRIM([Fare_Accptd_Cd])) ,
                            [Fare_Accptd_Cd_Desc] = LTRIM(RTRIM([Fare_Accptd_Cd_Desc])) ,
                            [CrdtCrd_Num] = LTRIM(RTRIM([CrdtCrd_Num])) ,
                            [CrdtCrd_Typ] = LTRIM(RTRIM([CrdtCrd_Typ])) ,
                            [CrdtCrd_Exprtn] = LTRIM(RTRIM([CrdtCrd_Exprtn])) ,
                            [Rfnd_Indctr] = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            [Exchng_Indctr] = LTRIM(RTRIM([Exchng_Indctr])) ,
                            [True_Tckt_Cnt] = LTRIM(RTRIM([True_Tckt_Cnt])) ,
                            [Rnd_Trp_Indctr] = LTRIM(RTRIM([Rnd_Trp_Indctr])) ,
                            [Shrt_Long_Hl_Indctr] = LTRIM(RTRIM([Shrt_Long_Hl_Indctr])) ,
                            [Orig_Docnum] = LTRIM(RTRIM([Orig_Docnum])) ,
                            [Int_Dom] = LTRIM(RTRIM([Int_Dom])) ,
                            [Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])) ,
                            [Trvlr_Ctry] = LTRIM(RTRIM([Trvlr_Ctry])) ,
                            [Tcktng_Ctry] = LTRIM(RTRIM([Tcktng_Ctry])) ,
                            [Trip_Lgth] = LTRIM(RTRIM([Trip_Lgth])) ,
                            [Trvl_Strt_Dt] = LTRIM(RTRIM([Trvl_Strt_Dt])) ,
                            [Tkt_Num] = LTRIM(RTRIM([Tkt_Num])) ,
                            [Crir_Cd] = LTRIM(RTRIM([Crir_Cd])) ,
                            [Crir_Nm] = LTRIM(RTRIM([Crir_Nm])) ,
                            [Orgn_Arprt_Cd] = LTRIM(RTRIM([Orgn_Arprt_Cd])) ,
                            [Orig_Cty] = LTRIM(RTRIM([Orig_Cty])) ,
                            [Orig_Arprt] = LTRIM(RTRIM([Orig_Arprt])) ,
                            [Orig_Cntry] = LTRIM(RTRIM([Orig_Cntry])) ,
                            [Dest_Ctry] = LTRIM(RTRIM([Dest_Ctry])) ,
                            [Rtng] = LTRIM(RTRIM([Rtng])) ,
                            [Bkng_Cls_Sumry] = LTRIM(RTRIM([Bkng_Cls_Sumry])) ,
                            [Fr_Bss_Sumry] = LTRIM(RTRIM([Fr_Bss_Sumry])) ,
                            [Cbn] = LTRIM(RTRIM([Cbn])) ,
                            [Tour_Cd] = LTRIM(RTRIM([Tour_Cd])) ,
                            [Bkng_Dt] = LTRIM(RTRIM([Bkng_Dt])) ,
                            [Dd_Adv_Bkng] = LTRIM(RTRIM([Dd_Adv_Bkng])) ,
                            [Dd_Adv_Bkng_Grp] = LTRIM(RTRIM([Dd_Adv_Bkng_Grp])) ,
                            [Dd_Adv_Pur] = LTRIM(RTRIM([Dd_Adv_Pur])) ,
                            [Dd_Adv_Purgrp] = LTRIM(RTRIM([Dd_Adv_Purgrp])) ,
                            [Mlg] = LTRIM(RTRIM([Mlg])) ,
                            [Cst_Pr_Ml] = LTRIM(RTRIM([Cst_Pr_Ml])) ,
                            [Tx_Amt] = LTRIM(RTRIM([Tx_Amt])) ,
                            [Tkt_Amt_Mns_Txs] = LTRIM(RTRIM([Tkt_Amt_Mns_Txs])) ,
                            [Tot_Tkt_Amt] = LTRIM(RTRIM([Tot_Tkt_Amt])) ,
                            [Low_Fr] = LTRIM(RTRIM([Low_Fr])) ,
                            [Full_Fare] = LTRIM(RTRIM([Full_Fare])) ,
                            [Amt_Lst] = LTRIM(RTRIM([Amt_Lst])) ,
                            [Full_Fare_Svngs] = LTRIM(RTRIM([Full_Fare_Svngs])) ,
                            [Cntr_Svngs] = LTRIM(RTRIM([Cntr_Svngs])) ,
                            [Fare_Bfr_Dscnt] = LTRIM(RTRIM([Fare_Bfr_Dscnt])) ,
                            [Fare_Cmpr2] = LTRIM(RTRIM([Fare_Cmpr2])) ,
                            [Fare_Cmpr3] = LTRIM(RTRIM([Fare_Cmpr3])) ,
                            [Fare_Cmpr4] = LTRIM(RTRIM([Fare_Cmpr4])) ,
                            [Fare_Cmpr5] = LTRIM(RTRIM([Fare_Cmpr5])) ,
                            [Fare_Cmpr6] = LTRIM(RTRIM([Fare_Cmpr6])) ,
                            [Cst_Cntr_Ion] = LTRIM(RTRIM([Cst_Cntr_Ion]));

/*********************Removing Commas Start *************************************/
	
                    UPDATE  [STG].[STG_Airfare_Detl_US]
                    SET     [Mlg] = REPLACE([Mlg], ',', '') ,
                            [Cst_Pr_Ml] = REPLACE([Cst_Pr_Ml], ',', '') ,
                            [Tx_Amt] = REPLACE([Tx_Amt], ',', '') ,
                            [Tkt_Amt_Mns_Txs] = REPLACE([Tkt_Amt_Mns_Txs], ',',
                                                        '') ,
                            [Tot_Tkt_Amt] = REPLACE([Tot_Tkt_Amt], ',', '') ,
                            [Low_Fr] = REPLACE([Low_Fr], ',', '') ,
                            [Full_Fare] = REPLACE([Full_Fare], ',', '') ,
                            [Amt_Lst] = REPLACE([Amt_Lst], ',', '') ,
                            [Full_Fare_Svngs] = REPLACE([Full_Fare_Svngs], ',',
                                                        '') ,
                            [Cntr_Svngs] = REPLACE([Cntr_Svngs], ',', '') ,
                            [Fare_Bfr_Dscnt] = REPLACE([Fare_Bfr_Dscnt], ',',
                                                       '') ,
                            [Fare_Cmpr2] = REPLACE([Fare_Cmpr2], ',', '') ,
                            [Fare_Cmpr3] = REPLACE([Fare_Cmpr3], ',', '') ,
                            [Fare_Cmpr4] = REPLACE([Fare_Cmpr4], ',', '') ,
                            [Fare_Cmpr5] = REPLACE([Fare_Cmpr5], ',', '') ,
                            [Fare_Cmpr6] = REPLACE([Fare_Cmpr6], ',', '');

/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Airfare_Detl_US]
                    SET     [Cst_Pr_Ml] = REPLACE(REPLACE([Cst_Pr_Ml], '(',
                                                          '-'), ')', '') ,
                            [Tx_Amt] = REPLACE(REPLACE([Tx_Amt], '(', '-'),
                                               ')', '') ,
                            [Tkt_Amt_Mns_Txs] = REPLACE(REPLACE([Tkt_Amt_Mns_Txs],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Tot_Tkt_Amt] = REPLACE(REPLACE([Tot_Tkt_Amt], '(',
                                                            '-'), ')', '') ,
                            [Low_Fr] = REPLACE(REPLACE([Low_Fr], '(', '-'),
                                               ')', '') ,
                            [Full_Fare] = REPLACE(REPLACE([Full_Fare], '(',
                                                          '-'), ')', '') ,
                            [Amt_Lst] = REPLACE(REPLACE([Amt_Lst], '(', '-'),
                                                ')', '') ,
                            [Full_Fare_Svngs] = REPLACE(REPLACE([Full_Fare_Svngs],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Cntr_Svngs] = REPLACE(REPLACE([Cntr_Svngs], '(',
                                                           '-'), ')', '') ,
                            [Fare_Bfr_Dscnt] = REPLACE(REPLACE([Fare_Bfr_Dscnt],
                                                              '(', '-'), ')',
                                                       '') ,
                            [Fare_Cmpr2] = REPLACE(REPLACE([Fare_Cmpr2], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr3] = REPLACE(REPLACE([Fare_Cmpr3], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr4] = REPLACE(REPLACE([Fare_Cmpr4], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr5] = REPLACE(REPLACE([Fare_Cmpr5], '(',
                                                           '-'), ')', '') ,
                            [Fare_Cmpr6] = REPLACE(REPLACE([Fare_Cmpr6], '(',
                                                           '-'), ')', '');

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Invc_Num],
                                                              [Tkt_Num] ORDER BY [Tkt_Num] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Airfare_Detl_US] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    WHERE   [Tkt_Num] IS NULL
                            OR [Tkt_Num] = '';

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    WHERE   [Invc_Num] IS NULL
                            OR [Invc_Num] = '';


/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Cst_Pr_Ml]) <> 1
                            AND [Cst_Pr_Ml] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Tx_Amt]) <> 1
                            AND [Tx_Amt] IS NOT NULL;



                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Tkt_Amt_Mns_Txs]) <> 1
                            AND [Tkt_Amt_Mns_Txs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Low_Fr]) <> 1
                            AND [Low_Fr] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Full_Fare]) <> 1
                            AND [Full_Fare] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Amt_Lst]) <> 1
                            AND [Amt_Lst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Full_Fare_Svngs]) <> 1
                            AND [Full_Fare_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Cntr_Svngs]) <> 1
                            AND [Cntr_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Bfr_Dscnt]) <> 1
                            AND [Fare_Bfr_Dscnt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Cmpr2]) <> 1
                            AND [Fare_Cmpr2] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Cmpr3]) <> 1
                            AND [Fare_Cmpr3] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Cmpr4]) <> 1
                            AND [Fare_Cmpr4] IS NOT NULL;
  

                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Cmpr5]) <> 1
                            AND [Fare_Cmpr5] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   ISNUMERIC([Fare_Cmpr6]) <> 1
                            AND [Fare_Cmpr6] IS NOT NULL;

                  
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US] G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[Airfare_Detl_NA] a
                                    INNER JOIN ( SELECT [Tkt_Num] ,
                                                        [Invc_Num]
                                                 FROM   [KNA_FIN].[STG].[STG_Airfare_Detl_US]
                                               ) b ON a.[Tkt_Num] = b.[Tkt_Num]
                                                      AND a.[Invc_Num] = b.[Invc_Num];



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.[Airfare_Detl_NA]
                                    ( Agcy ,
                                      Agcy_Num ,
                                      Amt_Lst ,
                                      Bkng_Agnt_Bkng_Agnt_Id ,
                                      Bkng_Clas_Sumry ,
                                      Bkng_Dt ,
                                      Bkng_Src ,
                                      Cbn ,
                                      Crir_Cd ,
                                      Crir_Nm ,
                                      Clnt_Cd ,
                                      Clnt_Nm ,
                                      Cntr_Svngs ,
                                      Cost_Pr_Ml ,
                                      Crdtcrd_Exprtn ,
                                      CrdtCrd_Num ,
                                      CrdtCrd_Typ ,
                                      Cst_Cntr_Ion ,
                                      Dd_Adv_Bkng ,
                                      Dd_Adv_Bkng_Grp ,
                                      Dd_Adv_Pur ,
                                      Dd_Adv_Purgrp ,
                                      Dest_Arprt ,
                                      Dest_Arprt_Cd ,
                                      Dest_Ctry ,
                                      Dest_Cty ,
                                      Exchng_Indctr ,
                                      Fare_Accptd_Cd ,
                                      Fare_Accptd_Cd_Desc ,
                                      Fr_Bss_Sumry ,
                                      Fare_Bfr_Dscnt ,
                                      Fare_Cmpr2 ,
                                      Fare_Cmpr3 ,
                                      Fare_Cmpr4 ,
                                      Fare_Cmpr5 ,
                                      Fare_Cmpr6 ,
                                      Full_Fare ,
                                      Full_Fare_Svngs ,
                                      Gcn ,
                                      Glbl_Air_Rsn_Cd ,
                                      Glbl_Air_rsn_cd_Desc ,
                                      Int_Dom ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Lctr ,
                                      Local_Air_Rsn_Cd ,
                                      Local_Air_Rsn_Cd_Desc ,
                                      Low_Fr ,
                                      Mlg ,
                                      Orgn_Aprt_Cd ,
                                      Orig_Arprt ,
                                      Orig_Cntry ,
                                      Orig_Cty ,
                                      Orig_Docnum ,
                                      Rec_Key ,
                                      Rfnd_Indctr ,
                                      Rnd_Trp_Indctr ,
                                      Rtng ,
                                      Shrt_Long_Hl_Indctr ,
                                      Tx_Amt ,
                                      Tkt_Amt_Mns_Txs ,
                                      Tkt_Num ,
                                      Tcktng_Ctry ,
                                      Tot_Tkt_Amt ,
                                      Tour_Cd ,
                                      Trvl_Strt_Dt ,
                                      Trvlr_Ctry ,
                                      Trip_Lgth ,
                                      True_Tckt_Cnt ,
                                      Trvl_Sctr ,
                                      Trvlr ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr
                                    )
                                    SELECT  Agcy ,
                                            Agcy_Num ,
                                            Amt_Lst ,
                                            Bkng_Agnt_Id ,
                                            Bkng_Cls_Sumry ,
                                            CAST(Bkng_Dt AS DATE) ,
                                            Bkng_Src ,
                                            Cbn ,
                                            Crir_Cd ,
                                            Crir_Nm ,
                                            Clnt_Cd ,
                                            Clnt_Nm ,
                                            CAST(Cntr_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Cst_Pr_Ml AS DECIMAL(18, 2)) ,
                                            CrdtCrd_Exprtn ,
                                            CrdtCrd_Num ,
                                            CrdtCrd_Typ ,
                                            Cst_Cntr_Ion ,
                                            Dd_Adv_Bkng ,
                                            Dd_Adv_Bkng_Grp ,
                                            Dd_Adv_Pur ,
                                            Dd_Adv_Purgrp ,
                                            Dest_Arprt ,
                                            Dest_Arprt_Cd ,
                                            Dest_Ctry ,
                                            Dest_Cty ,
                                            Exchng_Indctr ,
                                            Fare_Accptd_Cd ,
                                            Fare_Accptd_Cd_Desc ,
                                            Fr_Bss_Sumry ,
                                            Fare_Bfr_Dscnt ,
                                            CAST(Fare_Cmpr2 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr3 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr4 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr5 AS DECIMAL(18, 2)) ,
                                            CAST(Fare_Cmpr6 AS DECIMAL(18, 2)) ,
                                            CAST(Full_Fare AS DECIMAL(18, 2)) ,
                                            CAST(Full_Fare_Svngs AS DECIMAL(18,
                                                              2)) ,
                                            Gcn ,
                                            Glbl_Air_Rsn_Cd ,
                                            Glbl_Air_rsn_cd_Desc ,
                                            Int_Dom ,
                                            CAST(Invc_Dt AS DATE) ,
                                            CAST(Invc_Num AS INT) ,
                                            Lctr ,
                                            Local_Air_Rsn_Cd ,
                                            Local_Air_Rsn_Cd_Desc ,
                                            CAST(Low_Fr AS DECIMAL(18, 2)) ,
                                            Mlg ,
                                            Orgn_Arprt_Cd ,
                                            Orig_Arprt ,
                                            Orig_Cntry ,
                                            Orig_Cty ,
                                            Orig_Docnum ,
                                            Rec_Key ,
                                            Rfnd_Indctr ,
                                            Rnd_Trp_Indctr ,
                                            Rtng ,
                                            Shrt_Long_Hl_Indctr ,
                                            CAST(Tx_Amt AS DECIMAL(18, 2)) ,
                                            CAST(Tkt_Amt_Mns_Txs AS DECIMAL(18,
                                                              2)) ,
                                            Tkt_Num ,
                                            Tcktng_Ctry ,
                                            CAST(Tot_Tkt_Amt AS DECIMAL(18, 2)) ,
                                            Tour_Cd ,
                                            CAST(Trvl_Strt_Dt AS DATE) ,
                                            Trvlr_Ctry ,
                                            Trip_Lgth ,
                                            True_Tckt_Cnt ,
                                            Trvl_Sctr ,
                                            Trvlr ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].[STG_Airfare_Detl_US];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into AIRFARE_DETAIL Table:0';
                            PRINT @InsCount;

                        END; 



                END; --US 
        END TRY
        BEGIN CATCH
        END CATCH;
    END;







GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_BB_ION_BDG]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_DQ_LOAD_BB_ION_BDG]  @InsCount INT OUTPUT
As 

Begin

	Set Nocount on
	
		UPDATE STG.STG_BB_ION_BDG
		SET [ION_CD] = ltrim(rtrim([ION_CD])) 
		,[ION_CURR_TYP] = ltrim(rtrim([ION_CURR_TYP]))
		,[ACCT_CD] = ltrim(rtrim(ACCT_CD))
		 ,[PD] = ltrim(rtrim(PD))
		,[AMT] = ltrim(rtrim(AMT))
		,[VER] = ltrim(rtrim(VER))

	--/*********************CHECKING FOR NULLABLE VALUES*********************************/
	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [ION_CD] IS NULL
		OR [ION_CD] = ''

	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [ACCT_CD] IS NULL
		OR [ACCT_CD] = ''

	UPDATE [STG].[STG_BB_ION_BDG]
	SET ERROR_FLAG = 'Y'
	WHERE [PD] IS NULL
		OR [PD] = ''

		UPDATE STG.STG_BB_ION_BDG 	SET [ION_CD]= 	REPLICATE('0', 10 - LEN([ION_CD])) + [ION_CD]

		MERGE INTO KNA_ZBB.BB_ION_BDG AS stm
	USING (
		SELECT ION_CD, ION_CURR_TYP, ACCT_CD, PD, AMT, VER
		FROM STG.STG_BB_ION_BDG
		) AS sd
		ON stm.ION_CD = sd.ION_CD
			AND stm.[ACCT_CD] = sd.[ACCT_CD]
			AND stm.[YR] = substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
			AND stm.[PD] = substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
			and stm.[VER]=sd.VER
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.ION_CD = sd.ION_CD
				,stm.ION_CURR_TYP = sd.ION_CURR_TYP
				,stm.[ACCT_CD] = sd.[ACCT_CD]
				,stm.[YR] = substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
				,stm.[PD] = substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
				,stm.[AMT] = sd.[AMT]
				,stm.[VER] = sd.[VER]
	WHEN NOT MATCHED
		THEN
			INSERT (
				ION_CD, ION_CURR_TYP, ACCT_CD,YR, PD, AMT, VER, DW_CRE_TS, DW_CRE_USR
				)
			VALUES (
				sd.ION_CD
				,sd.ION_CURR_TYP
				,sd.[ACCT_CD]
				,substring(sd.[PD], 1, charindex('-', sd.[PD]) - 1)
				,substring(sd.[PD], charindex('-', sd.[PD]) + 1, len(sd.[PD]))
				,sd.[AMT]
				,sd.[VER],
				getdate(),
				User_name()
				);



	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [BB_ION_BDG]  Table :'
	PRINT @InsCount


	Set Nocount off
End



GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Carrnt_Detl]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_DQ_Load_Carrnt_Detl]
    @Country_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_Load_Carrnt_Detail
PURPOSE & 
Description :  This script will load data into Car_Rnt_Detl_NA table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Country_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_Load_Carrnt_Detail] 
   @Country_flag
  ,@Totalcount OUTPUT
  ,@Warcount OUTPUT
  ,@ErrCount OUTPUT
  ,@InsCount OUTPUT
GO


******************************************************************************/

    BEGIN
        BEGIN TRY
            IF @Country_flag = 'CA'
                BEGIN
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Car_Rnt_Detl_CA]
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            [Gcn] = LTRIM(RTRIM([Gcn])) ,
                            [Clnt_Cd] = LTRIM(RTRIM([Clnt_Cd])) ,
                            [Lctr] = LTRIM(RTRIM([Lctr])) ,
                            [Trvlr] = LTRIM(RTRIM([Trvlr])) ,
                            [Invc_Dt] = LTRIM(RTRIM([Invc_Dt])) ,
                            [Invc_Num] = LTRIM(RTRIM([Invc_Num])) ,
                            [Agcy] = LTRIM(RTRIM([Agcy])) ,
                            [Agcy_Num] = LTRIM(RTRIM([Agcy_Num])) ,
                            [Bkng_Src] = LTRIM(RTRIM([Bkng_Src])) ,
                            [Bkng_Agnt_Id] = LTRIM(RTRIM([Bkng_Agnt_Id])) ,
                            [Local_Rsn_Cd] = LTRIM(RTRIM([Local_Rsn_Cd])) ,
                            [Local_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Rsn_Cd_Desc])) ,
                            [Glbl_Rsn_Cd] = LTRIM(RTRIM([Glbl_Rsn_Cd])) ,
                            [Glbl_Rsn_Cd_Desc] = LTRIM(RTRIM([Glbl_Rsn_Cd_Desc])) ,
                            [Rfnd_Indctr] = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            [Exchng_Indctr] = LTRIM(RTRIM([Exchng_Indctr])) ,
                            [Orig_Docnum] = LTRIM(RTRIM([Orig_Docnum])) ,
                            [Int_Dom] = LTRIM(RTRIM([Int_Dom])) ,
                            [Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])) ,
                            [Trvlr_Ctry] = LTRIM(RTRIM([Trvlr_Ctry])) ,
                            [Tcktng_Ctry] = LTRIM(RTRIM([Tcktng_Ctry])) ,
                            [No_Of_Cars] = LTRIM(RTRIM([No_Of_Cars])) ,
                            [No_Of_Dd] = LTRIM(RTRIM([No_Of_Dd])) ,
                            [Pickup_Dt] = LTRIM(RTRIM([Pickup_Dt])) ,
                            [Drop_Off_Dt] = LTRIM(RTRIM([Drop_Off_Dt])) ,
                            [Conf_Num] = LTRIM(RTRIM([Conf_Num])) ,
                            [Chn_Cd] = LTRIM(RTRIM([Chn_Cd])) ,
                            [Chn_Nm] = LTRIM(RTRIM([Chn_Nm])) ,
                            [Cty_Name] = LTRIM(RTRIM([Cty_Name])) ,
                            [St_Prvn] = LTRIM(RTRIM([St_Prvn])) ,
                            [Cntry_Name] = LTRIM(RTRIM([Cntry_Name])) ,
                            [Car_Typ_Cd] = LTRIM(RTRIM([Car_Typ_Cd])) ,
                            [Car_Typ_Desc] = LTRIM(RTRIM([Car_Typ_Desc])) ,
                            [Dly_Rt] = LTRIM(RTRIM([Dly_Rt])) ,
                            [Tot_Amt] = LTRIM(RTRIM([Tot_Amt])) ,
                            [Cst_Cntr_Ion] = LTRIM(RTRIM([Cst_Cntr_Ion]));


	/*********************Removing Commas Start *************************************/
	
                    UPDATE  [STG].[STG_Car_Rnt_Detl_CA]
                    SET     [Dly_Rt] = REPLACE([Dly_Rt], ',', '') ,
                            [Tot_Amt] = REPLACE(LTRIM(RTRIM([Tot_Amt])), ',',
                                                '');

	/*********************Removing Commas End *************************************/

		/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Car_Rnt_Detl_CA]
                    SET     [Dly_Rt] = REPLACE(REPLACE(Dly_Rt, '(', '-'), ')',
                                               '') ,
                            [Tot_Amt] = REPLACE(REPLACE(Tot_Amt, '(', '-'),
                                                ')', '');

	/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Conf_Num] ORDER BY [Conf_Num] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Car_Rnt_Detl_CA] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    WHERE   [Conf_Num] IS NULL
                            OR [Conf_Num] = '';

	

/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    WHERE   ISNUMERIC([Dly_Rt]) <> 1
                            AND [Dly_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    WHERE   ISNUMERIC([Tot_Amt]) <> 1
                            AND [Tot_Amt] IS NOT NULL;





                  
									
	/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA];
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_CA] a
                                    INNER JOIN ( SELECT [Conf_Num]
                                                 FROM   [KNA_FIN].[KNA_ZBB].[Car_Rnt_Detl_NA]
                                               ) b ON a.[Conf_Num] = b.[Conf_Num]; 



	/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.Car_Rnt_Detl_NA
                                    ( Clnt_Nm ,
                                      Rec_Key ,
                                      Gcn ,
                                      Clnt_Cd ,
                                      Lctr ,
                                      Trvlr ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Agcy ,
                                      Agcy_Num ,
                                      Bkng_Src ,
                                      Bkng_Agnt_Id ,
                                      Local_Rsn_Cd ,
                                      Local_Rsn_Cd_Desc ,
                                      Glbl_Rsn_Cd ,
                                      Glbl_Rsn_Cd_Desc ,
                                      Rfnd_Indctr ,
                                      Exchng_Indctr ,
                                      Orig_Docnum ,
                                      Int_Dom ,
                                      Trvl_Sctr ,
                                      Trvlr_Ctry ,
                                      Tcktng_Ctry ,
                                      No_Of_Cars ,
                                      No_Of_Dd ,
                                      Pickup_Dt ,
                                      Drp_Off_Dt ,
                                      Conf_Num ,
                                      Chn_Cd ,
                                      Chn_Nm ,
                                      Cty_Nm ,
                                      St_Prvn ,
                                      Cntry_Nm ,
                                      Car_Typ_Cd ,
                                      Car_Typ_Desc ,
                                      Dly_Rt ,
                                      Tot_Amt ,
                                      Cst_Cntr_Ion ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr 
         
                                    )
                                    SELECT  Clnt_Nm ,
                                            Rec_Key ,
                                            Gcn ,
                                            Clnt_Cd ,
                                            Lctr ,
                                            Trvlr ,
                                            Invc_Dt ,
                                            Invc_Num ,
                                            Agcy ,
                                            Agcy_Num ,
                                            Bkng_Src ,
                                            Bkng_Agnt_Id ,
                                            Local_Rsn_Cd ,
                                            Local_Rsn_Cd_Desc ,
                                            Glbl_Rsn_Cd ,
                                            Glbl_Rsn_Cd_Desc ,
                                            Rfnd_Indctr ,
                                            Exchng_Indctr ,
                                            Orig_Docnum ,
                                            Int_Dom ,
                                            Trvl_Sctr ,
                                            Trvlr_Ctry ,
                                            Tcktng_Ctry ,
                                            No_Of_Cars ,
                                            No_Of_Dd ,
                                            Pickup_Dt ,
                                            Drop_Off_Dt ,
                                            Conf_Num ,
                                            Chn_Cd ,
                                            Chn_Nm ,
                                            Cty_Name ,
                                            St_Prvn ,
                                            Cntry_Name ,
                                            Car_Typ_Cd ,
                                            Car_Typ_Desc ,
                                            Dly_Rt ,
                                            Tot_Amt ,
                                            Cst_Cntr_Ion ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    STG.STG_Car_Rnt_Detl_CA;



                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into Car_Rnt_Detl_NA Table:';
                            PRINT @InsCount;

                        END; 


                END;
            IF @Country_flag = 'US'
                BEGIN
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Car_Rnt_Detl_US]
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            [Gcn] = LTRIM(RTRIM([Gcn])) ,
                            [Clnt_Cd] = LTRIM(RTRIM([Clnt_Cd])) ,
                            [Lctr] = LTRIM(RTRIM([Lctr])) ,
                            [Trvlr] = LTRIM(RTRIM([Trvlr])) ,
                            [Invc_Dt] = LTRIM(RTRIM([Invc_Dt])) ,
                            [Invc_Num] = LTRIM(RTRIM([Invc_Num])) ,
                            [Agcy] = LTRIM(RTRIM([Agcy])) ,
                            [Agcy_Num] = LTRIM(RTRIM([Agcy_Num])) ,
                            [Bkng_Src] = LTRIM(RTRIM([Bkng_Src])) ,
                            [Bkng_Agnt_Id] = LTRIM(RTRIM([Bkng_Agnt_Id])) ,
                            [Local_Rsn_Cd] = LTRIM(RTRIM([Local_Rsn_Cd])) ,
                            [Local_Rsn_Cd_Desc] = LTRIM(RTRIM([Local_Rsn_Cd_Desc])) ,
                            [Glbl_Rsn_Cd] = LTRIM(RTRIM([Glbl_Rsn_Cd])) ,
                            [Glbl_Rsn_Cd_Desc] = LTRIM(RTRIM([Glbl_Rsn_Cd_Desc])) ,
                            [Rfnd_Indctr] = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            [Exchng_Indctr] = LTRIM(RTRIM([Exchng_Indctr])) ,
                            [Orig_Docnum] = LTRIM(RTRIM([Orig_Docnum])) ,
                            [Int_Dom] = LTRIM(RTRIM([Int_Dom])) ,
                            [Trvl_Sctr] = LTRIM(RTRIM([Trvl_Sctr])) ,
                            [Trvlr_Ctry] = LTRIM(RTRIM([Trvlr_Ctry])) ,
                            [Tcktng_Ctry] = LTRIM(RTRIM([Tcktng_Ctry])) ,
                            [No_Of_Cars] = LTRIM(RTRIM([No_Of_Cars])) ,
                            [No_Of_Dd] = LTRIM(RTRIM([No_Of_Dd])) ,
                            [Pickup_Dt] = LTRIM(RTRIM([Pickup_Dt])) ,
                            [Drop_Off_Dt] = LTRIM(RTRIM([Drop_Off_Dt])) ,
                            [Conf_Num] = LTRIM(RTRIM([Conf_Num])) ,
                            [Chn_Cd] = LTRIM(RTRIM([Chn_Cd])) ,
                            [Chn_Nm] = LTRIM(RTRIM([Chn_Nm])) ,
                            [Cty_Name] = LTRIM(RTRIM([Cty_Name])) ,
                            [St_Prvn] = LTRIM(RTRIM([St_Prvn])) ,
                            [Cntry_Name] = LTRIM(RTRIM([Cntry_Name])) ,
                            [Car_Typ_Cd] = LTRIM(RTRIM([Car_Typ_Cd])) ,
                            [Car_Typ_Desc] = LTRIM(RTRIM([Car_Typ_Desc])) ,
                            [Dly_Rt] = LTRIM(RTRIM([Dly_Rt])) ,
                            [Tot_Amt] = LTRIM(RTRIM([Tot_Amt])) ,
                            [Cst_Cntr_Ion] = LTRIM(RTRIM([Cst_Cntr_Ion]));


	/*********************Removing Commas Start *************************************/
	
                    UPDATE  [STG].[STG_Car_Rnt_Detl_US]
                    SET     [Dly_Rt] = REPLACE([Dly_Rt], ',', '') ,
                            [Tot_Amt] = REPLACE(LTRIM(RTRIM([Tot_Amt])), ',',
                                                '');

	/*********************Removing Commas End *************************************/

		/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Car_Rnt_Detl_US]
                    SET     [Dly_Rt] = REPLACE(REPLACE(Dly_Rt, '(', '-'), ')',
                                               '') ,
                            [Tot_Amt] = REPLACE(REPLACE(Tot_Amt, '(', '-'),
                                                ')', '');

	/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Conf_Num] ORDER BY [Conf_Num] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Car_Rnt_Detl_US] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    WHERE   [Conf_Num] IS NULL
                            OR [Conf_Num] = '';




/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    WHERE   ISNUMERIC([Dly_Rt]) <> 1
                            AND [Dly_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    WHERE   ISNUMERIC([Tot_Amt]) <> 1
                            AND [Tot_Amt] IS NOT NULL;
 




                  
									
	/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US];
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US] a
                                    INNER JOIN ( SELECT [Conf_Num]
                                                 FROM   [KNA_FIN].[KNA_ZBB].[Car_Rnt_Detl_NA]
                                               ) b ON a.[Conf_Num] = b.[Conf_Num]; 



	/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.Car_Rnt_Detl_NA
                                    ( Clnt_Nm ,
                                      Rec_Key ,
                                      Gcn ,
                                      Clnt_Cd ,
                                      Lctr ,
                                      Trvlr ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Agcy ,
                                      Agcy_Num ,
                                      Bkng_Src ,
                                      Bkng_Agnt_Id ,
                                      Local_Rsn_Cd ,
                                      Local_Rsn_Cd_Desc ,
                                      Glbl_Rsn_Cd ,
                                      Glbl_Rsn_Cd_Desc ,
                                      Rfnd_Indctr ,
                                      Exchng_Indctr ,
                                      Orig_Docnum ,
                                      Int_Dom ,
                                      Trvl_Sctr ,
                                      Trvlr_Ctry ,
                                      Tcktng_Ctry ,
                                      No_Of_Cars ,
                                      No_Of_Dd ,
                                      Pickup_Dt ,
                                      Drp_Off_Dt ,
                                      Conf_Num ,
                                      Chn_Cd ,
                                      Chn_Nm ,
                                      Cty_Nm ,
                                      St_Prvn ,
                                      Cntry_Nm ,
                                      Car_Typ_Cd ,
                                      Car_Typ_Desc ,
                                      Dly_Rt ,
                                      Tot_Amt ,
                                      Cst_Cntr_Ion ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr 
                                    )
                                    SELECT  Clnt_Nm ,
                                            Rec_Key ,
                                            Gcn ,
                                            Clnt_Cd ,
                                            Lctr ,
                                            Trvlr ,
                                            Invc_Dt ,
                                            Invc_Num ,
                                            Agcy ,
                                            Agcy_Num ,
                                            Bkng_Src ,
                                            Bkng_Agnt_Id ,
                                            Local_Rsn_Cd ,
                                            Local_Rsn_Cd_Desc ,
                                            Glbl_Rsn_Cd ,
                                            Glbl_Rsn_Cd_Desc ,
                                            Rfnd_Indctr ,
                                            Exchng_Indctr ,
                                            Orig_Docnum ,
                                            Int_Dom ,
                                            Trvl_Sctr ,
                                            Trvlr_Ctry ,
                                            Tcktng_Ctry ,
                                            No_Of_Cars ,
                                            No_Of_Dd ,
                                            Pickup_Dt ,
                                            Drop_Off_Dt ,
                                            Conf_Num ,
                                            Chn_Cd ,
                                            Chn_Nm ,
                                            Cty_Name ,
                                            St_Prvn ,
                                            Cntry_Name ,
                                            Car_Typ_Cd ,
                                            Car_Typ_Desc ,
                                            Dly_Rt ,
                                            Tot_Amt ,
                                            Cst_Cntr_Ion ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].[STG_Car_Rnt_Detl_US];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into Car_Rnt_Detl_NA Table:';
                            PRINT @InsCount;

                        END; 


                END;

        END TRY
        BEGIN CATCH
        END CATCH;
    END;






GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Cost_Cntr_Hrchy]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[USP_DQ_Load_Cost_Cntr_Hrchy]
AS
    BEGIN
        DECLARE @cnt INT;
        SET NOCOUNT ON;
        DECLARE @COSTCNTR_HRCHY TABLE
            (
              CC_Nbr NVARCHAR(10) ,
              CC_Desc NVARCHAR(60) NULL ,
              lvl0_Desc NVARCHAR(15) NULL ,
              lvl1_Desc NVARCHAR(75) NULL ,
              lvl1_Cd NVARCHAR(12) NULL ,
              lvl2_Desc NVARCHAR(75) NULL ,
              lvl2_Cd NVARCHAR(12) NULL ,
              lvl3_Desc NVARCHAR(75) NULL ,
              lvl3_Cd NVARCHAR(12) NULL ,
              lvl4_Desc NVARCHAR(75) NULL ,
              lvl4_Cd NVARCHAR(12) NULL ,
              lvl5_Desc NVARCHAR(75) NULL ,
              lvl5_Cd NVARCHAR(12) NULL ,
              lvl6_Desc NVARCHAR(75) NULL ,
              lvl6_Cd NVARCHAR(12) NULL ,
              Created_by NVARCHAR(100) NULL ,
              Created_TS DATETIME NULL ,
              Modified_by NVARCHAR(100) NULL ,
              Modified_ts DATETIME NULL ,
              Is_Deleted INT DEFAULT 0 ,
              Deleted_by NVARCHAR(100) NULL ,
              Deleted_TS DATETIME NULL
            );
	         
		   
        INSERT  INTO @COSTCNTR_HRCHY
                ( CC_Nbr ,
                  CC_Desc ,
                  lvl0_Desc ,
                  lvl1_Desc ,
                  lvl1_Cd ,
                  lvl2_Desc ,
                  lvl2_Cd ,
                  lvl3_Desc ,
                  lvl3_Cd ,
                  lvl4_Desc ,
                  lvl4_Cd ,
                  lvl5_Desc ,
                  lvl5_Cd ,
                  lvl6_Desc ,
                  lvl6_Cd ,
                  Created_by ,
                  Created_TS
                )
               /* SELECT  a.Name AS cc_nbr ,
                        a.[Cost Center Description] AS cc_desc ,
                        b.SETNAME_LEVEL0 AS Level0_desc ,
                        b.DESCRIPTION_LEVEL1 AS level1_desc ,
                        b.SETNAME_LEVEL1 AS level1_cd ,
                        b.DESCRIPTION_LEVEL2 AS level2_desc ,
                        b.SETNAME_LEVEL2 AS level2_cd ,
                        b.DESCRIPTION_LEVEL3 AS level3_desc ,
                        b.SETNAME_LEVEL3 AS level3_cd ,
                        b.DESCRIPTION_LEVEL4 AS level4_desc ,
                        b.SETNAME_LEVEL4 AS level4_cd ,
                        b.DESCRIPTION_LEVEL5 AS level5_desc ,
                        b.SETNAME_LEVEL5 AS level5_cd ,
                        b.DESCRIPTION_LEVEL6 AS level6_desc ,
                        b.SETNAME_LEVEL6 AS level6_cd ,
                        USER_NAME() ,
                        GETDATE()
                FROM    KNA_ECC.STG.COST_CENTERS_ZBB a ,
                        KNA_ECC.STG.COST_CENTER_ZBB_HIERARCHY b
                WHERE   a.SETNAME = b.SETNAME;*/
				SELECT a.SETNAME  AS cc_nbr,[LVL7_SETNAME_DESC] AS cc_desc ,[LVL1_SETNAME] lv0_desc,[LVL2_SETNAME_DESC] lv1_desc,[LVL2_SETNAME] lv1_cd,[LVL3_SETNAME_DESC] Lv2_desc,[LVL3_SETNAME] lv2_cd,[LVL4_SETNAME_DESC] Lv3_desc, [LVL4_SETNAME] lv3_cd,[LVL5_SETNAME_DESC] lv4_desc,[LVL5_SETNAME] lv4_cd,
[LVL6_SETNAME_DESC] lv5_desc,[LVL6_SETNAME] lv5_cd,[LVL7_SETNAME]+' '+[LVL7_SETNAME_DESC] lv6_desc,[LVL7_SETNAME] lv6_cd, USER_NAME() ,
                        GETDATE()

FROM KG_VIEWS.[KNA].[UVW_COST_CTR_HIER_UNRVL] a where APPL_NM='KNA_ZBB_MT'  AND 
a.SETCLASS='0101'
		  and a.SUBCLASS='KBLR'
		  and a.SETTYPE='X'  and [LVL1_SETNAME]='Z0BB_TOP'


-- Merge Statement
        MERGE KNA_FIN.KNA_ZBB.CC_Hrchy_ZBB AS stm
        USING
            ( SELECT    CC_Nbr ,
                        CC_Desc ,
                        lvl0_Desc ,
                        lvl1_Desc ,
                        lvl1_Cd ,
                        lvl2_Desc ,
                        lvl2_Cd ,
                        lvl3_Desc ,
                        lvl3_Cd ,
                        lvl4_Desc ,
                        lvl4_Cd ,
                        lvl5_Desc ,
                        lvl5_Cd ,
                        lvl6_Desc ,
                        lvl6_Cd
              FROM      @COSTCNTR_HRCHY
            ) AS sd
        ON stm.CC_Nbr = sd.CC_Nbr
--WHEN MATCHED AND stm.ACCT_NBR &gt; 250 THEN DELETE
        WHEN MATCHED THEN
            UPDATE SET
                    stm.CC_Desc = sd.CC_Desc ,
                    stm.lvl0_Desc = sd.lvl0_Desc ,
                    stm.Lvl1_Desc = sd.lvl1_Desc ,
                    stm.Lvl1_Cd = sd.lvl1_Cd ,
					stm.Lvl2_Desc = sd.lvl2_Desc ,
					stm.Lvl2_Cd = sd.lvl2_Cd ,
					stm.Lvl3_Desc = sd.lvl3_Desc ,
                    stm.Lvl3_Cd = sd.lvl3_Cd ,
                    stm.Lvl4_Desc = sd.lvl4_Desc ,
                    stm.Lvl4_Cd = sd.lvl4_Cd ,
                    stm.Lvl5_Desc = sd.lvl5_Desc ,
                    stm.Lvl6_Desc = stm.CC_Nbr + ' ' + stm.CC_Desc ,
                    stm.Lvl6_Cd = stm.CC_Nbr ,
                    stm.DW_Mod_Usr = CURRENT_USER ,
                    stm.DW_Mod_Ts = GETDATE(),
					 stm.DW_Del_Bit = 0 ,
					 stm.DW_Del_Usr = Null ,
					stm.DW_Del_Ts = Null
        WHEN NOT MATCHED THEN
            INSERT ( CC_Nbr ,
                     CC_Desc ,
                     lvl0_Desc ,
                     Lvl1_Desc ,
                     Lvl1_Cd ,
                     Lvl2_Desc ,
                     Lvl2_Cd ,
                     Lvl3_Desc ,
                     Lvl3_Cd ,
                     Lvl4_Desc ,
                     Lvl4_Cd ,
                     Lvl5_Desc ,
                     Lvl5_Cd ,
                     Lvl6_Desc ,
                     Lvl6_Cd ,
                     DW_Cre_Usr ,
                     DW_Cre_Ts
                   )
            VALUES ( sd.CC_Nbr ,
                     sd.CC_Desc ,
                     sd.lvl0_Desc ,
                     sd.lvl1_Desc ,
                     sd.lvl1_Cd ,
                     sd.lvl2_Desc ,
                     sd.lvl2_Cd ,
                     sd.lvl3_Desc ,
                     sd.lvl3_Cd ,
                     sd.lvl4_Desc ,
                     sd.lvl4_Cd ,
                     sd.lvl5_Desc ,
                     sd.lvl5_Cd ,
                     sd.CC_Nbr + ' ' + sd.CC_Desc ,
                     sd.CC_Nbr ,
                     CURRENT_USER ,
                     GETDATE()
                   );


        SELECT  @cnt = COUNT(CC_Nbr)
        FROM    KNA_FIN.KNA_ZBB.CC_Hrchy_ZBB a
        WHERE   a.CC_Nbr NOT IN ( SELECT    CC_Nbr
                                  FROM      @COSTCNTR_HRCHY );
        PRINT @cnt;

        UPDATE  KNA_FIN.KNA_ZBB.CC_Hrchy_ZBB
        SET     DW_Del_Bit = 1 ,
                DW_Del_Usr = USER_NAME() ,
                DW_Del_Ts = GETDATE()
        WHERE   CC_Nbr NOT IN ( SELECT  CC_Nbr
                                FROM    @COSTCNTR_HRCHY ); 

    END;












GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Curr_Exchng_Fmt]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/******************************************************************************
		NAME:      [USP_DQ_Load_Curr_Exchng_Fmt]
		PURPOSE:   Stored Proc to Load Currency exchange file
		
		REVISIONS:
		Ver        Date        Author           Description
		---------  ----------  ---------------  ------------------------------------
		1.0        11/15/2017   USCSXA24         Created.
		
		This laods the currency conversion file into SQL table
		It has got no parameters 
		******************************************************************************/




CREATE PROCEDURE [dbo].[USP_DQ_Load_Curr_Exchng_Fmt] @InsCount INT OUTPUT
AS
BEGIN
	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [VER] = LTRIM(RTRIM(VER))
		,[FR_CURR] = LTRIM(RTRIM(FR_CURR))
		,[TO_CURR] = LTRIM(RTRIM(TO_CURR))
		,[YR] = LTRIM(RTRIM(YR))
		,[PD] = LTRIM(RTRIM(PD))
		,[FCTR] = LTRIM(RTRIM(FCTR))

	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [FCTR] = replace(FCTR, '$', '')

	UPDATE [STG].[STG_CURR_EXCHNG_FMT]
	SET [FCTR] = replace(replace(FCTR, '(', ''), ')', '')

	--/*****************************************************************************/
	MERGE INTO [KNA_ZBB].[Curr_Exchng_Fmt] AS stm
	USING (
		SELECT VER
			,FR_CURR
			,TO_CURR
			,YR
			,PD
			,[FCTR]
		FROM [STG].[STG_CURR_EXCHNG_FMT]
		) AS sd
		ON stm.VER = sd.VER
			AND stm.FR_CURR = sd.FR_CURR
			AND stm.TO_CURR = sd.TO_CURR
			AND stm.YR = sd.YR
			AND stm.PD = sd.PD
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.VER = sd.VER
				,stm.FR_CURR = sd.FR_CURR
				,stm.TO_CURR = sd.TO_CURR
				,stm.YR = sd.YR
				,stm.PD = sd.PD
				,stm.[FCTR] = sd.[FCTR]
				,stm.DW_MOD_TS = getdate()
				,stm.DW_MOD_USR = user_name()
	WHEN NOT MATCHED
		THEN
			INSERT (
				VER
				,FR_CURR
				,TO_CURR
				,YR
				,PD
				,FCTR
				,DW_CRE_TS
				,DW_CRE_USR
				)
			VALUES (
				sd.VER
				,sd.FR_CURR
				,sd.TO_CURR
				,sd.YR
				,sd.PD
				,sd.FCTR
				,getdate()
				,user_name()
				);

	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [KNA_ZBB].[Curr_Exchng_Fmt] Table :';
	PRINT @InsCount;
END





GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Htl_Fare_Detl]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[USP_DQ_Load_Htl_Fare_Detl]
    @Cntry_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_Load_Htl_Fare_Detl
PURPOSE & 
Description :  This script will load data into HOTEL FARE table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
  


******************************************************************************/
    BEGIN
        BEGIN TRY
            IF ( @Cntry_flag = 'CA' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].STG_Htl_Fare_Detl_CA
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            Gcn = LTRIM(RTRIM([Gcn])) ,
                            Clnt_Cd = LTRIM(RTRIM([Clnt_Cd])) ,
                            Lctr = LTRIM(RTRIM([Lctr])) ,
                            Trvlr = LTRIM(RTRIM([Trvlr])) ,
                            Invc_Dt = LTRIM(RTRIM([Invc_Dt])) ,
                            Invc_Num = LTRIM(RTRIM([Invc_Num])) ,
                            Agcy = LTRIM(RTRIM([Agcy])) ,
                            Agcy_Num = LTRIM(RTRIM([Agcy_Num])) ,
                            Bkng_Src = LTRIM(RTRIM([Bkng_Src])) ,
                            Bkng_Agnt_Id = LTRIM(RTRIM([Bkng_Agnt_Id])) ,
                            Local_HtlRsn_Cd = LTRIM(RTRIM([Local_HtlRsn_Cd])) ,
                            Local_HtlRsn_Cd_Desc = LTRIM(RTRIM([Local_HtlRsn_Cd_Desc])) ,
                            Glbl_HtlRsn_Cd = LTRIM(RTRIM([Glbl_HtlRsn_Cd])) ,
                            Glbl_Htlrsn_cd_Desc = LTRIM(RTRIM([Glbl_Htlrsn_cd_Desc])) ,
                            Rfnd_Indctr = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            Exhng_Indctr = LTRIM(RTRIM([Exhng_Indctr])) ,
                            Orig_Docnum = LTRIM(RTRIM([Orig_Docnum])) ,
                            Int_Dom = LTRIM(RTRIM([Int_Dom])) ,
                            Trvl_Sctr = LTRIM(RTRIM([Trvl_Sctr])) ,
                            Trvlr_Cntry = LTRIM(RTRIM([Trvlr_Cntry])) ,
                            Tcktng_Cntry = LTRIM(RTRIM([Tcktng_Cntry])) ,
                            Chk_In_Dt = LTRIM(RTRIM([Chk_In_Dt])) ,
                            Chk_Out_Dt = LTRIM(RTRIM([Chk_Out_Dt])) ,
                            Cnfrmtn_Num = LTRIM(RTRIM([Cnfrmtn_Num])) ,
                            Htl_Mstr_ChainNm = LTRIM(RTRIM([Htl_Mstr_ChainNm])) ,
                            Htl_Chain_Cd = LTRIM(RTRIM([Htl_Chain_Cd])) ,
                            Htl_Chain_Nm = LTRIM(RTRIM([Htl_Chain_Nm])) ,
                            Prprty_Nm = LTRIM(RTRIM([Prprty_Nm])) ,
                            Addr1 = LTRIM(RTRIM([Addr1])) ,
                            Addr2 = LTRIM(RTRIM([Addr2])) ,
                            Htl_Cty = LTRIM(RTRIM([Htl_Cty])) ,
                            Cty_Cd = LTRIM(RTRIM([Cty_Cd])) ,
                            Major_Cty = LTRIM(RTRIM([Major_Cty])) ,
                            St = LTRIM(RTRIM([St])) ,
                            Pstl_cd = LTRIM(RTRIM([Pstl_cd])) ,
                            Cntry_cd = LTRIM(RTRIM([Cntry_cd])) ,
                            Ctry = LTRIM(RTRIM([Ctry])) ,
                            Cntry_ph = LTRIM(RTRIM([Cntry_ph])) ,
                            No_Of_Rooms = LTRIM(RTRIM([No_Of_Rooms])) ,
                            No_Of_Nghts = LTRIM(RTRIM([No_Of_Nghts])) ,
                            Room_Typ_cd = LTRIM(RTRIM([Room_Typ_cd])) ,
                            Room_Typ = LTRIM(RTRIM([Room_Typ])) ,
                            Rt_Ctgry = LTRIM(RTRIM([Rt_Ctgry])) ,
                            Room_Rt = LTRIM(RTRIM([Room_Rt])) ,
                            Tot_Amt = LTRIM(RTRIM([Tot_Amt])) ,
                            Cmpr_Rt1 = LTRIM(RTRIM([Cmpr_Rt1])) ,
                            Diff_to_Rt1 = LTRIM(RTRIM([Diff_to_Rt1])) ,
                            Tot_Diff_to_Rt1 = LTRIM(RTRIM([Tot_Diff_to_Rt1])) ,
                            Compare_Rt2 = LTRIM(RTRIM([Compare_Rt2])) ,
                            Diff_to_Rt2 = LTRIM(RTRIM([Diff_to_Rt2])) ,
                            Tot_Diff_to_Rt2 = LTRIM(RTRIM([Tot_Diff_to_Rt2])) ,
                            Htl_Pref_Ind = LTRIM(RTRIM([Htl_Pref_Ind])) ,
                            Cst_Cntr_Ion = LTRIM(RTRIM([Cst_Cntr_Ion]));


/*********************Removing Commas Start *************************************/

                    UPDATE  [STG].STG_Htl_Fare_Detl_CA
                    SET     Room_Rt = REPLACE(Room_Rt, ',', '') ,
                            Tot_Amt = REPLACE(Tot_Amt, ',', '') ,
                            Cmpr_Rt1 = REPLACE(Cmpr_Rt1, ',', '') ,
                            Diff_to_Rt1 = REPLACE(Diff_to_Rt1, ',', '') ,
                            Tot_Diff_to_Rt1 = REPLACE(Tot_Diff_to_Rt1, ',', '') ,
                            Compare_Rt2 = REPLACE(Compare_Rt2, ',', '') ,
                            Diff_to_Rt2 = REPLACE(Diff_to_Rt2, ',', '') ,
                            Tot_Diff_to_Rt2 = REPLACE(Tot_Diff_to_Rt2, ',', '');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/

                    UPDATE  [STG].STG_Htl_Fare_Detl_CA
                    SET     Room_Rt = REPLACE(REPLACE(Room_Rt, '(', '-'), ')',
                                              '') ,
                            Tot_Amt = REPLACE(REPLACE(Tot_Amt, '(', '-'), ')',
                                              '') ,
                            Cmpr_Rt1 = REPLACE(REPLACE(Cmpr_Rt1, '(', '-'),
                                               ')', '') ,
                            Diff_to_Rt1 = REPLACE(REPLACE(Diff_to_Rt1, '(',
                                                          '-'), ')', '') ,
                            Tot_Diff_to_Rt1 = REPLACE(REPLACE(Tot_Diff_to_Rt1,
                                                              '(', '-'), ')',
                                                      '') ,
                            Compare_Rt2 = REPLACE(REPLACE(Compare_Rt2, '(',
                                                          '-'), ')', '') ,
                            Diff_to_Rt2 = REPLACE(REPLACE(Diff_to_Rt2, '(',
                                                          '-'), ')', '') ,
                            Tot_Diff_to_Rt2 = REPLACE(REPLACE(Tot_Diff_to_Rt2,
                                                              '(', '-'), ')',
                                                      '');

/*********************Removing brackets symbol End *************************************/


/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Cnfrmtn_Num],
                                                              [Invc_Num],
                                                              [Chk_In_Dt] ORDER BY [Cnfrmtn_Num], [Invc_Num], [Chk_In_Dt] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].STG_Htl_Fare_Detl_CA AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    WHERE   [Cnfrmtn_Num] IS NULL
                            OR [Cnfrmtn_Num] = '';

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    WHERE   [Invc_Num] IS NULL
                            OR [Invc_Num] = '';

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    WHERE   [Chk_In_Dt] IS NULL
                            OR [Chk_In_Dt] = '';


/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Room_Rt]) <> 1
                            AND [Room_Rt] IS NOT NULL;

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Tot_Amt]) <> 1
                            AND [Tot_Amt] IS NOT NULL; 

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Cmpr_Rt1]) <> 1
                            AND [Cmpr_Rt1] IS NOT NULL; 

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Diff_to_Rt1]) <> 1
                            AND [Diff_to_Rt1] IS NOT NULL;

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Tot_Diff_to_Rt1]) <> 1
                            AND [Tot_Diff_to_Rt1] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Compare_Rt2]) <> 1
                            AND [Compare_Rt2] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Diff_to_Rt2]) <> 1
                            AND [Diff_to_Rt2] IS NOT NULL;



                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   ISNUMERIC([Tot_Diff_to_Rt2]) <> 1
                            AND [Tot_Diff_to_Rt2] IS NOT NULL;
									
	/*********************Checking Total/Waring/Error Row Counts********************/

                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA;


                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[KNA_ZBB].[Htl_Fare_Detl_NA] a
                                    INNER JOIN ( SELECT Cnfrmtn_Num ,
                                                        Invc_Num ,
                                                        Chk_In_Dt
                                                 FROM   [KNA_FIN].[STG].[STG_Htl_Fare_Detl_CA]
                                               ) b ON a.[Cnfrmtn_Num] = b.[Cnfrmtn_Num]
                                                      AND a.Invc_Num = b.Invc_Num
                                                      AND a.Chk_In_Dt = b.Chk_In_Dt;



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].[KNA_ZBB].[Htl_Fare_Detl_NA]
                                    ( Clnt_Nm ,
                                      Rec_Key ,
                                      Gcn ,
                                      Clnt_Cd ,
                                      Lctr ,
                                      Trvlr ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Agcy ,
                                      Agcy_Num ,
                                      Bkng_Src ,
                                      Bkng_Agnt_Id ,
                                      Local_HtlRsn_Cd ,
                                      Local_HtlRsn_Cd_Desc ,
                                      Glbl_HtlRsn_Cd ,
                                      Glbl_Htlrsn_cd_Desc ,
                                      Rfnd_Indctr ,
                                      Exhng_Indctr ,
                                      Orig_Docnum ,
                                      Int_Dom ,
                                      Trvl_Sctr ,
                                      Trvlr_Cntry ,
                                      Tcktng_Cntry ,
                                      Chk_In_Dt ,
                                      Chk_Out_Dt ,
                                      Cnfrmtn_Num ,
                                      Htl_Mstr_Chainnm ,
                                      Htl_Chain_Cd ,
                                      Htl_Chain_Nm ,
                                      Prprty_Nm ,
                                      Addr1 ,
                                      Addr2 ,
                                      Htl_Cty ,
                                      Cty_Cd ,
                                      Major_Cty ,
                                      St ,
                                      Pstl_Cd ,
                                      Cntry_cd ,
                                      Ctry ,
                                      Cntry_ph ,
                                      No_Of_Rooms ,
                                      No_Of_Nghts ,
                                      Room_Typ_cd ,
                                      Room_Typ ,
                                      Rt_Ctgry ,
                                      Room_Rt ,
                                      Tot_Amt ,
                                      Cmpr_Rt1 ,
                                      Diff_to_Rt1 ,
                                      Tot_Diff_to_Rt1 ,
                                      Compare_Rt2 ,
                                      Diff_to_Rt2 ,
                                      Tot_Diff_to_Rt2 ,
                                      Htl_Pref_Ind ,
                                      Cst_Cntr_Ion ,
                                      [DW_Cre_Ts] ,
                                      [DW_Cre_Usr]
                                    )
                                    SELECT  Clnt_Nm ,
                                            Rec_Key ,
                                            Gcn ,
                                            Clnt_Cd ,
                                            Lctr ,
                                            Trvlr ,
                                            Invc_Dt ,
                                            Invc_Num ,
                                            Agcy ,
                                            Agcy_Num ,
                                            Bkng_Src ,
                                            Bkng_Agnt_Id ,
                                            Local_HtlRsn_Cd ,
                                            Local_HtlRsn_Cd_Desc ,
                                            Glbl_HtlRsn_Cd ,
                                            Glbl_Htlrsn_cd_Desc ,
                                            Rfnd_Indctr ,
                                            Exhng_Indctr ,
                                            Orig_Docnum ,
                                            Int_Dom ,
                                            Trvl_Sctr ,
                                            Trvlr_Cntry ,
                                            Tcktng_Cntry ,
                                            Chk_In_Dt ,
                                            Chk_Out_Dt ,
                                            Cnfrmtn_Num ,
                                            Htl_Mstr_ChainNm ,
                                            Htl_Chain_Cd ,
                                            Htl_Chain_Nm ,
                                            Prprty_Nm ,
                                            Addr1 ,
                                            Addr2 ,
                                            Htl_Cty ,
                                            Cty_Cd ,
                                            Major_Cty ,
                                            St ,
                                            Pstl_cd ,
                                            Cntry_cd ,
                                            Ctry ,
                                            Cntry_ph ,
                                            No_Of_Rooms ,
                                            No_Of_Nghts ,
                                            Room_Typ_cd ,
                                            Room_Typ ,
                                            Rt_Ctgry ,
                                            Room_Rt ,
                                            Tot_Amt ,
                                            Cmpr_Rt1 ,
                                            Diff_to_Rt1 ,
                                            Tot_Diff_to_Rt1 ,
                                            Compare_Rt2 ,
                                            Diff_to_Rt2 ,
                                            Tot_Diff_to_Rt2 ,
                                            Htl_Pref_Ind ,
                                            Cst_Cntr_Ion ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_CA;


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into FROM STG_Htl_Fare_Detl_CA TO Htl_Fare_Detl_NA Table:';
                            PRINT @InsCount;
                        END; 



                END;-- end ca

            IF ( @Cntry_flag = 'US' )
                BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].STG_Htl_Fare_Detl_US
                    SET     [Clnt_Nm] = LTRIM(RTRIM([Clnt_Nm])) ,
                            [Rec_Key] = LTRIM(RTRIM([Rec_Key])) ,
                            Gcn = LTRIM(RTRIM([Gcn])) ,
                            Clnt_Cd = LTRIM(RTRIM([Clnt_Cd])) ,
                            Lctr = LTRIM(RTRIM([Lctr])) ,
                            Trvlr = LTRIM(RTRIM([Trvlr])) ,
                            Invc_Dt = LTRIM(RTRIM([Invc_Dt])) ,
                            Invc_Num = LTRIM(RTRIM([Invc_Num])) ,
                            Agcy = LTRIM(RTRIM([Agcy])) ,
                            Agcy_Num = LTRIM(RTRIM([Agcy_Num])) ,
                            Bkng_Src = LTRIM(RTRIM([Bkng_Src])) ,
                            Bkng_Agnt_Id = LTRIM(RTRIM([Bkng_Agnt_Id])) ,
                            Local_HtlRsn_Cd = LTRIM(RTRIM([Local_HtlRsn_Cd])) ,
                            Local_HtlRsn_Cd_Desc = LTRIM(RTRIM([Local_HtlRsn_Cd_Desc])) ,
                            Glbl_HtlRsn_Cd = LTRIM(RTRIM([Glbl_HtlRsn_Cd])) ,
                            Glbl_Htlrsn_cd_Desc = LTRIM(RTRIM([Glbl_Htlrsn_cd_Desc])) ,
                            Rfnd_Indctr = LTRIM(RTRIM([Rfnd_Indctr])) ,
                            Exhng_Indctr = LTRIM(RTRIM([Exhng_Indctr])) ,
                            Orig_Docnum = LTRIM(RTRIM([Orig_Docnum])) ,
                            Int_Dom = LTRIM(RTRIM([Int_Dom])) ,
                            Trvl_Sctr = LTRIM(RTRIM([Trvl_Sctr])) ,
                            Trvlr_Cntry = LTRIM(RTRIM([Trvlr_Cntry])) ,
                            Tcktng_Cntry = LTRIM(RTRIM([Tcktng_Cntry])) ,
                            Chk_In_Dt = LTRIM(RTRIM([Chk_In_Dt])) ,
                            Chk_Out_Dt = LTRIM(RTRIM([Chk_Out_Dt])) ,
                            Cnfrmtn_Num = LTRIM(RTRIM([Cnfrmtn_Num])) ,
                            Htl_Mstr_ChainNm = LTRIM(RTRIM([Htl_Mstr_ChainNm])) ,
                            Htl_Chain_Cd = LTRIM(RTRIM([Htl_Chain_Cd])) ,
                            Htl_Chain_Nm = LTRIM(RTRIM([Htl_Chain_Nm])) ,
                            Prprty_Nm = LTRIM(RTRIM([Prprty_Nm])) ,
                            Addr1 = LTRIM(RTRIM([Addr1])) ,
                            Addr2 = LTRIM(RTRIM([Addr2])) ,
                            Htl_Cty = LTRIM(RTRIM([Htl_Cty])) ,
                            Cty_Cd = LTRIM(RTRIM([Cty_Cd])) ,
                            Major_Cty = LTRIM(RTRIM([Major_Cty])) ,
                            St = LTRIM(RTRIM([St])) ,
                            Pstl_cd = LTRIM(RTRIM([Pstl_cd])) ,
                            Cntry_cd = LTRIM(RTRIM([Cntry_cd])) ,
                            Ctry = LTRIM(RTRIM([Ctry])) ,
                            Cntry_ph = LTRIM(RTRIM([Cntry_ph])) ,
                            No_Of_Rooms = LTRIM(RTRIM([No_Of_Rooms])) ,
                            No_Of_Nghts = LTRIM(RTRIM([No_Of_Nghts])) ,
                            Room_Typ_cd = LTRIM(RTRIM([Room_Typ_cd])) ,
                            Room_Typ = LTRIM(RTRIM([Room_Typ])) ,
                            Rt_Ctgry = LTRIM(RTRIM([Rt_Ctgry])) ,
                            Room_Rt = LTRIM(RTRIM([Room_Rt])) ,
                            Tot_Amt = LTRIM(RTRIM([Tot_Amt])) ,
                            Cmpr_Rt1 = LTRIM(RTRIM([Cmpr_Rt1])) ,
                            Diff_to_Rt1 = LTRIM(RTRIM([Diff_to_Rt1])) ,
                            Tot_Diff_to_Rt1 = LTRIM(RTRIM([Tot_Diff_to_Rt1])) ,
                            Compare_Rt2 = LTRIM(RTRIM([Compare_Rt2])) ,
                            Diff_to_Rt2 = LTRIM(RTRIM([Diff_to_Rt2])) ,
                            Tot_Diff_to_Rt2 = LTRIM(RTRIM([Tot_Diff_to_Rt2])) ,
                            Htl_Pref_Ind = LTRIM(RTRIM([Htl_Pref_Ind])) ,
                            Cst_Cntr_Ion = LTRIM(RTRIM([Cst_Cntr_Ion]));


/*********************Removing Commas Start *************************************/

                    UPDATE  [STG].STG_Htl_Fare_Detl_US
                    SET     Room_Rt = REPLACE(Room_Rt, ',', '') ,
                            Tot_Amt = REPLACE(Tot_Amt, ',', '') ,
                            Cmpr_Rt1 = REPLACE(Cmpr_Rt1, ',', '') ,
                            Diff_to_Rt1 = REPLACE(Diff_to_Rt1, ',', '') ,
                            Tot_Diff_to_Rt1 = REPLACE(Tot_Diff_to_Rt1, ',', '') ,
                            Compare_Rt2 = REPLACE(Compare_Rt2, ',', '') ,
                            Diff_to_Rt2 = REPLACE(Diff_to_Rt2, ',', '') ,
                            Tot_Diff_to_Rt2 = REPLACE(Tot_Diff_to_Rt2, ',', '');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/

                    UPDATE  [STG].STG_Htl_Fare_Detl_US
                    SET     Room_Rt = REPLACE(REPLACE(Room_Rt, '(', '-'), ')',
                                              '') ,
                            Tot_Amt = REPLACE(REPLACE(Tot_Amt, '(', '-'), ')',
                                              '') ,
                            Cmpr_Rt1 = REPLACE(REPLACE(Cmpr_Rt1, '(', '-'),
                                               ')', '') ,
                            Diff_to_Rt1 = REPLACE(REPLACE(Diff_to_Rt1, '(',
                                                          '-'), ')', '') ,
                            Tot_Diff_to_Rt1 = REPLACE(REPLACE(Tot_Diff_to_Rt1,
                                                              '(', '-'), ')',
                                                      '') ,
                            Compare_Rt2 = REPLACE(REPLACE(Compare_Rt2, '(',
                                                          '-'), ')', '') ,
                            Diff_to_Rt2 = REPLACE(REPLACE(Diff_to_Rt2, '(',
                                                          '-'), ')', '') ,
                            Tot_Diff_to_Rt2 = REPLACE(REPLACE(Tot_Diff_to_Rt2,
                                                              '(', '-'), ')',
                                                      '');

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Cnfrmtn_Num],
                                                              [Invc_Num],
                                                              [Chk_In_Dt] ORDER BY [Cnfrmtn_Num], [Invc_Num], [Chk_In_Dt] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].STG_Htl_Fare_Detl_US AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;

/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    WHERE   [Cnfrmtn_Num] IS NULL
                            OR [Cnfrmtn_Num] = '';

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    WHERE   [Invc_Num] IS NULL
                            OR [Invc_Num] = '';

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    WHERE   [Chk_In_Dt] IS NULL
                            OR [Chk_In_Dt] = '';

/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Room_Rt]) <> 1
                            AND [Room_Rt] IS NOT NULL;

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Tot_Amt]) <> 1
                            AND [Tot_Amt] IS NOT NULL; 

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Cmpr_Rt1]) <> 1
                            AND [Cmpr_Rt1] IS NOT NULL; 

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Diff_to_Rt1]) <> 1
                            AND [Diff_to_Rt1] IS NOT NULL;

                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Tot_Diff_to_Rt1]) <> 1
                            AND [Tot_Diff_to_Rt1] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Compare_Rt2]) <> 1
                            AND [Compare_Rt2] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Diff_to_Rt2]) <> 1
                            AND [Diff_to_Rt2] IS NOT NULL;



                    UPDATE  [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   ISNUMERIC([Tot_Diff_to_Rt2]) <> 1
                            AND [Tot_Diff_to_Rt2] IS NOT NULL;
									
	/*********************Checking Total/Waring/Error Row Counts********************/

                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US;


                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[KNA_ZBB].[Htl_Fare_Detl_NA] a
                                    INNER JOIN ( SELECT Cnfrmtn_Num ,
                                                        Invc_Num ,
                                                        Chk_In_Dt
                                                 FROM   [KNA_FIN].[STG].STG_Htl_Fare_Detl_US
                                               ) b ON a.[Cnfrmtn_Num] = b.[Cnfrmtn_Num]
                                                      AND a.Invc_Num = b.Invc_Num
                                                      AND a.Chk_In_Dt = b.Chk_In_Dt;


/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].[KNA_ZBB].[Htl_Fare_Detl_NA]
                                    ( Clnt_Nm ,
                                      Rec_Key ,
                                      Gcn ,
                                      Clnt_Cd ,
                                      Lctr ,
                                      Trvlr ,
                                      Invc_Dt ,
                                      Invc_Num ,
                                      Agcy ,
                                      Agcy_Num ,
                                      Bkng_Src ,
                                      Bkng_Agnt_Id ,
                                      Local_HtlRsn_Cd ,
                                      Local_HtlRsn_Cd_Desc ,
                                      Glbl_HtlRsn_Cd ,
                                      Glbl_Htlrsn_cd_Desc ,
                                      Rfnd_Indctr ,
                                      Exhng_Indctr ,
                                      Orig_Docnum ,
                                      Int_Dom ,
                                      Trvl_Sctr ,
                                      Trvlr_Cntry ,
                                      Tcktng_Cntry ,
                                      Chk_In_Dt ,
                                      Chk_Out_Dt ,
                                      Cnfrmtn_Num ,
                                      Htl_Mstr_Chainnm ,
                                      Htl_Chain_Cd ,
                                      Htl_Chain_Nm ,
                                      Prprty_Nm ,
                                      Addr1 ,
                                      Addr2 ,
                                      Htl_Cty ,
                                      Cty_Cd ,
                                      Major_Cty ,
                                      St ,
                                      Pstl_Cd ,
                                      Cntry_cd ,
                                      Ctry ,
                                      Cntry_ph ,
                                      No_Of_Rooms ,
                                      No_Of_Nghts ,
                                      Room_Typ_cd ,
                                      Room_Typ ,
                                      Rt_Ctgry ,
                                      Room_Rt ,
                                      Tot_Amt ,
                                      Cmpr_Rt1 ,
                                      Diff_to_Rt1 ,
                                      Tot_Diff_to_Rt1 ,
                                      Compare_Rt2 ,
                                      Diff_to_Rt2 ,
                                      Tot_Diff_to_Rt2 ,
                                      Htl_Pref_Ind ,
                                      Cst_Cntr_Ion ,
                                      [DW_Cre_Ts] ,
                                      [DW_Cre_Usr]
                                    )
                                    SELECT  Clnt_Nm ,
                                            Rec_Key ,
                                            Gcn ,
                                            Clnt_Cd ,
                                            Lctr ,
                                            Trvlr ,
                                            Invc_Dt ,
                                            Invc_Num ,
                                            Agcy ,
                                            Agcy_Num ,
                                            Bkng_Src ,
                                            Bkng_Agnt_Id ,
                                            Local_HtlRsn_Cd ,
                                            Local_HtlRsn_Cd_Desc ,
                                            Glbl_HtlRsn_Cd ,
                                            Glbl_Htlrsn_cd_Desc ,
                                            Rfnd_Indctr ,
                                            Exhng_Indctr ,
                                            Orig_Docnum ,
                                            Int_Dom ,
                                            Trvl_Sctr ,
                                            Trvlr_Cntry ,
                                            Tcktng_Cntry ,
                                            Chk_In_Dt ,
                                            Chk_Out_Dt ,
                                            Cnfrmtn_Num ,
                                            Htl_Mstr_ChainNm ,
                                            Htl_Chain_Cd ,
                                            Htl_Chain_Nm ,
                                            Prprty_Nm ,
                                            Addr1 ,
                                            Addr2 ,
                                            Htl_Cty ,
                                            Cty_Cd ,
                                            Major_Cty ,
                                            St ,
                                            Pstl_cd ,
                                            Cntry_cd ,
                                            Ctry ,
                                            Cntry_ph ,
                                            No_Of_Rooms ,
                                            No_Of_Nghts ,
                                            Room_Typ_cd ,
                                            Room_Typ ,
                                            Rt_Ctgry ,
                                            Room_Rt ,
                                            Tot_Amt ,
                                            Cmpr_Rt1 ,
                                            Diff_to_Rt1 ,
                                            Tot_Diff_to_Rt1 ,
                                            Compare_Rt2 ,
                                            Diff_to_Rt2 ,
                                            Tot_Diff_to_Rt2 ,
                                            Htl_Pref_Ind ,
                                            Cst_Cntr_Ion ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].STG_Htl_Fare_Detl_US;


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into FROM STG_Htl_Fare_Detl_US TO Htl_Fare_Detl_NA Table:';
                            PRINT @InsCount;

                        END; 



                END;-- end us

        END TRY
        BEGIN CATCH
        END CATCH;

    END;




GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Intr_Evnt_Detl]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[USP_DQ_Load_Intr_Evnt_Detl]
    @Cntry_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  [USP_DQ_Load_Intr_Evnt_Detl]
PURPOSE & 
Description :  This script will load data into [Intr_Evnt_Detl_NA] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.[USP_DQ_Load_Intr_Evnt_Detl] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
    BEGIN
        BEGIN TRY
            IF ( @Cntry_flag = 'CA' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

                    UPDATE  [STG].[STG_Intr_Evnt_Detl_CA]
                    SET     [Evnt_Id] = LTRIM(RTRIM([Evnt_Id])) ,
                            [Cst_Cntr] = LTRIM(RTRIM([Cst_Cntr])) ,
                            [Evnt_Nm] = LTRIM(RTRIM([Evnt_Nm])) ,
                            [Venue] = LTRIM(RTRIM([Venue])) ,
                            [Strt_Dt] = LTRIM(RTRIM([Strt_Dt])) ,
                            [End_Dt] = LTRIM(RTRIM([End_Dt])) ,
                            [Exp_Ctgry] = LTRIM(RTRIM([Exp_Ctgry])) ,
                            [Exp] = LTRIM(RTRIM([Exp])) ,
                            [Orig_Qty] = LTRIM(RTRIM([Orig_Qty])) ,
                            [Cntrctd_Qty] = LTRIM(RTRIM([Cntrctd_Qty])) ,
                            [Qutd_Rt] = LTRIM(RTRIM([Qutd_Rt])) ,
                            [Cntract_Rt] = LTRIM(RTRIM([Cntract_Rt])) ,
                            [Orig_Cst] = LTRIM(RTRIM([Orig_Cst])) ,
                            [Ngttd_Cst] = LTRIM(RTRIM([Ngttd_Cst])) ,
                            [Svngs] = LTRIM(RTRIM([Svngs])) ,
                            [Val_Add_Csts] = LTRIM(RTRIM([Val_Add_Csts]));


--
/*********************Removing Commas and $ Start *************************************/
	
                    UPDATE  [STG].[STG_Intr_Evnt_Detl_CA]
                    SET     [Orig_Qty] = REPLACE([Orig_Qty], ',', '') ,
                            [Cntrctd_Qty] = REPLACE(LTRIM(RTRIM([Cntrctd_Qty])),
                                                    ',', '') ,
                            [Qutd_Rt] = REPLACE([Qutd_Rt], ',', '') ,
                            [Cntract_Rt] = REPLACE(LTRIM(RTRIM([Cntract_Rt])),
                                                   ',', '') ,
                            [Orig_Cst] = REPLACE([Orig_Cst], ',', '') ,
                            [Ngttd_Cst] = REPLACE(LTRIM(RTRIM([Ngttd_Cst])),
                                                  ',', '') ,
                            [Svngs] = REPLACE(LTRIM(RTRIM([Svngs])), ',', '') ,
                            [Val_Add_Csts] = REPLACE(LTRIM(RTRIM([Val_Add_Csts])),
                                                     ',', '');

                    UPDATE  [STG].[STG_Intr_Evnt_Detl_CA]
                    SET     [Orig_Qty] = REPLACE([Orig_Qty], '$', '') ,
                            [Cntrctd_Qty] = REPLACE(LTRIM(RTRIM([Cntrctd_Qty])),
                                                    '$', '') ,
                            [Qutd_Rt] = REPLACE([Qutd_Rt], '$', '') ,
                            [Cntract_Rt] = REPLACE(LTRIM(RTRIM([Cntract_Rt])),
                                                   '$', '') ,
                            [Orig_Cst] = REPLACE([Orig_Cst], '$', '') ,
                            [Ngttd_Cst] = REPLACE(LTRIM(RTRIM([Ngttd_Cst])),
                                                  '$', '') ,
                            [Svngs] = REPLACE(LTRIM(RTRIM([Svngs])), '$', '') ,
                            [Val_Add_Csts] = REPLACE(LTRIM(RTRIM([Val_Add_Csts])),
                                                     '$', '');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Intr_Evnt_Detl_CA]
                    SET     [Orig_Qty] = REPLACE(REPLACE([Orig_Qty], '(', '-'),
                                                 ')', '') ,
                            [Cntrctd_Qty] = REPLACE(REPLACE([Cntrctd_Qty], '(',
                                                            '-'), ')', '') ,
                            [Qutd_Rt] = REPLACE(REPLACE([Qutd_Rt], '(', '-'),
                                                ')', '') ,
                            [Cntract_Rt] = REPLACE(REPLACE([Cntract_Rt], '(',
                                                           '-'), ')', '') ,
                            [Orig_Cst] = REPLACE(REPLACE([Orig_Cst], '(', '-'),
                                                 ')', '') ,
                            [Ngttd_Cst] = REPLACE(REPLACE([Ngttd_Cst], '(',
                                                          '-'), ')', '') ,
                            [Val_Add_Csts] = REPLACE(REPLACE([Val_Add_Csts],
                                                             '(', '-'), ')',
                                                     '') ,
                            [Svngs] = REPLACE(REPLACE([Svngs], '(', '-'), ')',
                                              '');
                    
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Evnt_Id],
                                                              [Cst_Cntr],
                                                              [Evnt_Nm],
                                                              [Venue],
                                                              [Strt_Dt],
                                                              [End_Dt],
                                                              [Exp_Ctgry],
                                                              [Exp],
                                                              [Orig_Qty],
                                                              [Cntrctd_Qty],
                                                              [Qutd_Rt],
                                                              [Cntract_Rt],
                                                              [Orig_Cst],
                                                              [Ngttd_Cst],
                                                              [Svngs],
                                                              [Val_Add_Csts] ORDER BY [Evnt_Id]
      , [Cst_Cntr]
      , [Evnt_Nm]
      , [Venue]
      , [Strt_Dt]
      , [End_Dt]
      , [Exp_Ctgry]
      , [Exp]
      , [Orig_Qty]
      , [Cntrctd_Qty]
      , [Qutd_Rt]
      , [Cntract_Rt]
      , [Orig_Cst]
      , [Ngttd_Cst]
      , [Svngs]
      , [Val_Add_Csts] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Intr_Evnt_Detl_CA] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;
                    



/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Orig_Qty]) <> 1
                            AND [Orig_Qty] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Cntrctd_Qty]) <> 1
                            AND [Cntrctd_Qty] IS NOT NULL;
 

                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Qutd_Rt]) <> 1
                            AND [Qutd_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Cntract_Rt]) <> 1
                            AND [Cntract_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Orig_Cst]) <> 1
                            AND [Orig_Cst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Ngttd_Cst]) <> 1
                            AND [Ngttd_Cst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Svngs]) <> 1
                            AND [Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   ISNUMERIC([Val_Add_Csts]) <> 1
                            AND [Val_Add_Csts] IS NOT NULL;

									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA] G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                    WHERE   Err_Flg = 'Y';


	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
 


                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[Intr_Evnt_Detl_NA] a
                                    INNER JOIN ( SELECT [Evnt_Id] ,
                                                        [Cst_Cntr] ,
                                                        [Evnt_Nm] ,
                                                        [Venue] ,
                                                        [Strt_Dt] ,
                                                        [End_Dt] ,
                                                        [Exp_Ctgry] ,
                                                        [Exp] ,
                                                        [Orig_Qty] ,
                                                        [Cntrctd_Qty] ,
                                                        [Qutd_Rt] ,
                                                        [Cntract_Rt] ,
                                                        [Orig_Cst] ,
                                                        [Ngttd_Cst] ,
                                                        [Svngs] ,
                                                        [Val_Add_Csts]
                                                 FROM   [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA]
                                               ) b ON a.[Evnt_Id] = b.[Evnt_Id]
                                                      AND a.[Cst_Cntr] = b.[Cst_Cntr]
                                                      AND a.[Evnt_Nm] = b.[Evnt_Nm]
                                                      AND a.[Venue] = b.[Venue]
                                                      AND a.[Strt_Dt] = b.[Strt_Dt]
                                                      AND a.[End_Dt] = b.[End_Dt]
                                                      AND a.[Exp_Ctgry] = b.[Exp_Ctgry]
                                                      AND a.[Exp] = b.[Exp]
                                                      AND a.[Orig_Qty] = CAST(b.[Orig_Qty] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Cntrctd_Qty] = CAST(b.[Cntrctd_Qty] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Qutd_Rt] = CAST(b.[Qutd_Rt] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Cntract_Rt] = CAST(b.[Cntract_Rt] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Orig_Cst] = CAST(b.[Orig_Cst] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Ngttd_Cst] = CAST(b.[Ngttd_Cst] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Svngs] = CAST(b.[Svngs] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Val_Add_Csts] = CAST(b.[Val_Add_Csts] AS DECIMAL(18,
                                                              2));



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.Intr_Evnt_Detl_NA
                                    ( [Evnt_Id] ,
                                      [Cst_Cntr] ,
                                      [Evnt_Nm] ,
                                      [Venue] ,
                                      [Strt_Dt] ,
                                      [End_Dt] ,
                                      [Exp_Ctgry] ,
                                      [Exp] ,
                                      [Orig_Qty] ,
                                      [Cntrctd_Qty] ,
                                      [Qutd_Rt] ,
                                      [Cntract_Rt] ,
                                      [Orig_Cst] ,
                                      [Ngttd_Cst] ,
                                      [Svngs] ,
                                      [Val_Add_Csts] ,
                                      [DW_Cre_Ts] ,
                                      [DW_Cre_Usr]
  
                                    )
                                    SELECT  [Evnt_Id] ,
                                            [Cst_Cntr] ,
                                            [Evnt_Nm] ,
                                            [Venue] ,
                                            CAST([Strt_Dt] AS DATE) ,
                                            CAST([End_Dt] AS DATE) ,
                                            [Exp_Ctgry] ,
                                            [Exp] ,
                                            CAST([Orig_Qty] AS DECIMAL(18, 2)) ,
                                            CAST([Cntrctd_Qty] AS DECIMAL(18,
                                                              2)) ,
                                            CAST([Qutd_Rt] AS DECIMAL(18, 2)) ,
                                            CAST([Cntract_Rt] AS DECIMAL(18, 2)) ,
                                            CAST([Orig_Cst] AS DECIMAL(18, 2)) ,
                                            CAST([Ngttd_Cst] AS DECIMAL(18, 2)) ,
                                            CAST([Svngs] AS DECIMAL(18, 2)) ,
                                            CAST([Val_Add_Csts] AS DECIMAL(18,
                                                              2)) ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_CA];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into INTEVENT_DETAIL Table:0';
                            PRINT @InsCount;


                            PRINT '6';
                        END; 



                END; --CA
            IF ( @Cntry_flag = 'US' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

                    UPDATE  [STG].[STG_Intr_Evnt_Detl_US]
                    SET     [Evnt_Id] = LTRIM(RTRIM([Evnt_Id])) ,
                            [Cst_Cntr] = LTRIM(RTRIM([Cst_Cntr])) ,
                            [Evnt_Nm] = LTRIM(RTRIM([Evnt_Nm])) ,
                            [Venue] = LTRIM(RTRIM([Venue])) ,
                            [Strt_Dt] = LTRIM(RTRIM([Strt_Dt])) ,
                            [End_Dt] = LTRIM(RTRIM([End_Dt])) ,
                            [Exp_Ctgry] = LTRIM(RTRIM([Exp_Ctgry])) ,
                            [Exp] = LTRIM(RTRIM([Exp])) ,
                            [Orig_Qty] = LTRIM(RTRIM([Orig_Qty])) ,
                            [Cntrctd_Qty] = LTRIM(RTRIM([Cntrctd_Qty])) ,
                            [Qutd_Rt] = LTRIM(RTRIM([Qutd_Rt])) ,
                            [Cntract_Rt] = LTRIM(RTRIM([Cntract_Rt])) ,
                            [Orig_Cst] = LTRIM(RTRIM([Orig_Cst])) ,
                            [Ngttd_Cst] = LTRIM(RTRIM([Ngttd_Cst])) ,
                            [Svngs] = LTRIM(RTRIM([Svngs])) ,
                            [Val_Add_Csts] = LTRIM(RTRIM([Val_Add_Csts]));

/*********************Removing Commas and $ Start *************************************/
	
                    UPDATE  [STG].[STG_Intr_Evnt_Detl_US]
                    SET     [Orig_Qty] = REPLACE([Orig_Qty], ',', '') ,
                            [Cntrctd_Qty] = REPLACE(LTRIM(RTRIM([Cntrctd_Qty])),
                                                    ',', '') ,
                            [Qutd_Rt] = REPLACE([Qutd_Rt], ',', '') ,
                            [Cntract_Rt] = REPLACE(LTRIM(RTRIM([Cntract_Rt])),
                                                   ',', '') ,
                            [Orig_Cst] = REPLACE([Orig_Cst], ',', '') ,
                            [Ngttd_Cst] = REPLACE(LTRIM(RTRIM([Ngttd_Cst])),
                                                  ',', '') ,
                            [Svngs] = REPLACE(LTRIM(RTRIM([Svngs])), ',', '') ,
                            [Val_Add_Csts] = REPLACE(LTRIM(RTRIM([Val_Add_Csts])),
                                                     ',', '');

                    UPDATE  [STG].[STG_Intr_Evnt_Detl_US]
                    SET     [Orig_Qty] = REPLACE([Orig_Qty], '$', '') ,
                            [Cntrctd_Qty] = REPLACE(LTRIM(RTRIM([Cntrctd_Qty])),
                                                    '$', '') ,
                            [Qutd_Rt] = REPLACE([Qutd_Rt], '$', '') ,
                            [Cntract_Rt] = REPLACE(LTRIM(RTRIM([Cntract_Rt])),
                                                   '$', '') ,
                            [Orig_Cst] = REPLACE([Orig_Cst], '$', '') ,
                            [Ngttd_Cst] = REPLACE(LTRIM(RTRIM([Ngttd_Cst])),
                                                  '$', '') ,
                            [Svngs] = REPLACE(LTRIM(RTRIM([Svngs])), '$', '') ,
                            [Val_Add_Csts] = REPLACE(LTRIM(RTRIM([Val_Add_Csts])),
                                                     '$', '');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].[STG_Intr_Evnt_Detl_US]
                    SET     [Orig_Qty] = REPLACE(REPLACE([Orig_Qty], '(', '-'),
                                                 ')', '') ,
                            [Cntrctd_Qty] = REPLACE(REPLACE([Cntrctd_Qty], '(',
                                                            '-'), ')', '') ,
                            [Qutd_Rt] = REPLACE(REPLACE([Qutd_Rt], '(', '-'),
                                                ')', '') ,
                            [Cntract_Rt] = REPLACE(REPLACE([Cntract_Rt], '(',
                                                           '-'), ')', '') ,
                            [Orig_Cst] = REPLACE(REPLACE([Orig_Cst], '(', '-'),
                                                 ')', '') ,
                            [Ngttd_Cst] = REPLACE(REPLACE([Ngttd_Cst], '(',
                                                          '-'), ')', '') ,
                            [Val_Add_Csts] = REPLACE(REPLACE([Val_Add_Csts],
                                                             '(', '-'), ')',
                                                     '') ,
                            [Svngs] = REPLACE(REPLACE([Svngs], '(', '-'), ')',
                                              '');

/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Evnt_Id],
                                                              [Cst_Cntr],
                                                              [Evnt_Nm],
                                                              [Venue],
                                                              [Strt_Dt],
                                                              [End_Dt],
                                                              [Exp_Ctgry],
                                                              [Exp],
                                                              [Orig_Qty],
                                                              [Cntrctd_Qty],
                                                              [Qutd_Rt],
                                                              [Cntract_Rt],
                                                              [Orig_Cst],
                                                              [Ngttd_Cst],
                                                              [Svngs],
                                                              [Val_Add_Csts] ORDER BY [Evnt_Id]
      , [Cst_Cntr]
      , [Evnt_Nm]
      , [Venue]
      , [Strt_Dt]
      , [End_Dt]
      , [Exp_Ctgry]
      , [Exp]
      , [Orig_Qty]
      , [Cntrctd_Qty]
      , [Qutd_Rt]
      , [Cntract_Rt]
      , [Orig_Cst]
      , [Ngttd_Cst]
      , [Svngs]
      , [Val_Add_Csts] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].[STG_Intr_Evnt_Detl_US] AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;



/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Orig_Qty]) <> 1
                            AND [Orig_Qty] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Cntrctd_Qty]) <> 1
                            AND [Cntrctd_Qty] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Qutd_Rt]) <> 1
                            AND [Qutd_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Cntract_Rt]) <> 1
                            AND [Cntract_Rt] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Orig_Cst]) <> 1
                            AND [Orig_Cst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Ngttd_Cst]) <> 1
                            AND [Ngttd_Cst] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Svngs]) <> 1
                            AND [Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   ISNUMERIC([Val_Add_Csts]) <> 1
                            AND [Val_Add_Csts] IS NOT NULL;

									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US] G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[Intr_Evnt_Detl_NA] a
                                    INNER JOIN ( SELECT [Evnt_Id] ,
                                                        [Cst_Cntr] ,
                                                        [Evnt_Nm] ,
                                                        [Venue] ,
                                                        [Strt_Dt] ,
                                                        [End_Dt] ,
                                                        [Exp_Ctgry] ,
                                                        [Exp] ,
                                                        [Orig_Qty] ,
                                                        [Cntrctd_Qty] ,
                                                        [Qutd_Rt] ,
                                                        [Cntract_Rt] ,
                                                        [Orig_Cst] ,
                                                        [Ngttd_Cst] ,
                                                        [Svngs] ,
                                                        [Val_Add_Csts]
                                                 FROM   [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US]
                                               ) b ON a.[Evnt_Id] = b.[Evnt_Id]
                                                      AND a.[Cst_Cntr] = b.[Cst_Cntr]
                                                      AND a.[Evnt_Nm] = b.[Evnt_Nm]
                                                      AND a.[Venue] = b.[Venue]
                                                      AND a.[Strt_Dt] = b.[Strt_Dt]
                                                      AND a.[End_Dt] = b.[End_Dt]
                                                      AND a.[Exp_Ctgry] = b.[Exp_Ctgry]
                                                      AND a.[Exp] = b.[Exp]
                                                      AND a.[Orig_Qty] = CAST(b.[Orig_Qty] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Cntrctd_Qty] = CAST(b.[Cntrctd_Qty] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Qutd_Rt] = CAST(b.[Qutd_Rt] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Cntract_Rt] = CAST(b.[Cntract_Rt] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Orig_Cst] = CAST(b.[Orig_Cst] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Ngttd_Cst] = CAST(b.[Ngttd_Cst] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Svngs] = CAST(b.[Svngs] AS DECIMAL(18,
                                                              2))
                                                      AND a.[Val_Add_Csts] = CAST(b.[Val_Add_Csts] AS DECIMAL(18,
                                                              2));
	  


/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.Intr_Evnt_Detl_NA
                                    ( [Evnt_Id] ,
                                      [Cst_Cntr] ,
                                      [Evnt_Nm] ,
                                      [Venue] ,
                                      [Strt_Dt] ,
                                      [End_Dt] ,
                                      [Exp_Ctgry] ,
                                      [Exp] ,
                                      [Orig_Qty] ,
                                      [Cntrctd_Qty] ,
                                      [Qutd_Rt] ,
                                      [Cntract_Rt] ,
                                      [Orig_Cst] ,
                                      [Ngttd_Cst] ,
                                      [Svngs] ,
                                      [Val_Add_Csts] ,
                                      [DW_Cre_Ts] ,
                                      [DW_Cre_Usr]
  
                                    )
                                    SELECT  [Evnt_Id] ,
                                            [Cst_Cntr] ,
                                            [Evnt_Nm] ,
                                            [Venue] ,
                                            CAST([Strt_Dt] AS DATE) ,
                                            CAST([End_Dt] AS DATE) ,
                                            [Exp_Ctgry] ,
                                            [Exp] ,
                                            CAST([Orig_Qty] AS DECIMAL(18, 2)) ,
                                            CAST([Cntrctd_Qty] AS DECIMAL(18,
                                                              2)) ,
                                            CAST([Qutd_Rt] AS DECIMAL(18, 2)) ,
                                            CAST([Cntract_Rt] AS DECIMAL(18, 2)) ,
                                            CAST([Orig_Cst] AS DECIMAL(18, 2)) ,
                                            CAST([Ngttd_Cst] AS DECIMAL(18, 2)) ,
                                            CAST([Svngs] AS DECIMAL(18, 2)) ,
                                            CAST([Val_Add_Csts] AS DECIMAL(18,
                                                              2)) ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Detl_US];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into INTEVENT_DETAIL Table:0';
                            PRINT @InsCount;

                        END; 



                END; --US 
        END TRY
        BEGIN CATCH
        END CATCH;
    END;








GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Intr_Evnt_Sumry]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_DQ_Load_Intr_Evnt_Sumry]
    @Cntry_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_Load_Intr_Evnt_Sumry
PURPOSE & 
Description :  This script will load data into HOTEL FARE table from stg table.
			   
Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------

DECLARE @RC int
DECLARE @Cntry_flag varchar(5)='US'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_Load_Intr_Evnt_Sumry] 
@Cntry_flag
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO


******************************************************************************/
    BEGIN
        BEGIN TRY
            IF ( @Cntry_flag = 'CA' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Evnt_Id = LTRIM(RTRIM(Evnt_Id)) ,
                            Cst_Cntr = LTRIM(RTRIM(Cst_Cntr)) ,
                            HB_Src = LTRIM(RTRIM(HB_Src)) ,
                            Hotl_Brnd = LTRIM(RTRIM(Hotl_Brnd)) ,
                            Prprty = LTRIM(RTRIM(Prprty)) ,
                            Cty = LTRIM(RTRIM(Cty)) ,
                            St = LTRIM(RTRIM(St)) ,
                            Evnt_Nm = LTRIM(RTRIM(Evnt_Nm)) ,
                            Strt_Dt = LTRIM(RTRIM(Strt_Dt)) ,
                            End_Dt = LTRIM(RTRIM(End_Dt)) ,
                            Rm_Nghts = LTRIM(RTRIM(Rm_Nghts)) ,
                            Rm_Svngs = LTRIM(RTRIM(Rm_Svngs)) ,
                            Mt_Svngs = LTRIM(RTRIM(Mt_Svngs)) ,
                            Othr_Svngs = LTRIM(RTRIM(Othr_Svngs)) ,
                            Orgnl_Csts = LTRIM(RTRIM(Orgnl_Csts)) ,
                            Ngttd_Csts = LTRIM(RTRIM(Ngttd_Csts)) ,
                            Ngttd_Rm_Csts = LTRIM(RTRIM(Ngttd_Rm_Csts)) ,
                            Tot_Svngs = LTRIM(RTRIM(Tot_Svngs)) ,
                            Tot_Val_Add = LTRIM(RTRIM(Tot_Val_Add)) ,
                            Actl_Attndees = LTRIM(RTRIM(Actl_Attndees));

/********************* Checking for $ symbol *************************************/

                    UPDATE  [STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Rm_Nghts = REPLACE(Rm_Nghts, '$', '') ,
                            Rm_Svngs = REPLACE(Rm_Svngs, '$', '') ,
                            Mt_Svngs = REPLACE(Mt_Svngs, '$', '') ,
                            Othr_Svngs = REPLACE(Othr_Svngs, '$', '') ,
                            Orgnl_Csts = REPLACE(Orgnl_Csts, '$', '') ,
                            Ngttd_Csts = REPLACE(Ngttd_Csts, '$', '') ,
                            Ngttd_Rm_Csts = REPLACE(Ngttd_Rm_Csts, '$', '') ,
                            Tot_Svngs = REPLACE(Tot_Svngs, '$', '') ,
                            Tot_Val_Add = REPLACE(Tot_Val_Add, '$', '');


                    UPDATE  [STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Rm_Nghts = REPLACE(REPLACE(Rm_Nghts, '(', ''), ')',
                                               '') ,
                            Rm_Svngs = REPLACE(REPLACE(Rm_Svngs, '(', ''), ')',
                                               '') ,
                            Mt_Svngs = REPLACE(REPLACE(Mt_Svngs, '(', ''), ')',
                                               '') ,
                            Othr_Svngs = REPLACE(REPLACE(Othr_Svngs, '(', ''),
                                                 ')', '') ,
                            Orgnl_Csts = REPLACE(REPLACE(Orgnl_Csts, '(', ''),
                                                 ')', '') ,
                            Ngttd_Csts = REPLACE(REPLACE(Ngttd_Csts, '(', ''),
                                                 ')', '') ,
                            Ngttd_Rm_Csts = REPLACE(REPLACE(Ngttd_Rm_Csts, '(',
                                                            ''), ')', '') ,
                            Tot_Svngs = REPLACE(REPLACE(Tot_Svngs, '(', ''),
                                                ')', '') ,
                            Tot_Val_Add = REPLACE(REPLACE(Tot_Val_Add, '(', ''),
                                                  ')', '');


/**********************************************************/


/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Evnt_Id] ORDER BY [Evnt_Id] ) AS DuplicateRecCount ,
                                            *
                                   FROM     STG.STG_Intr_Evnt_Sumry_CA AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    WHERE   [Evnt_Id] IS NULL
                            OR [Evnt_Id] = '';


/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Rm_Nghts]) <> 1
                            AND [Rm_Nghts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Rm_Svngs]) <> 1
                            AND [Rm_Svngs] IS NOT NULL;



                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Mt_Svngs]) <> 1
                            AND [Mt_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Othr_Svngs]) <> 1
                            AND [Othr_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Orgnl_Csts]) <> 1
                            AND [Orgnl_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Ngttd_Csts]) <> 1
                            AND [Ngttd_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Ngttd_Rm_Csts]) <> 1
                            AND [Ngttd_Rm_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Tot_Svngs]) <> 1
                            AND [Tot_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   ISNUMERIC([Tot_Val_Add]) <> 1
                            AND [Tot_Val_Add] IS NOT NULL;



/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA];
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[KNA_ZBB].[Intr_Evnt_Sumry_NA] a
                                    INNER JOIN ( SELECT [Evnt_Id]
                                                 FROM   [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA]
                                               ) b ON a.[Evnt_Id] = b.[Evnt_Id];



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].[KNA_ZBB].[Intr_Evnt_Sumry_NA]
                                    ( Evnt_Id ,
                                      Cst_Cntr ,
                                      HB_Src ,
                                      Htl_Brnd ,
                                      Prprty ,
                                      Cty ,
                                      St ,
                                      Evnt_Nm ,
                                      Strt_Dt ,
                                      End_Dt ,
                                      Rm_Nights ,
                                      Rm_Svngs ,
                                      Mt_Svngs ,
                                      Othr_Svngs ,
                                      Orgnl_Costs ,
                                      Ngttd_Costs ,
                                      Ngttd_Rm_Costs ,
                                      Tot_Svngs ,
                                      Tot_Val_Add ,
                                      Actl_Attnds ,
                                      DW_Cre_Usr ,
                                      DW_Cre_Ts
                                    )
                                    SELECT  Evnt_Id ,
                                            Cst_Cntr ,
                                            HB_Src ,
                                            Hotl_Brnd ,
                                            Prprty ,
                                            Cty ,
                                            St ,
                                            Evnt_Nm ,
                                            Strt_Dt ,
                                            End_Dt ,
                                            CAST(Rm_Nghts AS DECIMAL(18, 2)) Rm_Nghts ,
                                            CAST(Rm_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Mt_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Othr_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Orgnl_Csts AS DECIMAL(18, 2)) ,
                                            ISNULL(CAST(Ngttd_Csts AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Ngttd_Rm_Csts AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Tot_Svngs AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Tot_Val_Add AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Actl_Attndees AS INT),
                                                   0) ,
                                            USER_NAME() ,
                                            GETDATE()
                                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_CA];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into Intr_Evnt_Sumry_NA Table :';
                            PRINT @InsCount;

                        END; 
                END;-- end of CA

            IF ( @Cntry_flag = 'US' )
                BEGIN -- US 

/********************* REMOVE SPACE ON EACH COLUMN  *********************************/


                    UPDATE  [STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Evnt_Id = LTRIM(RTRIM(Evnt_Id)) ,
                            Cst_Cntr = LTRIM(RTRIM(Cst_Cntr)) ,
                            Hb_Src = LTRIM(RTRIM(Hb_Src)) ,
                            Hotl_Brnd = LTRIM(RTRIM(Hotl_Brnd)) ,
                            Prprty = LTRIM(RTRIM(Prprty)) ,
                            Cty = LTRIM(RTRIM(Cty)) ,
                            St = LTRIM(RTRIM(St)) ,
                            Evnt_Nm = LTRIM(RTRIM(Evnt_Nm)) ,
                            Strt_Dt = LTRIM(RTRIM(Strt_Dt)) ,
                            End_Dt = LTRIM(RTRIM(End_Dt)) ,
                            Rm_Nghts = LTRIM(RTRIM(Rm_Nghts)) ,
                            Rm_Svngs = LTRIM(RTRIM(Rm_Svngs)) ,
                            Mt_Svngs = LTRIM(RTRIM(Mt_Svngs)) ,
                            Othr_Svngs = LTRIM(RTRIM(Othr_Svngs)) ,
                            Orgnl_Csts = LTRIM(RTRIM(Orgnl_Csts)) ,
                            Ngttd_Csts = LTRIM(RTRIM(Ngttd_Csts)) ,
                            Ngttd_Rm_Csts = LTRIM(RTRIM(Ngttd_Rm_Csts)) ,
                            Tot_Svngs = LTRIM(RTRIM(Tot_Svngs)) ,
                            Tot_Val_Add = LTRIM(RTRIM(Tot_Val_Add)) ,
                            Actl_Attndees = LTRIM(RTRIM(Actl_Attndees));

/********************* Checking for $ symbol *************************************/

                    UPDATE  [STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Rm_Nghts = REPLACE(Rm_Nghts, '$', '') ,
                            Rm_Svngs = REPLACE(Rm_Svngs, '$', '') ,
                            Mt_Svngs = REPLACE(Mt_Svngs, '$', '') ,
                            Othr_Svngs = REPLACE(Othr_Svngs, '$', '') ,
                            Orgnl_Csts = REPLACE(Orgnl_Csts, '$', '') ,
                            Ngttd_Csts = REPLACE(Ngttd_Csts, '$', '') ,
                            Ngttd_Rm_Csts = REPLACE(Ngttd_Rm_Csts, '$', '') ,
                            Tot_Svngs = REPLACE(Tot_Svngs, '$', '') ,
                            Tot_Val_Add = REPLACE(Tot_Val_Add, '$', '');

/**********************************************************/


/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY [Evnt_Id] ORDER BY [Evnt_Id] ) AS DuplicateRecCount ,
                                            *
                                   FROM     STG.STG_Intr_Evnt_Sumry_US AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;


/*********************CHECKING FOR NULLABLE VALUES*********************************/


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    WHERE   [Evnt_Id] IS NULL
                            OR [Evnt_Id] = '';


/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Rm_Nghts]) <> 1
                            AND [Rm_Nghts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Rm_Svngs]) <> 1
                            AND [Rm_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Mt_Svngs]) <> 1
                            AND [Mt_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Othr_Svngs]) <> 1
                            AND [Othr_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Orgnl_Csts]) <> 1
                            AND [Orgnl_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Ngttd_Csts]) <> 1
                            AND [Ngttd_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Ngttd_Rm_Csts]) <> 1
                            AND [Ngttd_Rm_Csts] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Tot_Svngs]) <> 1
                            AND [Tot_Svngs] IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   ISNUMERIC([Tot_Val_Add]) <> 1
                            AND [Tot_Val_Add] IS NOT NULL;



/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US] G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].[KNA_ZBB].[Intr_Evnt_Sumry_NA] a
                                    INNER JOIN ( SELECT [Evnt_Id]
                                                 FROM   [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US]
                                               ) b ON a.[Evnt_Id] = b.[Evnt_Id];



/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].[KNA_ZBB].[Intr_Evnt_Sumry_NA]
                                    ( Evnt_Id ,
                                      Cst_Cntr ,
                                      HB_Src ,
                                      Htl_Brnd ,
                                      Prprty ,
                                      Cty ,
                                      St ,
                                      Evnt_Nm ,
                                      Strt_Dt ,
                                      End_Dt ,
                                      Rm_Nights ,
                                      Rm_Svngs ,
                                      Mt_Svngs ,
                                      Othr_Svngs ,
                                      Orgnl_Costs ,
                                      Ngttd_Costs ,
                                      Ngttd_Rm_Costs ,
                                      Tot_Svngs ,
                                      Tot_Val_Add ,
                                      Actl_Attnds ,
                                      DW_Cre_Usr ,
                                      DW_Cre_Ts
                                    )
                                    SELECT  Evnt_Id ,
                                            Cst_Cntr ,
                                            Hb_Src ,
                                            Hotl_Brnd ,
                                            Prprty ,
                                            Cty ,
                                            St ,
                                            Evnt_Nm ,
                                            Strt_Dt ,
                                            End_Dt ,
                                            CAST(Rm_Nghts AS DECIMAL(18, 2)) Rm_Nghts ,
                                            CAST(Rm_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Mt_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Othr_Svngs AS DECIMAL(18, 2)) ,
                                            CAST(Orgnl_Csts AS DECIMAL(18, 2)) ,
                                            ISNULL(CAST(Ngttd_Csts AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Ngttd_Rm_Csts AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Tot_Svngs AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Tot_Val_Add AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST(Actl_Attndees AS INT),
                                                   0) ,
                                            USER_NAME() ,
                                            GETDATE()
                                    FROM    [KNA_FIN].[STG].[STG_Intr_Evnt_Sumry_US];


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into Intr_Evnt_Sumry_NA Table :';
                            PRINT @InsCount;

                        END; 
                END;-- end of US


        END TRY
        BEGIN CATCH
        END CATCH;
    END;



GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_ION_HRCHY]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[USP_DQ_LOAD_ION_HRCHY] @InsCount INT OUTPUT
As
 
BEGIN

	Set Nocount on

-- Quality Check -- 

UPDATE [STG].[STG_ION_HRCHY_ZBB]
   SET [ION_ID] = LTRIM(RTRIM(ION_ID))
      ,[ION_DESC] = LTRIM(RTRIM(ION_DESC))
      ,[L0_Desc] = LTRIM(RTRIM(L0_Desc))
      ,[L1_Desc] = LTRIM(RTRIM(L1_Desc))
      ,[L2_Desc] = LTRIM(RTRIM(L2_Desc))
      ,[L3_Desc] = LTRIM(RTRIM(L3_Desc))
      ,[L4_Desc] = LTRIM(RTRIM(L4_Desc))
      ,[L5_Desc] = LTRIM(RTRIM(L5_Desc))
      ,[L1_Cd] = LTRIM(RTRIM(L1_Cd))
      ,[L2_Cd] = LTRIM(RTRIM(L2_Cd))
      ,[L3_Cd] = LTRIM(RTRIM(L3_Cd))
      ,[L4_Cd] = LTRIM(RTRIM(L4_Cd))
      ,[L5_Cd] = LTRIM(RTRIM(L5_Cd))
      ,[ION_ID_Desc] = LTRIM(RTRIM(ION_ID_Desc))


	  --/*********************CHECKING FOR NULLABLE VALUES*********************************/
		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [ION_ID] IS NULL
		OR [ION_ID] = '';

		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L1_Cd] IS NULL
		OR [L1_Cd] = '';

		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L2_Cd] IS NULL
		OR [L2_Cd] = '';

		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L3_Cd] IS NULL
		OR [L3_Cd] = '';

		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L4_Cd] IS NULL
		OR [L4_Cd] = '';

		UPDATE[STG].[STG_ION_HRCHY_ZBB]
		SET Error_Flag = 'Y'
		WHERE [L5_Cd] IS NULL
		OR [L5_Cd] = '';

			 UPDATE [STG].[STG_ION_HRCHY_ZBB]
		   SET [ION_ID] = REPLICATE('0', 12 - LEN([ION_ID])) + [ION_ID]

			MERGE INTO [KNA_ZBB].[ION_HRCHY_ZBB] AS stm
	USING (
	SELECT [ION_ID] ,[ION_DESC] ,[L0_Desc] ,[L1_Desc] ,[L2_Desc] ,[L3_Desc] ,[L4_Desc] ,[L5_Desc] ,[L1_Cd] ,[L2_Cd] ,[L3_Cd] ,[L4_Cd] ,[L5_Cd] ,[ION_ID_Desc]
  FROM [STG].[STG_ION_HRCHY_ZBB]
		) AS sd
		ON stm.[ION_ID] = sd.[ION_ID]
	WHEN MATCHED
	then UPDATE 
   SET stm.[ION_ID] = sd.ION_ID
      ,stm.[ION_DESC] = sd.ION_DESC
      ,stm.[L0_Desc] = sd.L0_Desc
      ,stm.[L1_Desc] = sd.L1_Desc
      ,stm.[L2_Desc] = sd.L2_Desc
      ,stm.[L3_Desc] = sd.L3_Desc
      ,stm.[L4_Desc] = sd.L4_Desc
      ,stm.[L5_Desc] = sd.L5_Desc
      ,stm.[L1_Cd] = sd.L1_Cd
      ,stm.[L2_Cd] = sd.L2_Cd
      ,stm.[L3_Cd] = sd.L3_Cd
      ,stm.[L4_Cd] = sd.L4_Cd
      ,stm.[L5_Cd] = sd.L5_Cd
      ,stm.[ION_ID_Desc] = sd.ION_ID_Desc
	  	WHEN NOT MATCHED
		THEN
			INSERT ([ION_ID] ,[ION_DESC] ,[L0_Desc] ,[L1_Desc] ,[L2_Desc] ,[L3_Desc] ,[L4_Desc] ,[L5_Desc] ,[L1_Cd] ,[L2_Cd] ,[L3_Cd] ,[L4_Cd] ,[L5_Cd] ,[ION_ID_Desc])		  
		    values (sd.[ION_ID] ,sd.[ION_DESC] ,sd.[L0_Desc] ,sd.[L1_Desc] ,sd.[L2_Desc] ,sd.[L3_Desc] ,sd.[L4_Desc] ,sd.[L5_Desc]
           ,sd.[L1_Cd] ,sd.[L2_Cd] ,sd.[L3_Cd] ,sd.[L4_Cd] ,sd.[L5_Cd] ,sd.[ION_ID_Desc]);
		      

		   	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [ION_HRCHY]  Table :';
	PRINT @InsCount;

END





GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_NBB_Bdg]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[USP_DQ_Load_NBB_Bdg] @InsCount INT OUTPUT
As 

Begin

	Set Nocount on
	
		UPDATE [STG].[STG_Nbb_Bdg]
		SET [Cost_Ctr_Cd] = ltrim(rtrim([Cost_Ctr_Cd])) 
		,[Cost_Curr_Typ] = ltrim(rtrim([Cost_Curr_Typ]))
		,[Acct_Cd] = ltrim(rtrim(Acct_Cd))
		 ,[Pd] = ltrim(rtrim(Pd))
		,[Amt] = ltrim(rtrim(Amt))
		,[Ver] = ltrim(rtrim(Ver))


		UPDATE [STG].[STG_Nbb_Bdg] 	SET [Cost_Ctr_Cd]= 	REPLICATE('0', 10 - LEN([Cost_Ctr_Cd])) + [Cost_Ctr_Cd]

		MERGE INTO [KNA_ZBB].[Nbb_Bdg] AS stm
	USING (
		SELECT Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Pd, Amt, Ver
		FROM [STG].[STG_Nbb_Bdg]
		) AS sd
		ON stm.[Cost_Ctr_Cd] = sd.[Cost_Ctr_Cd]
			AND stm.[Acct_Cd] = sd.[Acct_Cd]
			AND stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
			AND stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
			and stm.[Ver]=sd.ver
	WHEN MATCHED
		THEN
			UPDATE
			SET stm.[Cost_Ctr_Cd] = sd.[Cost_Ctr_Cd]
				,stm.Cost_Curr_Typ = sd.Cost_Curr_Typ
				,stm.[Acct_Cd] = sd.[Acct_Cd]
				,stm.[Yr] = substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,stm.[Pd] = substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,stm.[Amt] = sd.[Amt]
				,stm.[Ver] = sd.[Ver]
	WHEN NOT MATCHED
		THEN
			INSERT (
				Cost_Ctr_Cd, Cost_Curr_Typ, Acct_Cd, Yr, Pd, Amt, Ver, DW_Cre_Ts, DW_Cre_Usr
				)
			VALUES (
				sd.Cost_Ctr_Cd
				,sd.Cost_Curr_Typ
				,sd.[Acct_Cd]
				,substring(sd.[Pd], 1, charindex('-', sd.[pd]) - 1)
				,substring(sd.[Pd], charindex('-', sd.[pd]) + 1, len(sd.[pd]))
				,sd.[Amt]
				,sd.[Ver],
				getdate(),
				User_name()
				);



	SELECT @InsCount = @@ROWCOUNT

	PRINT 'Rows Inserted Into [Nbb_Bdg]  Table :'
	PRINT @InsCount


	Set Nocount off
End





	

GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_New_Spend]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



/****** Object:  StoredProcedure [dbo].[USP_DQ_LOAD_NEWSPEND]    Script Date: 6/19/2016 11:38:00 AM ******/

CREATE  PROCEDURE [dbo].[USP_DQ_Load_New_Spend]
    @Cntry_flag VARCHAR(5) ,
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS 
    BEGIN
        BEGIN TRY
            IF ( @Cntry_flag = 'CA' )
                BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Pd] = LTRIM(RTRIM([Pd])) ,
                            [Yr] = LTRIM(RTRIM([Yr])) ,
                            [Loc_Nm] = LTRIM(RTRIM([Loc_Nm])) ,
                            [Loc_Cd] = LTRIM(RTRIM([Loc_Cd])) ,
                            [Pstn_Titl] = LTRIM(RTRIM([Pstn_Titl])) ,
                            [No_Of_Grds] = LTRIM(RTRIM([No_Of_Grds])) ,
                            [Strght_Tm] = LTRIM(RTRIM([Strght_Tm])) ,
                            [Bllng_Rt_Strght] = LTRIM(RTRIM([Bllng_Rt_Strght])) ,
                            [Prem_Hrs] = LTRIM(RTRIM([Prem_Hrs])) ,
                            [Prem_Bill_Rt] = LTRIM(RTRIM([Prem_Bill_Rt])) ,
                            [Tot_Bill] = LTRIM(RTRIM([Tot_Bill])) ,
                            [Cost_Ctr] = LTRIM(RTRIM([Cost_Ctr])) ,
                            [Gl] = LTRIM(RTRIM([Gl]));

                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Tot_Bill] = '0'
                    WHERE   [Tot_Bill] IS NULL;
/*********************Removing Commas and $ Start *************************************/
	
                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Pd] = REPLACE([Pd], ',', '') ,
                            [Yr] = REPLACE([Yr], ',', '') ,
                            [Loc_Nm] = REPLACE([Loc_Nm], ',', '') ,
                            [Loc_Cd] = REPLACE([Loc_Cd], ',', '') ,
                            [Pstn_Titl] = REPLACE([Pstn_Titl], ',', '') ,
                            [No_Of_Grds] = REPLACE([No_Of_Grds], ',', '') ,
                            [Strght_Tm] = REPLACE([Strght_Tm], ',', '') ,
                            [Bllng_Rt_Strght] = REPLACE([Bllng_Rt_Strght], ',',
                                                        '') ,
                            [Prem_Hrs] = REPLACE([Prem_Hrs], ',', '') ,
                            [Prem_Bill_Rt] = REPLACE([Prem_Bill_Rt], ',', '') ,
                            [Tot_Bill] = REPLACE([Tot_Bill], ',', '') ,
                            [Cost_Ctr] = REPLACE([Cost_Ctr], ',', '') ,
                            [Gl] = REPLACE([Gl], ',', '');
                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Pd] = REPLACE([Pd], '$', '') ,
                            [Yr] = REPLACE([Yr], '$', '') ,
                            [Loc_Nm] = REPLACE([Loc_Nm], '$', '') ,
                            [Loc_Cd] = REPLACE([Loc_Cd], '$', '') ,
                            [Pstn_Titl] = REPLACE([Pstn_Titl], '$', '') ,
                            [No_Of_Grds] = REPLACE([No_Of_Grds], '$', '') ,
                            [Strght_Tm] = REPLACE([Strght_Tm], '$', '') ,
                            [Bllng_Rt_Strght] = REPLACE([Bllng_Rt_Strght], '$',
                                                        '') ,
                            [Prem_Hrs] = REPLACE([Prem_Hrs], '$', '') ,
                            [Prem_Bill_Rt] = REPLACE([Prem_Bill_Rt], '$', '') ,
                            [Tot_Bill] = REPLACE([Tot_Bill], '$', '') ,
                            [Cost_Ctr] = REPLACE([Cost_Ctr], '$', '') ,
                            [Gl] = REPLACE([Gl], '$', '');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Pd] = REPLACE(REPLACE([Pd], '(', '-'), ')', '') ,
                            [Yr] = REPLACE(REPLACE([Yr], '(', '-'), ')', '') ,
                            [Loc_Nm] = REPLACE(REPLACE([Loc_Nm], '(', '-'),
                                               ')', '') ,
                            [Loc_Cd] = REPLACE(REPLACE([Loc_Cd], '(', '-'),
                                               ')', '') ,
                            [Pstn_Titl] = REPLACE(REPLACE([Pstn_Titl], '(',
                                                          '-'), ')', '') ,
                            [No_Of_Grds] = REPLACE(REPLACE([No_Of_Grds], '(',
                                                           '-'), ')', '') ,
                            [Strght_Tm] = REPLACE(REPLACE([Strght_Tm], '(',
                                                          '-'), ')', '') ,
                            [Bllng_Rt_Strght] = REPLACE(REPLACE([Bllng_Rt_Strght],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Prem_Hrs] = REPLACE(REPLACE([Prem_Hrs], '(', '-'),
                                                 ')', '') ,
                            [Prem_Bill_Rt] = REPLACE(REPLACE([Prem_Bill_Rt],
                                                             '(', '-'), ')',
                                                     '') ,
                            [Tot_Bill] = REPLACE(REPLACE([Tot_Bill], '(', '-'),
                                                 ')', '') ,
                            [Cost_Ctr] = REPLACE(REPLACE([Cost_Ctr], '(', '-'),
                                                 ')', '') ,
                            [Gl] = REPLACE(REPLACE([Gl], '(', '-'), ')', '');

                    UPDATE  [STG].STG_New_Spnd_CA
                    SET     [Tot_Bill] = REPLACE([Tot_Bill], '-', '0.00');
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY 
                                                              [Yr], [Loc_Nm],
                                                              [Loc_Cd],
                                                              [Pstn_Titl],
                                                              [No_Of_Grds],
                                                              [Strght_Tm],
                                                              [Bllng_Rt_Strght],
                                                              [Prem_Hrs],
                                                              [Prem_Bill_Rt],
                                                              [Tot_Bill],
                                                              [Cost_Ctr], [Gl] ORDER BY 
       [Yr]
      , [Loc_Nm]
      , [Loc_Cd]
      , [Pstn_Titl]
      , [No_Of_Grds]
      , [Strght_Tm]
      , [Bllng_Rt_Strght]
      , [Prem_Hrs]
      , [Prem_Bill_Rt]
      , [Tot_Bill]
      , [Cost_Ctr]
      , [Gl] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].STG_New_Spnd_CA AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;




/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(No_Of_Grds) <> 1
                            AND No_Of_Grds IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(Strght_Tm) <> 1
                            AND Strght_Tm IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(Bllng_Rt_Strght) <> 1
                            AND Bllng_Rt_Strght IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(Prem_Hrs) <> 1
                            AND Prem_Hrs IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(Prem_Bill_Rt) <> 1
                            AND Prem_Bill_Rt IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_CA
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   ISNUMERIC(Tot_Bill) <> 1
                            AND Tot_Bill IS NOT NULL;


									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA G;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[NEW_spnd_NA] a
                                    INNER JOIN ( SELECT 
                                                        [Yr] ,
                                                        [Loc_Nm] ,
                                                        [Loc_Cd] ,
                                                        [Pstn_Titl] ,
                                                        [No_Of_Grds] ,
                                                        [Strght_Tm] ,
                                                        [Bllng_Rt_Strght] ,
                                                        [Prem_Hrs] ,
                                                        [Prem_Bill_Rt] ,
                                                        [Tot_Bill] ,
                                                        [Cost_Ctr] ,
                                                        [Gl]
                                                 FROM   [KNA_FIN].[STG].STG_New_Spnd_CA
                                               ) b ON  a.[Yr] = b.[Yr]
                                                      AND a.[Loc_Nm] = b.[Loc_Nm]
                                                      AND a.[Loc_Cd] = b.[Loc_Cd]
                                                      AND a.[Pstn_Titl] = b.[Pstn_Titl]
                                                      AND a.[no_of_Grds] = b.[No_Of_Grds]
                                                      AND a.[Strght_Tm] = b.[Strght_Tm]
                                                      AND a.[Bllng_Rt_Strght] = b.[Bllng_Rt_Strght]
                                                      AND a.[Prem_Hrs] = b.[Prem_Hrs]
                                                      AND a.[Prem_Bill_Rt] = b.[Prem_Bill_Rt]
                                                      AND a.[Tot_Bill] = b.[Tot_Bill]
                                                      AND a.[Cost_Ctr] = b.[Cost_Ctr]
                                                      AND a.[GL] = b.[Gl];

/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.[NEW_spnd_NA]
                                    ( [PD] ,
                                      [Yr] ,
                                      [Loc_Nm] ,
                                      [Loc_Cd] ,
                                      [Pstn_Titl] ,
                                      [no_of_Grds] ,
                                      [Strght_Tm] ,
                                      [Bllng_Rt_Strght] ,
                                      [Prem_Hrs] ,
                                      [Prem_Bill_Rt] ,
                                      [Tot_Bill] ,
                                      [Cost_Ctr] ,
                                      [GL] ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr
                                    )
                                    SELECT  [Pd] ,
                                            [Yr] ,
                                            [Loc_Nm] ,
                                            [Loc_Cd] ,
                                            [Pstn_Titl] ,
                                            ISNULL(CAST([No_Of_Grds] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Strght_Tm] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Bllng_Rt_Strght] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Prem_Hrs] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Prem_Bill_Rt] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Tot_Bill] AS DECIMAL(18,
                                                              2)), 0) ,
                                            [Cost_Ctr] ,
                                            [Gl] ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].STG_New_Spnd_CA;


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into [NEW_spnd_NA] Table:0';
                            PRINT @InsCount;

                        END; 



                END; --CA

            IF ( @Cntry_flag = 'US' )
                BEGIN -- US 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Pd] = LTRIM(RTRIM([Pd])) ,
                            [Yr] = LTRIM(RTRIM([Yr])) ,
                            [Loc_Nm] = LTRIM(RTRIM([Loc_Nm])) ,
                            [Loc_Cd] = LTRIM(RTRIM([Loc_Cd])) ,
                            [Pstn_Titl] = LTRIM(RTRIM([Pstn_Titl])) ,
                            [No_Of_Grds] = LTRIM(RTRIM([No_Of_Grds])) ,
                            [Strght_Tm] = LTRIM(RTRIM([Strght_Tm])) ,
                            [Bllng_Rt_Strght] = LTRIM(RTRIM([Bllng_Rt_Strght])) ,
                            [Prem_Hrs] = LTRIM(RTRIM([Prem_Hrs])) ,
                            [Prem_Bill_Rt] = LTRIM(RTRIM([Prem_Bill_Rt])) ,
                            [Tot_Bill] = LTRIM(RTRIM([Tot_Bill])) ,
                            [Cost_Ctr] = LTRIM(RTRIM([Cost_Ctr])) ,
                            [GL] = LTRIM(RTRIM([GL]));

/*********************Removing Commas and $ Start *************************************/
	
                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Pd] = REPLACE([Pd], ',', '') ,
                            [Yr] = REPLACE([Yr], ',', '') ,
                            [Loc_Nm] = REPLACE([Loc_Nm], ',', '') ,
                            [Loc_Cd] = REPLACE([Loc_Cd], ',', '') ,
                            [Pstn_Titl] = REPLACE([Pstn_Titl], ',', '') ,
                            [No_Of_Grds] = REPLACE([No_Of_Grds], ',', '') ,
                            [Strght_Tm] = REPLACE([Strght_Tm], ',', '') ,
                            [Bllng_Rt_Strght] = REPLACE([Bllng_Rt_Strght], ',',
                                                        '') ,
                            [Prem_Hrs] = REPLACE([Prem_Hrs], ',', '') ,
                            [Prem_Bill_Rt] = REPLACE([Prem_Bill_Rt], ',', '') ,
                            [Tot_Bill] = REPLACE([Tot_Bill], ',', '') ,
                            [Cost_Ctr] = REPLACE([Cost_Ctr], ',', '') ,
                            [GL] = REPLACE([GL], ',', '');
                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Tot_Bill] = '0'
                    WHERE   [Tot_Bill] IS NULL;
                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Pd] = REPLACE([Pd], '$', '') ,
                            [Yr] = REPLACE([Yr], '$', '') ,
                            [Loc_Nm] = REPLACE([Loc_Nm], '$', '') ,
                            [Loc_Cd] = REPLACE([Loc_Cd], '$', '') ,
                            [Pstn_Titl] = REPLACE([Pstn_Titl], '$', '') ,
                            [No_Of_Grds] = REPLACE([No_Of_Grds], '$', '') ,
                            [Strght_Tm] = REPLACE([Strght_Tm], '$', '') ,
                            [Bllng_Rt_Strght] = REPLACE([Bllng_Rt_Strght], '$',
                                                        '') ,
                            [Prem_Hrs] = REPLACE([Prem_Hrs], '$', '') ,
                            [Prem_Bill_Rt] = REPLACE([Prem_Bill_Rt], '$', '') ,
                            [Tot_Bill] = REPLACE([Tot_Bill], '$', '') ,
                            [Cost_Ctr] = REPLACE([Cost_Ctr], '$', '') ,
                            [GL] = REPLACE([GL], '$', '');
                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Tot_Bill] = REPLACE([Tot_Bill], '-', '0.00');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                    UPDATE  [STG].STG_New_Spnd_US
                    SET     [Pd] = REPLACE(REPLACE([Pd], '(', '-'), ')', '') ,
                            [Yr] = REPLACE(REPLACE([Yr], '(', '-'), ')', '') ,
                            [Loc_Nm] = REPLACE(REPLACE([Loc_Nm], '(', '-'),
                                               ')', '') ,
                            [Loc_Cd] = REPLACE(REPLACE([Loc_Cd], '(', '-'),
                                               ')', '') ,
                            [Pstn_Titl] = REPLACE(REPLACE([Pstn_Titl], '(',
                                                          '-'), ')', '') ,
                            [No_Of_Grds] = REPLACE(REPLACE([No_Of_Grds], '(',
                                                           '-'), ')', '') ,
                            [Strght_Tm] = REPLACE(REPLACE([Strght_Tm], '(',
                                                          '-'), ')', '') ,
                            [Bllng_Rt_Strght] = REPLACE(REPLACE([Bllng_Rt_Strght],
                                                              '(', '-'), ')',
                                                        '') ,
                            [Prem_Hrs] = REPLACE(REPLACE([Prem_Hrs], '(', '-'),
                                                 ')', '') ,
                            [Prem_Bill_Rt] = REPLACE(REPLACE([Prem_Bill_Rt],
                                                             '(', '-'), ')',
                                                     '') ,
                            [Tot_Bill] = REPLACE(REPLACE([Tot_Bill], '(', '-'),
                                                 ')', '') ,
                            [Cost_Ctr] = REPLACE(REPLACE([Cost_Ctr], '(', '-'),
                                                 ')', '') ,
                            [GL] = REPLACE(REPLACE([GL], '(', '-'), ')', '');

/*********************Removing brackets symbol End *************************************/

/********************* Checking DupliUcates *************************************/
   
;
                    WITH    CheckDuplicates
                              AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY 
                                                              [Yr], [Loc_Nm],
                                                              [Loc_Cd],
                                                              [Pstn_Titl],
                                                              [No_Of_Grds],
                                                              [Strght_Tm],
                                                              [Bllng_Rt_Strght],
                                                              [Prem_Hrs],
                                                              [Prem_Bill_Rt],
                                                              [Tot_Bill],
                                                              [Cost_Ctr], [GL] ORDER BY 
       [Yr]
      , [Loc_Nm]
      , [Loc_Cd]
      , [Pstn_Titl]
      , [No_Of_Grds]
      , [Strght_Tm]
      , [Bllng_Rt_Strght]
      , [Prem_Hrs]
      , [Prem_Bill_Rt]
      , [Tot_Bill]
      , [Cost_Ctr]
      , [GL] ) AS DuplicateRecCount ,
                                            *
                                   FROM     [STG].STG_New_Spnd_US AS t
                                 )
                        UPDATE  CheckDuplicates
                        SET     Err_Flg = 'Y'
                        WHERE   DuplicateRecCount > 1;





/*********************START CHECKING DATA TYPE**************************************/

                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(No_Of_Grds) <> 1
                            AND No_Of_Grds IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(Strght_Tm) <> 1
                            AND Strght_Tm IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(Bllng_Rt_Strght) <> 1
                            AND Bllng_Rt_Strght IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(Prem_Hrs) <> 1
                            AND Prem_Hrs IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(Prem_Bill_Rt) <> 1
                            AND Prem_Bill_Rt IS NOT NULL;


                    UPDATE  [KNA_FIN].[STG].STG_New_Spnd_US
                    SET     Err_Flg = 'Y'
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   ISNUMERIC(Tot_Bill) <> 1
                            AND Tot_Bill IS NOT NULL;


									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                    SELECT  @Totalcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US;
	

                    SELECT  @Warcount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   Wrng_Flg = 'Y';

                    SELECT  @ErrCount = COUNT(1)
                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US
                    WHERE   Err_Flg = 'Y';

	
                    IF ( @ErrCount = 0 )
                        BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                            DELETE  a
                            FROM    [KNA_FIN].KNA_ZBB.[NEW_spnd_NA] a
                                    INNER JOIN ( SELECT 
                                                        [Yr] ,
                                                        [Loc_Nm] ,
                                                        [Loc_Cd] ,
                                                        [Pstn_Titl] ,
                                                        [No_Of_Grds] ,
                                                        [Strght_Tm] ,
                                                        [Bllng_Rt_Strght] ,
                                                        [Prem_Hrs] ,
                                                        [Prem_Bill_Rt] ,
                                                        [Tot_Bill] ,
                                                        [Cost_Ctr] ,
                                                        [GL]
                                                 FROM   [KNA_FIN].[STG].STG_New_Spnd_US
                                               ) b ON  a.[Yr] = b.[Yr]
                                                      AND a.[Loc_Nm] = b.[Loc_Nm]
                                                      AND a.[Loc_Cd] = b.[Loc_Cd]
                                                      AND a.[Pstn_Titl] = b.[Pstn_Titl]
                                                      AND a.[no_of_Grds] = b.[No_Of_Grds]
                                                      AND a.[Strght_Tm] = b.[Strght_Tm]
                                                      AND a.[Bllng_Rt_Strght] = b.[Bllng_Rt_Strght]
                                                      AND a.[Prem_Hrs] = b.[Prem_Hrs]
                                                      AND a.[Prem_Bill_Rt] = b.[Prem_Bill_Rt]
                                                      AND a.[Tot_Bill] = b.[Tot_Bill]
                                                      AND a.[Cost_Ctr] = b.[Cost_Ctr]
                                                      AND a.[GL] = b.[GL];

/*********************Insert rows to Final Tabele ***********************************/


                            INSERT  INTO [KNA_FIN].KNA_ZBB.New_spnd_NA
                                    ( Pd ,
                                      Yr ,
                                      Loc_Nm ,
                                      Loc_Cd ,
                                      Pstn_Titl ,
                                      No_Of_Grds ,
                                      Strght_Tm ,
                                      Bllng_Rt_Strght ,
                                      Prem_Hrs ,
                                      Prem_Bill_Rt ,
                                      Tot_Bill ,
                                      Cost_Ctr ,
                                      Gl ,
                                      DW_Cre_Ts ,
                                      DW_Cre_Usr
                                    )
                                    SELECT  [Pd] ,
                                            [Yr] ,
                                            [Loc_Nm] ,
                                            [Loc_Cd] ,
                                            [Pstn_Titl] ,
                                            ISNULL(CAST([No_Of_Grds] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Strght_Tm] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Bllng_Rt_Strght] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Prem_Hrs] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Prem_Bill_Rt] AS DECIMAL(18,
                                                              2)), 0) ,
                                            ISNULL(CAST([Tot_Bill] AS DECIMAL(18,
                                                              2)), 0) ,
                                            [Cost_Ctr] ,
                                            [GL] ,
                                            GETDATE() ,
                                            USER_NAME()
                                    FROM    [KNA_FIN].[STG].STG_New_Spnd_US;


                            SELECT  @InsCount = @@ROWCOUNT;
                            PRINT 'Rows Inserted Into [NEW_spnd_NA] Table:0';
                            PRINT @InsCount;

                        END; 



                END; --us


        END TRY
        BEGIN CATCH
        END CATCH;
    END;













GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Prntr_Lxk]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[USP_DQ_Load_Prntr_Lxk]
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_LOAD_PRNTR_LXK
PURPOSE & 
Description :  This script will load data into [[PRINTERS_LXK]] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
--DECLARE @Cntry_flag varchar(5)='CA'
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = DBO.USP_DQ_LOAD_PRNTR_LXK 
,@Totalcount OUTPUT
,@Warcount OUTPUT
,@ErrCount OUTPUT
,@InsCount OUTPUT
GO

******************************************************************************/
    BEGIN
        BEGIN TRY

            BEGIN -- CA 
 
/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

                UPDATE  STG.STG_Prntr_Lxk
                SET     [Mstr_Inv] = LTRIM(RTRIM([Mstr_Inv])) ,
                        [Bill_To_Inv] = LTRIM(RTRIM([Bill_To_Inv])) ,
                        [Cust_Inv] = LTRIM(RTRIM([Cust_Inv])) ,
                        [Rpt_Hier_1] = LTRIM(RTRIM([Rpt_Hier_1])) ,
                        [Rpt_Hier_2] = LTRIM(RTRIM([Rpt_Hier_2])) ,
                        [Rpt_Hier_3] = LTRIM(RTRIM([Rpt_Hier_3])) ,
                        [Rpt_Hier_4] = LTRIM(RTRIM([Rpt_Hier_4])) ,
                        [Rpt_Hier_5] = LTRIM(RTRIM([Rpt_Hier_5])) ,
                        [Cost_Ctr] = LTRIM(RTRIM([Cost_Ctr])) ,
                        [Addr_Nm] = LTRIM(RTRIM([Addr_Nm])) ,
                        [Instll_Addr_Line1] = LTRIM(RTRIM([Instll_Addr_Line1])) ,
                        [Instll_Addr_Line2] = LTRIM(RTRIM([Instll_Addr_Line2])) ,
                        [Cty_Sbrb] = LTRIM(RTRIM([Cty_Sbrb])) ,
                        [St_Prvn] = LTRIM(RTRIM([St_Prvn])) ,
                        [Ctry] = LTRIM(RTRIM([Ctry])) ,--
                        [Pstl_Cd] = LTRIM(RTRIM([Pstl_Cd])) ,
                        [Physcl_Loc_1] = LTRIM(RTRIM([Physcl_Loc_1])) ,
                        [Asst_Tag] = LTRIM(RTRIM([Asst_Tag])) ,
                        [Mnfctrr] = LTRIM(RTRIM([Mnfctrr])) ,
                        [Device] = LTRIM(RTRIM([Device])) ,
                        [Serl_No] = LTRIM(RTRIM([Serl_No])) ,
                        [Ip_Addr] = LTRIM(RTRIM([Ip_Addr])) ,
                        [Chrg_Typ] = LTRIM(RTRIM([Chrg_Typ])) ,
                        [Rcrrng_Amt] = LTRIM(RTRIM([Rcrrng_Amt])) ,
                        [Meas] = LTRIM(RTRIM([Meas])) ,
                        [Strt_Mtr_Read] = LTRIM(RTRIM([Strt_Mtr_Read])) ,
                        [End_Mtr_Read] = LTRIM(RTRIM([End_Mtr_Read])) ,
                        [Curr_Perd_Bllbl_Usg] = LTRIM(RTRIM([Curr_Perd_Bllbl_Usg])) ,
                        [Usg_Rt] = LTRIM(RTRIM([Usg_Rt])) ,
                        [Usg_Amnt] = LTRIM(RTRIM([Usg_Amnt])) ,
                        [Tot_Chrg_exclTax] = LTRIM(RTRIM([Tot_Chrg_exclTax])) ,
                        [Sales_Tax] = LTRIM(RTRIM([Sales_Tax])) ,
                        [Tot_Chrg_IncTax] = LTRIM(RTRIM([Tot_Chrg_IncTax])) ,
                        [meas_Cd] = LTRIM(RTRIM([meas_Cd])) ,
                        [Chrg_typ_cd] = LTRIM(RTRIM([Chrg_typ_cd]));
	  
/*********************Removing Commas and $ Start *************************************/
	
                UPDATE  [STG].STG_Prntr_Lxk
                SET     [Rcrrng_Amt] = REPLACE([Rcrrng_Amt], ',', '') ,
                        [Strt_Mtr_Read] = REPLACE([Strt_Mtr_Read], ',', '') ,
                        [End_Mtr_Read] = REPLACE([End_Mtr_Read], ',', '') ,
                        [Curr_Perd_Bllbl_Usg] = REPLACE([Curr_Perd_Bllbl_Usg],
                                                        ',', '') ,
                        [Usg_Rt] = REPLACE([Usg_Rt], ',', '') ,
                        [Usg_Amnt] = REPLACE([Usg_Amnt], ',', '') ,
                        [Tot_Chrg_exclTax] = REPLACE([Tot_Chrg_exclTax], ',',
                                                     '') ,
                        [Sales_Tax] = REPLACE([Sales_Tax], ',', '') ,
                        [Tot_Chrg_IncTax] = REPLACE([Tot_Chrg_IncTax], ',', '') ,
                        [meas_Cd] = REPLACE([meas_Cd], ',', '');
                UPDATE  [STG].STG_Prntr_Lxk
                SET     [Rcrrng_Amt] = REPLACE([Rcrrng_Amt], '$', '') ,
                        [Strt_Mtr_Read] = REPLACE([Strt_Mtr_Read], '$', '') ,
                        [End_Mtr_Read] = REPLACE([End_Mtr_Read], '$', '') ,
                        [Curr_Perd_Bllbl_Usg] = REPLACE([Curr_Perd_Bllbl_Usg],
                                                        '$', '') ,
                        [Usg_Rt] = REPLACE([Usg_Rt], '$', '') ,
                        [Usg_Amnt] = REPLACE([Usg_Amnt], '$', '') ,
                        [Tot_Chrg_exclTax] = REPLACE([Tot_Chrg_exclTax], '$',
                                                     '') ,
                        [Sales_Tax] = REPLACE([Sales_Tax], '$', '') ,
                        [Tot_Chrg_IncTax] = REPLACE([Tot_Chrg_IncTax], '$', '') ,
                        [meas_Cd] = REPLACE([meas_Cd], '$', '');
/*********************Removing Commas End *************************************/

	/*********************Removing brackets symbol Start *************************************/
	
                UPDATE  [STG].STG_Prntr_Lxk
                SET     [Rcrrng_Amt] = REPLACE(REPLACE([Rcrrng_Amt], '(', '-'),
                                               ')', '') ,
                        [Strt_Mtr_Read] = REPLACE(REPLACE([Strt_Mtr_Read], '(',
                                                          '-'), ')', '') ,
                        [End_Mtr_Read] = REPLACE(REPLACE([End_Mtr_Read], '(',
                                                         '-'), ')', '') ,
                        [Curr_Perd_Bllbl_Usg] = REPLACE(REPLACE([Curr_Perd_Bllbl_Usg],
                                                              '(', '-'), ')',
                                                        '') ,
                        [Usg_Rt] = REPLACE(REPLACE([Usg_Rt], '(', '-'), ')',
                                           '') ,
                        [Usg_Amnt] = REPLACE(REPLACE([Usg_Amnt], '(', '-'),
                                             ')', '') ,
                        [Tot_Chrg_exclTax] = REPLACE(REPLACE([Tot_Chrg_exclTax],
                                                             '(', '-'), ')',
                                                     '') ,
                        [Sales_Tax] = REPLACE(REPLACE([Sales_Tax], '(', '-'),
                                              ')', '') ,
                        [Tot_Chrg_IncTax] = REPLACE(REPLACE([Tot_Chrg_IncTax],
                                                            '(', '-'), ')', '');
	 
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
   
;
                WITH    CheckDuplicates
                          AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY Serl_No,
                                                            meas_Cd,
                                                            Chrg_typ_cd ORDER BY Serl_No ) AS DuplicateRecCount ,
                                        *
                               FROM     [STG].STG_Prntr_Lxk AS t
                             )
                    UPDATE  CheckDuplicates
                    SET     Err_Flg = 'Y'
                    WHERE   DuplicateRecCount > 1;



/*********************START CHECKING DATA TYPE**************************************/

                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Rcrrng_Amt]) <> 1
                        AND [Rcrrng_Amt] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Strt_Mtr_Read]) <> 1
                        AND [Strt_Mtr_Read] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([End_Mtr_Read]) <> 1
                        AND [End_Mtr_Read] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Curr_Perd_Bllbl_Usg]) <> 1
                        AND [Curr_Perd_Bllbl_Usg] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Usg_Rt]) <> 1
                        AND [Usg_Rt] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Usg_Amnt]) <> 1
                        AND [Usg_Amnt] IS NOT NULL;


                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Tot_Chrg_exclTax]) <> 1
                        AND [Tot_Chrg_exclTax] IS NOT NULL;

                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Sales_Tax]) <> 1
                        AND [Sales_Tax] IS NOT NULL;

                UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk
                SET     Err_Flg = 'Y'
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   ISNUMERIC([Tot_Chrg_IncTax]) <> 1
                        AND [Tot_Chrg_IncTax] IS NOT NULL;
      
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
                SELECT  @Totalcount = COUNT(1)
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk G;
	

                SELECT  @Warcount = COUNT(1)
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   Wrng_Flg = 'Y';

                SELECT  @ErrCount = COUNT(1)
                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                WHERE   Err_Flg = 'Y';

	
                IF ( @ErrCount = 0 )
                    BEGIN 



/*********************Insert rows to Final Tabele ***********************************/


                        INSERT  INTO [KNA_FIN].KNA_ZBB.Prntr_Lxk
                                ( [Mstr_Inv] ,
                                  [Bill_To_Inv] ,
                                  [Cust_Inv] ,
                                  [Rpt_Hier_1] ,
                                  [Rpt_Hier_2] ,
                                  [Rpt_Hier_3] ,
                                  [Rpt_Hier_4] ,
                                  [Rpt_Hier_5] ,
                                  [Cost_Ctr] ,
                                  [Addr_Nm] ,
                                  [Instl_Addr_Line1] ,
                                  [Instl_Addr_Line2] ,
                                  [Cty_Suburb] ,
                                  [St_Prvn] ,
                                  [Ctry] ,
                                  [Pstl_Cd] ,
                                  [Physcl_Loc_1] ,
                                  [Asset_Tag] ,
                                  [Mnfctrr] ,
                                  [Device] ,
                                  [Serl_No] ,
                                  [IP_Addr] ,
                                  [Crg_Typ] ,
                                  [Rcrrng_Amt] ,
                                  [Meas] ,
                                  [Strt_Mtr_Read] ,
                                  [End_Mtr_Read] ,
                                  [Curr_Perd_Bllbl_Usg] ,
                                  [Usg_Rt] ,
                                  [Usg_Amnt] ,
                                  [Tot_Crg_ExclTax] ,
                                  [Sales_Tax] ,
                                  [Tot_Crg_IncTax] ,
                                  [meas_Cd] ,
                                  [Crg_Typ_Cd] ,
                                  Invc_Dt ,
                                  DW_Cre_Ts ,
                                  DW_Cre_Usr
  
                                )
                                SELECT  [Mstr_Inv] ,
                                        [Bill_To_Inv] ,
                                        [Cust_Inv] ,
                                        [Rpt_Hier_1] ,
                                        [Rpt_Hier_2] ,
                                        [Rpt_Hier_3] ,
                                        [Rpt_Hier_4] ,
                                        [Rpt_Hier_5] ,
                                        [Cost_Ctr] ,
                                        [Addr_Nm] ,
                                        [Instll_Addr_Line1] ,
                                        [Instll_Addr_Line2] ,
                                        [Cty_Sbrb] ,
                                        [St_Prvn] ,
                                        [Ctry] ,
                                        [Pstl_Cd] ,
                                        [Physcl_Loc_1] ,
                                        [Asst_Tag] ,
                                        [Mnfctrr] ,
                                        [Device] ,
                                        [Serl_No] ,
                                        [Ip_Addr] ,
                                        [Chrg_Typ] ,
                                        ISNULL(CAST([Rcrrng_Amt] AS DECIMAL(18,
                                                              2)), 0) ,
                                        [Meas] ,
                                        [Strt_Mtr_Read] ,
                                        [End_Mtr_Read] ,
                                        [Curr_Perd_Bllbl_Usg] ,
                                        ISNULL(CAST([Usg_Rt] AS DECIMAL(18, 2)),
                                               0) ,
                                        ISNULL(CAST([Usg_Amnt] AS DECIMAL(18,
                                                              2)), 0) ,
                                        ISNULL(CAST([Tot_Chrg_exclTax] AS DECIMAL(18,
                                                              2)), 0) ,
                                        ISNULL(CAST([Sales_Tax] AS DECIMAL(18,
                                                              2)), 0) ,
                                        ISNULL(CAST([Tot_Chrg_IncTax] AS DECIMAL(18,
                                                              2)), 0) ,
                                        [meas_Cd] ,
                                        [Chrg_typ_cd] ,
                                        LH.[INVOICE DATE] ,
                                        GETDATE() ,
                                        USER_NAME()
                                FROM    [KNA_FIN].[STG].STG_Prntr_Lxk
                                        CROSS JOIN ( SELECT MAX(CAST(Invc_Dt AS DATE)) AS [INVOICE DATE]
                                                     FROM   KNA_FIN.STG.STG_Prntr_Lxk_Sumry
                                                   ) LH
                                WHERE   ISNULL([Mstr_Inv], 'x') NOT LIKE '%TOTAL%';


                        SELECT  @InsCount = @@ROWCOUNT;
                        PRINT 'Rows Inserted Into [PRINTERS_LXK] Table:0';
                        PRINT @InsCount;

                    END; 



            END; 


        END TRY
        BEGIN CATCH
        END CATCH;
    END;













GO
/****** Object:  StoredProcedure [dbo].[USP_DQ_Load_Prntr_Lxk_Sumry]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- DROP PROCEDURE USP_DQ_LOAD_PRINTERS_LXK_SUMM;
CREATE   PROCEDURE [dbo].[USP_DQ_Load_Prntr_Lxk_Sumry]
    @Totalcount INT OUTPUT ,
    @Warcount INT OUTPUT ,
    @ErrCount INT OUTPUT ,
    @InsCount INT OUTPUT
AS /******************************************************************************
NAME        :  USP_DQ_Load_Prntr_Lxk_Sumry
PURPOSE & 
Description :  This script will load data into [PRINTERS_LXK_SUMM] table from stg table.
			   
			Also this script will do data validations like data type check,removing spaces and special charecters .	
REVISIONS:
Ver          Date             Author                    Change Reason
------    ----------      ---------------         ------------------------------
1.0         04/16/2016       USCLXK36                1. Initial Version



-----------------------------Execution script--------------------------------------
DECLARE @RC int
DECLARE @Totalcount int
DECLARE @Warcount int
DECLARE @ErrCount int
DECLARE @InsCount int

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[USP_DQ_Load_Prntr_Lxk_Sumry] 
   @Totalcount OUTPUT
  ,@Warcount OUTPUT
  ,@ErrCount OUTPUT
  ,@InsCount OUTPUT
GO
******************************************************************************/

    BEGIN

        BEGIN TRY

/********************* REMOVE SPACE ON EACH COLUMN  *********************************/

            UPDATE  KNA_FIN.STG.STG_Prntr_Lxk_Sumry
            SET     Hdr_Detl = LTRIM(RTRIM(Hdr_Detl)) ,
                    Pmt_Mthd = LTRIM(RTRIM(Pmt_Mthd)) ,
                    Pmt_Mthd_Supl = LTRIM(RTRIM(Pmt_Mthd_Supl)) ,
                    Curr = LTRIM(RTRIM(Curr)) ,
                    Pmt_Terms = LTRIM(RTRIM(Pmt_Terms)) ,
                    Postng_Dt = LTRIM(RTRIM(Postng_Dt)) ,
                    Hdr_Cmpny_cd = LTRIM(RTRIM(Hdr_Cmpny_cd)) ,
                    Post_Key21_Credit31_inv = LTRIM(RTRIM(Post_Key21_Credit31_inv)) ,
                    Vend_No = LTRIM(RTRIM(Vend_No)) ,
                    Invc_Dt = LTRIM(RTRIM(Invc_Dt)) ,
                    Invc_No = LTRIM(RTRIM(Invc_No)) ,
                    Doc_Hdr_Txt = LTRIM(RTRIM(Doc_Hdr_Txt)) ,
                    Vend_Txt = LTRIM(RTRIM(Vend_Txt)) ,
                    Invc_tot = LTRIM(RTRIM(Invc_tot)) ,
                    Tx_Amt = LTRIM(RTRIM(Tx_Amt)) ,
                    Cmpny_Cd = LTRIM(RTRIM(Cmpny_Cd)) ,
                    Gl_Accnt = LTRIM(RTRIM(Gl_Accnt)) ,
                    Cst_Cntr = LTRIM(RTRIM(Cst_Cntr)) ,
                    Ion_Ordr = LTRIM(RTRIM(Ion_Ordr)) ,
                    Itm_Amt = LTRIM(RTRIM(Itm_Amt)) ,
                    PK40_Dr_50_Crdt = LTRIM(RTRIM(PK40_Dr_50_Crdt)) ,
                    Tax_Cd = LTRIM(RTRIM(Tax_Cd)) ,
                    Tax_Jrsdctn = LTRIM(RTRIM(Tax_Jrsdctn)) ,
                    Dtl_Txt = LTRIM(RTRIM(Dtl_Txt)) ,
                    Err_Flg = LTRIM(RTRIM(Err_Flg)) ,
                    Wrng_Flg = LTRIM(RTRIM(Wrng_Flg));
	  
/*********************Removing Commas and $ Start *************************************/
	
            UPDATE  KNA_FIN.[STG].STG_Prntr_Lxk_Sumry
            SET     [Invc_tot] = REPLACE([Invc_tot], '$', '') ,
                    [Itm_Amt] = REPLACE([Itm_Amt], '$', '') ,
                    [PK40_Dr_50_Crdt] = REPLACE([PK40_Dr_50_Crdt], '$', '');;


            UPDATE  KNA_FIN.[STG].STG_Prntr_Lxk_Sumry
            SET     [Invc_tot] = REPLACE([Invc_tot], ',', '') ,
                    [Itm_Amt] = REPLACE([Itm_Amt], ',', '') ,
                    [PK40_Dr_50_Crdt] = REPLACE([PK40_Dr_50_Crdt], ',', '');

/*********************Removing Commas End *************************************/

/*********************Removing brackets symbol Start *************************************/
	
            UPDATE  KNA_FIN.[STG].STG_Prntr_Lxk_Sumry
            SET     [Invc_tot] = REPLACE(REPLACE([Invc_tot], '(', '-'), ')',
                                         '') ,
                    [Itm_Amt] = REPLACE(REPLACE([Itm_Amt], '(', '-'), ')', '') ,
                    [PK40_Dr_50_Crdt] = REPLACE(REPLACE([PK40_Dr_50_Crdt], '(',
                                                        '-'), ')', '');
     ;
/*********************Removing brackets symbol End *************************************/

/********************* Checking Duplicates *************************************/
;
            WITH    CheckDuplicates
                      AS ( SELECT   ROW_NUMBER() OVER ( PARTITION BY Invc_No ORDER BY Invc_No ) AS DuplicateRecCount ,
                                    *
                           FROM     KNA_FIN.[STG].STG_Prntr_Lxk_Sumry AS t
                         )
                UPDATE  CheckDuplicates
                SET     Err_Flg = 'Y'
                WHERE   DuplicateRecCount > 1;



/*********************CHECKING FOR NULLABLE VALUES*********************************/
            UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            SET     Err_Flg = 'Y'
            WHERE   [Invc_No] IS NULL
                    OR [Invc_No] = '';


/*********************START CHECKING DATA TYPE**************************************/
            UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            SET     Err_Flg = 'Y'
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            WHERE   ISNUMERIC([Invc_tot]) <> 1
                    AND [Invc_tot] IS NOT NULL;

            UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            SET     Err_Flg = 'Y'
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            WHERE   ISNUMERIC([Itm_Amt]) <> 1
                    AND [Itm_Amt] IS NOT NULL;

            UPDATE  [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            SET     Err_Flg = 'Y'
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            WHERE   ISNUMERIC([PK40_Dr_50_Crdt]) <> 1
                    AND [PK40_Dr_50_Crdt] IS NOT NULL;
      
									
/*********************Checking Total/Waring/Error Row Counts********************/
	
	
            SELECT  @Totalcount = COUNT(1)
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry G;
	

            SELECT  @Warcount = COUNT(1)
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            WHERE   Wrng_Flg = 'Y';

            SELECT  @ErrCount = COUNT(1)
            FROM    [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
            WHERE   Err_Flg = 'Y';

	
            IF ( @ErrCount = 0 )
                BEGIN 
/*********************Updating Rows in Final Tabele ***********************************/
 
                    DELETE  A
                    FROM    [KNA_FIN].KNA_ZBB.[Prntr_Lxk_Sumry] A
                            INNER JOIN ( SELECT [Invc_No]
                                         FROM   [KNA_FIN].[STG].STG_Prntr_Lxk_Sumry
                                       ) b ON A.[Invc_No] = b.[Invc_No];

/*********************Insert rows to Final Tabele ***********************************/


                    INSERT  INTO KNA_FIN.KNA_ZBB.Prntr_Lxk_Sumry
                            ( Hdr_Detl ,
                              Pmt_Mthd ,
                              Pmt_Mthd_Supl ,
                              Curr ,
                              Pmt_Terms ,
                              Posting_Dt ,
                              Hdr_Cmpny_Cd ,
                              Post_Key21_Crdt31_Inv ,
                              Vend_No ,
                              Invc_Dt ,
                              Invc_No ,
                              Doc_Hdr_Txt ,
                              Vend_Txt ,
                              Invc_Tot ,
                              Tx_Amt ,
                              Cmpny_cd ,
                              Gl_Accnt ,
                              Cst_Cntr ,
                              Ion_Ordr ,
                              Itm_Amt ,
                              PK40_Dr_50_Crdt ,
                              Tax_Cd ,
                              Tax_Jrsdctn ,
                              Dtl_Txt ,
                              DW_Cre_Ts ,
                              DW_Cre_Usr
                            )
                            SELECT  [Hdr_Detl] ,
                                    [Pmt_Mthd] ,
                                    [Pmt_Mthd_Supl] ,
                                    [Curr] ,
                                    [Pmt_Terms] ,
                                    [Postng_Dt] ,
                                    [Hdr_Cmpny_cd] ,
                                    CAST(CAST([Post_Key21_Credit31_inv] AS DECIMAL(18,
                                                              2)) AS INT) ,
                                    [Vend_No] ,
                                    [Invc_Dt] ,
                                    [Invc_No] ,
                                    [Doc_Hdr_Txt] ,
                                    [Vend_Txt] ,
                                    ISNULL(CAST([Invc_tot] AS DECIMAL(18, 2)),
                                           0) ,
                                    ISNULL(CAST([Tx_Amt] AS DECIMAL(18, 2)), 0) ,
                                    [Cmpny_Cd] ,
                                    [Gl_Accnt] ,
                                    [Cst_Cntr] ,
                                    [Ion_Ordr] ,
                                    ISNULL(CAST([Itm_Amt] AS DECIMAL(18, 2)),
                                           0) ,
                                    ISNULL(CAST([PK40_Dr_50_Crdt] AS DECIMAL(18,
                                                              2)), 0) ,
                                    [Tax_Cd] ,
                                    [Tax_Jrsdctn] ,
                                    [Dtl_Txt] ,
                                    GETDATE() ,
                                    USER_NAME()
                            FROM    [STG].[STG_Prntr_Lxk_Sumry];


                    SELECT  @InsCount = @@ROWCOUNT;
                    PRINT 'Rows Inserted Into [PRINTERS_LXK] Table:0';
                    PRINT @InsCount;
                END;

        END TRY
        BEGIN CATCH
        END CATCH;

    END;



GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_BSAD_SUBSET_WKLY_SNPSHT]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_LOAD_BSAD_SUBSET_WKLY_SNPSHT]
@FISC_YR SMALLINT
,@FISC_WK SMALLINT

AS 
/**********************************************************************************
   NAME        : USP_LOAD_BSAD_SUBSET_WKLY_SNPSHT
   PURPOSE & 
   Description : This script will load subset of BSAD data into BSAD weekly snapshot
                 table sourcing it from BSAD table.		   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       07/12/2017      USCB1S07                1. Initial Version

**********************************************************************************/
BEGIN
     SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;


BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;


/**************** Deletes the existing data for the same period from the snapshot table ****************/

DELETE FROM KNA_FIN.dbo.BSAD_SUBSET_WKLY_SNPSHT
WHERE FISC_YR = @FISC_YR
	  AND FISC_WK = @FISC_WK;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


/**************** Inserting data into weekly snapshot table ****************/

INSERT INTO KNA_FIN.dbo.BSAD_SUBSET_WKLY_SNPSHT
(
      FISC_YR
     ,FISC_PD
     ,FISC_WK
	 ,BUKRS
     ,BELNR
	 ,BUZEI
     ,ZUONR
     ,KUNNR
     ,AUGBL
     ,BLART
     ,BSCHL
     ,AUGDT
     ,BUDAT
     ,BLDAT
     ,DMBTR
     ,SKNTO
     ,RSTGR
	 ,SHKZG
     ,INVC_CNT
     ,DATA_SET_IND
     ,VERSN
     ,VERSN_YR
     ,VERSN_MN
     ,VERSN_WK
     ,DW_CRE_TS
     ,DW_CRE_USR
)
Select CAL.FISC_YR
      ,CAL.FISC_PD
      ,CAL.FISC_WK
	  ,C.BUKRS
      ,C.BELNR
	  ,C.BUZEI
      ,C.ZUONR
      ,C.KUNNR
      ,C.AUGBL
      ,C.BLART
      ,C.BSCHL
      ,C.AUGDT
      ,C.BUDAT
      ,C.BLDAT
      ,C.DMBTR
      ,C.SKNTO
      ,C.RSTGR
      ,C.SHKZG
      ,'1' AS INVC_CNT
      ,CASE WHEN C.BSCHL = '01' THEN 'RV_01' ELSE 'RV_11'END AS DATA_SET_IND
      ,CAST(GETDATE() AS DATE) AS VERSN
      ,CAL.FISC_YR AS VERSN_YR
      ,CAL.FISC_PD AS VERSN_MN
	  ,CAL.FISC_WK AS VERSN_WK
	  ,GETDATE() AS DW_CRE_TS
      ,'BODS' AS DW_CRE_USR

FROM KNA_ECC.dbo.FEBKO A

INNER JOIN KNA_ECC.dbo.FEBEP B 
ON A.KUKEY = B.KUKEY 

INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL CAL
ON B.BUDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND A.AZDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND CAL.FISC_WK = @FISC_WK
   AND CAL.FISC_YR = @FISC_YR

INNER JOIN KNA_ECC.dbo.BSAD C 
ON C.AUGBL = CASE WHEN B.AKBLN = '' THEN B.NBBLN ELSE B.AKBLN END
   AND C.BUKRS = A.BUKRS
   AND C.AUGDT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT

WHERE A.ANWND = '0003'
      AND A.BUKRS IN ('NUSC', 'NCAN')
	  AND C.BSCHL IN ('01', '11')
	  AND C.BLART = 'RV'

UNION ALL

Select CAL.FISC_YR
      ,CAL.FISC_PD
      ,CAL.FISC_WK
	  ,C.BUKRS
      ,C.BELNR
	  ,C.BUZEI
      ,C.ZUONR
      ,C.KUNNR
      ,C.AUGBL
      ,C.BLART
      ,C.BSCHL
      ,C.AUGDT
      ,C.BUDAT
      ,C.BLDAT
      ,C.DMBTR
      ,C.SKNTO
      ,C.RSTGR
      ,C.SHKZG
      ,'1' AS 'CNT'
      ,'ZA_RC' AS DATA_SET_IND
      ,CAST(GETDATE() AS DATE) AS VERSN
      ,CAL.FISC_YR AS VERSN_YR
      ,CAL.FISC_PD AS VERSN_MN
      ,CAL.FISC_WK AS VERSN_WK
      ,GETDATE() AS DW_CRE_TS
      ,'BODS' AS DW_CRE_USR

FROM KNA_ECC.dbo.FEBKO A

INNER JOIN KNA_ECC.dbo.FEBEP B 
ON A.KUKEY = B.KUKEY 

INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL CAL
ON B.BUDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND A.AZDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND CAL.FISC_WK = @FISC_WK
   AND CAL.FISC_YR = @FISC_YR

 INNER JOIN KNA_ECC.dbo.BSAD C 
ON C.BELNR = CASE WHEN B.AKBLN = '' THEN B.NBBLN ELSE B.AKBLN END
   AND C.BUKRS = A.BUKRS
   AND C.AUGDT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT

WHERE A.ANWND = '0003'
      AND A.BUKRS IN ('NUSC', 'NCAN')
      AND C.RSTGR IN ('000','001','002');


IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_BSIS_SUBSET_WKLY_SNPSHT]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[USP_LOAD_BSIS_SUBSET_WKLY_SNPSHT]
@FISC_YR SMALLINT
,@FISC_WK SMALLINT

AS 
/**********************************************************************************
   NAME        : USP_LOAD_BSIS_SUBSET_WKLY_SNPSHT
   PURPOSE & 
   Description : This script will load subset of BSIS data into BSIS weekly snapshot
                 table sourcing it from BSIS table.		   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       07/12/2017      USCB1S07                1. Initial Version

**********************************************************************************/
BEGIN
     SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;


BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;


/**************** Deletes the existing data for the same period from the snapshot table ****************/

DELETE FROM KNA_FIN.dbo.BSIS_SUBSET_WKLY_SNPSHT
WHERE FISC_YR = @FISC_YR
	  AND FISC_WK = @FISC_WK;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


/**************** Inserting data into weekly snapshot table ****************/

INSERT INTO KNA_FIN.dbo.BSIS_SUBSET_WKLY_SNPSHT
(
     FISC_YR
    ,FISC_PD
    ,FISC_WK
	,BUKRS
    ,BELNR
	,BUZEI
	,ZUONR
    ,HKONT
    ,BSCHL
    ,DMBTR
	,SHKZG
    ,INVC_CNT
    ,DATA_SET_IND
    ,VERSN
    ,VERSN_YR
    ,VERSN_MN
    ,VERSN_WK
    ,DW_CRE_TS
    ,DW_CRE_USR
)
SELECT CAL.FISC_YR
      ,CAL.FISC_PD
      ,CAL.FISC_WK
	  ,C.BUKRS
      ,C.BELNR
	  ,C.BUZEI
      ,C.ZUONR
      ,C.HKONT
      ,C.BSCHL
      ,C.DMBTR
	  ,C.SHKZG
      ,'1' AS 'CNT'
      ,CASE WHEN C.BSCHL = '40' THEN 'UT_40' ELSE 'UT_50' END AS DATA_SET_IND
      ,CAST(GETDATE() AS DATE) AS VERSN
      ,CAL.FISC_YR AS VERSN_YR
      ,CAL.FISC_PD AS VERSN_MN
      ,CAL.FISC_WK AS VERSN_WK
      ,GETDATE() AS DW_CRE_TS
      ,'BODS' AS DW_CRE_USR

FROM KNA_ECC.dbo.FEBKO A

INNER JOIN KNA_ECC.dbo.FEBEP B 
ON A.KUKEY = B.KUKEY 

INNER JOIN KG_VIEWS.KG.UVW_FISC_CAL CAL
ON B.BUDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND A.AZDAT BETWEEN CAL.FISC_WK_STRT_DT AND CAL.FISC_WK_END_DT
   AND CAL.FISC_WK = @FISC_WK
   AND CAL.FISC_YR = @FISC_YR

INNER JOIN KNA_ECC.dbo.BSIS C
ON C.BELNR = CASE WHEN B.AKBLN = '' THEN B.NBBLN ELSE B.AKBLN END
   AND C.BUKRS = A.BUKRS
   AND C.GJAHR = @FISC_YR

WHERE A.ANWND = '0003'
      AND C.BSCHL IN ('40', '50')
	  AND C.HKONT = '4215100060'
	  AND C.BUKRS IN ('NUSC', 'NCAN');
	  

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


COMMIT TRANSACTION;
END




GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_CUST_ACCTG_SNPSHT]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[USP_LOAD_CUST_ACCTG_SNPSHT]
@FISC_YR SMALLINT
,@FISC_PD SMALLINT
,@FISC_WK SMALLINT
,@KEY_DT DATE

AS 
/**********************************************************************************
   NAME        : USP_LOAD_CUST_ACCTG_SNPSHT
   PURPOSE & 
   Description : This script will populate data into customer accounting snapshot
                 table sourcing it from BSID and BSAD.		   
			  
   REVISIONS:
   Ver          Date             Author                    Change Reason
   ------    ----------      ---------------         ------------------------------
   1.0       05/25/2017      USCB1S07                1. Initial Version
   1.1       08/01/2017      USCB1S07                Modified the stored procedure to capture the
                                                     weekly snapshot data
**********************************************************************************/
BEGIN
     SET NOCOUNT ON;

SET IMPLICIT_TRANSACTIONS OFF;


BEGIN TRANSACTION;
SAVE TRANSACTION  START_TRAN;

/**************** Deletes the existing data for the same period from the snapshot table ****************/

DELETE FROM KNA_FIN.STG.CUST_ACCTG_SNPSHT
WHERE VERSN_YR = @FISC_YR
      AND VERSN_MN = @FISC_PD
	  AND VERSN_WK = @FISC_WK;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END

/**************** Inserting closed invoices data into snapshot table ****************/

INSERT INTO KNA_FIN.STG.CUST_ACCTG_SNPSHT
(
BUKRS
,KUNNR
,AUGDT
,AUGBL
,ZUONR
,BELNR
,BUZEI
,MANDT
,GJAHR
,ZTERM
,FISC_YR
,FISC_PD
,FISC_WK
,FISC_PD_YR
,BLART
,BSCHL
,RSTGR
,XBLNR
,SAKNR
,BUDAT
,ZFBDT
,NET_DUE_DT
,PAST_DUE_DY
,DMBTR
,SGTXT
,VERSN
,VERSN_YR
,VERSN_MN
,VERSN_WK
,END_OF_PD_FLG
,DW_CRE_TS
,DW_CRE_USR
)
SELECT A.BUKRS
      ,A.KUNNR
	  ,A.AUGDT
	  ,A.AUGBL
	  ,COALESCE(A.ZUONR,'')
	  ,A.BELNR
	  ,A.BUZEI
	  ,A.MANDT
      ,A.GJAHR
	  ,A.ZTERM
	  ,A.FISC_YR
	  ,A.FISC_PD
	  ,A.FISC_WK
	  ,A.FISC_PD_YR
	  ,A.BLART
	  ,A.BSCHL
	  ,A.RSTGR
	  ,A.XBLNR
	  ,A.SAKNR
	  ,A.BUDAT
	  ,A.ZFBDT
	  ,A.NET_DUE_DT
	  ,DATEDIFF(DD, A.NET_DUE_DT, VERSN)
	  ,A.DMBTR
	  ,A.SGTXT
	  ,A.VERSN
	  ,A.VERSN_YR
	  ,A.VERSN_MN
	  ,A.VERSN_WK
	  ,CASE WHEN CAL.END_DT = A.VERSN THEN 1 ELSE 0 END AS END_OF_PD_FLG
	  ,GETDATE()
	  ,'BODS'
FROM
	(
	SELECT ACCT.BUKRS
		  ,ACCT.KUNNR
		  ,ACCT.AUGDT
		  ,ACCT.AUGBL
		  ,ACCT.ZUONR
		  ,ACCT.BELNR
		  ,ACCT.BUZEI
		  ,ACCT.MANDT
		  ,ACCT.GJAHR
		  ,ACCT.ZTERM
		  ,@FISC_YR AS FISC_YR
		  ,@FISC_PD AS FISC_PD
		  ,@FISC_WK AS FISC_WK
		  ,CAST(@FISC_YR AS VARCHAR(4)) + '0' + CAST(FORMAT(@FISC_PD,'00') AS VARCHAR(2)) AS FISC_PD_YR
		  ,ACCT.BLART
		  ,ACCT.BSCHL
		  ,ACCT.RSTGR
		  ,ACCT.XBLNR
		  ,ACCT.SAKNR
		  ,ACCT.BUDAT
		  ,ACCT.ZFBDT
		  ,CAST(CASE WHEN ACCT.ZBD2T IS NULL OR ACCT.ZBD2T = '0' 
					 THEN DATEADD(DD, ACCT.ZBD1T , DATEADD(DD,2,ACCT.ZFBDT))
				WHEN ACCT.ZBD2T IS NULL AND ACCT.ZBD1T IS NULL 
					 THEN DATEADD(DD,2,ZFBDT)
				ELSE DATEADD(DD, ACCT.ZBD2T , DATEADD(DD,2,ACCT.ZFBDT)) END AS DATE) AS NET_DUE_DT
		  ,CASE WHEN SHKZG = 'S' THEN ACCT.DMBTR ELSE ACCT.DMBTR * -1 END AS DMBTR
		  ,ACCT.SGTXT
		  ,@KEY_DT AS VERSN
	      ,@FISC_YR AS VERSN_YR
	      ,@FISC_PD AS VERSN_MN
		  ,@FISC_WK AS VERSN_WK
	FROM KNA_ECC.dbo.BSAD ACCT
	
	WHERE ACCT.BUKRS IN ('NUSC', 'NCAN')
	  AND ACCT.SAKNR = '1105000000'
	  AND ACCT.BUDAT <= @KEY_DT
	  AND (ACCT.AUGDT = '1900-01-01' OR ACCT.AUGDT > @KEY_DT)
	) A
	LEFT JOIN (SELECT FISC_YR, FISC_PD, MAX(FISC_WK_END_DT) AS END_DT
           FROM KG_VIEWS.KG.UVW_FISC_CAL
           GROUP BY FISC_YR, FISC_PD
		   ) CAL
    ON CAL.END_DT = A.VERSN;


IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


/**************** Inserting open invoices data into snapshot table ****************/

INSERT INTO KNA_FIN.STG.CUST_ACCTG_SNPSHT
(
BUKRS
,KUNNR
,AUGDT
,AUGBL
,ZUONR
,BELNR
,BUZEI
,MANDT
,GJAHR
,ZTERM
,FISC_YR
,FISC_PD
,FISC_WK
,FISC_PD_YR
,BLART
,BSCHL
,RSTGR
,XBLNR
,SAKNR
,BUDAT
,ZFBDT
,NET_DUE_DT
,PAST_DUE_DY
,DMBTR
,SGTXT
,VERSN
,VERSN_YR
,VERSN_MN
,VERSN_WK
,END_OF_PD_FLG
,DW_CRE_TS
,DW_CRE_USR
)
SELECT A.BUKRS
      ,A.KUNNR
	  ,A.AUGDT
	  ,A.AUGBL
	  ,COALESCE(A.ZUONR,'')
	  ,A.BELNR
	  ,A.BUZEI
	  ,A.MANDT
	  ,A.GJAHR
	  ,A.ZTERM
	  ,A.FISC_YR
	  ,A.FISC_PD
	  ,A.FISC_WK
	  ,A.FISC_PD_YR
	  ,A.BLART
	  ,A.BSCHL
	  ,A.RSTGR
	  ,A.XBLNR
	  ,A.SAKNR
	  ,A.BUDAT
	  ,A.ZFBDT
	  ,A.NET_DUE_DT
	  ,DATEDIFF(DD, A.NET_DUE_DT, @KEY_DT) AS PAST_DUE_DY
	  ,A.DMBTR
	  ,A.SGTXT
	  ,A.VERSN
	  ,A.VERSN_YR
	  ,A.VERSN_MN
	  ,A.VERSN_WK
	  ,CASE WHEN CAL.END_DT = A.VERSN THEN 1 ELSE 0 END AS END_OF_PD_FLG
	  ,GETDATE() AS DW_CRE_TS
	  ,'BODS' AS DW_CRE_USR
FROM
	(
	SELECT ACCT.BUKRS
		  ,ACCT.KUNNR
		  ,ACCT.AUGDT
		  ,ACCT.AUGBL
		  ,ACCT.ZUONR
		  ,ACCT.BELNR
		  ,ACCT.BUZEI
		  ,ACCT.MANDT
		  ,ACCT.GJAHR
		  ,ACCT.ZTERM
		  ,@FISC_YR AS FISC_YR
		  ,@FISC_PD AS FISC_PD
		  ,@FISC_WK AS FISC_WK
		  ,CAST(@FISC_YR AS VARCHAR(4)) + '0' + CAST(FORMAT(@FISC_PD,'00') AS VARCHAR(2)) AS FISC_PD_YR
		  ,ACCT.BLART
		  ,ACCT.BSCHL
		  ,ACCT.RSTGR
		  ,ACCT.XBLNR
		  ,ACCT.SAKNR
		  ,ACCT.BUDAT
		  ,ACCT.ZFBDT
		  ,CASE WHEN ACCT.ZBD2T IS NULL OR ACCT.ZBD2T = '0' 
					 THEN DATEADD(DD, ACCT.ZBD1T , DATEADD(DD,2,ACCT.ZFBDT))
				WHEN ACCT.ZBD2T IS NULL AND ACCT.ZBD1T IS NULL 
					 THEN DATEADD(DD,2,ZFBDT)
				ELSE DATEADD(DD, ACCT.ZBD2T , DATEADD(DD,2,ACCT.ZFBDT)) END as NET_DUE_DT
		  ,CASE WHEN SHKZG = 'S' THEN ACCT.DMBTR ELSE ACCT.DMBTR * -1 END AS DMBTR
		  ,ACCT.SGTXT
		  ,@KEY_DT AS VERSN
	      ,@FISC_YR AS VERSN_YR
	      ,@FISC_PD AS VERSN_MN
          ,@FISC_WK AS VERSN_WK
	FROM KNA_ECC.dbo.BSID ACCT
	
	   WHERE ACCT.BUKRS IN ('NUSC', 'NCAN')
	  AND ACCT.SAKNR = '1105000000'
	  AND ACCT.BUDAT <= @KEY_DT
	  AND (ACCT.AUGDT = '1900-01-01' OR ACCT.AUGDT > @KEY_DT)
	) A
	LEFT JOIN (SELECT FISC_YR, FISC_PD, MAX(FISC_WK_END_DT) AS END_DT
           FROM KG_VIEWS.KG.UVW_FISC_CAL
           GROUP BY FISC_YR, FISC_PD
		   ) CAL
    ON CAL.END_DT = A.VERSN;

IF (@@ERROR <> 0)
   BEGIN
        ROLLBACK TRANSACTION START_TRAN;
   END


COMMIT TRANSACTION;
END





GO
/****** Object:  StoredProcedure [dbo].[USP_LOAD_DED_DLY]    Script Date: 11/20/2018 5:44:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE  [dbo].[USP_LOAD_DED_DLY]
	
AS
BEGIN

	SET NOCOUNT ON;

	BEGIN TRANSACTION;
SAVE TRANSACTION  DED_LOAD;

/*******************************************************************************************************************/
/*
/	Project OTC_DED_AUDIT-- an update from deductions to full Customer AR view (BSID/BSAD records) to be used for
/	1. Deductions
/	2. Audit
/	3. Any Order to Cash reporting needing SAP BSID/BSAD records
/
/	Represents the SAP Customer Line Item Accounting level view with FDM_DCOBJ to Dispute Management full attribution
/
/	Summary:
/	This view is intended to collect:
/		1. all open and closed accounting documents
/		2. Applies DM attribution where applicable
/		3. Declares 4-4-5 PD YR details
/
/	Relies on:
/		OTC_BASE
/		OTC_ATR
/		UVW_BSID_BSAD
/		UVW_OTC_USR
/		OTC_PAYER_CHNL
/		UVW_CUST_HIER
/		UVW_FISC_CAL_DY
/																									
/*******************************************************************************************************************/
/	Begin Edits
/	alexander.zbiciak@teklink.com / USCAXZ09
/*******************************************************************************************************************/
/	08-08-2018 :
/					SAKNR--G/L Account Number
/					HKONT--General Ledger Account
/					UMSKS--Special G/L Transaction Type
/					UMSKZ--Special G/L Indicator
/					ZUMSK--Target Special G/L Indicator
/					CPUDT--Day On Which Accounting Document Was Entered
/					AUGBL--Document Number of the Clearing Document
/					BUZID--Identification of the Line Item
/					REBZG--Number of the Invoice the Transaction Belongs to
/					REBZJ--Fiscal Year of the Relevant Invoice (for Credit Memo)
/					REBZT--Follow-On Document Type
/					REBZZ--Line Item in the Relevant Invoice
/					ZBD2P--Cash Discount Percentage 2
/					ZBD1T--Cash Discount Days 1
/					ZBD1P--Cash Discount Percentage 1
/					ZBD2T--Cash Discount Days 2
/					ZBFIX--Fixed Payment Term
/					XRAGL--Indicator: Clearing was Reversed
/					XSTOV--Indicator: Document is flagged for reversal
/
/					KNA1.TELBX			TELBX--Telebox number
/
/					ATR.CUST_ID_AR				AS DSPUT_MGMT_CUST,
/					ATR.DSPUT_MGMT_SALES_REQ,
/					DED_CURR.LVL8_CUST_NBR		AS DSPUT_MGMT_PLN_TO_NBR,
/					DED_CURR.LVL8_CUST_NM		AS DSPUT_MGMT_PLN_TO_NM,
/					DSPUT_MGMT_CUST_DETL,
/
/		Edited calc: CRE_PD_END_DT  uses Posting date instead of baseline date
/
/					CRE_PD
/					CRE_YR
/					BASE_LINE_PD
/					BASE_LINE_YR
/					DOC_PD
/					DOC_YR
/					ENTR_PD
/					ENTR_YR
/
/		Removed Deduction fitler:
/					--Where 
/					--DED_USE_FLAG = 1
/
/	OTC_ATR -- Veiw was updated, names were changed
/
/	08/14/18 calculation udpates
/					NET_DUE_DATE		if ZBD2T is blank, then ZBD1T+ZBFDT else  ZBD2T+ ZBFDT
/					PYMT_DT				ZBFDT + ZBD1T
/
/	08/16/18 edits
/					ARREAR_NET			Days past due --current day - net due date
/					ARREAR_PYMT			Arrear (pmt) = current day - pmnt date
/																	
/	08/16/18 additions
/					OTC_BASE as BASE
/					AMT_ELIG_CSH_DISC_DOC_CURR		SKFBT--Amount Eligible for Cash Discount in Document Currency
/					CSH_DISC_LCL_CURR				SKNTO--Cash Discount Amount in Local Currency
/					RSN_FOR_REVRS_IS_IP_RQST][varchar](1) NULL,
/
/	08/20/18 additions
/	
/					[OPN_FLG_SNPSHT]		
/					[RLAT_FLG_F1_F2]		
/					[RLAT_FLG_ALL]			
/					[YR_END_SNPSHT_FLG]		
/					[POSTNG_KEY_EXCP_FLG]	
/
/ 9-17-18 edits
/					[BRANCH_ACCT_NBR]
/					[TRM_PYMT_KEY]
/					[RSN_FOR_REVRS] [varchar](2) NULL,
/					[DOC_CATG_PYMT_RQST][varchar](2) NULL,
/					[REVRS_DOC_NBR][varchar](10) NULL,
/					[PLN_DT_REVRS_POSTNG][varchar](10) NULL,
/					[REVRS_TYP][varchar](10) NULL,,
/
/
/	09/06/2018: Edits include -- 
/		1.	Prestaging of OTC_ATR and OTC_BASE conversion from using Views to preprossed Stage tables
/		2.	Variable declaration
/		3.	FISC_CAL Join change to optimize run time and remove subqueries 
/
/		1. Prestaged data join change
/				FROM:	[KNA_FIN].[dbo].[UVW_OTC_BASE]
				TO:		[KNA_FIN].[dbo].[OTC_BASE]

/				FROM:	[KNA_FIN].[dbo].[UVW_OTC_ATR]				
/				TO:		[KNA_FIN].[dbo].[OTC_ATR]
/
/		2. Declare Variable to remove multiple getdate calls
/
/					DECLARE @SNPSHT_DT as Date;
/					SET @SNPSHT_DT = cast(getdate() as DATE);											-- DAILY
/					--SET @SNPSHT_DT = (SELECT DATEADD(DAY, DATEDIFF(DAY, 5, getdate()) /7 * 7, 5));	-- WEEKLY
/
/		3. Join change --allows removal of select between subqueries and joins --optimize sql run time 
/			From:	[KG_VIEWS].[KG].[UVW_FISC_CAL]
/
/					LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] UFC  ON(GETDATE() >= UFC.FISC_WK_STRT_DT AND GETDATE() <= UFC.FISC_WK_END_DT) 
/					LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL] UFC1 ON(BASE.BAS_LN_DT >= UFC1.FISC_WK_STRT_DT AND BASE.BAS_LN_DT <= UFC1.FISC_WK_END_DT)
/
/			To:		[KG_VIEWS].[KG].[UVW_FISC_CAL_DY]
/
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC	WITH (NOLOCK)	ON	@SNPSHT_DT				= UFC.FISC_DT
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC1	WITH (NOLOCK)	ON	BASE.POST_DT			= UFC1.FISC_DT 
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC2	WITH (NOLOCK)	ON	BASE.BAS_LN_DT			= UFC2.FISC_DT 
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC3	WITH (NOLOCK)	ON	BASE.DOC_DT				= UFC3.FISC_DT 
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC4	WITH (NOLOCK)	ON	BASE.ENTR_DT			= UFC4.FISC_DT
/			LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY] AS UFC5	WITH (NOLOCK)	ON	BASE.CLR_DT				= UFC5.FISC_DT
/					
/
/	Fields afffected:
/					Field			Previous Logic
/					CLO_PD			(Select FISC_PD from [KG_VIEWS].[KG].[UVW_FISC_CAL] where BASE.CLR_DT BETWEEN FISC_WK_STRT_DT and FISC_WK_END_DT) as CLO_PD,
/					CLO_YR			CASE WHEN (YEAR(BASE.CLR_DT)) = '1900' THEN NULL ELSE YEAR(BASE.CLR_DT) END as CLO_YR,
/					CUR_PD			UFC.FISC_PD	CUR_PD,
/					CUR_YR			UFC.FISC_YR	CUR_YR,
/					CUR_INT			((UFC.FISC_YR*12)+UFC.FISC_PD) CUR_INT,
/					HST_INT			(Select ((FISC_YR*12)+FISC_PD) from [KG_VIEWS].[KG].[UVW_FISC_CAL] Where ( FISC_WK_STRT_DT <= getdate()  AND  FISC_WK_END_DT >= getdate())) as HST_INT,
/					CRE_PD			UFC1.FISC_PD		CRE_PD,
/					CRE_YR			UFC1.FISC_YR	CRE_YR,
/					CRE_PD_END_DT	(Select max(FISC_WK_END_DT) From [KG_VIEWS].[KG].[UVW_FISC_CAL] 
/									Where FISC_PD = (Select FISC_PD from [KG_VIEWS].[KG].[UVW_FISC_CAL] where BASE.BAS_LN_DT BETWEEN FISC_WK_STRT_DT and FISC_WK_END_DT )  and FISC_YR = (Select year(BASE.BAS_LN_DT) )) CRE_PD_END_DT,
/
/					CRE_INT			((UFC1.FISC_YR*12)+UFC1.FISC_PD) CRE_INT,
/					CRE_FLG			CASE WHEN ((UFC.FISC_YR*12)+UFC.FISC_PD) = ((UFC1.FISC_YR*12)+UFC1.FISC_PD)THEN 1 ELSE 0 END CRE_FLG,
/					HST_WK			(Select  FISC_WK from [KG_VIEWS].[KG].[UVW_FISC_CAL] where getdate() between FISC_WK_STRT_DT and FISC_WK_END_DT) HST_WK,
/					HST_PD			(Select  FISC_PD from [KG_VIEWS].[KG].[UVW_FISC_CAL] where getdate() between FISC_WK_STRT_DT and FISC_WK_END_DT) HST_PD,
/					HST_YR			(Select FISC_YR from [KG_VIEWS].[KG].[UVW_FISC_CAL] where getdate() between FISC_WK_STRT_DT and FISC_WK_END_DT) HST_YR,
/					DW_CRE_TS		getdate() as [DW_CRE_TS],
/	
/
/*******************************************************************************************************************/
/	End Edits
/	alexander.zbiciak@teklink.com / USCAXZ09
/*******************************************************************************************************************/
/	Open Issues: 
/
/
/
/
/
/																												   */




DECLARE @SNPSHT_DT as Date;
SET @SNPSHT_DT = cast(getdate() as DATE);											-- DAILY
--SET @SNPSHT_DT = (SELECT DATEADD(DAY, DATEDIFF(DAY, 5, getdate()) /7 * 7, 5));	-- WEEKLY

Declare @CUR_PD as INT;
Set @CUR_PD = 
	(Select min(FISC_PD) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]
	where	@SNPSHT_DT = FISC_DT);

Declare @CUR_YR as INT;
Set @CUR_YR = 
	(Select min(FISC_YR) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]
	where	@SNPSHT_DT = FISC_DT);

Declare @HST_WK as INT;
Set @HST_WK = 
	(Select min(FISC_WK) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]
	where	@SNPSHT_DT = FISC_DT);

Declare @FISC_YR_PD as INT;
Set @FISC_YR_PD = 
	(Select min(FISC_YR_PD) FROM [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]
	where	@SNPSHT_DT = FISC_DT);


TRUNCATE TABLE [KNA_FIN].[STG].[OTC_DED];



Select Distinct(DED.CSE_GUID) as CSE_GUID INTO #DED_RLT_CSE_GUID_DLY
				from KNA_FIN.dbo.OTC_BASE DED 
				--LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFCA		WITH (NOLOCK)	ON	@SNPSHT_DT		= UFCA.FISC_DT
				--LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC5A	WITH (NOLOCK)	ON	DED.CLR_DT_WKLY = UFC5A.FISC_DT

				Where DED.RELATION in ('F2') and
					(

					DED.CLR_DT_DLY = '1900-01-01');

create index IDX_CSE_GUID_DLY on #DED_RLT_CSE_GUID_DLY (CSE_GUID);


INSERT INTO [KNA_FIN].[STG].[OTC_DED]
(
CO_CD
,ACCTG_DOC_NBR
,FY
,LN_ITM_NBR
,CSE_ID
,CSE_GUID
,RELATION
,CLASSIFICATION
,IS_VOIDED
,OTC_DESC
,USR_ID
,USR_NM
,IS_CONFIRMED
,PMT_IN_FLG 
,DOC_TYP
,DOC_TYP_DESC
,DOC_HDR_TXT
,ITM_TXT
,REF_DOC_NBR
,BILL_DOC
,CURR
,ASGN
,POST_KEY
,POST_KEY_NM
,COMB_FLG
,CSE_TITL
,PROCESSOR_ID
,PROCESSOR_NM
,PERS_RESP_ID
,PERS_RESP_NM
,COORDINATOR_ID
,COORDINATOR_NM
,CSE_TYP
,COMB_DISPUTE_CSE_ID
,EXTR_REF
,CHANGE_TIME
,FIN_CUSTDISP_AMT
,FIN_CUSTDISP_CUR
,FIN_NOT_SOLV_AMT
,OTC_CUST_CHNL
,CUST_CHNL_TXT
,BU
,CUST_NBR
,CUST_MAIL_ADDR
,PLANT_NBR
,PLANTO_DESC
,SALE_MGMT_A
,SALE_MGMT_B
,SALE_MGMT_C
,SALE_MGMT_D
,RSN_CD_PAY
,RSN_CD_PAY_TXT
,RSN_ESCAL_CD
,RSN_ESCAL_DESC
,RSN_CSE_CD
,RSN_CSE_DESC
,ROOT_CAUSE_CD
,ROOT_CAUSE_DESC
,CSE_STS
,CSE_STS_DESC
,CSE_CATG
,BAS_LN_DT
,PLN_CLO_DT
,CRE_TM
,CLO_TM
,AGE
,PAY_METH_SUPL
,AMT_LOC_CURR
,CUR_DISPUTED_AMT
,ORIG_AMT
,CLR_MANUALLY
,AMT_PAID
,AMT_CR
,DISPUTE_CURR
,DOC_DT
,POST_DT
,DED_USE_FLAG
,UNDER_TOLERANCE_FLAG
,CLR_DT
,CLR_DT_WKLY
,GL_ACCT_NBR
,GL_ACCT
,GL_TRNS_TYP
,SPCL_GL_IND
,TRGT_SPCL_GL_IND
,ENTR_DT
,DOC_NBR_CLR_DOC
,ID_LINE_ITM
,NBR_INV_BELONGS
,FY_CR_MEMO
,FOLLW_DOC_TYP
,LINE_ITM_NBR_INV
,CSH_DISC_PCT_2
,CSH_DISC_DYS_1
,CSH_DISC_PCT_1
,CSH_DISC_DYS_2
,FIXD_PYMT_TRM
,IND_CLRNG_REVRSD
,IND_DOC_REVRSD
,TELEBOX 
,[BRANCH_ACCT_NBR]
,[TRM_PYMT_KEY]
,DSPUT_MGMT_CUST
,DSPUT_MGMT_SALES_REQ
,DSPUT_MGMT_PLN_TO_NBR
,DSPUT_MGMT_PLN_TO_NM
,DSPUT_MGMT_CUST_DETL
,DSPUT_MGMT_CUST_CHNL
,NET_DUE_DT
,PYMT_DT
,ARREAR_NET
,ARREAR_PYMT
,AMT_ELIG_CSH_DISC_DOC_CURR
,CSH_DISC_LCL_CURR
,RSN_FOR_REVRS_IS_IP_RQST
,RSN_FOR_REVRS
,DOC_CATG_PYMT_RQST
,REVRS_DOC_NBR
,PLN_DT_REVRS_POSTNG
,REVRS_TYP
,OPN_FLG
,CUR_PD
,CUR_YR
,CUR_INT
,CRE_PD
,CRE_YR
,BASE_LINE_PD
,BASE_LINE_YR
,DOC_PD
,DOC_YR
,ENTR_PD
,ENTR_YR
,CLO_PD
,CLO_YR
,CRE_PD_END_DT
,CRE_INT
,CRE_FLG
,INVALID_FLG
,HST_INT
,HST_WK
,HST_PD
,HST_YR
,OPN_FLG_SNPSHT
,RLAT_FLG_F1_F2
,RLAT_FLG_ALL
,YR_END_SNPSHT_FLG
,POSTNG_KEY_EXCP_FLG
,[DW_CRE_TS]
,[DW_CRE_USR]

)
(
SELECT

BASE.CO_CD,				
BASE.ACCTG_DOC_NBR,
BASE.FY,
BASE.LN_ITM_NBR,
BASE.CSE_ID,
BASE.CSE_GUID,
BASE.RELATION,
BASE.CLASSIFICATION,
BASE.IS_VOIDED,
BASE.OTC_DESC,
BASE.USR_ID,
BASE.USR_NM,
BASE.IS_CONFIRMED,
BASE.PMT_IN_FLG, 
BASE.DOC_TYP,
BASE.DOC_TYP_DESC,
BASE.DOC_HDR_TXT,
BASE.ITM_TXT,
BASE.REF_DOC_NBR,
BASE.BILL_DOC,
BASE.CURR,
BASE.ASGN,
BASE.POST_KEY,
BASE.POST_KEY_NM,

ATR.COMB_FLG,								--ATR.DSPUT_MGMT_COMB_FLG			AS COMB_FLG,			 --ATR.COMB_FLG,
ATR.CSE_TITL,
ATR.PROCESSOR_ID,
ATR.PROCESSOR_NM,
ATR.PERS_RESP_ID,
ATR.PERS_RESP_NM,
ATR.COORDINATOR_ID,							--ATR.DSPUT_MGMT_COORDR			AS COORDINATOR_ID,		--ATR.COORDINATOR_ID,
ATR.COORDINATOR_NM,							--ATR.DSPUT_MGMT_COORDR_NM		AS COORDINATOR_NM,		--ATR.COORDINATOR_NM,
ATR.CSE_TYP,
ATR.COMB_DISPUTE_CSE_ID,					--ATR.DSPUT_MGMT_COMB_CSE_ID		AS COMB_DISPUTE_CSE_ID,	--ATR.COMB_DISPUTE_CSE_ID,
ATR.EXTR_REF,
ATR.CHANGE_TIME,							--ATR.CHG_TM						AS CHANGE_TIME,			--ATR.CHANGE_TIME,
ATR.FIN_CUSTDISP_AMT,						--ATR.DSPUT_MGMT_CUST_DSPUT_AMT	AS FIN_CUSTDISP_AMT,	--ATR.FIN_CUSTDISP_AMT,
ATR.FIN_CUSTDISP_CUR,						--ATR.DSPUT_MGMT_CUST_DSPUT_CURR	AS FIN_CUSTDISP_CUR,	--ATR.FIN_CUSTDISP_CUR,
ATR.FIN_NOT_SOLV_AMT,						--ATR.DSPUT_MGMT_WRT_OFF_AUTO		AS FIN_NOT_SOLV_AMT,	--ATR.FIN_NOT_SOLV_AMT,

DC.PT_Channel						AS OTC_CUST_CHNL,
	(CASE 
	WHEN DC.PT_Channel in ('1','4','5','6','9','10','13','14','19','Retail', 'RETAIL') then 'Retail'
	WHEN  DC.PT_Channel in ('2','3','7','8','11','12','15','KSC') then 'KSC'
	ELSE 'Retail' END) 
									AS CUST_CHNL_TXT,
ATR.BU								AS BU,			--ATR.DSPUT_MGMT_BU				AS BU,
BASE.CUST_NBR,
BASE.CUST_MAIL_ADDR,
UCH.LVL8_CUST_NBR					AS PLANT_NBR,
UCH.LVL8_CUST_NM					AS PLANTO_DESC,
UCH.LVL3_CUST_NM					AS SALE_MGMT_A,
UCH.LVL4_CUST_NM					AS SALE_MGMT_B,
UCH.LVL5_CUST_NM					AS SALE_MGMT_C,
UCH.LVL6_CUST_NM					AS SALE_MGMT_D,
BASE.RSN_CD_PAY,
BASE.RSN_CD_PAY_TXT,
ATR.RSN_ESCAL_CD,
ATR.RSN_ESCAL_DESC,
ATR.RSN_CSE_CD,
ATR.RSN_CSE_DESC,								--ATR.DSPUT_MGMT_ROOT_CAUSE_CD	AS ROOT_CAUSE_CD,	--ATR.ROOT_CAUSE_CD,
ATR.ROOT_CAUSE_CD,								--ATR.DSPUT_MGMT_ROOT_CAUSE_DESC	AS ROOT_CAUSE_DESC,	--ATR.ROOT_CAUSE_DESC,
ATR.ROOT_CAUSE_DESC,
ATR.CSE_STS,
ATR.CSE_STS_DESC,
ATR.CSE_CATG,
BASE.BAS_LN_DT,
BASE.PLN_CLO_DT,
ATR.CRE_TM,
ATR.CLO_TM,
BASE.AGE,
BASE.PAY_METH_SUPL,
BASE.AMT_LOC_CURR,

ATR.AMT_CUR_DISPUTED				AS CUR_DISPUTED_AMT,--ATR.DSPUT_MGMT_DSPUT_AMT	AS CUR_DISPUTED_AMT,
ATR.AMT_ORIGINAL					AS ORIG_AMT,		--ATR.DSPUT_MGMT_ORIG_AMT		AS ORIG_AMT,
ATR.AMT_CLR_MNL						AS CLR_MANUALLY,	--ATR.DSPUT_MGMT_AMT_CLR_MNL	AS CLR_MANUALLY,
ATR.AMT_PAID,									--ATR.DSPUT_MGMT_AMT_PAID		AS AMT_PAID,
ATR.AMT_CR,										--ATR.DSPUT_MGMT_AMT_CR		AS AMT_CR,
ATR.AMT_DIPSUTED_CURR				AS DISPUTE_CURR,	--ATR.DSPUT_MGMT_DSPUT_CURR	AS DISPUTE_CURR,

BASE.DOC_DT,
BASE.POST_DT,
BASE.DED_USE_FLAG,
BASE.UNDER_TOLERANCE_FLAG,
--BASE.CLR_DT,
--	(CASE 
--	 WHEN (BASE.CLR_DT > @SNPSHT_DT  or BASE.CLR_DT IS NULL)  THEN '1900-01-01'
--	 WHEN BASE.CLR_DT <= @SNPSHT_DT THEN BASE.CLR_DT 
--	 WHEN BASE.CLR_DT IN (' ') THEN '1900-01-01'  
--	 ELSE BASE.CLR_DT END ) 
	 BASE.CLR_DT								AS CLR_DT,					-- CLR_DT Snap shot date if daily, will be today, which we are showing open as of yesterday, if weekly snapshot open as of Saturday
	 CLR_DT_WKLY,


/* Edits 08-08-18 --Added fields																																		*/
BASE.GL_ACCT_NBR,												--G/L Account Number
BASE.GL_ACCT,													--General Ledger Account
BASE.GL_TRNS_TYP,												--Special G/L Transaction Type
BASE.SPCL_GL_IND,												--Special G/L Indicator
BASE.TRGT_SPCL_GL_IND,											--Target Special G/L Indicator
BASE.ENTR_DT,													--added 07-23-18  Day On Which Accounting Document Was Entered
BASE.DOC_NBR_CLR_DOC,											--added 08-08-18
BASE.ID_LINE_ITM,													--added 08-08-18
BASE.NBR_INV_BELONGS,											--added 08-08-18
BASE.FY_CR_MEMO,													--added 08-08-18
BASE.FOLLW_DOC_TYP,											--added 08-08-18
BASE.LINE_ITM_NBR_INV,											--added 08-08-18
BASE.CSH_DISC_PCT_2,											--added 08-08-18
BASE.CSH_DISC_DYS_1,											--added 08-08-18
BASE.CSH_DISC_PCT_1,											--added 08-08-18
BASE.CSH_DISC_DYS_2,											--added 08-08-18
BASE.FIXD_PYMT_TRM,												--added 08-08-18
BASE.IND_CLRNG_REVRSD,											--added 08-08-18
BASE.IND_DOC_REVRSD,											--added 08-08-18
BASE.TELEBOX, 
BASE.[BRANCH_ACCT_NBR],											--9-17-18
BASE.[TRM_PYMT_KEY],											--9-17-18


ATR.CUST_ID_AR						AS DSPUT_MGMT_CUST,					--ATR.DSPUT_MGMT_CUST				AS CUST_ID_AR,
ATR.DSPUT_MGMT_SALES_REQ,
DED_CURR.LVL8_CUST_NBR				AS DSPUT_MGMT_PLN_TO_NBR,
DED_CURR.LVL8_CUST_NM				AS DSPUT_MGMT_PLN_TO_NM,

/* 08/16/18 edit for DM FIN_KUNNR detail																																*/
		(NAME1+'/'+ORT01+' '+REGIO+' '+PSTLZ)	
									AS DSPUT_MGMT_CUST_DETL,			--AS DSPUT_MGMT_CUST_MAIL_ADDR,

/* 09/29/18 Start edits																																					*/
ATR.[DSPUT_MGMT_CUST_CHNL],
/* 09/29/18 Start edits																																					*/

/* 08/14/18 Start edits																																					*/

BASE.NET_DUE_DT,
BASE.PYMT_DT,

/* 08/14/18 End edits																																					*/

/* 08/16/18 edits																																						*/
BASE.ARREAR_NET,						--Days past due --current day - net due date
BASE.ARREAR_PYMT,						--Arrear (pmt) = current day - pmnt date

BASE.AMT_ELIG_CSH_DISC_DOC_CURR,		--SKFBT--Amount Eligible for Cash Discount in Document Currency
BASE.CSH_DISC_LCL_CURR,					--SKNTO--Cash Discount Amount in Local Currency

BASE.RSN_FOR_REVRS_IS_IP_RQST,
BASE.RSN_FOR_REVRS,
BASE.DOC_CATG_PYMT_RQST,
BASE.REVRS_DOC_NBR,
BASE.PLN_DT_REVRS_POSTNG,
BASE.REVRS_TYP,

/* 08/16/18 end edits																																					*/

/* End Edits 08-08-18																																					*/

	CASE	--WHEN (BASE.CLR_DT IS NULL		OR 
			--	BASE.CLR_DT > @SNPSHT_DT	OR
			WHEN	(BASE.CLR_DT_DLY > @SNPSHT_DT	OR					-- CLR_DT Snap shot date if daily, will be today, which we are showing open as of yesterday, if weekly snapshot open as of Saturday 
				--BASE.CLR_DT = '1900-01-01')
				BASE.CLR_DT_DLY = '1900-01-01')
			THEN 1
			ELSE 0 END 
									AS OPN_FLG,

--UFC.FISC_PD							AS CUR_PD,
--UFC.FISC_YR							AS CUR_YR,
--	((UFC.FISC_YR*12)+
--	UFC.FISC_PD) 					AS CUR_INT,

@CUR_PD								as CUR_PD,
@CUR_YR								as CUR_YR,
((@CUR_YR*12) + @CUR_PD)			as CUR_INT,

/* Begin Edit for CREATED edit from Baseline to Post Date 08_08_18																										*/

UFC1.FISC_PD						AS CRE_PD,
UFC1.FISC_YR						AS CRE_YR,
UFC2.FISC_PD						AS BASE_LINE_PD,
UFC2.FISC_YR						AS BASE_LINE_YR,
UFC3.FISC_PD						AS DOC_PD,
UFC3.FISC_YR						AS DOC_YR,
UFC4.FISC_PD						AS ENTR_PD,
UFC4.FISC_YR						AS ENTR_YR,
UFC5.FISC_PD						AS CLO_PD,
UFC5.FISC_YR						AS CLO_YR,

UFC1.FISC_WK_END_DT					AS CRE_PD_END_DT,
	((UFC1.FISC_YR*12)+
	UFC1.FISC_PD) 					AS CRE_INT,

	--CASE WHEN ((UFC.FISC_YR*12)+UFC.FISC_PD) = ((UFC1.FISC_YR*12)+UFC1.FISC_PD)
	CASE WHEN ((@CUR_YR*12)+@CUR_PD) = ((UFC1.FISC_YR*12)+UFC1.FISC_PD)
	THEN 1 
	ELSE 0 END	
									AS CRE_FLG,

/* End Edit for CREATED edit from Baseline to Post Date 08_08_18																										*/

ATR.INVALID_FLG,					--ATR.DSPUT_MGMT_INVALID_FLG	AS INVALID_FLG,

	--((UFC.FISC_YR*12)+
	--UFC.FISC_PD)					AS HST_INT,

@CUR_YR*12 + @CUR_PD				as HST_INT,	

--UFC.FISC_WK							AS HST_WK,
--UFC.FISC_PD							AS HST_PD,
--UFC.FISC_YR							AS HST_YR,

@HST_WK								AS HST_WK,
@CUR_PD								AS HST_PD,
@CUR_YR								AS HST_YR,

CASE
	WHEN	BASE.CLR_DT_DLY <> '1900-01-01'
			THEN	
				(
				CASE	WHEN @FISC_YR_PD = UFC5.FISC_YR_PD
						THEN 0
						ELSE NULL END 											
				)		
			ELSE 1 END			
	
								AS OPN_FLG_SNPSHT,


	CASE	WHEN ([RELATION] in ('F1','F2') or [RELATION] IS NULL)
			THEN 1
			ELSE 0
			END
									AS RLAT_FLG_F1_F2,

CASE WHEN	(BASE.RELATION in ('F1','F2') or BASE.RELATION IS NULL) and 
			BASE.CLR_DT_DLY = ('1900-01-01')

	THEN 1
	WHEN 
			BASE.RELATION in ('F4') and
			CTE.CSE_GUID IS NOT NULL
	THEN 1
	Else 0
	End
									AS RLAT_FLG_ALL,

CASE WHEN 
		(CASE		WHEN	BASE.CLR_DT_DLY <> '1900-01-01'
					THEN	
						(
						CASE	
								WHEN @FISC_YR_PD = UFC5.FISC_YR_PD
								THEN 0
								ELSE NULL END 											
						)		
					ELSE 1 END			

		) = 1 
	THEN 1 
	ELSE	
		(CASE	WHEN	@FISC_YR_PD = UFC1.FISC_YR_PD or
						@FISC_YR_PD = UFC5.FISC_YR_PD	
			THEN 1 
			ELSE 0 END
		)

	END
									AS YR_END_SNPSHT_FLG,


		CASE 
			WHEN DOC_TYP in ('ZA') AND
			POST_KEY in ('15') AND
			(RSN_CD_PAY	in ('',' ')  or RSN_CD_PAY IS NULL) AND
			RELATION IS NULL
			THEN 0
			ELSE 1 
		END
									AS POSTNG_KEY_EXCP_FLG,
		
cast(getdate() as DATE)				AS [DW_CRE_TS],
'BODS'								AS [DW_CRE_USR]

FROM [KNA_FIN].[dbo].[OTC_BASE]						AS BASE	WITH (NOLOCK)
--LEFT JOIN CTE ON CTE.CSE_GUID = BASE.CSE_GUID
LEFT JOIN #DED_RLT_CSE_GUID_DLY CTE WITH (NOLOCK) ON CTE.CSE_GUID COLLATE DATABASE_DEFAULT = BASE.CSE_GUID COLLATE DATABASE_DEFAULT

LEFT OUTER JOIN [KNA_FIN].[dbo].[OTC_ATR]			AS ATR	WITH (NOLOCK)	ON	BASE.CSE_GUID	COLLATE DATABASE_DEFAULT		= ATR.CSE_GUID COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [KNA_FIN].[STG].[OTC_PAYER_CHNL]		AS DC	WITH (NOLOCK)	ON	BASE.CUST_NBR	COLLATE DATABASE_DEFAULT = DC.Payer_NBR COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN [KNA_FIN].[STG].[OTC_PAYER_CHNL]		AS DC1	WITH (NOLOCK)	ON	ATR.CUST_ID_AR	COLLATE DATABASE_DEFAULT = DC1.Payer_NBR COLLATE DATABASE_DEFAULT
LEFT OUTER JOIN	[KG_VIEWS].[KNA].[UVW_CUST_HIER]		AS UCH	WITH (NOLOCK)	ON	DC.SoldTo_NBR COLLATE DATABASE_DEFAULT = UCH.LVL10_CUST_NBR COLLATE DATABASE_DEFAULT AND 
																					UCH.HIER_TYP			='D' AND 
																					UCH.HIER_TM_PD			='CURRENT' 
LEFT OUTER JOIN	[KG_VIEWS].[KNA].[UVW_CUST_HIER]		AS DED_CURR WITH (NOLOCK)
																				ON	DC1.SoldTo_NBR COLLATE DATABASE_DEFAULT = DED_CURR.LVL10_CUST_NBR COLLATE DATABASE_DEFAULT AND
																					DED_CURR.HIER_TYP		='D' AND 
																					DED_CURR.HIER_TM_PD		='CURRENT' 
																	
/* 08/16/18 edit added in Dispute management customer detail join																										*/
LEFT OUTER JOIN KNA_ECC.dbo.KNA1						AS KNA1	WITH (NOLOCK)	ON	ATR.CUST_ID_AR COLLATE DATABASE_DEFAULT		= KNA1.KUNNR COLLATE DATABASE_DEFAULT


/* Begin Edit for CREATED edit from Baseline 08_08_18																													*/
/*		Added PD and YR joins for Base Line Post Date Document Date																										*/

--LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC	WITH (NOLOCK)	ON	@SNPSHT_DT				= UFC.FISC_DT
LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC1	WITH (NOLOCK)	ON	BASE.POST_DT			= UFC1.FISC_DT 
LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC2	WITH (NOLOCK)	ON	BASE.BAS_LN_DT			= UFC2.FISC_DT 
LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC3	WITH (NOLOCK)	ON	BASE.DOC_DT				= UFC3.FISC_DT 
LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC4	WITH (NOLOCK)	ON	BASE.ENTR_DT			= UFC4.FISC_DT
LEFT OUTER JOIN [KG_VIEWS].[KG].[UVW_FISC_CAL_DY]		AS UFC5	WITH (NOLOCK)	ON	BASE.CLR_DT		= UFC5.FISC_DT


/* End Edit for CREATED edit from Baseline 08_08_18																														*/





--Where 
--DED_USE_FLAG = 1 
--And
--BASE.CLR_DT IS NULL OR BASE.CLR_DT = '1900-01-01' or year(BASE.CLR_DT) >= YEAR(getdate())

)
  


 IF (@@ERROR <> 0)
	begin
        ROLLBACK TRANSACTION DED_LOAD;
	end

COMMIT TRANSACTION;

    
END






GO
