USE [master]
GO
/****** Object:  Database [CBIHighmark_ACA]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE DATABASE [CBIHighmark_ACA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EPA_Interface', FILENAME = N'E:\Database Files\CBIHighmark_ACA.mdf' , SIZE = 4738048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EPA_Interface_log', FILENAME = N'D:\LogFiles\CBIHighmark_ACA.ldf' , SIZE = 2614848KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CBIHighmark_ACA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CBIHighmark_ACA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CBIHighmark_ACA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET ARITHABORT OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CBIHighmark_ACA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CBIHighmark_ACA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CBIHighmark_ACA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CBIHighmark_ACA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET RECOVERY FULL 
GO
ALTER DATABASE [CBIHighmark_ACA] SET  MULTI_USER 
GO
ALTER DATABASE [CBIHighmark_ACA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CBIHighmark_ACA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CBIHighmark_ACA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CBIHighmark_ACA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CBIHighmark_ACA] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CBIHighmark_ACA]
GO
/****** Object:  User [ppi]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [ppi] FOR LOGIN [ppi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\ViswajitR]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\ViswajitR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\VijaykumM1]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\VijaykumM1] FOR LOGIN [OMH\VijaykumM1] WITH DEFAULT_SCHEMA=[OMH\VijaykumM1]
GO
/****** Object:  User [omh\VijayalaH]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\VijayalaH] FOR LOGIN [OMH\VijayalaH] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\VenuM]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\VenuM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\VenkannaM]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\VenkannaM] FOR LOGIN [OMH\VenkannaM] WITH DEFAULT_SCHEMA=[OMH\VenkannaM]
GO
/****** Object:  User [OMH\ThiyagarR]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\ThiyagarR] FOR LOGIN [OMH\ThiyagarR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\subhajakK]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\subhajakK] FOR LOGIN [OMH\SubhajakK] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omh\SmithasA]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\SmithasA] FOR LOGIN [OMH\SmithasA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\SivaprasB]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\SivaprasB] FOR LOGIN [OMH\SivaprasB] WITH DEFAULT_SCHEMA=[OMH\SivaprasB]
GO
/****** Object:  User [OMH\SenthilvK]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\SenthilvK] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\RubeshS]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\RubeshS] FOR LOGIN [OMH\RubeshS] WITH DEFAULT_SCHEMA=[OMH\RubeshS]
GO
/****** Object:  User [OMH\RasmitaS]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\RasmitaS] FOR LOGIN [OMH\RasmitaS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\RAJENDRAP]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\RAJENDRAP] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\PadmalatV]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\PadmalatV] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\PadmajaM]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\PadmajaM] FOR LOGIN [OMH\PadmajaM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\MariaS1]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\MariaS1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\Manoharr]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\Manoharr] FOR LOGIN [OMH\ManoharR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\LavanyaB]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\LavanyaB] FOR LOGIN [OMH\LavanyaB] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\JosephR]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\JosephR] FOR LOGIN [OMH\JosephR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omh\jagadeesj]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\jagadeesj] FOR LOGIN [OMH\JagadeesJ] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\GollapolR]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\GollapolR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\GokulnatJ]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\GokulnatJ] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\Domain Users]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\Domain Users] FOR LOGIN [OMH\Domain Users]
GO
/****** Object:  User [OMH\DebshreeC]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\DebshreeC] FOR LOGIN [OMH\DebshreeC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omh\ChandruvR]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\ChandruvR] FOR LOGIN [OMH\ChandruvR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\ChandraK1]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\ChandraK1] WITH DEFAULT_SCHEMA=[OMH\ChandraK1]
GO
/****** Object:  User [OMH\ArunV1]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [OMH\ArunV1] FOR LOGIN [OMH\ArunV1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omh\amitkumac]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\amitkumac] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omh\ajitk1]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omh\ajitk1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [omgcr]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [omgcr] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS_BLRTESTAPP01SS2008R2_BLRAUTOMATION01]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [LS_BLRTESTAPP01SS2008R2_BLRAUTOMATION01] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [LS_BLRDB03_TO_BLRTESTAPP01SS2008R2]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [LS_BLRDB03_TO_BLRTESTAPP01SS2008R2] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CBIHighA]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [CBIHighA] FOR LOGIN [CBIHighA] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BLRDB05_RS]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE USER [BLRDB05_RS] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [WFI_USER]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE ROLE [WFI_USER]
GO
/****** Object:  DatabaseRole [Developers]    Script Date: 11/6/2017 10:17:51 AM ******/
CREATE ROLE [Developers]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [ppi]
GO
ALTER ROLE [db_owner] ADD MEMBER [ppi]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\ViswajitR]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [omh\VijayalaH]
GO
ALTER ROLE [db_owner] ADD MEMBER [omh\VijayalaH]
GO
ALTER ROLE [Developers] ADD MEMBER [OMH\VenuM]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\ThiyagarR]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\ThiyagarR]
GO
ALTER ROLE [db_datareader] ADD MEMBER [OMH\ThiyagarR]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [OMH\ThiyagarR]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\subhajakK]
GO
ALTER ROLE [db_owner] ADD MEMBER [omh\SmithasA]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\SenthilvK]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\RubeshS]
GO
ALTER ROLE [Developers] ADD MEMBER [OMH\RasmitaS]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\RAJENDRAP]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\PadmalatV]
GO
ALTER ROLE [Developers] ADD MEMBER [OMH\Manoharr]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\LavanyaB]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\JosephR]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\JosephR]
GO
ALTER ROLE [db_datareader] ADD MEMBER [OMH\JosephR]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [OMH\JosephR]
GO
ALTER ROLE [db_owner] ADD MEMBER [omh\jagadeesj]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\GollapolR]
GO
ALTER ROLE [WFI_USER] ADD MEMBER [OMH\GokulnatJ]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\GokulnatJ]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\Domain Users]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\DebshreeC]
GO
ALTER ROLE [db_owner] ADD MEMBER [omh\ChandruvR]
GO
ALTER ROLE [Developers] ADD MEMBER [omh\amitkumac]
GO
ALTER ROLE [Developers] ADD MEMBER [omh\ajitk1]
GO
ALTER ROLE [db_owner] ADD MEMBER [omgcr]
GO
ALTER ROLE [db_owner] ADD MEMBER [LS_BLRTESTAPP01SS2008R2_BLRAUTOMATION01]
GO
ALTER ROLE [db_datareader] ADD MEMBER [LS_BLRDB03_TO_BLRTESTAPP01SS2008R2]
GO
ALTER ROLE [db_owner] ADD MEMBER [CBIHighA]
GO
ALTER ROLE [db_owner] ADD MEMBER [BLRDB05_RS]
GO
/****** Object:  Schema [OMH\ChandraK1]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE SCHEMA [OMH\ChandraK1]
GO
/****** Object:  Schema [OMH\RubeshS]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE SCHEMA [OMH\RubeshS]
GO
/****** Object:  Schema [OMH\SivaprasB]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE SCHEMA [OMH\SivaprasB]
GO
/****** Object:  Schema [OMH\VenkannaM]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE SCHEMA [OMH\VenkannaM]
GO
/****** Object:  Schema [OMH\VijaykumM1]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE SCHEMA [OMH\VijaykumM1]
GO
/****** Object:  UserDefinedTableType [dbo].[Coder_Limited_Records]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE TYPE [dbo].[Coder_Limited_Records] AS TABLE(
	[TRANS_DETAIL_ID] [int] NULL,
	[TRANS_ID] [int] NULL,
	[cpt_order] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[IS_REOPENED] [int] NULL,
	[COMMENTS] [varchar](250) NULL,
	[CODING_STATUS] [varchar](250) NULL,
	[KEYING_COMMENTS] [varchar](250) NULL,
	[ICD1] [varchar](250) NULL,
	[ICD2] [varchar](250) NULL,
	[ICD3] [varchar](250) NULL,
	[ICD4] [varchar](250) NULL,
	[ICD5] [varchar](250) NULL,
	[ICD6] [varchar](250) NULL,
	[ICD7] [varchar](250) NULL,
	[ICD8] [varchar](250) NULL,
	[NPPA] [varchar](250) NULL,
	[SCRIBE] [varchar](250) NULL,
	[RESIDENT] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ErrorCorrectedByQC]    Script Date: 11/6/2017 10:17:52 AM ******/
CREATE TYPE [dbo].[ErrorCorrectedByQC] AS TABLE(
	[TRANS_ID] [int] NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[QC_COMMENTS] [varchar](100) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](100) NULL,
	[SEND_TO_CODER] [varchar](100) NULL,
	[CODED_DATE] [varchar](100) NULL,
	[CPT_ORDER] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ErrorDataForQCLogReport]    Script Date: 11/6/2017 10:17:53 AM ******/
CREATE TYPE [dbo].[ErrorDataForQCLogReport] AS TABLE(
	[QC_DATE] [varchar](250) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [varchar](100) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[QC_COMMENTS] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ErrorDataForQCLogReport_peri]    Script Date: 11/6/2017 10:17:53 AM ******/
CREATE TYPE [dbo].[ErrorDataForQCLogReport_peri] AS TABLE(
	[Sr_no] [int] NULL,
	[QC_DATE] [varchar](250) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [varchar](100) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[QC_COMMENTS] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ErrorReportByCoderAndQC]    Script Date: 11/6/2017 10:17:53 AM ******/
CREATE TYPE [dbo].[ErrorReportByCoderAndQC] AS TABLE(
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[QC_COMMENTS] [varchar](100) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KEYER_QC_TRANS_WITH_MULTIPLE_SELECTION]    Script Date: 11/6/2017 10:17:53 AM ******/
CREATE TYPE [dbo].[KEYER_QC_TRANS_WITH_MULTIPLE_SELECTION] AS TABLE(
	[batch_id] [int] NULL,
	[project_id] [int] NULL,
	[Account_no] [varchar](max) NULL,
	[Trans_id] [int] NULL,
	[Responsibility] [varchar](max) NULL,
	[Charge_status] [varchar](max) NULL,
	[QC_status] [varchar](max) NULL,
	[comments] [varchar](max) NULL,
	[Error_Category] [varchar](max) NULL,
	[Sub_Category] [varchar](max) NULL,
	[Error_Comments] [varchar](max) NULL,
	[Error_Count] [int] NULL,
	[Err_Count_List] [varchar](max) NULL,
	[Impact] [varchar](50) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[keyer_report]    Script Date: 11/6/2017 10:17:53 AM ******/
CREATE TYPE [dbo].[keyer_report] AS TABLE(
	[TRANS_DETAIL_ID] [int] NULL,
	[ACCOUNT_NO] [varchar](100) NULL,
	[BATCH_ID] [varchar](100) NULL,
	[PROJECTID] [int] NULL,
	[TRANS_ID] [int] NULL,
	[BATCH_NAME] [varchar](100) NULL,
	[ALLOTTED_TO] [varchar](100) NULL,
	[FACILITY] [varchar](100) NULL,
	[DOS] [datetime] NULL,
	[PATIENT_NAME] [varchar](100) NULL,
	[AGE] [varchar](100) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[EDMD] [varchar](100) NULL,
	[ADMITTING_PHY] [varchar](100) NULL,
	[ATTENDING_PHY] [varchar](100) NULL,
	[INSURANCE] [varchar](100) NULL,
	[PROVIDER_MD] [varchar](100) NULL,
	[ASSISTANT_PROVIDER] [varchar](100) NULL,
	[PATIENT_STATUS] [varchar](100) NULL,
	[DOI] [varchar](100) NULL,
	[TOI] [varchar](100) NULL,
	[TYPE_OF_ACCIDENT] [varchar](100) NULL,
	[SHARD_VISIT] [varchar](100) NULL,
	[CPT] [varchar](100) NULL,
	[ICD] [varchar](100) NULL,
	[ICDlIST] [varchar](100) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[KEYER_COMMENTS] [varchar](500) NULL,
	[QC_Comments] [varchar](500) NULL,
	[DOWNLOADING_COMMENTS] [varchar](500) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[DOS_CHANGED] [varchar](500) NULL,
	[CODED_DATE] [varchar](500) NULL,
	[Pending_Update_From] [varchar](500) NULL,
	[IS_REOPEN] [varchar](500) NULL,
	[CPT_ORDER] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Keyer_Tran_Insert]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[Keyer_Tran_Insert] AS TABLE(
	[PROJECT_ID] [int] NOT NULL,
	[BATCH_ID] [int] NOT NULL,
	[TRANS_ID] [int] NULL,
	[INSURANCE] [varchar](450) NULL,
	[ADMITTING_PHY] [varchar](450) NULL,
	[ATTENDING_PHY] [varchar](450) NULL,
	[EDMD] [varchar](350) NULL,
	[DOI] [datetime] NULL,
	[TOI] [varchar](300) NULL,
	[CHARTNO] [int] NULL,
	[PAGENO] [int] NULL,
	[CHARGE_STATUS] [varchar](250) NULL,
	[RESPONSIBILITY] [varchar](250) NULL,
	[KEYER_COMMENTS] [varchar](max) NULL,
	[KEYER_DATE] [datetime] NULL,
	[KEYED_BY] [varchar](250) NULL,
	[KEYING_STATUS] [varchar](350) NULL,
	[UPDATED_BY] [varchar](350) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[QC_DATE] [datetime] NULL,
	[QC_BY] [varchar](250) NULL,
	[QC_STATUS] [varchar](250) NULL,
	[KEYING_ERROR_CATEGORY] [varchar](250) NULL,
	[KEYING_ERROR_SUBCATEGORY] [varchar](250) NULL,
	[KEYING_ERROR_COMMENTS] [varchar](max) NULL,
	[SEND_TO_KEYER] [varchar](50) NULL,
	[IS_ACKNOWLEDGE] [varchar](250) NULL,
	[ACHNOWLEDGE_COMMENTS] [varchar](max) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[PATIENT_STATUS] [varchar](50) NULL,
	[TYPE_OF_ACCIDENT] [varchar](100) NULL,
	[SHARD_VISIT] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](50) NULL,
	[EPA_RESPONSE] [varchar](max) NULL,
	[NOTES] [varchar](max) NULL,
	[AR_STATUS] [varchar](200) NULL,
	[CODING_COMMENTS] [varchar](max) NULL,
	[PATIENT_CALLING_COMMENTS] [varchar](max) NULL,
	[CURRENT_AMD_INSURANCE] [varchar](400) NULL,
	[CURRENT_AMD_ADDRESS] [varchar](max) NULL,
	[CHARTFILE_INSURANCE] [varchar](400) NULL,
	[CHARTFILE_INSURANCE_ADDRESS] [varchar](max) NULL,
	[CLIENT_COMMENTS] [varchar](max) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[ERROR_COUNT] [int] NULL,
	[ERROR_CORRECTION] [varchar](20) NULL,
	[ACKNOWLEDGE_BY] [varchar](200) NULL,
	[CLIENT_UPDATEDATE] [datetime] NULL,
	[AR_Updated_By] [varchar](350) NULL,
	[AR_Updated_Date] [datetime] NULL,
	[PC_Updated_By] [varchar](450) NULL,
	[PC_Updated_Date] [datetime] NULL,
	[Pending_Update_From] [varchar](450) NULL,
	[W/O Attestation] [varchar](max) NULL,
	[ACK_DATE] [datetime] NULL,
	[IS_SKIPPED] [varchar](10) NULL,
	[IS_REOPEN] [varchar](50) NULL,
	[ERROR_LIST] [varchar](450) NULL,
	[AR_Assign_Status] [varchar](350) NULL,
	[AR_Assign_To] [varchar](350) NULL,
	[AR_Assign_By] [varchar](350) NULL,
	[AR_Assign_Date] [datetime] NULL,
	[AR_Completed_Date] [datetime] NULL,
	[PC_Assign_Status] [varchar](350) NULL,
	[PC_Assign_To] [varchar](350) NULL,
	[PC_Assign_By] [varchar](350) NULL,
	[PC_Assign_Date] [datetime] NULL,
	[PC_Completed_Date] [datetime] NULL,
	[QC_Comments] [varchar](max) NULL,
	[AR_QC_Assigned_Status] [varchar](50) NULL,
	[AR_QC_Assigned_To] [varchar](50) NULL,
	[AR_QC_Assigned_By] [varchar](50) NULL,
	[AR_QC_Assigned_Date] [datetime] NULL,
	[AR_QC_Completed_Date] [datetime] NULL,
	[AR_Error_Category] [varchar](500) NULL,
	[AR_Sub_Error_Category] [varchar](500) NULL,
	[AR_Error_Count] [int] NULL,
	[AR_Error_Comments] [varchar](5000) NULL,
	[AR_Is_Skipped] [int] NULL,
	[AR_Error_Correction] [varchar](5) NULL,
	[AR_Acknoledge_BY] [varchar](50) NULL,
	[AR_Acknoledge_Date] [datetime] NULL,
	[AR_Acknoledge_Comments] [varchar](500) NULL,
	[AR_Error_List] [varchar](500) NULL,
	[AR_QC_Comments] [varchar](5000) NULL,
	[AR_IS_Acknowledge] [varchar](250) NULL,
	[DOS] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KeyerDetailed_Info]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[KeyerDetailed_Info] AS TABLE(
	[keyerName] [varchar](250) NULL,
	[alloted_by] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KeyerTranDetail_Insert]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[KeyerTranDetail_Insert] AS TABLE(
	[PROJECT_ID] [int] NULL,
	[BATCH_ID] [int] NULL,
	[TRANS_ID] [int] NULL,
	[DETAIL_ID] [int] NULL,
	[CPT] [varchar](50) NULL,
	[ICD] [varchar](50) NULL,
	[MODIFIER] [varchar](50) NULL,
	[UNITS] [varchar](50) NULL,
	[COMMENTS] [varchar](max) NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[QC_BY] [varchar](50) NULL,
	[QC_DATE] [datetime] NULL,
	[QC_STATUS] [varchar](100) NULL,
	[ERROR_CATEGORY] [varchar](100) NULL,
	[ERROR_SUBCATEGORY] [varchar](100) NULL,
	[QC_COMMENTS] [varchar](500) NULL,
	[IS_ACKNOWLEDGE] [varchar](10) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[ICD_RESULT] [varchar](500) NULL,
	[DOWNLOADING_COMMENTS] [varchar](500) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](100) NULL,
	[CPT_ORDER] [varchar](100) NULL,
	[PROVIDER_MD] [varchar](100) NULL,
	[ASSISTANT_PROVIDER] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KeyerTrans_MultipleSelection]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[KeyerTrans_MultipleSelection] AS TABLE(
	[Account_no] [varchar](500) NULL,
	[Batch_Id] [int] NULL,
	[Proj_Id] [int] NULL,
	[Charge_Status] [varchar](250) NULL,
	[Responsibility] [varchar](250) NULL,
	[KeyerComments] [varchar](max) NULL,
	[AR_Assign_Status] [varchar](350) NULL,
	[PC_Assign_Status] [varchar](350) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KeyerUpdate]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[KeyerUpdate] AS TABLE(
	[batchid] [int] NULL,
	[proId] [int] NULL,
	[accID] [varchar](max) NULL,
	[Keyer_name] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[KT_Test1]    Script Date: 11/6/2017 10:17:54 AM ******/
CREATE TYPE [dbo].[KT_Test1] AS TABLE(
	[ACCOUNT_NO] [varchar](450) NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_ID] [int] NOT NULL,
	[TRANS_ID] [int] NULL,
	[INSURANCE] [varchar](450) NULL,
	[ADMITTING_PHY] [varchar](450) NULL,
	[ATTENDING_PHY] [varchar](450) NULL,
	[EDMD] [varchar](350) NULL,
	[DOI] [datetime] NULL,
	[TOI] [varchar](300) NULL,
	[CHARTNO] [int] NULL,
	[PAGENO] [int] NULL,
	[CHARGE_STATUS] [varchar](250) NULL,
	[RESPONSIBILITY] [varchar](250) NULL,
	[KEYER_COMMENTS] [varchar](max) NULL,
	[KEYER_DATE] [datetime] NULL,
	[KEYED_BY] [varchar](250) NULL,
	[KEYING_STATUS] [varchar](350) NULL,
	[UPDATED_BY] [varchar](350) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[QC_DATE] [datetime] NULL,
	[QC_BY] [varchar](250) NULL,
	[QC_STATUS] [varchar](250) NULL,
	[KEYING_ERROR_CATEGORY] [varchar](250) NULL,
	[KEYING_ERROR_SUBCATEGORY] [varchar](250) NULL,
	[KEYING_ERROR_COMMENTS] [varchar](max) NULL,
	[SEND_TO_KEYER] [varchar](50) NULL,
	[IS_ACKNOWLEDGE] [varchar](250) NULL,
	[ACHNOWLEDGE_COMMENTS] [varchar](max) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[PATIENT_STATUS] [varchar](50) NULL,
	[TYPE_OF_ACCIDENT] [varchar](100) NULL,
	[SHARD_VISIT] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](50) NULL,
	[EPA_RESPONSE] [varchar](max) NULL,
	[NOTES] [varchar](max) NULL,
	[AR_STATUS] [varchar](200) NULL,
	[CODING_COMMENTS] [varchar](max) NULL,
	[PATIENT_CALLING_COMMENTS] [varchar](max) NULL,
	[CURRENT_AMD_INSURANCE] [varchar](400) NULL,
	[CURRENT_AMD_ADDRESS] [varchar](max) NULL,
	[CHARTFILE_INSURANCE] [varchar](400) NULL,
	[CHARTFILE_INSURANCE_ADDRESS] [varchar](max) NULL,
	[CLIENT_COMMENTS] [varchar](max) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[ERROR_COUNT] [int] NULL,
	[ERROR_CORRECTION] [varchar](20) NULL,
	[ACKNOWLEDGE_BY] [varchar](200) NULL,
	[CLIENT_UPDATEDATE] [datetime] NULL,
	[AR_Updated_By] [varchar](350) NULL,
	[AR_Updated_Date] [datetime] NULL,
	[PC_Updated_By] [varchar](450) NULL,
	[PC_Updated_Date] [datetime] NULL,
	[Pending_Update_From] [varchar](450) NULL,
	[W/O Attestation] [varchar](max) NULL,
	[ACK_DATE] [datetime] NULL,
	[IS_SKIPPED] [varchar](10) NULL,
	[IS_REOPEN] [varchar](50) NULL,
	[ERROR_LIST] [varchar](450) NULL,
	[AR_Assign_Status] [varchar](350) NULL,
	[AR_Assign_To] [varchar](350) NULL,
	[AR_Assign_By] [varchar](350) NULL,
	[AR_Assign_Date] [datetime] NULL,
	[AR_Completed_Date] [datetime] NULL,
	[PC_Assign_Status] [varchar](350) NULL,
	[PC_Assign_To] [varchar](350) NULL,
	[PC_Assign_By] [varchar](350) NULL,
	[PC_Assign_Date] [datetime] NULL,
	[PC_Completed_Date] [datetime] NULL,
	[QC_Comments] [varchar](max) NULL,
	[AR_QC_Assigned_Status] [varchar](50) NULL,
	[AR_QC_Assigned_To] [varchar](50) NULL,
	[AR_QC_Assigned_By] [varchar](50) NULL,
	[AR_QC_Assigned_Date] [datetime] NULL,
	[AR_QC_Completed_Date] [datetime] NULL,
	[AR_Error_Category] [varchar](500) NULL,
	[AR_Sub_Error_Category] [varchar](500) NULL,
	[AR_Error_Count] [int] NULL,
	[AR_Error_Comments] [varchar](5000) NULL,
	[AR_Is_Skipped] [int] NULL,
	[AR_Error_Correction] [varchar](5) NULL,
	[AR_Acknoledge_BY] [varchar](50) NULL,
	[AR_Acknoledge_Date] [datetime] NULL,
	[AR_Acknoledge_Comments] [varchar](500) NULL,
	[AR_Error_List] [varchar](500) NULL,
	[AR_QC_Comments] [varchar](5000) NULL,
	[AR_IS_Acknowledge] [varchar](250) NULL,
	[DOS] [datetime] NULL,
	[TRANS_DETAIL_ID] [int] NULL,
	[CPT] [varchar](50) NULL,
	[ICD] [varchar](50) NULL,
	[MODIFIER] [varchar](50) NULL,
	[UNITS] [varchar](50) NULL,
	[COMMENTS] [varchar](max) NULL,
	[ERROR_CATEGORY] [varchar](100) NULL,
	[ERROR_SUBCATEGORY] [varchar](100) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[ICD_RESULT] [varchar](500) NULL,
	[DOWNLOADING_COMMENTS] [varchar](500) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[CPT_ORDER] [varchar](100) NULL,
	[PROVIDER_MD] [varchar](100) NULL,
	[ASSISTANT_PROVIDER] [varchar](100) NULL,
	[ICDlIST] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OutputExcel]    Script Date: 11/6/2017 10:17:55 AM ******/
CREATE TYPE [dbo].[OutputExcel] AS TABLE(
	[TRANS_DETAIL_ID] [int] NULL,
	[TRANS_ID] [int] NULL,
	[cpt_order] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[IS_REOPENED] [int] NULL,
	[COMMENTS] [varchar](250) NULL,
	[CODING_STATUS] [varchar](250) NULL,
	[KEYING_COMMENTS] [varchar](250) NULL,
	[HOSPITAL_EMPLOYEE] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OutputReport]    Script Date: 11/6/2017 10:17:55 AM ******/
CREATE TYPE [dbo].[OutputReport] AS TABLE(
	[BATCH_ID] [int] NULL,
	[TRANS_DETAIL_ID] [int] NULL,
	[CPT_ORDER] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](200) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[CODED_BY] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[CODED_DATE] [varchar](250) NULL,
	[QC_BY] [varchar](250) NULL,
	[QC_DATE] [varchar](250) NULL,
	[RELEASED_DATE] [varchar](200) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[pcallot]    Script Date: 11/6/2017 10:17:55 AM ******/
CREATE TYPE [dbo].[pcallot] AS TABLE(
	[ntlg] [varchar](250) NULL,
	[projectid] [int] NULL,
	[batchid] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Perimeter_production_report]    Script Date: 11/6/2017 10:17:55 AM ******/
CREATE TYPE [dbo].[Perimeter_production_report] AS TABLE(
	[RowNumber] [int] NULL,
	[TRANS_ID] [int] NULL,
	[Account] [varchar](500) NULL,
	[Coder] [varchar](560) NULL,
	[Facility] [varchar](560) NULL,
	[CODING_STATUS] [varchar](560) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[Perimeter_QC]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[Perimeter_QC] AS TABLE(
	[RowNumber] [int] NULL,
	[TRANS_ID] [int] NULL,
	[Account] [varchar](500) NULL,
	[Coder] [varchar](560) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[sp_Insert_Into_Keyer_Allotment]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[sp_Insert_Into_Keyer_Allotment] AS TABLE(
	[BATCH_ID] [int] NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_NAME] [varchar](500) NULL,
	[ACCOUNT_NO] [varchar](500) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[SPECIALITY] [varchar](500) NULL,
	[FACILITY] [varchar](500) NULL,
	[LOCATION] [varchar](500) NULL,
	[BATCH_STATUS] [varchar](500) NULL,
	[CODER_NTLG] [varchar](500) NULL,
	[CODED_DATE] [datetime] NULL,
	[ALLOTED_TO] [varchar](500) NULL,
	[ALLOTED_BY] [varchar](500) NULL,
	[ALLOTED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](500) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[PATIENT_NAME] [varchar](500) NULL,
	[AGE] [varchar](500) NULL,
	[DISPOSITION] [varchar](500) NULL,
	[IS_AUDITED] [varchar](50) NULL,
	[QC_ALLOTED_BY] [varchar](50) NULL,
	[Is_In_Patient] [int] NULL,
	[Is_Coding_Pending] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[sp_Inset_ImportTable]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[sp_Inset_ImportTable] AS TABLE(
	[PROJECT_ID] [int] NULL,
	[BATCH_NAME] [varchar](100) NULL,
	[ACCOUNT_NO] [varchar](100) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[SPECIALITY] [varchar](100) NULL,
	[FACILITY] [varchar](100) NULL,
	[LOCATION] [varchar](100) NULL,
	[BATCH_STATUS] [varchar](100) NULL,
	[UPLOAD_BY] [varchar](100) NULL,
	[ALLOTTED_TO] [varchar](100) NULL,
	[ALLOTTED_DATE] [datetime] NULL,
	[QC_ALLOTTED_BY] [varchar](100) NULL,
	[QC_ALLOTTED_DATE] [datetime] NULL,
	[UPLOAD_DATE] [datetime] NULL,
	[PATIENT_NAME] [varchar](100) NULL,
	[DOS] [datetime] NULL,
	[AGE] [varchar](100) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[QC_BY] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[ALLOTTED_BY] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransactionDetails]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[TransactionDetails] AS TABLE(
	[TRANS_DETAIL_ID] [int] NULL,
	[TRANS_ID] [int] NULL,
	[cpt_order] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[IS_REOPENED] [int] NULL,
	[COMMENTS] [varchar](250) NULL,
	[CODING_STATUS] [varchar](250) NULL,
	[KEYING_COMMENTS] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransDataForQC]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[TransDataForQC] AS TABLE(
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[CODED_DATE] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransDataReopen]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[TransDataReopen] AS TABLE(
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](200) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[CODED_BY] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[BATCH_ID] [varchar](100) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransDataWithCPTAndICD]    Script Date: 11/6/2017 10:17:56 AM ******/
CREATE TYPE [dbo].[TransDataWithCPTAndICD] AS TABLE(
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransDataWithCPTAndICDForError]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[TransDataWithCPTAndICDForError] AS TABLE(
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransDataWithCPTAndICDForReport]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[TransDataWithCPTAndICDForReport] AS TABLE(
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](200) NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[CODED_BY] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransErrorWithCPT]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[TransErrorWithCPT] AS TABLE(
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransQCDataWithCPTAndICD]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[TransQCDataWithCPTAndICD] AS TABLE(
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[TRANS_DETAIL_ID] [datetime] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TransQCDetails]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[TransQCDetails] AS TABLE(
	[TRANS_ID] [int] NULL,
	[ROWNO] [varchar](100) NULL,
	[cpt_order] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[CODED_DATE] [varchar](250) NULL,
	[W/O_ATTESTATION] [varchar](250) NULL,
	[CODING_COMMENTS] [varchar](250) NULL,
	[CODING_STATUS] [varchar](250) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[WC_Report_Data]    Script Date: 11/6/2017 10:17:57 AM ******/
CREATE TYPE [dbo].[WC_Report_Data] AS TABLE(
	[TRANS_DETAIL_ID] [int] NULL,
	[cpt_order] [varchar](100) NULL,
	[HOSPITAL_EMPLOYEE] [varchar](100) NULL,
	[QC_STATUS] [varchar](100) NULL,
	[DOWNLOADING_COMMENTS] [varchar](100) NULL,
	[BATCH_ID] [int] NULL,
	[DOS_CHANGED] [varchar](100) NULL,
	[FACILITY] [varchar](250) NULL,
	[RECEIVED_DATE] [varchar](250) NULL,
	[ACCOUNT_NO] [varchar](250) NULL,
	[PATIENT_NAME] [varchar](250) NULL,
	[AGE] [varchar](250) NULL,
	[DISPOSITION] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[INSURANCE] [varchar](250) NULL,
	[PROVIDER_MD] [varchar](250) NULL,
	[ASSISTANT_PROVIDER] [varchar](250) NULL,
	[PATIENT_STATUS] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](250) NULL,
	[TYPE_OF_ACCIDENT] [varchar](250) NULL,
	[SHARD_VISIT] [varchar](250) NULL,
	[CODED_BY] [varchar](100) NULL,
	[CPT] [varchar](250) NULL,
	[ICD] [varchar](250) NULL,
	[ICD_RESULT] [varchar](250) NULL,
	[ERROR_CATEGORY] [varchar](250) NULL,
	[ERROR_SUBCATEGORY] [varchar](250) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [varchar](100) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[W/O_ATTESTATION] [varchar](500) NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fnTbl__StringArray_To_Table]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [dbo].[fnTbl__StringArray_To_Table](@list varchar(8000),@delimiter char(1) = ',') RETURNS @tbl TABLE(C_ID int IDENTITY(1, 1) NOT NULL, C1 varchar(510)) AS BEGIN If(CharIndex(@delimiter, @list) = 0) Begin INSERT @tbl(C1) VALUES (LTrim(RTrim(@list))) Return End  DECLARE @pos int,@textpos int,@chunklen smallint,@tmpstr varchar(8000),@leftover varchar(8000),@tmpval varchar(500) SET @textpos = 1 SET @leftover = '' WHILE @textpos <= datalength(@list) / 2 BEGIN SET @chunklen = 8000 - datalength(@leftover) / 2 SET @tmpstr = @leftover + substring(@list, @textpos, @chunklen) SET @textpos = @textpos + @chunklen SET @pos = charindex(@delimiter, @tmpstr) WHILE @pos > 0 BEGIN SET @tmpval = LTrim(RTrim(left(@tmpstr, @pos - 1))) INSERT @tbl (C1) VALUES(@tmpval) SET @tmpstr = substring(@tmpstr, @pos + 1, len(@tmpstr)) SET @pos = charindex(@delimiter, @tmpstr) END SET @leftover = @tmpstr END Set @leftover = LTrim(RTrim(IsNull(@leftover,''))) INSERT @tbl(C1) VALUES (LTrim(RTrim(@leftover))) RETURN END
GO
/****** Object:  UserDefinedFunction [dbo].[GetICDTYPE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetICDTYPE] 
(
	-- Add the parameters for the function here
	@transid int,
	@cpt varchar(200),
	@cptorder varchar(200),
	@icd varchar(200)
	
)
RETURNS varchar(100)
AS
BEGIN
	-- Declare the return variable here
	Declare @icdval varchar(100)
	 set @icdval=(select distinct ICD_CODE  from tbl_TRANSACTION_DETAILS
	where TRANS_ID=@transid and cpt=@cpt  and cpt_order=@cptorder and icd=@icd)

	-- Return the result of the function
	RETURN @icdval

END

GO
/****** Object:  UserDefinedFunction [dbo].[SplitERROR_WEIGHTAGE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE FUNCTION [dbo].[SplitERROR_WEIGHTAGE] 
 (
   @ERROR_WEIGHTAGE VARCHAR(100) 
)
 
  RETURNS varchar(200)
BEGIN
Declare @ErrorResult varchar(200)
IF (@ERROR_WEIGHTAGE LIKE '%[^a-zA-Z0-9]%')
    
   set @ErrorResult= (select   SUBSTRING( @ERROR_WEIGHTAGE , LEN(@ERROR_WEIGHTAGE) -  CHARINDEX(';',REVERSE(@ERROR_WEIGHTAGE)) + 2  , LEN(@ERROR_WEIGHTAGE)))
    
    ELSE
  set @ErrorResult = @ERROR_WEIGHTAGE
  RETURN  (select @ErrorResult)
    
end

--select [dbo].[SplitERROR_WEIGHTAGE]('0')as test

--SELECT TOP 1000 [TRANS_ID]
--      ,[PROJECT_ID], dbo.[SplitERROR_WEIGHTAGE]([ERROR_WEIGHTAGE]) as ErrorWeightage
--      ,[BATCH_ID]
       
--  FROM [CBI_Anes_High].[dbo].[tbl_TRANSACTION] where PROJECT_ID=18
GO
/****** Object:  UserDefinedFunction [dbo].[SplitICDRESULT]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitICDRESULT] (
      @InputString                  VARCHAR(8000),
      @Delimiter                    VARCHAR(50)
)

RETURNS @Items TABLE (
      Item                          VARCHAR(8000)
)

AS
BEGIN
      IF @Delimiter = ' '
      BEGIN
            SET @Delimiter = ','
            SET @InputString = REPLACE(@InputString, ' ', @Delimiter)
      END

      IF (@Delimiter IS NULL OR @Delimiter = '')
            SET @Delimiter = ','

--INSERT INTO @Items VALUES (@Delimiter) -- Diagnostic
--INSERT INTO @Items VALUES (@InputString) -- Diagnostic

      DECLARE @Item                 VARCHAR(8000)
      DECLARE @ItemList       VARCHAR(8000)
      DECLARE @DelimIndex     INT

      SET @ItemList = @InputString
      SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      WHILE (@DelimIndex != 0)
      BEGIN
            SET @Item = SUBSTRING(@ItemList, 0, @DelimIndex)
            INSERT INTO @Items VALUES (@Item)

            -- Set @ItemList = @ItemList minus one less item
            SET @ItemList = SUBSTRING(@ItemList, @DelimIndex+1, LEN(@ItemList)-@DelimIndex)
            SET @DelimIndex = CHARINDEX(@Delimiter, @ItemList, 0)
      END -- End WHILE

      IF @Item IS NOT NULL -- At least one delimiter was encountered in @InputString
      BEGIN
            SET @Item = @ItemList
            INSERT INTO @Items VALUES (@Item)
      END

      -- No delimiters were encountered in @InputString, so just return @InputString
      ELSE INSERT INTO @Items VALUES (@InputString)

      RETURN

END -- End Function

GO
/****** Object:  UserDefinedFunction [dbo].[SplitNPPA]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitNPPA]
(    
      @Input NVARCHAR(MAX),
      @Character CHAR(1)
)
RETURNS @Output TABLE (
      Item NVARCHAR(1000)
)
AS
BEGIN
      DECLARE @StartIndex INT, @EndIndex INT
 
      SET @StartIndex = 1
      IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
      BEGIN
            SET @Input = @Input + @Character
      END
 
      WHILE CHARINDEX(@Character, @Input) > 0
      BEGIN
            SET @EndIndex = CHARINDEX(@Character, @Input)
           
            INSERT INTO @Output(Item)
            SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
           
            SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
      END
 
      RETURN
END

GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitString]
(
	@String  VARCHAR(1500), @Separator CHAR(1)
)
RETURNS @RESULT TABLE(Value VARCHAR(1500))
AS
BEGIN      
 DECLARE @SeparatorPosition INT = CHARINDEX(@Separator, @String ),
		@Value VARCHAR(MAX), @StartPosition INT = 1

 IF @SeparatorPosition = 0	
  BEGIN	
   INSERT INTO @RESULT VALUES(@String)
   RETURN
  END
	
 SET @String = @String + @Separator
 WHILE @SeparatorPosition > 0
  BEGIN
   SET @Value = SUBSTRING(@String , @StartPosition, @SeparatorPosition- @StartPosition)

   IF( @Value <> ''  ) 
    INSERT INTO @RESULT VALUES(@Value)
  
   SET @StartPosition = @SeparatorPosition + 1
   SET @SeparatorPosition = CHARINDEX(@Separator, @String , @StartPosition)
  END     
	
 RETURN
END

GO
/****** Object:  Table [dbo].[CPT_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CPT_MASTER](
	[CPT_Id] [int] IDENTITY(1,1) NOT NULL,
	[CPT] [varchar](50) NOT NULL,
	[CPT_Ane_Code] [varchar](300) NOT NULL,
	[CPT_Ane_Descriptor] [varchar](max) NOT NULL,
	[Is_Deleted] [char](10) NOT NULL,
	[Base_Unit_Modification] [varchar](50) NULL,
	[Cpt_Type] [nvarchar](20) NULL,
 CONSTRAINT [PK_CPT_MASTER] PRIMARY KEY CLUSTERED 
(
	[CPT_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHYSICAL_STATUS_MODIFIER_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHYSICAL_STATUS_MODIFIER_MASTER](
	[PSM_Id] [int] IDENTITY(1,1) NOT NULL,
	[Modifier] [varchar](50) NOT NULL,
	[Discription] [varchar](max) NOT NULL,
	[Is_Deleted] [char](10) NOT NULL,
 CONSTRAINT [PK_PHYSICAL_STATUS_MODIFIER_MASTER] PRIMARY KEY CLUSTERED 
(
	[PSM_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PQRS_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PQRS_MASTER](
	[PQRS_ID] [int] IDENTITY(1,1) NOT NULL,
	[Measure] [int] NOT NULL,
	[Discription] [varchar](max) NOT NULL,
	[Is_Deleted] [char](10) NOT NULL,
 CONSTRAINT [PK_PQRS_MASTER] PRIMARY KEY CLUSTERED 
(
	[PQRS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QUALIFYING_CIRCUMSTANCE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QUALIFYING_CIRCUMSTANCE_MASTER](
	[QC_ID] [int] IDENTITY(1,1) NOT NULL,
	[Codes] [int] NOT NULL,
	[Qualifying Circumstance] [varchar](max) NOT NULL,
	[Is_Deleted] [char](10) NOT NULL,
 CONSTRAINT [PK_QUALIFYING_CIRCUMSTANCE_MASTER] PRIMARY KEY CLUSTERED 
(
	[QC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ACCESS_TYPE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ACCESS_TYPE](
	[ACCESS_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCESS_TYPE] [varchar](50) NULL,
	[PROJECT_ID] [int] NULL,
 CONSTRAINT [PK_tbl_ACCESS_TYPE] PRIMARY KEY CLUSTERED 
(
	[ACCESS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ADDITIONAL_FIELDS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ADDITIONAL_FIELDS](
	[ADDITIONAL_FIELDS_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[FIELD_NAME] [varchar](100) NULL,
	[DISPLAY_FIELD_NAME] [varchar](100) NULL,
	[TASK_ID] [int] NOT NULL,
	[CONTROL_TYPE] [varchar](100) NULL,
	[DATA_TYPE] [varchar](100) NULL,
	[MASTER_LIST_TABLE] [varchar](100) NULL,
	[FIELD_INDEX] [int] NULL,
	[REPORT_INDEX] [int] NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_ADDITIONAL_FIELDS_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_ADDITIONAL_FIELDS] PRIMARY KEY CLUSTERED 
(
	[ADDITIONAL_FIELDS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ASSISTANT_PROVIDER_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ASSISTANT_PROVIDER_MASTER](
	[A_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [varchar](500) NULL,
	[LAST_NAME] [varchar](500) NULL,
	[MLP] [varchar](50) NULL,
	[PROVIDER_ID] [int] NULL,
 CONSTRAINT [PK_tbl_ASSISTANT_PROVIDER_MASTER] PRIMARY KEY CLUSTERED 
(
	[A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ATTENDING_PHYSICIAN_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ATTENDING_PHYSICIAN_MASTER](
	[AP_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[FACILITY_CODE] [varchar](500) NULL,
	[PHYSICIAN_NAME] [varchar](500) NULL,
	[PHYSICIAN_ID] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_ATTENDING_PHYSICIAN_MASTER] PRIMARY KEY CLUSTERED 
(
	[AP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CLIENT_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CLIENT_MASTER](
	[CLIENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIENT_NAME] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_CLIENT_MASTER_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_CLIENT_MASTER] PRIMARY KEY CLUSTERED 
(
	[CLIENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_CODING_STATUS_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_CODING_STATUS_MASTER](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[CODING_STATUS] [varchar](50) NULL,
	[DELETE_FLAG] [char](1) NOT NULL CONSTRAINT [DF_TBL_CODING_STATUS_MASTER_DELETE_FLAG]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_CODING_STATUS_MASTER] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_COMMENT_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_COMMENT_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [varchar](50) NULL,
	[COMMENT_NAME] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_COMMON_FIELD]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_COMMON_FIELD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIELD_NAME] [varchar](max) NULL,
	[TASK_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[Dynamic_Report_ID] [int] NULL,
	[Filters] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CPT1_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CPT1_MASTER](
	[CPT1_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[CPT1] [varchar](500) NULL,
	[CPT1_NAME] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_CPT1_MASTER] PRIMARY KEY CLUSTERED 
(
	[CPT1_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_DISPOSITION_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_DISPOSITION_MASTER](
	[D_Id] [int] IDENTITY(1,1) NOT NULL,
	[DISPOSITION] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_DISPOSITION] PRIMARY KEY CLUSTERED 
(
	[D_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_DOWN_CODING_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_DOWN_CODING_MASTER](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPTION] [varchar](100) NULL,
	[Comments] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_DOWN_CODING_MASTER] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_DX_CODE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_DX_CODE_MASTER](
	[DXID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[DX_TYPE] [varchar](50) NULL,
	[DX_CODE] [varchar](50) NULL,
	[DELETE_FLAG] [char](1) NULL CONSTRAINT [DF_TBL_DX_CODE_MASTER_DELETE_FLAG]  DEFAULT ('N'),
	[PRACTICE_ID] [int] NULL,
	[AGE_VALIDATION] [varchar](150) NULL,
	[ERROR_POPUP] [varchar](150) NULL,
	[EO_Code] [varchar](50) NULL,
	[DOS] [datetime] NULL,
	[DX_CODE_Description] [varchar](max) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_DX_CODE_MASTER] PRIMARY KEY CLUSTERED 
(
	[DXID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ENCOUNTER_TYPE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ENCOUNTER_TYPE_MASTER](
	[EN_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[ENCOUNTER_TYPE] [varchar](50) NULL,
	[ENCOUNTER_NAME] [varchar](50) NULL,
	[DELETE_FLAG] [char](1) NULL CONSTRAINT [DF_TBL_ENCOUNTER_TYPE_MASTER_DELETE_FLAG]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_ENCOUNTER_TYPE_MASTER] PRIMARY KEY CLUSTERED 
(
	[EN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_EO_CODE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_EO_CODE_MASTER](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[EO_CODE] [varchar](50) NOT NULL,
	[EO_COMMENT] [varchar](500) NOT NULL,
	[DELETE_FLAG] [char](1) NOT NULL,
 CONSTRAINT [PK_TBL_EO_CODE_MASTER] PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ERROR_CATEGORY]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ERROR_CATEGORY](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[ERROR_CATEGORY] [varchar](200) NULL,
	[SUB_CATEGORY1] [varchar](500) NULL,
	[SUB_CATEGORY2] [varchar](500) NULL,
	[SUB_CATEGORY3] [varchar](500) NULL,
	[PROJECT_ID] [int] NULL,
	[ERROR_WEIGHTAGE] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_ERROR_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ERROR_CATEGORY_REPORT]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ERROR_CATEGORY_REPORT](
	[E_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[ACCOUNT_NO] [varchar](100) NULL,
	[CODER_NAME] [varchar](500) NULL,
	[E/M] [int] NULL,
	[ICD] [int] NULL,
	[CPT] [int] NULL,
	[EKG&CM] [int] NULL,
	[X-RAY] [int] NULL,
	[MODIFIER] [int] NULL,
	[AFTER_HRS] [int] NULL,
	[PQRI] [int] NULL,
	[OTHERS] [int] NULL,
	[TOTAL_ERRORS] [int] NULL,
	[CODERS] [varchar](500) NULL,
	[QA_FINDINGS] [varchar](500) NULL,
	[MAIN_ERROR_CATEGORY] [varchar](100) NULL,
	[SUB_ERROR_CATEGORY] [varchar](100) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[QC_BY] [varchar](100) NULL,
	[CPT_NAME] [varchar](100) NULL,
	[Correction] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Error_Micro_Category]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Error_Micro_Category](
	[EMC_ID] [int] IDENTITY(1,1) NOT NULL,
	[Parameter] [varchar](150) NULL,
	[Sub_Parameter] [varchar](150) NULL,
	[Micro_Parameter] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FACILITY]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FACILITY](
	[F_Id] [int] IDENTITY(1,1) NOT NULL,
	[CODE] [varchar](20) NULL,
	[PROJECT_ID] [int] NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[CLIENT_LOCATION] [varchar](100) NULL,
	[IS_DELETED] [varchar](100) NULL CONSTRAINT [DF__tbl_FACIL__IS_DE__32AB8735]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_FACILITY] PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ICD_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ICD_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ICD_CODE] [varchar](50) NULL,
	[ICD_Description] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_ICD_MASTER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ICD9_ICD10_MAPPING_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ICD9_ICD10_MAPPING_MASTER](
	[Map_ID] [int] IDENTITY(1,1) NOT NULL,
	[Description_ICD_9] [varchar](500) NULL,
	[ICD_9] [varchar](50) NULL,
	[ICD_10] [varchar](50) NULL,
	[Description_ICD_10] [varchar](500) NULL,
	[Delete_Flag] [char](1) NOT NULL CONSTRAINT [DF_TBL_ICD9_ICD10_MAPPING_MASTER_Delete_Flag]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_ICD9_ICD10_MAPPING_MASTER] PRIMARY KEY CLUSTERED 
(
	[Map_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_IMPORT_HCC_DXCODE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_IMPORT_HCC_DXCODE_MASTER](
	[HCCID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[ECI] [varchar](150) NOT NULL,
	[DX_TYPE] [varchar](50) NULL,
	[DX_CODE] [varchar](50) NULL,
	[HCC] [int] NULL,
	[DELETE_FLAG] [char](1) NOT NULL CONSTRAINT [DF_IMPORT_HCC_DXCODE_MASTER_DELETE_FLAG]  DEFAULT ('N'),
	[UPLOADED_BY] [varchar](50) NULL,
	[UPLOADED_DATE] [datetime] NULL,
 CONSTRAINT [PK_IMPORT_HCC_DXCODE_MASTER] PRIMARY KEY CLUSTERED 
(
	[HCCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_IMPORT_TABLE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_IMPORT_TABLE](
	[BATCH_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_NAME] [varchar](100) NOT NULL,
	[ACCOUNT_NO] [varchar](100) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[SPECIALITY] [varchar](100) NULL,
	[FACILITY] [varchar](100) NULL,
	[LOCATION] [varchar](100) NULL,
	[BATCH_STATUS] [varchar](100) NULL,
	[UPLOAD_BY] [varchar](100) NULL,
	[ALLOTTED_TO] [varchar](50) NULL,
	[ALLOTTED_DATE] [datetime] NULL,
	[QC_ALLOTTED_BY] [varchar](100) NULL,
	[QC_ALLOTTED_DATE] [datetime] NULL,
	[UPLOAD_DATE] [datetime] NULL,
	[PATIENT_NAME] [varchar](500) NULL,
	[DOS] [datetime] NULL,
	[AGE] [varchar](500) NULL,
	[DISPOSITION] [varchar](500) NULL,
	[ALLOTTED_BY] [varchar](100) NULL,
	[IS_INPATIENT] [int] NULL,
	[EDMD] [varchar](100) NULL,
	[ADMITTING_PHY] [varchar](100) NULL,
	[ATTENDING_PHY] [varchar](100) NULL,
	[RELEASED_DATE] [datetime] NULL,
	[MRN] [varchar](150) NULL,
	[PAYER_CLASS] [varchar](100) NULL,
	[First_Name] [varchar](200) NULL,
	[Last_Name] [varchar](200) NULL,
	[ICD_CODE] [varchar](25) NULL,
	[JOB_NAME] [varchar](500) NULL,
	[PAGE_COUNT] [int] NULL,
	[ENCOUNTER_TYPE] [varchar](50) NULL,
	[ECI] [varchar](150) NULL,
	[UMI] [varchar](150) NULL,
	[HIC] [varchar](150) NULL,
	[MEMBER_DOB] [varchar](150) NOT NULL,
	[Performing_Provider_NPI] [varchar](50) NULL,
	[MEMBER_GENDER] [varchar](150) NULL,
	[Performing_Provider_BSID] [varchar](50) NULL,
	[Billing_Provider_NPI] [varchar](50) NULL,
	[Billing_Provider_BSID] [varchar](50) NULL,
	[RELEASED_BY] [varchar](50) NULL,
	[PRACTICE_ID] [int] NULL,
	[TL_NAME] [varchar](50) NULL,
	[Total_Pages] [varchar](50) NULL,
	[PDF_Path] [varchar](550) NULL,
 CONSTRAINT [PK_tbl_IMPORT_TABLE] PRIMARY KEY CLUSTERED 
(
	[BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_tbl_batch_name] UNIQUE NONCLUSTERED 
(
	[BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_LOCATION]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_LOCATION](
	[LOCATION_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[LOCATION] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_LOCATION_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_LOCATION] PRIMARY KEY CLUSTERED 
(
	[LOCATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MAIN_MENU]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MAIN_MENU](
	[MENU_ID] [int] IDENTITY(1,1) NOT NULL,
	[MENU_NAME] [varchar](100) NULL,
	[PROJECT_ID] [int] NULL,
	[ORDER_ID] [int] NULL,
	[ACCESS_TYPE] [int] NULL,
	[PracticeId] [varchar](12) NULL,
 CONSTRAINT [PK_tbl_MAIN_MENU] PRIMARY KEY CLUSTERED 
(
	[MENU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MANDATORY_FIELD]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MANDATORY_FIELD](
	[MANDATORY_FIELD_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIELD_NAME] [varchar](100) NULL,
	[DISPLAY_FIELDS] [varchar](100) NULL,
	[TASK_ID] [int] NOT NULL,
	[FIELD_INDEX] [int] NULL,
	[REPORT_INDEX] [int] NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_MANDATORY_FIELD_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_MANDATORY_FIELD] PRIMARY KEY CLUSTERED 
(
	[MANDATORY_FIELD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MODIFIER_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MODIFIER_MASTER](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[MODIFIERS] [varchar](100) NULL,
	[PROJECT_ID] [int] NULL,
 CONSTRAINT [PK_tbl_MODIFIER_MASTER] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NP_PA_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NP_PA_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[FACILITY_CODE] [varchar](500) NULL,
	[NP_PA_NAME] [varchar](500) NULL,
	[NP_PA_CODE] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_NP_PA_MASTER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OTHER_CPT_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_OTHER_CPT_MASTER](
	[OCPT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[OCPT] [varchar](500) NULL,
	[OCPT_NAME] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_OTHER_CPT_MASTER] PRIMARY KEY CLUSTERED 
(
	[OCPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PRACTICE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PRACTICE_MASTER](
	[PRACTICE_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[PRACTICE] [varchar](50) NULL,
	[IS_DELETED] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_PRACTICE_MASTER] PRIMARY KEY CLUSTERED 
(
	[PRACTICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PROJECT_MAPPING]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PROJECT_MAPPING](
	[PROJECT_MAPPING__ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NOT NULL,
	[TASK_ID] [int] NOT NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_PROJECT_MAPPING_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_PROJECT_MAPPING_1] PRIMARY KEY CLUSTERED 
(
	[PROJECT_MAPPING__ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PROJECT_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PROJECT_MASTER](
	[PROJECT_ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIENT_ID] [int] NOT NULL,
	[SPECIALITY_ID] [int] NOT NULL,
	[LOCATION_ID] [int] NOT NULL,
	[SOFTWARE_ID] [int] NOT NULL,
	[QC_RELEASE_BY] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NOT NULL CONSTRAINT [DF_tbl_PROJECT_MASTER_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_PROJECT_MASTER] PRIMARY KEY CLUSTERED 
(
	[PROJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SCRIBE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SCRIBE_MASTER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[FACILITY_CODE] [varchar](500) NULL,
	[SCRIBE_NAME] [varchar](500) NULL,
	[SCRIBE_ID] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_SCRIBE_MASTER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SECOND_ICD9_ICD10_MAPPING_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SECOND_ICD9_ICD10_MAPPING_MASTER](
	[Map_ID] [int] IDENTITY(1,1) NOT NULL,
	[ICD_TYPE] [varchar](50) NULL,
	[ICD_CODE] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[Delete_Flag] [char](1) NOT NULL CONSTRAINT [DF_TBL_SECOND_ICD9_ICD10_MAPPING_MASTER_Delete_Flag]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_SECOND_ICD9_ICD10_MAPPING_MASTER] PRIMARY KEY CLUSTERED 
(
	[Map_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SOFTWARE_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SOFTWARE_MASTER](
	[SOFTWARE_ID] [int] IDENTITY(1,1) NOT NULL,
	[SOFTWARE] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NOT NULL CONSTRAINT [DF_tbl_SOFTWARE_MASTER_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_SOFTWARE_MASTER] PRIMARY KEY CLUSTERED 
(
	[SOFTWARE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SPECIALITY]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SPECIALITY](
	[SP_ID] [int] IDENTITY(1,1) NOT NULL,
	[SPECIALITY] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_SPECIALITY_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_tbl_SPECIALITY] PRIMARY KEY CLUSTERED 
(
	[SP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_STATUS_MASTER]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_STATUS_MASTER](
	[STATUS_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[TASK_ID] [int] NULL,
	[STATUS_TYPE] [nvarchar](50) NOT NULL,
	[IS_DELETED] [nvarchar](10) NULL,
 CONSTRAINT [PK__tbl_STAT__D8827E7162458BBE] PRIMARY KEY CLUSTERED 
(
	[STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SUB_MENU]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_SUB_MENU](
	[SUB_MENU_ID] [int] IDENTITY(1,1) NOT NULL,
	[MENU_ID] [int] NULL,
	[SUB_MENU_NAME] [varchar](100) NULL,
	[URL] [varchar](500) NULL,
	[PROJECT_ID] [int] NULL,
	[ORDER_BY] [int] NULL,
 CONSTRAINT [PK_tbl_SUB_MENU] PRIMARY KEY CLUSTERED 
(
	[SUB_MENU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TASK_TABLE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TASK_TABLE](
	[TASK_ID] [int] IDENTITY(1,1) NOT NULL,
	[TASK_NAME] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NOT NULL CONSTRAINT [DF_tbl_TASK_TABLE_IS_DELETED]  DEFAULT ('N'),
	[TASK_TYPE] [varchar](500) NULL,
	[DISPLAY_NAME] [varchar](50) NULL,
	[PROJECT_ID] [int] NULL,
 CONSTRAINT [PK_tbl_TASK_TABLE] PRIMARY KEY CLUSTERED 
(
	[TASK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TRANSACTION]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TRANSACTION](
	[TRANS_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_ID] [int] NOT NULL,
	[INSURANCE] [varchar](100) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](500) NULL,
	[CHART_NO] [int] NULL,
	[PAGE_NO] [varchar](50) NULL,
	[CODING_COMMENTS] [varchar](500) NULL,
	[CODED_DATE] [datetime] NULL,
	[CODED_BY] [varchar](250) NULL,
	[UPDATED_BY] [varchar](250) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CODING_STATUS] [varchar](500) NULL,
	[QC_BY] [varchar](50) NULL,
	[QC_DATE] [datetime] NULL,
	[QC_STATUS] [varchar](100) NULL,
	[ERROR_CATEGORY] [varchar](100) NULL,
	[ERROR_SUBCATEGORY] [varchar](100) NULL,
	[QC_COMMENTS] [varchar](500) NULL,
	[QC_ERROR_CORRECTION] [varchar](50) NULL,
	[IS_ACKNOWLEDGE] [varchar](10) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[PROVIDER_MD] [varchar](500) NULL,
	[ASSISTANT_PROVIDER] [varchar](500) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[PATIENT_STATUS] [varchar](50) NULL,
	[TYPE_OF_ACCIDENT] [varchar](100) NULL,
	[SHARD_VISIT] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](50) NULL,
	[DOS_CHANGED] [varchar](250) NULL,
	[IS_AUDITED] [int] NULL,
	[PENDING_UPDATED_BY] [varchar](250) NULL,
	[W/O_ATTESTATION] [varchar](100) NULL,
	[IS_ACKNOWLEDGE_BY] [varchar](100) NULL,
	[IS_SKIPPED] [int] NULL,
	[IS_REOPENED] [int] NULL,
	[KEYING_COMMENTS] [varchar](250) NULL,
	[AR_STATUS] [varchar](250) NULL,
	[DOS] [datetime] NULL,
	[IS_PENDING] [int] NOT NULL,
	[RESPONSIBILITY] [varchar](50) NULL,
	[SEND_TO_CLIENT_DATE] [datetime] NULL,
	[CLIENT_RESPONSE] [varchar](100) NULL,
	[CLIENT_RESPONSE_DATE] [datetime] NULL,
	[PENDING_UPDAED_DATE] [datetime] NULL,
	[PENDING_WORKED_DATE] [datetime] NULL,
	[NPPA] [varchar](100) NULL,
	[SCRIBE] [varchar](100) NULL,
	[RESIDENT] [varchar](500) NULL,
	[START_TIME] [time](7) NULL,
	[END_TIME] [time](7) NULL,
	[TOTAL_TIME] [varchar](25) NULL,
	[ANES_TYPE] [varchar](50) NULL,
	[PHYSICAL_STATUS] [varchar](500) NULL,
	[PATIENT_NAME] [varchar](500) NULL,
	[CODING_STARTTIME] [datetime] NULL,
	[CODING_ENDTIME] [datetime] NULL,
	[ERROR_WEIGHTAGE] [varchar](50) NULL,
	[IS_ACKNOWLEDGE_DATE] [datetime] NULL,
	[ERROR_SENT_DATE] [datetime] NULL,
	[REVIEW_REAUDIT] [int] NULL,
	[RELEASE_REAUDIT_STATUS] [int] NOT NULL,
	[RELEASE_REAUDIT_BY] [varchar](50) NULL,
	[RELEASE_REAUDIT_DATE] [datetime] NULL,
	[PROVIDER_NAME1] [varchar](500) NULL,
	[PROVIDER_NAME2] [varchar](500) NULL,
	[PROVIDER_NAME3] [varchar](500) NULL,
	[PROVIDER_NAME4] [varchar](500) NULL,
	[PROVIDER_NAME5] [varchar](500) NULL,
	[CRNA1] [varchar](100) NULL,
	[CRNA2] [varchar](100) NULL,
	[CRNA3] [varchar](100) NULL,
	[CRNA4] [varchar](100) NULL,
	[CRNA5] [varchar](100) NULL,
	[AUDIT_CATEGORY] [varchar](500) NULL,
	[Error_Micro_Category] [varchar](500) NULL,
	[Severity_Level] [varchar](500) NULL,
	[Behaviour] [varchar](50) NULL,
	[Financial_Impact] [varchar](50) NULL,
	[Timestamp] [datetime] NULL,
	[PRACTICE_ID] [int] NULL,
	[Total_Pages] [int] NULL,
 CONSTRAINT [PK_tbl_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[TRANS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TRANSACTION_DETAILS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TRANSACTION_DETAILS](
	[TRANS_DETAIL_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[TRANS_ID] [int] NULL,
	[CPT] [varchar](100) NULL,
	[ICD] [varchar](100) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [int] NULL,
	[COMMENTS] [varchar](500) NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ERROR_CATEGORY] [varchar](max) NULL,
	[ERROR_SUBCATEGORY] [varchar](max) NULL,
	[QC_COMMENTS] [varchar](max) NULL,
	[IS_ACKNOWLEDGE] [varchar](10) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[ICD_RESULT] [varchar](500) NULL,
	[DOWNLOADING_COMMENTS] [varchar](500) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](100) NULL,
	[CPT_ORDER] [varchar](50) NULL,
	[PROVIDER_MD] [varchar](100) NULL,
	[ASSISTANT_PROVIDER] [varchar](100) NULL,
	[CPT_LEVEL] [varchar](100) NULL,
	[ICD_CODE] [varchar](100) NULL,
	[ASA_CROSS] [varchar](max) NULL,
	[ANCILLARY_SERVICES] [varchar](50) NULL,
	[ANCILLARY_MODIFIER] [varchar](50) NULL,
	[ACUTE_PAIN_CPT] [varchar](50) NULL,
	[ACUTE_PAIN_DX] [varchar](50) NULL,
	[ACUTE_PAIN_POS] [varchar](50) NULL,
	[PQRS] [varchar](max) NULL,
	[MEDICAL_DIRECTION] [varchar](50) NULL,
	[ANCILLARY_SERVICE_PROVIDERS] [varchar](50) NULL,
	[QUALIFYING_CIRCUMSTANCES] [varchar](500) NULL,
	[BEGINNING_DOS] [varchar](150) NULL,
	[ENDING_DOS] [varchar](150) NULL,
	[PLACE_OF_SERVICE] [varchar](50) NULL,
	[DELETE_INDICATOR] [varchar](50) NULL,
	[PROCEDURE_TYPE] [varchar](50) NULL,
	[PAGE_NO] [varchar](50) NULL,
	[EO_CODE1] [varchar](50) NULL,
	[EO_COMMENT1] [varchar](500) NULL,
	[EO_CODE2] [varchar](50) NULL,
	[EO_COMMENT2] [varchar](500) NULL,
	[EO_CODE3] [varchar](50) NULL,
	[EO_COMMENT3] [varchar](500) NULL,
	[EO_CODE4] [varchar](50) NULL,
	[EO_COMMENT4] [varchar](500) NULL,
	[EO_CODE5] [varchar](50) NULL,
	[EO_COMMENT5] [varchar](500) NULL,
	[EO_CODE6] [varchar](50) NULL,
	[EO_COMMENT6] [varchar](500) NULL,
	[CRNA] [varchar](50) NULL,
	[Anesthesia_Start_time] [time](7) NULL,
	[Anesthesia_End_time] [time](7) NULL,
	[Anesthesia_Time_Diff] [time](7) NULL,
	[HPI] [varchar](100) NULL,
	[PFSH] [varchar](100) NULL,
	[ROS] [varchar](100) NULL,
	[EXAM] [varchar](100) NULL,
	[Downcoded] [varchar](100) NULL,
	[Error_Correction] [varchar](max) NULL,
	[Error_Count] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_TRANSACTION_DETAILS] PRIMARY KEY CLUSTERED 
(
	[TRANS_DETAIL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TRANSACTION_DETAILS_BACKUP]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TRANSACTION_DETAILS_BACKUP](
	[TRANS_DETAIL_Backup_ID] [int] IDENTITY(1,1) NOT NULL,
	[TRANS_ID] [int] NULL,
	[BEGINNING_DOS] [varchar](150) NULL,
	[ENDING_DOS] [varchar](150) NULL,
	[Dx_TYPE] [varchar](100) NULL,
	[Dx_CODE] [varchar](100) NULL,
	[PAGE_NO] [varchar](50) NULL,
	[ICD_COMMENTS] [varchar](500) NULL,
	[EO_CODE1] [varchar](50) NULL,
	[EO_COMMENT1] [varchar](500) NULL,
	[EO_CODE2] [varchar](50) NULL,
	[EO_COMMENT2] [varchar](500) NULL,
	[EO_CODE3] [varchar](50) NULL,
	[EO_COMMENT3] [varchar](500) NULL,
	[EO_CODE4] [varchar](50) NULL,
	[EO_COMMENT4] [varchar](500) NULL,
	[EO_CODE5] [varchar](50) NULL,
	[EO_COMMENT5] [varchar](500) NULL,
	[EO_CODE6] [varchar](50) NULL,
	[EO_COMMENT6] [varchar](500) NULL,
	[TRANS_DETAILS_ID] [int] NULL,
 CONSTRAINT [PK_tbl_TRANSACTION_DETAILS_BACKUP] PRIMARY KEY CLUSTERED 
(
	[TRANS_DETAIL_Backup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TRANSACTION_DETAILS_HISTORY]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TRANSACTION_DETAILS_HISTORY](
	[TRANS_HIS_ID] [int] IDENTITY(1,1) NOT NULL,
	[TRANS_DETAIL_ID] [int] NOT NULL,
	[TRANS_ID] [int] NULL,
	[CPT] [varchar](100) NULL,
	[ICD] [varchar](100) NULL,
	[MODIFIER] [varchar](100) NULL,
	[UNITS] [int] NULL,
	[COMMENTS] [varchar](500) NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[QC_BY] [varchar](50) NULL,
	[QC_DATE] [datetime] NULL,
	[QC_STATUS] [varchar](100) NULL,
	[ERROR_CATEGORY] [varchar](100) NULL,
	[ERROR_SUBCATEGORY] [varchar](100) NULL,
	[QC_COMMENTS] [varchar](500) NULL,
	[IS_ACKNOWLEDGE] [varchar](10) NULL CONSTRAINT [DF_tbl_TRANSACTION_DETAILS_HISTORY_IS_ACKNOWLEDGE]  DEFAULT ('N'),
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[ICD_RESULT] [varchar](500) NULL,
	[DOWNLOADING_COMMENTS] [varchar](500) NULL,
	[DEFICIENCY_INDICATOR] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](100) NULL,
	[CPT_ORDER] [varchar](50) NULL,
	[PROVIDER_MD] [varchar](100) NULL,
	[ASSISTANT_PROVIDER] [varchar](100) NULL,
	[CPT_LEVEL] [varchar](100) NULL,
	[ICD_CODE] [varchar](25) NULL,
	[ASA_CROSS] [varchar](50) NULL,
	[ANCILLARY_SERVICES] [varchar](50) NULL,
	[ANCILLARY_MODIFIER] [varchar](50) NULL,
	[ACUTE_PAIN_CPT] [varchar](50) NULL,
	[ACUTE_PAIN_DX] [varchar](50) NULL,
	[ACUTE_PAIN_POS] [varchar](50) NULL,
	[PQRS] [varchar](max) NULL,
	[MEDICAL_DIRECTION] [varchar](50) NULL,
	[ANCILLARY_SERVICE_PROVIDERS] [varchar](50) NULL,
	[QUALIFYING_CIRCUMSTANCES] [varchar](50) NULL,
	[BEGINNING_DOS] [varchar](50) NULL,
	[ENDING_DOS] [varchar](50) NULL,
	[PLACE_OF_SERVICE] [varchar](50) NULL CONSTRAINT [DF_tbl_TRANSACTION_DETAILS_HISTORY_PLACE_OF_SERVICE]  DEFAULT (''),
	[DELETE_INDICATOR] [varchar](50) NULL,
	[PROCEDURE_TYPE] [varchar](50) NULL,
	[PAGE_NO] [int] NULL,
	[EO_CODE1] [varchar](50) NULL,
	[EO_COMMENT1] [varchar](500) NULL,
	[EO_CODE2] [varchar](50) NULL,
	[EO_COMMENT2] [varchar](500) NULL,
	[EO_CODE3] [varchar](50) NULL,
	[EO_COMMENT3] [varchar](500) NULL,
	[EO_CODE4] [varchar](50) NULL,
	[EO_COMMENT4] [varchar](500) NULL,
	[EO_CODE5] [varchar](50) NULL,
	[EO_COMMENT5] [varchar](500) NULL,
	[EO_CODE6] [varchar](50) NULL,
	[EO_COMMENT6] [varchar](500) NULL,
	[ACTIONS_PERFORMED] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_TRANSACTION_DETAILS_HISTORY] PRIMARY KEY CLUSTERED 
(
	[TRANS_HIS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TRANSACTION_HISTORY]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TRANSACTION_HISTORY](
	[HIS_ID] [int] IDENTITY(1,1) NOT NULL,
	[TRANS_ID] [int] NOT NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_ID] [int] NOT NULL,
	[INSURANCE] [varchar](100) NULL,
	[ADMITTING_PHY] [varchar](250) NULL,
	[ATTENDING_PHY] [varchar](250) NULL,
	[EDMD] [varchar](250) NULL,
	[DOI] [varchar](250) NULL,
	[TOI] [varchar](500) NULL,
	[CHART_NO] [int] NULL,
	[PAGE_NO] [int] NULL,
	[CODING_COMMENTS] [varchar](500) NULL,
	[CODED_DATE] [datetime] NULL,
	[CODED_BY] [varchar](250) NULL,
	[UPDATED_BY] [varchar](250) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CODING_STATUS] [varchar](500) NULL,
	[QC_BY] [varchar](50) NULL,
	[QC_DATE] [datetime] NULL,
	[QC_STATUS] [varchar](100) NULL,
	[ERROR_CATEGORY] [varchar](100) NULL,
	[ERROR_SUBCATEGORY] [varchar](100) NULL,
	[QC_COMMENTS] [varchar](500) NULL,
	[QC_ERROR_CORRECTION] [varchar](50) NULL,
	[IS_ACKNOWLEDGE] [varchar](10) NULL,
	[ACKNOWLEDGE_COMMENTS] [varchar](500) NULL,
	[PROVIDER_MD] [varchar](500) NULL,
	[ASSISTANT_PROVIDER] [varchar](500) NULL,
	[DISPOSITION] [varchar](100) NULL,
	[PATIENT_STATUS] [varchar](50) NULL,
	[TYPE_OF_ACCIDENT] [varchar](100) NULL,
	[SHARD_VISIT] [varchar](100) NULL,
	[ACCOUNT_STATUS] [varchar](50) NULL,
	[DOS_CHANGED] [varchar](250) NULL,
	[IS_AUDITED] [int] NULL CONSTRAINT [DF_tbl_TRANSACTION_HISTORY_IS_AUDITED]  DEFAULT ((0)),
	[PENDING_UPDATED_BY] [varchar](250) NULL,
	[W/O_ATTESTATION] [varchar](100) NULL,
	[IS_ACKNOWLEDGE_BY] [varchar](100) NULL,
	[IS_SKIPPED] [int] NULL CONSTRAINT [DF_tbl_TRANSACTION_HISTORY_IS_SKIPPED]  DEFAULT ((0)),
	[IS_REOPENED] [int] NULL CONSTRAINT [DF_tbl_TRANSACTION_HISTORY_IS_REOPENED]  DEFAULT ((0)),
	[KEYING_COMMENTS] [varchar](250) NULL,
	[AR_STATUS] [varchar](250) NULL,
	[DOS] [datetime] NULL,
	[IS_PENDING] [int] NOT NULL CONSTRAINT [DF_tbl_TRANSACTION_HISTORY_IS_PENDING]  DEFAULT ((0)),
	[RESPONSIBILITY] [varchar](50) NULL,
	[SEND_TO_CLIENT_DATE] [datetime] NULL,
	[CLIENT_RESPONSE] [varchar](100) NULL,
	[CLIENT_RESPONSE_DATE] [datetime] NULL,
	[PENDING_UPDAED_DATE] [datetime] NULL,
	[PENDING_WORKED_DATE] [datetime] NULL,
	[NPPA] [varchar](100) NULL,
	[SCRIBE] [varchar](100) NULL,
	[RESIDENT] [varchar](500) NULL,
	[START_TIME] [time](7) NULL,
	[END_TIME] [time](7) NULL,
	[TOTAL_TIME] [varchar](25) NULL,
	[ANES_TYPE] [varchar](50) NULL,
	[PHYSICAL_STATUS] [varchar](500) NULL,
	[PATIENT_NAME] [varchar](500) NULL,
	[CODING_STARTTIME] [datetime] NULL,
	[CODING_ENDTIME] [datetime] NULL,
	[ERROR_WEIGHTAGE] [varchar](50) NULL,
	[IS_ACKNOWLEDGE_DATE] [datetime] NULL,
	[ERROR_SENT_DATE] [datetime] NULL,
	[RELEASE_REAUDIT_STATUS] [int] NOT NULL CONSTRAINT [DF_tbl_TRANSACTION_HISTORY_RELEASE_REAUDIT_STATUS]  DEFAULT ((0)),
	[RELEASE_REAUDIT_BY] [varchar](50) NULL,
	[RELEASE_REAUDIT_DATE] [datetime] NULL,
	[ACTIONS_PERFORMED] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_TRANSACTION_HISTORY] PRIMARY KEY CLUSTERED 
(
	[HIS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_UNSUCCESSFUL_IMPORTED_TABLE]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_UNSUCCESSFUL_IMPORTED_TABLE](
	[BATCH_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[BATCH_NAME] [varchar](100) NOT NULL,
	[ACCOUNT_NO] [varchar](100) NULL,
	[RECEIVED_DATE] [datetime] NULL,
	[SPECIALITY] [varchar](100) NULL,
	[FACILITY] [varchar](100) NULL,
	[LOCATION] [varchar](100) NULL,
	[BATCH_STATUS] [varchar](100) NULL,
	[UPLOAD_BY] [varchar](100) NULL,
	[PATIENT_NAME] [varchar](500) NULL,
	[DOS] [datetime] NULL,
	[REMARKS] [varchar](500) NULL,
	[DISPOSITION] [varchar](500) NULL,
	[AGE] [varchar](500) NULL,
	[IS_INPATIENT] [int] NULL CONSTRAINT [DF_tbl_UNSUCCESSFUL_IMPORTED_TABLE_IS_INPATIENT]  DEFAULT ((0)),
	[EDMD] [varchar](100) NULL,
	[ADMITTING_PHY] [varchar](100) NULL,
	[ATTENDING_PHY] [varchar](100) NULL,
	[MRN] [varchar](100) NULL,
	[PAYER_CLASS] [varchar](100) NULL,
	[FIRST_NAME] [varchar](100) NULL,
	[LAST_NAME] [varchar](100) NULL,
	[ICD_CODE] [varchar](25) NULL,
	[JOB_NAME] [varchar](500) NULL,
	[PAGE_COUNT] [int] NULL,
	[RECORD_STATUS] [bit] NULL,
	[ENCOUNTER_TYPE] [varchar](50) NULL,
	[ECI] [varchar](50) NULL,
	[UMI] [varchar](50) NULL,
	[HIC] [varchar](50) NULL,
	[MEMBER_DOB] [varchar](150) NOT NULL,
	[Performing_Provider_NPI] [varchar](50) NULL,
	[MEMBER_GENDER] [varchar](1) NULL,
	[Performing_Provider_BSID] [varchar](50) NULL,
	[Billing_Provider_NPI] [varchar](50) NULL,
	[Billing_Provider_BSID] [varchar](50) NULL,
	[PRACTICE_ID] [int] NULL,
	[TL_NAME] [varchar](50) NULL,
	[Total_Pages] [varchar](50) NULL,
	[PDF_Path] [varchar](550) NULL,
 CONSTRAINT [PK_tbl_UNSUCCESSFUL_IMPORTED_TABLE] PRIMARY KEY CLUSTERED 
(
	[BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_tbl_unsuccessful_batch_name] UNIQUE NONCLUSTERED 
(
	[BATCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_USER_ACCESS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_USER_ACCESS](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_ID] [varchar](50) NULL,
	[PROJECT_ID] [int] NULL,
	[USER_NAME] [varchar](50) NULL,
	[USER_NTLG] [varchar](50) NULL,
	[ACCESS_TYPE] [varchar](50) NULL,
	[TL_NTLG] [varchar](50) NULL,
	[TL_NAME] [varchar](500) NULL,
	[OM_NTLG] [varchar](50) NULL,
	[OM_NAME] [varchar](500) NULL,
	[SM_NTLG] [varchar](50) NULL,
	[SM_NAME] [varchar](500) NULL,
	[IS_DELETED] [varchar](50) NULL CONSTRAINT [DF_tbl_USER_ACCESS_IS_DELETED]  DEFAULT ('N'),
	[Update_Date] [datetime] NULL CONSTRAINT [DF_tbl_USER_ACCESS_Update_Date]  DEFAULT (getdate()),
	[Update_By] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[PRACTICE_ID] [int] NULL,
 CONSTRAINT [PK_tbl_USER_ACCESS] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[funGetErrorCount]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funGetErrorCount]
(
	@BATCH_NAME varchar(max)
)
RETURNS TABLE
AS
RETURN
	
--	select COUNT(ICD) as New_ICD, SUM(case when td.Error_Count=NULL then 0 else 1 end) as New_Error_Count,SUM(case when td.Error_Count=NULL then 0 else 1 end) as Total_Error_Count 

	-- ,(COUNT(ICD) / SUM(case when Error_Count=NULL then 0 else 1 end) + COUNT(ICD) ) as Total_Error_Count
	select COUNT(T.BATCH_ID) AS [NO OF QCED RECORDS]
	
	FROM tbl_IMPORT_TABLE it
	inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
	inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
	inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID where  QC_STATUS in ('Qced') and BATCH_NAME=@BATCH_NAME
	group by ACCOUNT_NO,t.BATCH_ID, QC_STATUS
GO
/****** Object:  UserDefinedFunction [dbo].[funGetQCRecordCount]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[funGetQCRecordCount]
(
	@BATCH_NAME varchar(max)
)
RETURNS TABLE
AS
RETURN
	
select COUNT(T.BATCH_ID) AS [NO OF QCED RECORDS] 
FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID	
where  QC_STATUS='Error'  and BATCH_NAME=@BATCH_NAME
group by ACCOUNT_NO,t.BATCH_ID, QC_STATUS
GO
/****** Object:  UserDefinedFunction [dbo].[GETERRORMARKED]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[GETERRORMARKED]()
RETURNS TABLE
AS
return
Select distinct ACCOUNT_NO,
    substring(
        (
            Select ', '+ST1.MAIN_ERROR_CATEGORY  AS [text()]
            From tbl_ERROR_CATEGORY_REPORT ST1
            Where ST1.ACCOUNT_NO = E.ACCOUNT_NO
            ORDER BY ST1.E_ID
            For XML PATH ('')
        ), 2, 1000) [Main_Error_Category],
        
         substring(
        (
            Select ', '+ST1.SUB_ERROR_CATEGORY  AS [text()]
            From tbl_ERROR_CATEGORY_REPORT ST1
            Where ST1.ACCOUNT_NO = E.ACCOUNT_NO
            ORDER BY ST1.E_ID
            For XML PATH ('')
        ), 2, 1000) [Sub_Category],
        
           substring(
        (
            Select ', '+ST1.Correction  AS [text()]
            From tbl_ERROR_CATEGORY_REPORT ST1
            Where ST1.ACCOUNT_NO = E.ACCOUNT_NO
            ORDER BY ST1.E_ID
            For XML PATH ('')
        ), 2, 1000) [Correction]
From tbl_ERROR_CATEGORY_REPORT E
where E.PROJECT_ID=16

--select * from GETERRORMARKED()

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [NLC]    Script Date: 11/6/2017 10:17:58 AM ******/
CREATE NONCLUSTERED INDEX [NLC] ON [dbo].[TBL_ICD9_ICD10_MAPPING_MASTER]
(
	[ICD_9] ASC,
	[ICD_10] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [NonClusteredIndex-20170322-171101]    Script Date: 11/6/2017 10:17:58 AM ******/
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20170322-171101] ON [dbo].[TBL_ICD9_ICD10_MAPPING_MASTER]
(
	[Map_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ECIIndex]    Script Date: 11/6/2017 10:17:58 AM ******/
CREATE NONCLUSTERED INDEX [ECIIndex] ON [dbo].[tbl_IMPORT_HCC_DXCODE_MASTER]
(
	[ECI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_ADDITIONAL_FIELDS]  WITH CHECK ADD  CONSTRAINT [FK_tbl_additional_task_id] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[tbl_TASK_TABLE] ([TASK_ID])
GO
ALTER TABLE [dbo].[tbl_ADDITIONAL_FIELDS] CHECK CONSTRAINT [FK_tbl_additional_task_id]
GO
ALTER TABLE [dbo].[tbl_ADDITIONAL_FIELDS]  WITH CHECK ADD  CONSTRAINT [FK_tbl_project_id] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[tbl_ADDITIONAL_FIELDS] CHECK CONSTRAINT [FK_tbl_project_id]
GO
ALTER TABLE [dbo].[TBL_CODING_STATUS_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_CODING_STATUS_MASTER_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[TBL_CODING_STATUS_MASTER] CHECK CONSTRAINT [FK_TBL_CODING_STATUS_MASTER_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[TBL_DX_CODE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_DX_CODE_MASTER_TBL_DX_CODE_MASTER] FOREIGN KEY([DXID])
REFERENCES [dbo].[TBL_DX_CODE_MASTER] ([DXID])
GO
ALTER TABLE [dbo].[TBL_DX_CODE_MASTER] CHECK CONSTRAINT [FK_TBL_DX_CODE_MASTER_TBL_DX_CODE_MASTER]
GO
ALTER TABLE [dbo].[TBL_DX_CODE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_DX_CODE_MASTER_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[TBL_DX_CODE_MASTER] CHECK CONSTRAINT [FK_TBL_DX_CODE_MASTER_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[TBL_ENCOUNTER_TYPE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_ENCOUNTER_TYPE_MASTER_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[TBL_ENCOUNTER_TYPE_MASTER] CHECK CONSTRAINT [FK_TBL_ENCOUNTER_TYPE_MASTER_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[TBL_EO_CODE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_EO_CODE_MASTER_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[TBL_EO_CODE_MASTER] CHECK CONSTRAINT [FK_TBL_EO_CODE_MASTER_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[tbl_ERROR_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Error_Category_Project_id] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[tbl_ERROR_CATEGORY] CHECK CONSTRAINT [FK_tbl_Error_Category_Project_id]
GO
ALTER TABLE [dbo].[tbl_FACILITY]  WITH CHECK ADD  CONSTRAINT [FK_tbl_facility_project_id] FOREIGN KEY([F_Id])
REFERENCES [dbo].[tbl_FACILITY] ([F_Id])
GO
ALTER TABLE [dbo].[tbl_FACILITY] CHECK CONSTRAINT [FK_tbl_facility_project_id]
GO
ALTER TABLE [dbo].[tbl_IMPORT_HCC_DXCODE_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_IMPORT_HCC_DXCODE_MASTER_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[tbl_IMPORT_HCC_DXCODE_MASTER] CHECK CONSTRAINT [FK_IMPORT_HCC_DXCODE_MASTER_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[tbl_MAIN_MENU]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Menu_Project_id] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[tbl_MAIN_MENU] CHECK CONSTRAINT [FK_tbl_Menu_Project_id]
GO
ALTER TABLE [dbo].[tbl_MANDATORY_FIELD]  WITH CHECK ADD  CONSTRAINT [FK_tbl_task_id] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[tbl_TASK_TABLE] ([TASK_ID])
GO
ALTER TABLE [dbo].[tbl_MANDATORY_FIELD] CHECK CONSTRAINT [FK_tbl_task_id]
GO
ALTER TABLE [dbo].[tbl_PROJECT_MAPPING]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PROJECT_MAPPING_tbl_TASK_TABLE] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[tbl_TASK_TABLE] ([TASK_ID])
GO
ALTER TABLE [dbo].[tbl_PROJECT_MAPPING] CHECK CONSTRAINT [FK_tbl_PROJECT_MAPPING_tbl_TASK_TABLE]
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_client_id] FOREIGN KEY([CLIENT_ID])
REFERENCES [dbo].[tbl_CLIENT_MASTER] ([CLIENT_ID])
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER] CHECK CONSTRAINT [FK_tbl_client_id]
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_location_id] FOREIGN KEY([LOCATION_ID])
REFERENCES [dbo].[tbl_LOCATION] ([LOCATION_ID])
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER] CHECK CONSTRAINT [FK_tbl_location_id]
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_software_id] FOREIGN KEY([SOFTWARE_ID])
REFERENCES [dbo].[tbl_SOFTWARE_MASTER] ([SOFTWARE_ID])
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER] CHECK CONSTRAINT [FK_tbl_software_id]
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_speciality_id] FOREIGN KEY([SPECIALITY_ID])
REFERENCES [dbo].[tbl_SPECIALITY] ([SP_ID])
GO
ALTER TABLE [dbo].[tbl_PROJECT_MASTER] CHECK CONSTRAINT [FK_tbl_speciality_id]
GO
ALTER TABLE [dbo].[tbl_STATUS_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_STATUS_MASTER_tbl_STATUS_MASTER] FOREIGN KEY([STATUS_ID])
REFERENCES [dbo].[tbl_STATUS_MASTER] ([STATUS_ID])
GO
ALTER TABLE [dbo].[tbl_STATUS_MASTER] CHECK CONSTRAINT [FK_tbl_STATUS_MASTER_tbl_STATUS_MASTER]
GO
ALTER TABLE [dbo].[tbl_STATUS_MASTER]  WITH CHECK ADD  CONSTRAINT [FK_tbl_STATUS_MASTER_tbl_TASK_TABLE] FOREIGN KEY([TASK_ID])
REFERENCES [dbo].[tbl_TASK_TABLE] ([TASK_ID])
GO
ALTER TABLE [dbo].[tbl_STATUS_MASTER] CHECK CONSTRAINT [FK_tbl_STATUS_MASTER_tbl_TASK_TABLE]
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_IMPORT_TABLE] FOREIGN KEY([BATCH_ID])
REFERENCES [dbo].[tbl_IMPORT_TABLE] ([BATCH_ID])
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY] CHECK CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_IMPORT_TABLE]
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_PROJECT_MASTER] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY] CHECK CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_PROJECT_MASTER]
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_TRANSACTION] FOREIGN KEY([TRANS_ID])
REFERENCES [dbo].[tbl_TRANSACTION] ([TRANS_ID])
GO
ALTER TABLE [dbo].[tbl_TRANSACTION_HISTORY] CHECK CONSTRAINT [FK_tbl_TRANSACTION_HISTORY_tbl_TRANSACTION]
GO
/****** Object:  StoredProcedure [dbo].[CompareTables]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CompareTables](@table1 varchar(100),
 @table2 Varchar(100), @T1ColumnList varchar(1000),
 @T2ColumnList varchar(1000) = '')
AS
 
-- Table1, Table2 are the tables or views to compare.
-- T1ColumnList is the list of columns to compare, from table1.
-- Just list them comma-separated, like in a GROUP BY clause.
-- If T2ColumnList is not specified, it is assumed to be the same
-- as T1ColumnList.  Otherwise, list the columns of Table2 in
-- the same order as the columns in table1 that you wish to compare.
--
-- The result is all rows from either table that do NOT match
-- the other table in all columns specified, along with which table that
-- row is from.
 
declare @SQL varchar(8000);
 
IF @t2ColumnList = '' SET @T2ColumnList = @T1ColumnList
 
set @SQL = 'SELECT ''' + @table1 + ''' AS TableName, ' + @t1ColumnList +
 ' FROM ' + @Table1 + ' UNION ALL SELECT ''' + @table2 + ''' As TableName, ' +
 @t2ColumnList + ' FROM ' + @Table2
 
set @SQL = 'SELECT Max(TableName) as TableName, ' + @t1ColumnList +
 ' FROM (' + @SQL + ') A GROUP BY ' + @t1ColumnList +
 ' HAVING COUNT(*) = 1'
 
exec ( @SQL)

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_AccuracyReportHighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Get_Data_AccuracyReportHighMark]	
(
	@FromDate DATETIME,
	@ToDate DATETIME,
	@ProjectId int,
    @Userntlg varchar (100)=null,
    @AuditCategory varchar (100)=null,
    @Location varchar (100)=null	
)

AS
BEGIN
IF(@Userntlg is null and @AuditCategory is null  and @Location is null)
BEGIN
 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate)
End

ELSE IF(@Userntlg is not null and @AuditCategory is null  and @Location is null)
	BEGIN
	 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND (tbl_TRANSACTION_1.CODED_BY = @Userntlg)
	 End
	 
	 
ELSE IF(@Userntlg is not null and @AuditCategory is not null  and @Location is null)
	BEGIN
	SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND (tbl_TRANSACTION_1.CODED_BY = @Userntlg) AND 
                         (tbl_TRANSACTION_1.AUDIT_CATEGORY = @AuditCategory)
	 End
	 
ELSE IF(@Userntlg is null and @AuditCategory is not null  and @Location is null)
	BEGIN
	SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND 
                         (tbl_TRANSACTION_1.AUDIT_CATEGORY = @AuditCategory)
	 End
	 
	 
	 IF(@Userntlg is null and @AuditCategory is null  and @Location is not null)
	 
	 BEGIN
	 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND (tbl_IMPORT_TABLE.LOCATION = @Location)
	 END
	 
	 
	 ELSE IF(@Userntlg is not null and @AuditCategory is null  and @Location is not null)
	 BEGIN
	 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND (tbl_TRANSACTION_1.CODED_BY = @Userntlg) AND 
                         (tbl_IMPORT_TABLE.LOCATION = @Location)
	 END
	 
	 ELSE IF(@Userntlg is not null and @AuditCategory is not null  and @Location is not null)
	 
	 BEGIN
	 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND (tbl_TRANSACTION_1.CODED_BY = @Userntlg) AND 
                         (tbl_TRANSACTION_1.AUDIT_CATEGORY = @AuditCategory) AND (tbl_IMPORT_TABLE.LOCATION = @Location)
	 END
	 
	 ELSE IF(@Userntlg is null and @AuditCategory is not null  and @Location is not null)
	 BEGIN
	 SELECT DISTINCT tbl_USER_ACCESS_1.EMP_ID, tbl_TRANSACTION_1.CODED_BY, tbl_TRANSACTION_1.CODED_DATE,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION.TRANS_ID) AS ChartCoded
                               FROM            tbl_TRANSACTION INNER JOIN
                                                         tbl_USER_ACCESS ON tbl_TRANSACTION.CODED_BY = tbl_USER_ACCESS.USER_NTLG
                               WHERE        (tbl_TRANSACTION.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION.CODED_DATE, tbl_TRANSACTION.CODED_BY, tbl_USER_ACCESS.EMP_ID, tbl_TRANSACTION.CODING_STATUS) AS ChartCoded,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_2.TRANS_ID) AS ChartQC
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_2 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_2 ON tbl_TRANSACTION_2.CODED_BY = tbl_USER_ACCESS_2.USER_NTLG
                               WHERE        (tbl_TRANSACTION_2.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_2.QC_STATUS IN ('QC', 'Completed'))
                               GROUP BY tbl_TRANSACTION_2.CODED_DATE, tbl_TRANSACTION_2.CODED_BY, tbl_USER_ACCESS_2.EMP_ID, tbl_TRANSACTION_2.CODING_STATUS, 
                                                         tbl_TRANSACTION_2.QC_STATUS) AS ChartQC,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_3.TRANS_ID) AS ChartError
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_3 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_3 ON tbl_TRANSACTION_3.CODED_BY = tbl_USER_ACCESS_3.USER_NTLG
                               WHERE        (tbl_TRANSACTION_3.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_3.ERROR_WEIGHTAGE > 0)
                               GROUP BY tbl_TRANSACTION_3.CODED_DATE, tbl_TRANSACTION_3.CODED_BY, tbl_USER_ACCESS_3.EMP_ID, tbl_TRANSACTION_3.CODING_STATUS, 
                                                         tbl_TRANSACTION_3.QC_STATUS) AS ChartError,
                             (SELECT DISTINCT COUNT(tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded
                               FROM            tbl_TRANSACTION AS tbl_TRANSACTION_4 INNER JOIN
                                                         tbl_USER_ACCESS AS tbl_USER_ACCESS_4 ON tbl_TRANSACTION_4.CODED_BY = tbl_USER_ACCESS_4.USER_NTLG INNER JOIN
                                                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION_4.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
                               WHERE        (tbl_TRANSACTION_4.CODED_DATE = tbl_TRANSACTION_1.CODED_DATE) AND (tbl_TRANSACTION_4.CODING_STATUS = 'Coded')
                               GROUP BY tbl_TRANSACTION_4.CODED_DATE, tbl_TRANSACTION_4.CODED_BY, tbl_USER_ACCESS_4.EMP_ID, tbl_TRANSACTION_4.CODING_STATUS, 
                                                         tbl_TRANSACTION_4.QC_STATUS, tbl_TRANSACTION_DETAILS.ICD) AS ICDCoded, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_TRANSACTION AS tbl_TRANSACTION_1 INNER JOIN
                         tbl_USER_ACCESS AS tbl_USER_ACCESS_1 ON tbl_TRANSACTION_1.CODED_BY = tbl_USER_ACCESS_1.USER_NAME INNER JOIN
                         tbl_IMPORT_TABLE ON tbl_TRANSACTION_1.BATCH_ID = tbl_IMPORT_TABLE.BATCH_ID
WHERE        (CONVERT(varchar(12), tbl_TRANSACTION_1.CODED_DATE, 101) BETWEEN @FromDate AND @ToDate) AND 
                         (tbl_TRANSACTION_1.AUDIT_CATEGORY = @AuditCategory) AND (tbl_IMPORT_TABLE.LOCATION = @Location)
	 END 
End







--EXEC	  [dbo].[sp_Get_Data_AccuracyReportHighMark]

--@FromDate  = N'08/28/2016',
--	@ToDate = N'11/05/2016',
--	@ProjectId =18,
--    @Userntlg = N'null',
--    @AuditCategory = N'null',
--    @Location = N'null'

		 
 

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_Client_Clarification]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Data_For_Client_Clarification]
	@UserNTLG varchar (100),
	@Type varchar (100)
AS
BEGIN
	
	DECLARE @dataset TransactionDetails 
    Declare @data2 dbo.Coder_Limited_Records
    
    BEGIN		
	
	
	INSERT INTO @dataset 		     
	
			SELECT  DENSE_RANK() OVER(ORDER BY I.BATCH_ID) AS S_NO,T.TRANS_ID,REPLACE(d.cpt_order,'CPT','') AS CPT_ORDER,T.QC_STATUS,D.DOWNLOADING_COMMENTS,I.BATCH_ID,DOS_CHANGED,I.FACILITY,CONVERT(date, T.DOS ,103) AS RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,T.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,D.PROVIDER_MD,D.ASSISTANT_PROVIDER,
			T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,CASE WHEN T.SHARD_VISIT = 'NOT SHARED' THEN '' ELSE T.SHARD_VISIT END AS SHARD_VISIT,T.CODED_BY,
			CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT,MODIFIER,CPT_ORDER
			ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,t.ERROR_CATEGORY,t.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.[W/O_ATTESTATION],IS_REOPENED,D.COMMENTS,T.CODING_STATUS,T.KEYING_COMMENTS  FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
			WHERE I.BATCH_ID = T.BATCH_ID
			AND T.TRANS_ID = D.TRANS_ID
			AND I.BATCH_STATUS ='CODED'
			AND T.QC_STATUS IS NULL
			AND IS_AUDITED = 0
			--AND IS_PENDING = 1 
		    AND T.CODED_BY =@UserNTLG
		    AND KEYING_COMMENTS != ''		
			GROUP BY T.TRANS_ID,cpt_order,D.TRANS_DETAIL_ID,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,T.DOS,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,T.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,D.PROVIDER_MD,D.ASSISTANT_PROVIDER,
			T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,t.ERROR_CATEGORY,t.ERROR_SUBCATEGORY,T.[W/O_ATTESTATION],IS_REOPENED,D.COMMENTS,T.CODING_STATUS,T.KEYING_COMMENTS
			ORDER BY D.TRANS_DETAIL_ID desc
	
		
		SELECT *  FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
		ORDER BY TRANS_DETAIL_ID ,ACCOUNT_NO, cpt_order		
		
		END 
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_QC_Error_Clarification]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Data_For_QC_Error_Clarification]	
	@UserNTLG varchar (100),		
		@Type varchar (100),
		@ProjectId int
AS
BEGIN
	
	DECLARE @dataset TransDataWithCPTAndICDForError 
	
			  
	IF (@Type = 'Regular' )
	
	BEGIN
	
	INSERT INTO @dataset 	
		SELECT T.QC_STATUS,D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,T.DOS,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,I.PAYER_CLASS,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.[W/O_ATTESTATION],T.ACKNOWLEDGE_COMMENTS FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.QC_STATUS = 'ERROR'
		AND T.IS_ACKNOWLEDGE = 'N' 
		AND T.IS_PENDING=0
	    AND t.QC_BY = @UserNTLG
	    AND T.PROJECT_ID=@ProjectId
		GROUP BY T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,T.DOS,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,I.PAYER_CLASS,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.[W/O_ATTESTATION],T.ACKNOWLEDGE_COMMENTS
		
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
		
		
		
		   ELSE IF (@Type = 'Pending')		
		BEGIN	
			
	INSERT INTO @dataset 	
		SELECT T.QC_STATUS,D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,T.DOS,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,I.PAYER_CLASS,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.[W/O_ATTESTATION],T.ACKNOWLEDGE_COMMENTS FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.QC_STATUS = 'ERROR'
		AND T.IS_ACKNOWLEDGE = 'N' 
		AND T.IS_PENDING=1
	    AND t.QC_BY = @UserNTLG
	    AND T.PROJECT_ID=@ProjectId
		GROUP BY T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,T.DOS,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,I.PAYER_CLASS,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR,T.[W/O_ATTESTATION],T.ACKNOWLEDGE_COMMENTS
		
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_QC_Log_Report]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Get_Data_For_QC_Log_Report]	
	@Userntlg varchar (100),
	@Qcstatus VARCHAR (100),
	@FromDate DATETIME,
	@ToDate DATETIME,
	@ProjectId int
	
AS
BEGIN
	
	DECLARE @dataset ErrorDataForQCLogReport_peri 
	DECLARE @USERACCESS VARCHAR (100)
	
	
	SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@ProjectId)
	
	IF(@ProjectId=16)	
	BEGIN
	
	
	IF (@Qcstatus = 'ERROR')
	
	BEGIN
	
	IF(@USERACCESS = 'CODER-QC')
	
	BEGIN
	
	IF (@FromDate != '' AND @ToDate != '')
		
    BEGIN 
		  
	INSERT INTO @dataset
		
		
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg		
		AND T.PROJECT_ID=@ProjectId
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
        
        ELSE
        
         BEGIN
          INSERT INTO @dataset 	
         SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
         END 
        
      END 
        
        ELSE IF(@USERACCESS = 'CODER')
        
        BEGIN
        
        IF (@FromDate != '' AND @ToDate != '')
        BEGIN
        
        INSERT INTO @dataset 		
		
		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId		
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no,  CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        
        
        
        ELSE IF (@USERACCESS ='CODER-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND  @ToDate != '' )
        
        BEGIN         
         INSERT INTO @dataset 	
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND T.QC_STATUS ='ERROR'		
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId	
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
         
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        ELSE IF (@USERACCESS ='CODER-QC-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND @ToDate != '' )
        
        BEGIN 
            INSERT INTO @dataset 	
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId		
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
      SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		AND t.QC_STATUS ='ERROR'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId		
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        
        END 
        
        END 
        
    END
		
		
   ELSE
   
   BEGIN
   
   IF(@USERACCESS = 'CODER-QC')
	
	BEGIN
	
	IF (@FromDate != '' AND @ToDate != '')
		
    BEGIN 
		  
	INSERT INTO @dataset		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)	
	    AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId	
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	   	
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
        
        ELSE
        
         BEGIN
         INSERT INTO @dataset 	
       		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)	
	    AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
         END 
        
      END 
        
        ELSE IF(@USERACCESS = 'CODER')
        
        BEGIN
        
        IF (@FromDate != '' AND @ToDate != '')
        BEGIN
        
        INSERT INTO @dataset 		
		
		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId		
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        
			SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId	
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        
        
        
        ELSE IF (@USERACCESS ='CODER-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND  @ToDate != '' )
        
        BEGIN         
         INSERT INTO @dataset 	
	SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId			
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
         
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId		
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        ELSE IF (@USERACCESS ='CODER-QC-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND @ToDate != '' )
        
        BEGIN 
            INSERT INTO @dataset 	
	    SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId					
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
       SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		--AND I.BATCH_STATUS ='CODED'
		--AND t.QC_STATUS ='ERROR'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		--AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId				
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        
        END 
        
        END 
   
   END 
   END
   
   --FOR PROJECT ID -8
   
   IF(@ProjectId=8)	
	BEGIN
	
	
	IF (@Qcstatus = 'ERROR')
	
	BEGIN
	
	IF(@USERACCESS = 'CODER-QC')
	
	BEGIN
	
	IF (@FromDate != '' AND @ToDate != '')
		
    BEGIN 
		  
	INSERT INTO @dataset
		
		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg		
		AND T.PROJECT_ID=@ProjectId
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
        
        ELSE
        
         BEGIN
          INSERT INTO @dataset 	
         SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
         END 
        
      END 
        
        ELSE IF(@USERACCESS = 'CODER')
        
        BEGIN
        
        IF (@FromDate != '' AND @ToDate != '')
        BEGIN
        
        INSERT INTO @dataset 		
		
		
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId		
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        
        
        
        ELSE IF (@USERACCESS ='CODER-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND  @ToDate != '' )
        
        BEGIN         
         INSERT INTO @dataset 	
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)		
		AND T.PROJECT_ID=@ProjectId	
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
         
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        ELSE IF (@USERACCESS ='CODER-QC-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND @ToDate != '' )
        
        BEGIN 
            INSERT INTO @dataset 	
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId		
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        
        END 
        
        END 
        
    END
		
		
   ELSE
   
   BEGIN
   
   IF(@USERACCESS = 'CODER-QC')
	
	BEGIN
	
	IF (@FromDate != '' AND @ToDate != '')
		
    BEGIN 
		  
	INSERT INTO @dataset
		
		
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId	
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END
        
        ELSE
        
         BEGIN
          INSERT INTO @dataset 	
         SELECT   dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND (T.SEND_TO_CODER = 'Y' or t.SEND_TO_CODER ='N')
		AND T.QC_STATUS IN(@Qcstatus)
		AND T.QC_BY =@Userntlg	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
         END 
        
      END 
        
        ELSE IF(@USERACCESS = 'CODER')
        
        BEGIN
        
        IF (@FromDate != '' AND @ToDate != '')
        BEGIN
        
        INSERT INTO @dataset 		
		
		
		SELECT dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI  AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.ACCOUNT_STATUS = 'Completed' 	
		AND T.IS_ACKNOWLEDGE = 'Y' 
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId		
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        
		SELECT   dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.ACCOUNT_STATUS = 'Completed'
		AND T.IS_ACKNOWLEDGE = 'Y'  	
		AND T.CODED_BY =@Userntlg
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        
        
        
        ELSE IF (@USERACCESS ='CODER-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND  @ToDate != '' )
        
        BEGIN         
         INSERT INTO @dataset 	
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no, CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'		 
		AND T.ACCOUNT_STATUS = 'Completed'
		AND T.IS_ACKNOWLEDGE = 'Y'
		AND T.PROJECT_ID=@ProjectId  			
		AND T.CODED_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
         
		SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.ACCOUNT_STATUS = 'Completed'
		AND T.IS_ACKNOWLEDGE = 'Y'  
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        END 
        
        ELSE IF (@USERACCESS ='CODER-QC-TL')
        
        BEGIN
        
        IF(@FromDate != '' AND @ToDate != '' )
        
        BEGIN 
            INSERT INTO @dataset 	
		SELECT   dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO, CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.ACCOUNT_STATUS = 'Completed'
		AND T.IS_ACKNOWLEDGE = 'Y'  	
		AND T.PROJECT_ID=@ProjectId
		AND T.QC_DATE BETWEEN @FromDate AND @ToDate	    
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        END 
        
        ELSE 
        
        BEGIN
         INSERT INTO @dataset 	
        SELECT  dense_rank() over (order by ACCOUNT_NO) as Sr_no,CONVERT(date, T.QC_DATE ,103) AS QC_DATE, D.DOWNLOADING_COMMENTS,I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS, DOI AS DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.CODED_BY,
		CPT,ICD,'ICD'+ cast(ROW_NUMBER() OVER(PARTITION BY ACCOUNT_NO,CPT
		ORDER BY ACCOUNT_NO) as varchar(10)) AS ICD_RESULT,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,T.QC_COMMENTS,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR FROM tbl_IMPORT_TABLE I, tbl_TRANSACTION T, tbl_TRANSACTION_DETAILS D
		WHERE I.BATCH_ID = T.BATCH_ID
		AND T.TRANS_ID = D.TRANS_ID
		AND I.BATCH_STATUS ='CODED'
		AND T.SEND_TO_CODER = 'Y'
		AND T.ACCOUNT_STATUS = 'Completed'
		AND T.IS_ACKNOWLEDGE = 'Y'  	
		AND T.PROJECT_ID=@ProjectId
		GROUP BY  D.TRANS_DETAIL_ID,T.QC_DATE, T.QC_COMMENTS,T.QC_STATUS,D.DOWNLOADING_COMMENTS, I.BATCH_ID,T.DOS_CHANGED,I.FACILITY,I.RECEIVED_DATE,I.ACCOUNT_NO,I.PATIENT_NAME,I.AGE,I.DISPOSITION,T.EDMD,T.ADMITTING_PHY,T.ATTENDING_PHY,T.INSURANCE,T.PROVIDER_MD,T.ASSISTANT_PROVIDER,
		T.PATIENT_STATUS,T.DOI,T.TOI,T.TYPE_OF_ACCIDENT,T.SHARD_VISIT,T.DISPOSITION,CPT,ICD,T.CODED_BY,T.ERROR_CATEGORY,T.ERROR_SUBCATEGORY,D.MODIFIER,D.UNITS,D.DEFICIENCY_INDICATOR
		ORDER BY D.TRANS_DETAIL_ID ASC
		
		SELECT * FROM @dataset
		PIVOT(max(ICD) 
        FOR ICD_RESULT IN (ICD1, ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8)) AS PVTTable
        
        
        END 
        
        END 
   
   END 
   END
		
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_QC_Log_ReportHighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
  
CREATE PROCEDURE [dbo].[sp_Get_Data_For_QC_Log_ReportHighMark]	
	@Userntlg varchar (100),
	@Qcstatus VARCHAR (100),
	@FromDate DATETIME,
	@ToDate DATETIME,
	@ProjectId int,
	@TASK_ID int,
	@IsAck varchar (100)

AS
BEGIN
SET FMTONLY OFF; 
	DECLARE @USERACCESS VARCHAR (100)
	DECLARE @Query VARCHAR (max)
	DECLARE @sql VARCHAR (max)
    DECLARE	@data VARCHAR (max)=null
     create table #Temp
(
    EventID varchar(500))
    
  
    
	SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@ProjectId)
	SET @Query = (select  FIELD_NAME from tbl_COMMON_FIELD where PROJECT_ID=@ProjectId and TASK_ID=@TASK_ID)
	
	  
      begin     
      set @Query=REPLACE(@Query,'QC_BY','T.QC_BY')
      set @Query=REPLACE(@Query,'QC_DATE','T.QC_DATE')
      set @Query=REPLACE(@Query,'QC_COMMENTS','T.QC_COMMENTS')
      set @Query=REPLACE(@Query,'ERROR_CATEGORY','T.ERROR_CATEGORY')
      set @Query=REPLACE(@Query,'ERROR_SUBCATEGORY','T.ERROR_SUBCATEGORY')
      set @Query=REPLACE(@Query,'IS_ACKNOWLEDGE','T.IS_ACKNOWLEDGE')
      set @Query=REPLACE(@Query,'ACKNOWLEDGE_COMMENTS','T.ACKNOWLEDGE_COMMENTS')
      set @Query=REPLACE(@Query,'IS_ACKNOWLEDGE_BY','IS_ACKNOWLEDGE_BY')
      end
      
      
      set @data = 'select  '+@Query+' from tbl_IMPORT_TABLE I INNER JOIN
                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS TD ON T.TRANS_ID = TD.TRANS_ID where (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')'

-- For Error marked


IF(@IsAck = 'N')

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'')'
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'') AND T.CODED_BY='+@Userntlg
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'') AND T.CODED_BY='+@Userntlg

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'')'
end   
 
 
END

-- For Error fixed marked



IF(@IsAck = 'Y')

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'')'
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND T.CODED_BY='+@Userntlg
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND T.CODED_BY='+@Userntlg

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'')'
end    
   
 set @data='select  '+@Query+' from tbl_IMPORT_TABLE I INNER JOIN
                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS TD ON T.TRANS_ID = TD.TRANS_ID'
   
    exec(@data)
 
 
END
 

END
    
             
	 

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_QC_Log_ReportHighMark_1]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Get_Data_For_QC_Log_ReportHighMark_1]	
	@Userntlg varchar (100),	 
	@FromDate DATETIME,
	@ToDate DATETIME,
	@ProjectId int,
	@TASK_ID int,
	@IsAck varchar (100),
	@Location varchar (100)=null

AS
BEGIN
--SET FMTONLY OFF; 

if OBJECT_ID('tempdb..##Result1')is not null

drop table ##Result1


		DECLARE @USERACCESS VARCHAR (100)
	DECLARE @Query VARCHAR (max)
	DECLARE @sql nVARCHAR (max)
    DECLARE	@data nVARCHAR (max)=null
    declare @PARAMlIST nvarchar(max)
    DECLARE @Filter VARCHAR (max)
    
  
    
	SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@ProjectId)
	SET @Query = (select  FIELD_NAME from tbl_COMMON_FIELD where PROJECT_ID=@ProjectId and TASK_ID=@TASK_ID)
	SET @Filter = (select  Filters from tbl_COMMON_FIELD where PROJECT_ID=@ProjectId and TASK_ID=@TASK_ID)
	
	  
      begin     
      set @Query=REPLACE(@Query,'QC_BY','T.QC_BY')
      set @Query=REPLACE(@Query,'QC_DATE','T.QC_DATE')
      set @Query=REPLACE(@Query,'QC_COMMENTS','T.QC_COMMENTS')
      set @Query=REPLACE(@Query,'ERROR_CATEGORY','T.ERROR_CATEGORY')
      set @Query=REPLACE(@Query,'ERROR_SUBCATEGORY','T.ERROR_SUBCATEGORY')
      set @Query=REPLACE(@Query,'IS_ACKNOWLEDGE','T.IS_ACKNOWLEDGE')
      set @Query=REPLACE(@Query,'ACKNOWLEDGE_COMMENTS','T.ACKNOWLEDGE_COMMENTS')
      set @Query=REPLACE(@Query,'IS_ACKNOWLEDGE_BY','IS_ACKNOWLEDGE_BY')
       set @Query=REPLACE(@Query,'PATIENT_NAME','T.PATIENT_NAME')
      end
      
     
      set @data = 'select  '+@Query+' into ##Result1 from tbl_IMPORT_TABLE I INNER JOIN
                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS TD ON T.TRANS_ID = TD.TRANS_ID where  (I.PROJECT_ID=@ProjectId)  and (convert(varchar(12),'+@Filter+',101) between @FromDate and @ToDate) '

      
      
-- For Error marked


IF(@IsAck = 'N' And @Location is null)

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null)  and (T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '-- AND T.CODED_BY=''AmitKumac''
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null)   and (T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +' AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  '
end   
 
 
END

-------------------------

IF(@IsAck = 'N' And @Location is not null)

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') AND (LOCATION=@Location) '
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null)  and (T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'-- AND T.CODED_BY=''AmitKumac''
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null)   and (T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +' AND (T.IS_ACKNOWLEDGE=''N'' or T.IS_ACKNOWLEDGE is null) AND (T.QC_STATUS=''Error'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')   AND (LOCATION=@Location)'
end   
 
 
END

-- For Error fixed marked



IF(@IsAck = 'Y' And @Location is null)

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'' and T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '--AND T.CODED_BY=''AmitKumac''
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y''  and T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'') '
end    
   
 END
 
 ----------------------------
   IF(@IsAck = 'Y' And @Location is not null)

BEGIN
 IF(@USERACCESS = 'CODER-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'
end

ELSE IF(@USERACCESS = 'CODER') 
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'' and T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'--AND T.CODED_BY=''AmitKumac''
end   

ELSE IF(@USERACCESS = 'CODER-QC')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y''  and T.CODED_BY=@Userntlg ) AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'

end   

ELSE IF(@USERACCESS = 'Coder-QC-TL')
begin
set @data = @data +'  AND (T.IS_ACKNOWLEDGE=''Y'') AND (T.QC_STATUS=''Qced'' or T.QC_STATUS=''QC Allotted''  or T.QC_STATUS=''Completed'') AND (T.CODING_STATUS=''Coded'') AND (I.BATCH_STATUS=''QC Allotted'' or I.BATCH_STATUS=''QC''  or I.BATCH_STATUS=''Completed'') AND (T.QC_ERROR_CORRECTION = ''Y'' or T.QC_ERROR_CORRECTION =''N'')  AND (LOCATION=@Location)'
end    
   
 END
  ----------------------------
    set @PARAMlIST='@Userntlg varchar (100),@FromDate DATETIME,@ToDate DATETIME,@ProjectId int,@TASK_ID int,@IsAck varchar(100),@Location varchar (100)'
    
    execute sp_executesql @data,@PARAMlIST,@Userntlg ,@FromDate ,@ToDate ,@ProjectId ,@TASK_ID ,@IsAck ,@Location 
    --Main Query Result-----
 --select * from ##Result1
    if OBJECT_ID('tempdb..##DynamicSet')is not null

    drop table ##DynamicSet
    
    Declare @tablename varchar(max)='##Result1'
    declare @Keycol varchar(max)='AccountNo'
    
    Declare @columns nvarchar(max)=''
    Declare @values nvarchar(max)=''
    declare @DyResult nvarchar(max)=''
    
    select @columns+=','+QUOTENAME(COLUMN_NAME),@values+= ','+QUOTENAME(COLUMN_NAME)+'=convert(nvarchar(max),'+QUOTENAME(COLUMN_NAME)+')'
    from tempdb.INFORMATION_SCHEMA.COLUMNS
    where TABLE_NAME=@tablename and COLUMN_NAME<>@Keycol
    
  
    
    set @DyResult=N'select * into ##DynamicSet
     from
     (
     select '+@Keycol+@values+' from '+@tablename+')as tableq
     unpivot
     (
     Value for COLUMN_NAME in ('+stuff(@columns,1,1,'')+')
     )as dyn'
    exec sp_executesql @DyResult--,@PARAMlIST,@Userntlg ,@FromDate ,@ToDate ,@ProjectId ,@TASK_ID ,@IsAck 
    
    
    --Dynamic Report Result---
    select * from ##DynamicSet
    --order by COLUMN_NAME
    
    --select  distinct COLUMN_NAME from ##DynamicSet
    
    
    
   
    
    
 
 

 

END


 --EXEC	 [dbo].[sp_Get_Data_For_QC_Log_ReportHighMark_1]
	--	@Userntlg = 'AmitKumaC',
	--	@FromDate = '01/31/2016',
	--	@ToDate = '11/09/2016',
	--	@ProjectId = 18,
	--	@TASK_ID = 117,
	--	@IsAck = 'N',
	--  @Location='bangalore'
    
    
    
             
	 

GO
/****** Object:  StoredProcedure [dbo].[sp_Get_Data_For_QC_Log_ReportSeparateForHighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<ErrorLog,Report,Highmark>
-- Modified on 19/04/2017 by Subhaja ---Added ICD Comments,CodersEmpID,QCEmpId
-- =============================================
/* 
 sp_Get_Data_For_QC_Log_ReportSeparateForHighMark 'SubhajakK','05/11/2017','05/11/2017',18,1,'QC Changes','Bangalore'
 sp_Get_Data_For_QC_Log_ReportSeparateForHighMark 'pradeeprg','04/27/2017','04/27/2017',18,1,'Error Log','Bangalore'
 sp_Get_Data_For_QC_Log_ReportSeparateForHighMark 'SubhajakK','04/27/2017','04/27/2017',18,1,'Error Log',NULL
 sp_Get_Data_For_QC_Log_ReportSeparateForHighMark 'SubhajakK','05/24/2017','05/24/2017',18,1,'QC Changes','Bangalore' 
 
 */
CREATE  PROCEDURE [dbo].[sp_Get_Data_For_QC_Log_ReportSeparateForHighMark]	
	@Userntlg VARCHAR (100),	 
	@FromDate DATETIME,
	@ToDate DATETIME,
	@ProjectId INT,
	@PracticeId INT,	
	@status VARCHAR (100),	
	@Location VARCHAR (100)=NULL

AS
BEGIN
	IF(@status='Error Log')		
		BEGIN
			IF(@Location IS NULL)
				BEGIN
				       SELECT	tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
								tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
								tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, 
								REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
								REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY,
								tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
								tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
								
						FROM    tbl_IMPORT_TABLE INNER JOIN
								tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
								tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
							    INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
								INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
						WHERE	(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) and tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12), tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate AND @ToDate)  
								AND tbl_TRANSACTION.QC_STATUS in ('completed','qced') 
								AND tbl_TRANSACTION.CODING_STATUS in ('coded','completed')  
								--AND tbl_TRANSACTION.QC_ERROR_CORRECTION='Y' 
								AND error_count = 1

								UNION

						SELECT		tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
									tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
									tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, 
									REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
									REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY,
									tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
									tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
									,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
						FROM        tbl_IMPORT_TABLE INNER JOIN
									tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
									tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
									INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
									INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
						WHERE		(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) and tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12), tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate AND @ToDate)  
									AND (tbl_TRANSACTION.QC_STATUS='QC') AND (tbl_TRANSACTION.CODING_STATUS='Coded')
									AND tbl_TRANSACTION.QC_ERROR_CORRECTION='Y' AND  tbl_TRANSACTION_DETAILS.ERROR_CATEGORY IS NOT NULL AND tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY IS NOT NULL
									--OR ( tbl_TRANSACTION_DETAILS.ICD_RESULT IS NOT NULL AND ASA_CROSS='Y')
				END
			ELSE
				BEGIN
						SELECT	tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
								tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
								tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE,
								REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
								REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY, 
								tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
								tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
								,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
						FROM    tbl_IMPORT_TABLE INNER JOIN
								tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
								tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
								INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
								INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
						WHERE	(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) and tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12),tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate AND @ToDate)  
								AND tbl_TRANSACTION.QC_STATUS in ('completed','qced') 
								AND tbl_TRANSACTION.CODING_STATUS in ('coded','completed')  AND (tbl_IMPORT_TABLE.LOCATION=@Location)
								--AND tbl_TRANSACTION.QC_ERROR_CORRECTION='Y' 
								AND error_count = 1 

								UNION

						SELECT		tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
									tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
									tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, 
									REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
									REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY, 
									tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
									tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
									,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
						FROM        tbl_IMPORT_TABLE INNER JOIN
									tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
									tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
									INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
									INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
						WHERE		(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) AND tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12), tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate 
									AND @ToDate)  AND (tbl_TRANSACTION.QC_STATUS='QC') AND (tbl_TRANSACTION.CODING_STATUS='Coded')  AND (tbl_IMPORT_TABLE.LOCATION=@Location)
									AND tbl_TRANSACTION.QC_ERROR_CORRECTION='Y'   AND  tbl_TRANSACTION_DETAILS.ERROR_CATEGORY IS NOT NULL AND tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY IS NOT NULL
									--OR ( tbl_TRANSACTION_DETAILS.ICD_RESULT IS NOT NULL AND ASA_CROSS='Y')
				END
		END
    ELSE IF(@status='QC Changes')
		BEGIN
			IF(@Location IS NULL)
			BEGIN
				SELECT		tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
										tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
										tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, 
										REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
										REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY,
										tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
										tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
										,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
							FROM        tbl_IMPORT_TABLE INNER JOIN
										tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
										tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
										INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
										INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
							WHERE		(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) and tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12), tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate AND @ToDate)  
										AND (tbl_TRANSACTION.QC_STATUS IN ('QCed','Completed')) AND (tbl_TRANSACTION.CODING_STATUS='Coded')
										AND  tbl_TRANSACTION_DETAILS.ERROR_CATEGORY IS  NULL AND tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY IS  NULL AND tbl_TRANSACTION_DETAILS.Error_Count IS  NULL
										AND ( tbl_TRANSACTION_DETAILS.ICD_RESULT IS NOT NULL)-- AND tbl_TRANSACTION_DETAILS.ASA_CROSS='Y')
									
			END
			ELSE
				BEGIN
					SELECT		tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
										tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
										tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, 
										REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_CATEGORY,
										REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') AS ERROR_SUBCATEGORY, 
										tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
										tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
										,tbl_TRANSACTION_DETAILS.COMMENTS AS ICD_Comments,U.EMP_ID AS CODER_EMPID,UA.EMP_ID AS QC_EMPID,tbl_TRANSACTION_DETAILS.Error_Count,tbl_TRANSACTION_DETAILS.ICD AS DX_CODE
							FROM        tbl_IMPORT_TABLE INNER JOIN
										tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
										tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
										INNER JOIN dbo.tbl_USER_ACCESS U ON tbl_TRANSACTION.CODED_BY=U.USER_NTLG
										INNER JOIN dbo.tbl_USER_ACCESS UA ON tbl_TRANSACTION.QC_BY=UA.USER_NTLG
							WHERE		(tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) AND tbl_IMPORT_TABLE.PRACTICE_ID=@PracticeId AND (CONVERT(VARCHAR(12), tbl_TRANSACTION.QC_DATE, 101) BETWEEN @FromDate 
										AND @ToDate)  AND (tbl_TRANSACTION.QC_STATUS IN ('QCed','Completed')) AND (tbl_TRANSACTION.CODING_STATUS='Coded')  AND (tbl_IMPORT_TABLE.LOCATION=@Location)
										AND tbl_TRANSACTION_DETAILS.ERROR_CATEGORY IS  NULL AND tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY IS  NULL AND tbl_TRANSACTION_DETAILS.Error_Count IS  NULL
										AND ( tbl_TRANSACTION_DETAILS.ICD_RESULT IS NOT NULL )--AND tbl_TRANSACTION_DETAILS.ASA_CROSS='Y')
				END
		END
END

/*select * from tbl_TRANSACTION where PROJECT_ID=18 and QC_STATUS='qc'


SELECT        tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
                         tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
                         tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE,
						 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') as ERROR_CATEGORY,
                          replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') as ERROR_SUBCATEGORY,
						  tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
                         tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_IMPORT_TABLE INNER JOIN
                         tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID and tbl_IMPORT_TABLE.PROJECT_ID=18

						 and  tbl_TRANSACTION.TRANS_ID=29538



						 declare @t table (email varchar(50))
 insert into @t values
  ('abc@gmail.abc.com'),
 ('123abc@gmail.abc.com1'),
 ('123abc@gmail.abc.com12'),
 ('123abc@gmail1.com123'),
 ('abc@gmail.net9')

SELECT Reverse(Substring(Reverse(email),
 Patindex('%[^0-9]%', Reverse(email)), Len(email)))
FROM   @t a


DECLARE @X VARCHAR(500)
 
SELECT @X = '6_Others**8_ICD*9_ICD'
 
SELECT @X = REPLACE(REPLACE(@X,NUMBER,''),'_','')
  FROM MASTER.dbo.spt_values
 WHERE TYPE ='P'
   AND number between 0 and 9
  
SELECT @X

DECLARE @X VARCHAR(max)

set @x='select   ERROR_CATEGORY  into #temp1 from tbl_TRANSACTION_DETAILS  where TRANS_ID=29538'
print @x
  select  REPLACE('6_Others**8_ICD*9_ICD',NUMBER,'') FROM master.DBO.spt_values WHERE TYPE='P' AND number BETWEEN 0 AND 9) from #temp1




 @x='select   ERROR_CATEGORY into #temp1 from tbl_TRANSACTION_DETAILS  where TRANS_ID=29538 '


SELECT  tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
                          tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
                          tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE,
						  replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') as ERROR_CATEGORY,
                          replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') as ERROR_SUBCATEGORY, 
						  tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
                          tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
						  FROM tbl_IMPORT_TABLE INNER JOIN
                         tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID and tbl_IMPORT_TABLE.PROJECT_ID=18

						 and  tbl_TRANSACTION.TRANS_ID=29538

 

declare @query varchar(max)

SET @codername = REPLACE(@codername,',',''',''')

if OBJECT_ID('tempdb..##ResultCodingProdMedData1')is not null
drop table ##ResultCodingProdMedData






DECLARE @delimiter1 VARCHAR(50)

SET @delimiter1='_'
--DECLARE @expres  VARCHAR(50) = '%[0-9]%'
 --WHILE PATINDEX( @expres,  ) > 0
SELECT        tbl_IMPORT_TABLE.ACCOUNT_NO, tbl_IMPORT_TABLE.ECI, tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, 
                         tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, tbl_TRANSACTION.CODED_BY, 
                         tbl_TRANSACTION.UPDATED_DATE, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE,
			
					
					 
	 replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','')
	-- Replace(REPLACE( tbl_TRANSACTION_DETAILS.ERROR_CATEGORY, SUBSTRING( tbl_TRANSACTION_DETAILS.ERROR_CATEGORY, PATINDEX( @expres, tbl_TRANSACTION_DETAILS.ERROR_CATEGORY ), 1 ),''),'-',' ')
		 	 
		 
		  as ERROR_CATEGORY ,
                         replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''), tbl_TRANSACTION.IS_ACKNOWLEDGE, tbl_TRANSACTION_DETAILS.ACKNOWLEDGE_COMMENTS, 
                         tbl_TRANSACTION.IS_ACKNOWLEDGE_BY, tbl_IMPORT_TABLE.LOCATION
FROM            tbl_IMPORT_TABLE INNER JOIN
                         tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID and tbl_IMPORT_TABLE.PROJECT_ID=18

						 and  tbl_TRANSACTION.TRANS_ID=29538



 DECLARE @str VARCHAR(400)
    DECLARE @expres  VARCHAR(50) = '%[0-9]%'
    SET @str = '208Pb87876jkjhkjhkhgkk889089'
    WHILE PATINDEX( @expres, @str ) > 0
      SET @str = Replace(REPLACE( @str, SUBSTRING( @str, PATINDEX( @expres, @str ), 1 ),''),'-',' ')

    SELECT @str


	--select replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(ERROR_CATEGORY,'_',''),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9','') from tbl_TRANSACTION_DETAILS where trans_id=29538
	

	select ERROR_CATEGORY from tbl_TRANSACTION_DETAILS where trans_id=29538



	--DECLARE @X VARCHAR(500)
 
SELECT @X = '6_Others**8_ICD*9_ICD'
 
select * (SELECT   REPLACE(REPLACE(ERROR_CATEGORY,NUMBER,''),'_','')  from tbl_TRANSACTION_DETAILS where trans_id=29538)   a


  FROM
  
   MASTER.dbo.spt_values
 WHERE TYPE ='P'
   AND number between 0 and 9
  
SELECT @X


SELECT ERROR_CATEGORY = (SELECT column-name FROM table-name WHERE condition),
       column-names
  FROM table-name
 WEHRE condition*/




 --EXEC [sp_Get_Data_For_QC_Log_ReportSeparateForHighMark]	
	--@Userntlg='DebshreeC',	 
	--@FromDate=NULL,
	--@ToDate=NULL,
	--@ProjectId=18,
	--@PracticeId=2,	
	--@status='Error Log',	
	--@Location='Bangalore'
GO
/****** Object:  StoredProcedure [dbo].[SP_Get_Menu_Details]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Get_Menu_Details]
	@USERNTLG VARCHAR (100),
	@PROJECT VARCHAR (100),
	@PRACTICE VARCHAR (100)
AS
BEGIN	


	--SELECT MENU_NAME,SUB_MENU_NAME,URL FROM tbl_MAIN_MENU M, tbl_SUB_MENU S
	--WHERE M.MENU_ID = S.MENU_ID
	--AND ACCESS_TYPE IN (SELECT ACCESS_ID FROM tbl_ACCESS_TYPE WHERE ACCESS_TYPE IN (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG = @USERNTLG))
	--ORDER BY ORDER_ID
	
   
	--SELECT MENU_NAME,SUB_MENU_NAME,URL FROM tbl_MAIN_MENU M, tbl_SUB_MENU S
	--WHERE M.MENU_ID = S.MENU_ID
	--AND ACCESS_TYPE IN (SELECT ACCESS_ID FROM tbl_ACCESS_TYPE WHERE ACCESS_TYPE IN (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG = @USERNTLG
	--AND PROJECT_ID = @PROJECT))
	--ORDER BY ORDER_ID
	
	SELECT MENU_NAME,SUB_MENU_NAME,URL  FROM tbl_MAIN_MENU M, tbl_SUB_MENU S
	WHERE M.MENU_ID = S.MENU_ID
	AND ACCESS_TYPE IN (SELECT ACCESS_ID FROM tbl_ACCESS_TYPE WHERE ACCESS_TYPE IN (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG = @USERNTLG and PROJECT_ID=@PROJECT and PRACTICE_ID=@PRACTICE))
	 AND M.PROJECT_ID = @PROJECT AND SUB_MENU_NAME<>'Production Log' 
	ORDER BY ORDER_ID
	
	
	
	
END

--exec [SP_Get_Menu_Details] 'ManoharR',18,2

GO
/****** Object:  StoredProcedure [dbo].[sp_Master_list]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Master_list] 

@Proj int=null
	
AS
BEGIN

	
	SELECT * FROM tbl_INSURANCE_MASTER ORDER BY INSURANCE

	SELECT * FROM tbl_PATIENT_STATUS_MASTER ORDER BY PATIENT_STATUS

	SELECT * FROM tbl_ACCIDENT_MASTER ORDER BY TYPE_OF_ACCIDENT

	SELECT * FROM tbl_DISPOSITION_MASTER ORDER BY DISPOSITION

	SELECT * FROM tbl_MODIFIER_MASTER ORDER BY MODIFIERS

	SELECT * FROM tbl_DOWN_CODING_MASTER ORDER BY  DESCRIPTION
	
	SELECT (convert(varchar(max),PROVIDER_ID)+ '-' + FIRST_NAME + ',' + LAST_NAME )    AS PROVIDER_NAME, A_ID FROM tbl_ASSISTANT_PROVIDER_MASTER ORDER BY PROVIDER_NAME
 

    SELECT CASE WHEN FIRST_NAME ='DO NOT USE' THEN 'DO NOT USE' ELSE FIRST_NAME + ',' + LAST_NAME + '-' + CAST((PHYSICIAN_ID)  AS VARCHAR(200)) END AS PHYSICIAN_NAME, PHYSICIAN_ID   FROM tbl_PROVIDER_MD_MASTER ORDER BY PHYSICIAN_NAME

--Perimeter Master Data--


    SELECT * FROM tbl_CPT1_MASTER ORDER BY CPT1_ID
    
    SELECT * FROM tbl_PATIENT_STATUS_MASTER where PROJECT_ID='16' ORDER BY PATIENT_STATUS 
    
    SELECT * FROM tbl_SCRIBE_MASTER where PROJECT_ID='16' ORDER BY SCRIBE_NAME
    
    --SELECT * FROM tbl_NP_PA_MASTER where PROJECT_ID='16' ORDER BY NP_PA_NAME
    SELECT (NP_PA_CODE+'-'+NP_PA_NAME) as NP_PA_NAME,NP_PA_CODE,FACILITY_CODE FROM tbl_NP_PA_MASTER where PROJECT_ID='16' ORDER BY NP_PA_NAME
  
  
      --SELECT distinct PHYSICIAN_NAME,PHYSICIAN_ID FROM tbl_ATTENDING_PHYSICIAN_MASTER where PROJECT_ID='16' ORDER BY PHYSICIAN_NAME
      
      
      SELECT distinct (PHYSICIAN_ID +'-'+ PHYSICIAN_NAME) as PHYSICIAN_NAME,PHYSICIAN_ID,FACILITY_CODE FROM tbl_ATTENDING_PHYSICIAN_MASTER where PROJECT_ID='16' ORDER BY PHYSICIAN_NAME
      
    SELECT * FROM tbl_MODIFIER_MASTER WHERE  PROJECT_ID='16' ORDER BY MODIFIERS
    
    SELECT * FROM tbl_COMMENT_MASTER WHERE  PROJECT_ID='16' ORDER BY COMMENT_NAME
    
    select * from tbl_OTHER_CPT_MASTER where PROJECT_ID=16 order by OCPT_ID
    
    
    
    
    

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Produ_Report]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Produ_Report] 
	
	@UserName varchar (100),
	@FromCodedDate varchar (100),
	@ToCodedDate varchar (100),
	@ProjectId int
AS
BEGIN  

    DECLARE @ACCESSTYPE VARCHAR (100)
    
    
    SET @ACCESSTYPE = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@UserName and PROJECT_ID=@ProjectId)
    
    IF @ACCESSTYPE = 'Coder'
    
    BEGIN    
  
		SELECT T.CODED_BY,T.QC_BY,CONVERT(date, T.CODED_DATE ,103) AS CODED_DATE, CONVERT(date,T.QC_DATE,103) AS QC_DATE, UPPER(T.QC_STATUS) AS QC_STATUS,
		UPPER (T.CODING_STATUS) AS CODING_STATUS,COUNT(*) AS NO_OF_RECORD 
		FROM tbl_TRANSACTION T , tbl_USER_ACCESS A
		WHERE T.CODED_BY = A.USER_NTLG
		AND T.CODED_BY = @UserName
		AND T.PROJECT_ID=@ProjectId
		AND CONVERT(DATE,T.CODED_DATE,103) BETWEEN @FromCodedDate AND @ToCodedDate
		GROUP BY T.CODED_BY,T.QC_BY,CONVERT(DATE,T.CODED_DATE,103),T.QC_DATE, T.CODING_STATUS,T.QC_STATUS
		ORDER BY CONVERT(date, T.CODED_DATE ,103) 
	END
	
	ELSE IF @ACCESSTYPE ='CODER-QC'
	
	BEGIN 
	
	    SELECT T.CODED_BY,T.QC_BY,CONVERT(date, T.CODED_DATE ,103) AS CODED_DATE, CONVERT(date,T.QC_DATE,103) AS QC_DATE, UPPER(T.QC_STATUS) AS QC_STATUS,
		UPPER (T.CODING_STATUS) AS CODING_STATUS,COUNT(*) AS NO_OF_RECORD 
		FROM tbl_TRANSACTION T , tbl_USER_ACCESS A
		WHERE T.CODED_BY = A.USER_NTLG
		AND T.QC_BY = @UserName
			AND T.PROJECT_ID=@ProjectId
		AND T.QC_STATUS IN ('ASSIGNED TO QC', 'ERROR','SEND TO KEYER','Completed')	
		AND CONVERT(DATE,T.CODED_DATE,103) BETWEEN @FromCodedDate AND @ToCodedDate
		GROUP BY T.CODED_BY,T.QC_BY,CONVERT(DATE,T.CODED_DATE,103),T.QC_DATE, T.CODING_STATUS,T.QC_STATUS
		ORDER BY CONVERT(date, T.CODED_DATE ,103)
	
	END 	
	
	ELSE IF @ACCESSTYPE ='CODER-TL'
	
	BEGIN
	
	   SELECT T.CODED_BY,T.QC_BY,CONVERT(date, T.CODED_DATE ,103) AS CODED_DATE, CONVERT(date,T.QC_DATE,103) AS QC_DATE, UPPER(T.QC_STATUS) AS QC_STATUS,
		UPPER (T.CODING_STATUS) AS CODING_STATUS,COUNT(*) AS NO_OF_RECORD 
		FROM tbl_TRANSACTION T , tbl_USER_ACCESS A
		WHERE T.CODED_BY = A.USER_NTLG	
		AND T.PROJECT_ID=@ProjectId	
		AND CONVERT(DATE,T.CODED_DATE,103) BETWEEN @FromCodedDate AND @ToCodedDate
		GROUP BY T.CODED_BY,T.QC_BY,CONVERT(DATE,T.CODED_DATE,103),T.QC_DATE, T.CODING_STATUS,T.QC_STATUS
		ORDER BY CONVERT(date, T.CODED_DATE ,103)
	
	END 
	
	ELSE IF @ACCESSTYPE ='CODER-QC-TL'
	
	BEGIN
	 
	    SELECT T.CODED_BY,T.QC_BY,CONVERT(date, T.CODED_DATE ,103) AS CODED_DATE, CONVERT(date,T.QC_DATE,103) AS QC_DATE, UPPER(T.QC_STATUS) AS QC_STATUS,
		UPPER (T.CODING_STATUS) AS CODING_STATUS,COUNT(*) AS NO_OF_RECORD 
		FROM tbl_TRANSACTION T , tbl_USER_ACCESS A
		WHERE T.CODED_BY = A.USER_NTLG	
		AND T.PROJECT_ID=@ProjectId
		AND CONVERT(DATE,T.CODED_DATE,103) BETWEEN @FromCodedDate AND @ToCodedDate
		GROUP BY T.CODED_BY,T.QC_BY,CONVERT(DATE,T.CODED_DATE,103),T.QC_DATE, T.CODING_STATUS,T.QC_STATUS
		ORDER BY CONVERT(date, T.CODED_DATE ,103)
	
	END 

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Production_Report]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Production_Report] --'ManoharR','2015-02-01','2015-07-01',8
	
	
(@TT  [Perimeter_production_report]  readonly,
@Facility varchar(50)=null
)
as

BEGIN
Declare @QCData table
(
TRANS_ID int null,
DOS Date null,
[Account] varchar(100)null,
[Attending Physician] varchar(500)null,
[NP/PA] varchar(200)null,
[Resident]varchar(200)null,
[D/C Status]varchar(200)null,
[CPT1]varchar(100)null,
[ICD-9 1]varchar(200)null,
[ICD-9 2]varchar(200)null,
[ICD-9 3]varchar(200)null,
[ICD-9 4]varchar(200)null,
[CPT 2]varchar(200)null,
[ICD-9-2]varchar(200)null,
[ICD-9-2.2]varchar(200)null,
[CPT 3]varchar(200)null,
[ICD-9-3]varchar(200)null,
[CPT 4]varchar(200)null,
[ICD-9-4]varchar(200)null,
[CPT 5]varchar(200)null,
[ICD-9-5]varchar(200)null,
[CPT 6]varchar(200)null,
[ICD-9-6]varchar(200)null,
[CPT 7]varchar(200)null,
[ICD-9-7]varchar(200)null,
[CPT 8]varchar(200)null,
[ICD-9-8]varchar(200)null,
[Coder]varchar(200)null,
[Coded_Date] Datetime null,
[Coder Comments]varchar(max)null
)


Declare @trans_id int,@TotalCount int,@startCount int
set @startCount=1;

select dense_rank() over (order by trans_id)as RowNumber,TRANS_ID into #TRANSIDS   from @TT
where TRANS_ID in (select distinct TRANS_ID from @TT)
group by TRANS_ID
set @TotalCount=(select  COUNT(TRANS_ID)  from #TRANSIDS)

while @startCount <= @TotalCount


begin
set @trans_id=(select TRANS_ID from #TRANSIDS where RowNumber=@startCount)

select TD.TRANS_ID,F.DESCRIPTION,I.RECEIVED_DATE,I.ACCOUNT_NO, ATTENDING_PHY=case when T.ATTENDING_PHY =''  then ''  when  T.ATTENDING_PHY not like '%-%' then  T.ATTENDING_PHY else left(T.ATTENDING_PHY, charindex('-', T.ATTENDING_PHY) - 1)end   ,
NPPA=case when T.NPPA =''  then ''  when  T.NPPA not like '%-%' then  T.NPPA else left(T.NPPA, charindex('-', T.NPPA) - 1)end,
T.RESIDENT,T.PATIENT_STATUS  ,cpt,icd,MODIFIER as modf,CPT_ORDER,'ICD'+ cast(row_number() over (partition by TD.trans_id,cpt order by TRANS_DETAIL_ID   ) as varchar(500)) as icdList,
T.CODED_BY,CONVERT(varchar(12),CODED_DATE,101)as Coded_Date , T.CODING_COMMENTS into #temp3 from tbl_TRANSACTION_DETAILS TD

inner join dbo.tbl_TRANSACTION T on TD.TRANS_ID=T.TRANS_ID
inner join tbl_IMPORT_TABLE I on T.BATCH_ID=I.BATCH_ID
inner join tbl_FACILITY F on I.FACILITY=f.CODE
where TD.TRANS_ID =@trans_id
--and (nullif(@CodingStatus,null)is null or t.CODING_STATUS =@CodingStatus)
--and (nullif(@Facility,null)is null or i.FACILITY=@Facility)

--as NPPA1  , ,(select NP_PA_CODE  from  dbo.tbl_NP_PA_MASTER where NP_PA_NAME in (NPPA1) )as [NPPA]

select * into #temp4 from #temp3
pivot
(
max(icd)
for icdList in (ICD1,ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8,ICD9)
)p
order by CPT_ORDER



select * into #temp6 from  #temp4
pivot
(
max(cpt)
for CPT_ORDER in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
) p


Declare @cou int
set @cou=(select COUNT(cpt) from #temp4)

if @cou=1
begin

insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],Coder, Coded_Date, [Coder Comments])
SELECT   t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from  #temp6  t1
   where (t1.CPT1 is not null )
end

if @cou=2
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  end
  
if @cou=3
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  
  end
 
 
 if @cou=4
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null
  
  end
  
  
  if @cou=5
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],
Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null
  end
  
  if @cou=6
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
Coder, Coded_Date, [Coder Comments] )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,t6.cpt6+'-' +t6.[modf],t6.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  end
  
  if @cou=7
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],Coder, Coded_Date, [Coder Comments] )


SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  end
  
   if @cou=8
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],Coder, Coded_Date, [Coder Comments] )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,t8.cpt8,t8.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  and t8.cpt8 is not null
  end
  
  
  
  -- and t3.cpt3 is not null
      drop table #temp4
drop table #temp3
drop table #temp6


set @startCount=@startCount+1

End


select TRANS_ID,convert(varchar(12), DOS,101) as DOS,[Account],[Attending Physician],[NP/PA],[Resident],[D/C Status],
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],
[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],[Coder],[Coded_Date],[Coder Comments] from @QCData

--select TRANS_ID,convert(varchar(12),DOS,101) as DOS,Account,[Attending Physician],[NP/PA],Resident,[D/C Status],Coder, convert(varchar(12),Coded_Date,101) as Coded_Date,[Coder Comments] from @QCData

--select TRANS_ID from @QCData

select max([Coded_Date]) as [Coded_Date], count(TRANS_ID) as [Charts Coded],
(select COUNT([CPT1]) as [LWBS] from @QCData where [CPT1]='LWBS') as [LWBS],
(select COUNT([CPT1]) as [PVT/Void/Suture Removal/Global] from @QCData where [CPT1]='Deficient') as [PVT/Void/Suture Removal/Global],
(select COUNT([CPT1]) as [Charts to send back] from @QCData where [CPT1]='Unbillable') as [Charts to send back]
 from @QCData

drop table #TRANSIDS

END

--declare @table [Perimeter_production_report] 
--insert into @table values(1,9,'32452450',null,'247','Completed')
--exec [sp_Production_Report] @table

--select getdate()
GO
/****** Object:  StoredProcedure [dbo].[sp_Production_Report_ICD10Validate]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Viswajit Reddy
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Production_Report_ICD10Validate] --'RinjoP','11/25/2015','11/25/2015',16
	
	
(@TT  [Perimeter_production_report]  readonly,
@Facility varchar(50)=null
)
as

BEGIN
Declare @QCData table
(
TRANS_ID int null,
DOS Date null,
[Account] varchar(100)null,
[Attending Physician] varchar(500)null,
[NP/PA] varchar(200)null,
[Scribe] varchar(200)null,
[Resident]varchar(200)null,
[D/C Status]varchar(200)null,
[CPT1]varchar(100)null,
[ICD-9 1]varchar(200)null,
[ICD-9 2]varchar(200)null,
[ICD-9 3]varchar(200)null,
[ICD-9 4]varchar(200)null,

[ICD-10 1]varchar(200)null,
[ICD-10 2]varchar(200)null,
[ICD-10 3]varchar(200)null,
[ICD-10 4]varchar(200)null,

[CPT 2]varchar(200)null,
[ICD-9-2]varchar(200)null,
--[ICD-9-2.2]varchar(200)null,
[ICD-10-2]varchar(200)null,


[CPT 3]varchar(200)null,
[ICD-9-3]varchar(200)null,
[ICD-10-3]varchar(200)null,

[CPT 4]varchar(200)null,
[ICD-9-4]varchar(200)null,
[ICD-10-4]varchar(200)null,

[CPT 5]varchar(200)null,
[ICD-9-5]varchar(200)null,
[ICD-10-5]varchar(200)null,

[CPT 6]varchar(200)null,
[ICD-9-6]varchar(200)null,
[ICD-10-6]varchar(200)null,

[CPT 7]varchar(200)null,
[ICD-9-7]varchar(200)null,
[ICD-10-7]varchar(200)null,

[CPT 8]varchar(200)null,
[ICD-9-8]varchar(200)null,
[ICD-10-8]varchar(200)null,

[Downcoded] varchar(100)null,
[HPI] varchar(100)null,
[ROS] varchar(100)null,
[PFSH] varchar(100)null,
[EXAM] varchar(100)null,
[Coder]varchar(200)null,
[Coded_Date] Datetime null,
[Coder Comments]varchar(max)null
)


Declare @trans_id int,@TotalCount int,@startCount int
set @startCount=1;

select dense_rank() over (order by trans_id)as RowNumber,TRANS_ID into #TRANSIDS   from @TT
where TRANS_ID in (select distinct TRANS_ID from @TT)
group by TRANS_ID
set @TotalCount=(select  COUNT(TRANS_ID)  from #TRANSIDS)

while @startCount <= @TotalCount


begin
set @trans_id=(select TRANS_ID from #TRANSIDS where RowNumber=@startCount)

select TD.TRANS_ID,F.DESCRIPTION,I.RECEIVED_DATE,I.ACCOUNT_NO, ATTENDING_PHY=case when T.ATTENDING_PHY =''  then ''  when  T.ATTENDING_PHY not like '%-%' then  T.ATTENDING_PHY else left(T.ATTENDING_PHY, charindex('-', T.ATTENDING_PHY) - 1)end   ,
NPPA=case when T.NPPA =''  then ''  when  T.NPPA not like '%-%' then  T.NPPA else left(T.NPPA, charindex('-', T.NPPA) - 1)end,
T.SCRIBE,T.RESIDENT,T.PATIENT_STATUS  ,cpt,icd,MODIFIER as modf,CPT_ORDER,td.ICD_CODE,'ICD'+ cast(row_number() over (partition by TD.trans_id,cpt,CPT_ORDER,td.ICD_CODE order by TRANS_DETAIL_ID   ) as varchar(500)) as icdList,
TD.Downcoded,TD.HPI,TD.ROS,TD.PFSH,TD.EXAM,T.CODED_BY,CONVERT(varchar(12),CODED_DATE,101)as Coded_Date , TD.COMMENTS into #temp3 from tbl_TRANSACTION_DETAILS TD

inner join dbo.tbl_TRANSACTION T on TD.TRANS_ID=T.TRANS_ID
inner join tbl_IMPORT_TABLE I on T.BATCH_ID=I.BATCH_ID
inner join tbl_FACILITY F on I.FACILITY=f.CODE
where TD.TRANS_ID =@trans_id
--and (nullif(@CodingStatus,null)is null or t.CODING_STATUS =@CodingStatus)
--and (nullif(@Facility,null)is null or i.FACILITY=@Facility)

--as NPPA1  , ,(select NP_PA_CODE  from  dbo.tbl_NP_PA_MASTER where NP_PA_NAME in (NPPA1) )as [NPPA]

select 'CPT'+cast(ROW_NUMBER() over (order by cpt_order) as varchar)as RowNum,* into #temp4 from #temp3
pivot
(
max(icd)
for icdList in (ICD1,ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8,ICD9)
)p
where ICD_CODE='ICD-9'

order by CPT_ORDER,ICD_CODE

select 'CPT'+cast(ROW_NUMBER() over (order by cpt_order) as varchar)as RowNum,* into #temp41 from #temp3
pivot
(
max(icd)
for icdList in (ICD1,ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8,ICD9)
)p
where ICD_CODE='ICD-10'

order by CPT_ORDER,ICD_CODE
--select * from #temp4
--select * from #temp41
select *
 into #temp6 from #temp4
pivot
(
max(cpt)
--for CPT_ORDER in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
for RowNum in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
) p
order by CPT_ORDER



select *
 into #temp61 from #temp41
pivot
(
max(cpt)
--for CPT_ORDER in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
for RowNum in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
) p
order by CPT_ORDER




--select * from #temp6
--select * from #temp61

Declare @cou int,@couICD10 int
set @cou=(select  COUNT(cpt) from #temp4)
set @couICD10=(select  COUNT(cpt) from #temp41)

--select @cou as ICD9_Count,@couICD10 as ICD10_Count

if @cou=1
begin

if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder, Coded_Date,[Coder Comments] )                  

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,
	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 
    where (t1.CPT1 is not null ) 
    
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF   else q1.CPT1 end,
  -- q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF   else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1  else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4   else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1 +'-'+t1.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1  else [ICD-9-2] end,
   --,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF   else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF   else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1   else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF    else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF   else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1 +'-'+t1.MODF   else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1    else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF  else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF    else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1    else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1    else q1.[ICD-9-8] end

  from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID 
      where (t1.CPT1 is not null )
  
   
  end
  
  else
  begin
  
 update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1 +'-'+t1.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF   else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1  else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4   else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF  else [CPT 2] end,
  -- q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1  else [ICD-9-2] end,
   --,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1 +'-'+t1.MODF  else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF   else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1   else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1 +'-'+t1.MODF   else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF   else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1 +'-'+t1.MODF   else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1    else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1 +'-'+t1.MODF else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF    else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1    else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1    else q1.[ICD-9-8] end

  from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID 
      where (t1.CPT1 is not null )
 
  end
  end
  
  if @couICD10=1
begin

if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID 
    where (t1.CPT1 is not null )
   
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1 +'-'+t1.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF   else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1  else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4   else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF  else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1  else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1 +'-'+t1.MODF  else [CPT 3] end,
  -- q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF   else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1   else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1 +'-'+t1.MODF   else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF   else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF    else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1    else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1 +'-'+t1.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF    else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1    else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1    else q1.[ICD-10-8] end
  
  
  from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID 
      where (t1.CPT1 is not null )
   
   
   
  end
  
  else
  begin
  
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF   else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF   else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1  else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4   else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1 +'-'+t1.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1  else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1 +'-'+t1.MODF  else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF   else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1   else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF    else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF   else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF    else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1    else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1 +'-'+t1.MODF else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF    else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1    else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1    else q1.[ICD-10-8] end
  
  
  from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID 
      where (t1.CPT1 is not null )
  
  
  end
  end



if @cou=2
begin

if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,
	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
    where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2 +'-'+t2.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF  else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4  else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF  else [CPT 2] end,
  -- q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF  else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1  else [ICD-9-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2 +'-'+t2.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF  else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1  else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2 +'-'+t2.MODF  else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1   else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF   else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2   else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1   else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1   else q1.[ICD-9-8] end

  from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  
  end
  
  else
  begin
  
 update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2 +'-'+t2.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF  else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4  else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF  else [CPT 2] end,
  -- q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF  else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1  else [ICD-9-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2 +'-'+t2.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF  else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1  else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2 +'-'+t2.MODF  else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1   else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF   else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2   else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1   else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1   else q1.[ICD-9-8] end
  from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
 
  
  end
  end
  
  if @couICD10=2
begin

if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

  t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID 
    where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
   
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF  else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4  else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2 +'-'+t2.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF  else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1  else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF  else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF  else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1  else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF  else q1.[CPT 4] end,
  -- q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2 +'-'+t2.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1   else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF   else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2   else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1   else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1   else q1.[ICD-10-8] end
  from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID 
    where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
 
  end
  
  else
  begin
  
 update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF  else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4  else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2 +'-'+t2.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF  else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1  else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF  else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF  else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1  else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF  else q1.[CPT 4] end,
  -- q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2 +'-'+t2.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1   else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF   else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2   else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1   else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1   else q1.[ICD-10-8] end
  from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID 
    where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  
  
  end
  end
  
  

  
if @cou=3
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,
  t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
    where (t1.CPT1 is not null)
   and (t2.CPT2 is not null)
  and (t3.CPT3 is not null)
  
  
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3 +'-'+t3.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1 else [ICD-9-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF else [CPT 3] end,
  -- q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF else q1.[CPT 4] end,
  -- q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 else q1.[ICD-9-8] end
   
  
  


 from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
     where (t1.CPT1 is not null)
   and (t2.CPT2 is not null)
  and (t3.CPT3 is not null)
  end
  
  else
  begin
  
update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3 +'-'+t3.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1 else [ICD-9-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF else [CPT 3] end,
  -- q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF else q1.[CPT 4] end,
  -- q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 else q1.[ICD-9-8] end
   
  
  


 from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
     where (t1.CPT1 is not null)
   and (t2.CPT2 is not null)
  and (t3.CPT3 is not null)
  
  end
  
  
 

  
  
  --/////----
 
  end
  
   if @couICD10=3
  begin 
  ---//////
  if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,


  t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
       where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
  
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF else [CPT 2] end,
  -- q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1 else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 else q1.[ICD-10-8] end
   
  
   
  
   
   
     from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID  inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   
  end
  
  else
  begin
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF else [CPT 2] end,
  -- q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1 else [ICD-10-2] end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 else q1.[ICD-10-8] end
   
     from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID  inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
  
  
  end
  
  end
  
  if @cou=4
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF  else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 else q1.[ICD-9-8] end 

  
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID 
 where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
  end
  
  else
  begin
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF else [CPT 5] end,
    -- q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF  else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 else q1.[ICD-9-8] end 

  
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID 
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
  
  end
  
  

  end
if @couICD10=4
begin
 
 
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID
      where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF else [CPT 3] end,
  -- q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4 +'-'+t4.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF  else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 else q1.[ICD-10-8] end
   
  
  
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID 
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null)
   and (t4.cpt4 is not null )
  end
  
  else
  begin
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3 else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF else [CPT 3] end,
  -- q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4 +'-'+t4.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF  else [CPT 6] end,
    -- q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 else q1.[ICD-10-8] end
   
  
  
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID 
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null)
   and (t4.cpt4 is not null )
  
  end
  
  end
 
  
  
  
  
  if @cou=5
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF 
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
  end
  
  else
  begin
  
  
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4+'-'+t4.MODF 
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 else q1.[ICD-9-8] end 
   
  
  
  
  
  
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
  
  end
  
  

  end




if @couICD10=5
begin
 
 
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
    where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3 +'-'+t3.MODF when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 else q1.[ICD-10-8] end 

 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null ) 

  end
  
  else
  begin
  
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3 +'-'+t3.MODF when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 else q1.[ICD-10-8] end 

 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null ) 

  
  end
 
  end
  
   if @cou=6
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

 t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
      where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
     update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF   else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF    else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1   else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4   else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF 
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF   else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF     else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1    else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6 +'-'+t6.MODF    else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF   else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1   else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6 +'-'+t6.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF    else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF   else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1   else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6 +'-'+t6.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF     else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6   else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1   else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6   else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1   else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
 
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
  end
  
  else
  begin
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF   else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF    else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1   else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4   else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4+'-'+t4.MODF 
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF   else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF     else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1    else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6 +'-'+t6.MODF    else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF   else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1   else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6 +'-'+t6.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF    else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1   else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF   else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF   else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1   else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6 +'-'+t6.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF     else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1   else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6   else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1   else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6   else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1   else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
 
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    

  
  end
  
  

  end




if @couICD10=6
begin
 
 
if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
       where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF   else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF    else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1   else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4   else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF   else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF     else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1    else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF     else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF   else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1   else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF   else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF    else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF   else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1   else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF   else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF     else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6   else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1   else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6   else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1   else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
 
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null ) 

  end
  
  else
  begin
  
  update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF   else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF    else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1   else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2   else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4   else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF   else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF     else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1    else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF     else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF   else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1   else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF   else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF    else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1   else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF   else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF   else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1   else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF   else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF     else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1   else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6   else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1   else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6   else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1   else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
 
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null ) 

  
  end

 
  end
  
   if @cou=7
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
  inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF   else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1  else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4  else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF  else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF   else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1   else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF   else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF  else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1  else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF   else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1  else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7 +'-'+t7.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF  else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1  else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF   else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1  else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1  else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1  else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null ) 

  end
  
  else
  begin
  
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF   else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1  else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4  else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF  else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF   else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1   else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3 +'-'+t3.MODF  when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF   else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF  else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1  else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF   else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1  else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7 +'-'+t7.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF  else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1  else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF   else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1  else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7  else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1  else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7  else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1  else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
         where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null ) 

  
  end
  
  

  end




if @couICD10=7
begin
 
 
if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,

	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
  inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
       where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    
     update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF   else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1  else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4  else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF  else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF   else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1   else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6 +'-'+t6.MODF when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF   else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF  else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1  else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF   else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1  else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7 +'-'+t7.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF  else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1  else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF   else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1  else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1  else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1  else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
    
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
  end
  
  else
  begin
  
 update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF  else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF   else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1  else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4  else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF  else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF   else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1   else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6 +'-'+t6.MODF when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF   else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF  else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1  else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF  else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF   else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1  else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7 +'-'+t7.MODF  else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF  else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1  else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF  else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF   else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1  else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7  else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1  else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7  else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1  else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
    
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )

  
  end



 
  end
  
   if @cou=8
begin
 if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,


	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
  inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
  inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
        where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null )
    
     update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5 +'-'+t5.MODF when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT1' then t8.cpt8+'-'+t8.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF  when t8.CPT_ORDER='CPT1' then t8.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1 when t8.CPT_ORDER='CPT1' then t8.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4 when t8.CPT_ORDER='CPT1' then t8.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT2' then t8.cpt8+'-'+t8.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF  when t8.CPT_ORDER='CPT2' then t8.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1 when t8.CPT_ORDER='CPT2' then t8.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF  when t8.CPT_ORDER='CPT3' then t8.cpt8+'-'+t8.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF when t8.CPT_ORDER='CPT3' then t8.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1 when t8.CPT_ORDER='CPT3' then t8.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT4' then t8.cpt8+'-'+t8.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF when t8.CPT_ORDER='CPT4' then t8.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1 when t8.CPT_ORDER='CPT4' then t8.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT5' then t8.cpt8+'-'+t8.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF when t8.CPT_ORDER='CPT5' then t8.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1 when t8.CPT_ORDER='CPT5' then t8.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT6' then t8.cpt8+'-'+t8.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF  when t8.CPT_ORDER='CPT6' then t8.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1 when t8.CPT_ORDER='CPT6' then t8.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7 when t8.CPT_ORDER='CPT7' then t8.cpt8 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1 when t8.CPT_ORDER='CPT7' then t8.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7 when t8.CPT_ORDER='CPT8' then t8.cpt8 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1 when t8.CPT_ORDER='CPT8' then t8.ICD1 else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
    inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null )
  end
  
  else
  begin
  
     update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5 +'-'+t5.MODF when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT1' then t8.cpt8+'-'+t8.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF  when t8.CPT_ORDER='CPT1' then t8.MODF else q1.MOD1 end,
   q1.[ICD-9 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1 when t8.CPT_ORDER='CPT1' then t8.ICD1 else q1.[ICD-9 1] end,
   q1.[ICD-9 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2 else q1.[ICD-9 2] end,
   q1.[ICD-9 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2  else q1.[ICD-9 3] end,
   q1.[ICD-9 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4 when t8.CPT_ORDER='CPT1' then t8.ICD4 else q1.[ICD-9 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT2' then t8.cpt8+'-'+t8.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF  when t8.CPT_ORDER='CPT2' then t8.MODF else q1.MOD2 end,
   q1.[ICD-9-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1 when t8.CPT_ORDER='CPT2' then t8.ICD1 else [ICD-9-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF  when t8.CPT_ORDER='CPT3' then t8.cpt8+'-'+t8.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF when t8.CPT_ORDER='CPT3' then t8.MODF else MOD3 end,
   q1.[ICD-9-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1 when t8.CPT_ORDER='CPT3' then t8.ICD1 else [ICD-9-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT4' then t8.cpt8+'-'+t8.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF when t8.CPT_ORDER='CPT4' then t8.MODF  else q1.MOD4 end,
  q1.[ICD-9-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1 when t8.CPT_ORDER='CPT4' then t8.ICD1 else q1.[ICD-9-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT5' then t8.cpt8+'-'+t8.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF when t8.CPT_ORDER='CPT5' then t8.MODF else q1.MOD5 end,
  q1.[ICD-9-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1 when t8.CPT_ORDER='CPT5' then t8.ICD1 else q1.[ICD-9-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT6' then t8.cpt8+'-'+t8.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF  when t8.CPT_ORDER='CPT6' then t8.MODF else q1.MOD6 end,
  q1.[ICD-9-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1 when t8.CPT_ORDER='CPT6' then t8.ICD1 else q1.[ICD-9-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7 when t8.CPT_ORDER='CPT7' then t8.cpt8 else [CPT 7] end,
  q1.[ICD-9-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1 when t8.CPT_ORDER='CPT7' then t8.ICD1 else q1.[ICD-9-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7 when t8.CPT_ORDER='CPT8' then t8.cpt8 else [CPT 8] end,
  q1.[ICD-9-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1 when t8.CPT_ORDER='CPT8' then t8.ICD1 else q1.[ICD-9-8] end 
   from @QCData q1 inner join #temp6 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
    inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null )
  
  end
  
  

  end




if @couICD10=8
begin
 
 
if not exists (select TRANS_ID,DOS,Account  from @QCData where TRANS_ID=@trans_id)
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident] ,[D/C Status],                   
[Downcoded],[HPI],[ROS],[PFSH],[EXAM],Coder,Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.SCRIBE,t1.RESIDENT,t1.PATIENT_STATUS,


	t1.Downcoded,t1.HPI,t1.ROS,t1.PFSH,t1.EXAM,t1.CODED_BY,t1.Coded_Date,t1.COMMENTS from #temp61 t1 inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID
 inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
  inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
  inner join #temp61 t8 on t7.TRANS_ID=t8.TRANS_ID
       where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null )
    
    update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT1' then t8.cpt8+'-'+t8.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF  when t8.CPT_ORDER='CPT1' then t8.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1 when t8.CPT_ORDER='CPT1' then t8.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4 when t8.CPT_ORDER='CPT1' then t8.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT2' then t8.cpt8+'-'+t8.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF  when t8.CPT_ORDER='CPT2' then t8.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1 when t8.CPT_ORDER='CPT2' then t8.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF  when t8.CPT_ORDER='CPT3' then t8.cpt8+'-'+t8.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF when t8.CPT_ORDER='CPT3' then t8.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1 when t8.CPT_ORDER='CPT3' then t8.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT4' then t8.cpt8+'-'+t8.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF when t8.CPT_ORDER='CPT4' then t8.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1 when t8.CPT_ORDER='CPT4' then t8.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3 +'-'+t3.MODF when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT5' then t8.cpt8+'-'+t8.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF when t8.CPT_ORDER='CPT5' then t8.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1 when t8.CPT_ORDER='CPT5' then t8.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT6' then t8.cpt8+'-'+t8.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF  when t8.CPT_ORDER='CPT6' then t8.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1 when t8.CPT_ORDER='CPT6' then t8.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7 when t8.CPT_ORDER='CPT7' then t8.cpt8 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1 when t8.CPT_ORDER='CPT7' then t8.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7 when t8.CPT_ORDER='CPT8' then t8.cpt8 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1 when t8.CPT_ORDER='CPT8' then t8.ICD1 else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
    inner join #temp61 t8 on t7.TRANS_ID=t8.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null ) 

  end
  
  else
  begin
  
   update q1 set q1.CPT1=case  when t1.CPT_ORDER='CPT1' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT1' then t2.cpt2+'-'+t2.MODF when t3.CPT_ORDER='CPT1' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT1' then t4.cpt4+'-'+t4.MODF
    when t5.CPT_ORDER='CPT1' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT1' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT1' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT1' then t8.cpt8+'-'+t8.MODF else q1.CPT1 end,
   --q1.MOD1=case  when t1.CPT_ORDER='CPT1' then t1.MODF when t2.CPT_ORDER='CPT1' then t2.MODF when t3.CPT_ORDER='CPT1' then t3.MODF when t4.CPT_ORDER='CPT1' then t4.MODF
   -- when t5.CPT_ORDER='CPT1' then t5.MODF when t6.CPT_ORDER='CPT1' then t6.MODF when t7.CPT_ORDER='CPT1' then t7.MODF  when t8.CPT_ORDER='CPT1' then t8.MODF else q1.MOD1 end,
   q1.[ICD-10 1]=case  when t1.CPT_ORDER='CPT1' then t1.ICD1 when t2.CPT_ORDER='CPT1' then t2.ICD1 when t3.CPT_ORDER='CPT1' then t3.ICD1   when t4.CPT_ORDER='CPT1' then t4.ICD1
   when t5.CPT_ORDER='CPT1' then t5.ICD1  when t6.CPT_ORDER='CPT1' then t6.ICD1 when t7.CPT_ORDER='CPT1' then t7.ICD1 when t8.CPT_ORDER='CPT1' then t8.ICD1 else q1.[ICD-10 1] end,
   q1.[ICD-10 2]=case  when t1.CPT_ORDER='CPT1' then t1.ICD2 when t2.CPT_ORDER='CPT1' then t2.ICD2 when t3.CPT_ORDER='CPT1' then t3.ICD2  when t4.CPT_ORDER='CPT1' then t3.ICD2
   when t5.CPT_ORDER='CPT1' then t5.ICD2 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2 else q1.[ICD-10 2] end,
   q1.[ICD-10 3]=case  when t1.CPT_ORDER='CPT1' then t1.ICD3 when t2.CPT_ORDER='CPT1' then t2.ICD3 when t3.CPT_ORDER='CPT1' then t3.ICD3  when t4.CPT_ORDER='CPT1' then t3.ICD3
   when t5.CPT_ORDER='CPT1' then t5.ICD3 when t6.CPT_ORDER='CPT1' then t6.ICD2 when t7.CPT_ORDER='CPT1' then t7.ICD2 when t8.CPT_ORDER='CPT1' then t8.ICD2  else q1.[ICD-10 3] end,
   q1.[ICD-10 4]=case  when t1.CPT_ORDER='CPT1' then t1.ICD4 when t2.CPT_ORDER='CPT1' then t2.ICD4 when t3.CPT_ORDER='CPT1' then t3.ICD4  when t4.CPT_ORDER='CPT1' then t3.ICD4
   when t5.CPT_ORDER='CPT1' then t5.ICD4 when t6.CPT_ORDER='CPT1' then t6.ICD4 when t7.CPT_ORDER='CPT1' then t7.ICD4 when t8.CPT_ORDER='CPT1' then t8.ICD4 else q1.[ICD-10 4] end,
     
     
      
   q1.[CPT 2]=case  when t1.CPT_ORDER='CPT2' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT2' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT2' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT2' then t4.cpt4 +'-'+t4.MODF
    when t5.CPT_ORDER='CPT2' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT2' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT2' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT2' then t8.cpt8+'-'+t8.MODF else [CPT 2] end,
   --q1.MOD2=case  when t1.CPT_ORDER='CPT2' then t1.MODF when t2.CPT_ORDER='CPT2' then t2.MODF when t3.CPT_ORDER='CPT2' then t3.MODF  when t4.CPT_ORDER='CPT2' then t4.MODF 
   -- when t5.CPT_ORDER='CPT2' then t5.MODF  when t6.CPT_ORDER='CPT2' then t6.MODF  when t7.CPT_ORDER='CPT2' then t7.MODF  when t8.CPT_ORDER='CPT2' then t8.MODF else q1.MOD2 end,
   q1.[ICD-10-2]=case  when t1.CPT_ORDER='CPT2' then t1.ICD1 when t2.CPT_ORDER='CPT2' then t2.ICD1 when t3.CPT_ORDER='CPT2' then t3.ICD1  when t4.CPT_ORDER='CPT2' then t4.ICD1
   when t5.CPT_ORDER='CPT2' then t5.ICD1 when t6.CPT_ORDER='CPT2' then t6.ICD1 when t7.CPT_ORDER='CPT2' then t7.ICD1 when t8.CPT_ORDER='CPT2' then t8.ICD1 else [ICD-10-2]  end,
   
   
   q1.[CPT 3]=case  when t1.CPT_ORDER='CPT3' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT3' then t2.CPT2+'-'+t2.MODF when t3.CPT_ORDER='CPT3' then t3.CPT3+'-'+t3.MODF   when t4.CPT_ORDER='CPT3' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT3' then t5.cpt5+'-'+t5.MODF  when t6.CPT_ORDER='CPT3' then t6.cpt6+'-'+t6.MODF  when t7.CPT_ORDER='CPT3' then t7.cpt7+'-'+t7.MODF  when t8.CPT_ORDER='CPT3' then t8.cpt8+'-'+t8.MODF else [CPT 3] end,
   --q1.MOD3=case  when t1.CPT_ORDER='CPT3' then t1.MODF when t2.CPT_ORDER='CPT3' then t2.MODF when t3.CPT_ORDER='CPT3' then t3.MODF when t4.CPT_ORDER='CPT3' then t4.MODF
   --when t5.CPT_ORDER='CPT3' then t5.MODF when t6.CPT_ORDER='CPT3' then t6.MODF when t7.CPT_ORDER='CPT3' then t7.MODF when t8.CPT_ORDER='CPT3' then t8.MODF else MOD3 end,
   q1.[ICD-10-3]=case  when t1.CPT_ORDER='CPT3' then t1.ICD1 when t2.CPT_ORDER='CPT3' then t2.ICD1 when t3.CPT_ORDER='CPT3' then t3.ICD1 when t4.CPT_ORDER='CPT3' then t4.ICD1
   when t5.CPT_ORDER='CPT3' then t5.ICD1 when t6.CPT_ORDER='CPT3' then t6.ICD1 when t7.CPT_ORDER='CPT3' then t7.ICD1 when t8.CPT_ORDER='CPT3' then t8.ICD1 else [ICD-10-3] end,
   
   
   q1.[CPT 4]=case  when t1.CPT_ORDER='CPT4' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT4' then t2.CPT2 +'-'+t2.MODF when t3.CPT_ORDER='CPT4' then t3.cpt3+'-'+t3.MODF  when t4.CPT_ORDER='CPT4' then t4.cpt4 +'-'+t4.MODF
   when t5.CPT_ORDER='CPT4' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT4' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT4' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT4' then t8.cpt8+'-'+t8.MODF else q1.[CPT 4] end,
   --q1.MOD4=case  when t1.CPT_ORDER='CPT4' then t1.MODF when t2.CPT_ORDER='CPT4' then t2.MODF  when t3.CPT_ORDER='CPT4' then t3.Modf when t4.CPT_ORDER='CPT4' then t4.MODF
   --when t5.CPT_ORDER='CPT4' then t5.MODF when t6.CPT_ORDER='CPT4' then t6.MODF when t7.CPT_ORDER='CPT4' then t7.MODF when t8.CPT_ORDER='CPT4' then t8.MODF  else q1.MOD4 end,
  q1.[ICD-10-4]=case  when t1.CPT_ORDER='CPT4' then t1.ICD1 when t2.CPT_ORDER='CPT4' then t2.ICD1  when t3.CPT_ORDER='CPT4' then t3.ICD1 when t4.CPT_ORDER='CPT4' then t4.ICD1 
  when t5.CPT_ORDER='CPT4' then t5.ICD1 when t6.CPT_ORDER='CPT4' then t6.ICD1 when t7.CPT_ORDER='CPT4' then t7.ICD1 when t8.CPT_ORDER='CPT4' then t8.ICD1 else q1.[ICD-10-4] end,
   
   q1.[CPT 5]=case  when t1.CPT_ORDER='CPT5' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT5' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT5' then t3.cpt3 +'-'+t3.MODF when t4.CPT_ORDER='CPT5' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT5' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT5' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT5' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT5' then t8.cpt8+'-'+t8.MODF else [CPT 5] end,
     --q1.MOD5=case  when t1.CPT_ORDER='CPT5' then t1.MODF when t2.CPT_ORDER='CPT5' then t2.MODF  when t3.CPT_ORDER='CPT5' then t3.Modf  when t4.CPT_ORDER='CPT5' then t4.MODF
     --when t5.CPT_ORDER='CPT5' then t5.MODF when t6.CPT_ORDER='CPT5' then t6.MODF when t7.CPT_ORDER='CPT5' then t7.MODF when t8.CPT_ORDER='CPT5' then t8.MODF else q1.MOD5 end,
  q1.[ICD-10-5]=case  when t1.CPT_ORDER='CPT5' then t1.ICD1 when t2.CPT_ORDER='CPT5' then t2.ICD1  when t3.CPT_ORDER='CPT5' then t3.ICD1 when t4.CPT_ORDER='CPT5' then t4.ICD1
  when t5.CPT_ORDER='CPT5' then t5.ICD1 when t6.CPT_ORDER='CPT5' then t6.ICD1 when t7.CPT_ORDER='CPT5' then t7.ICD1 when t8.CPT_ORDER='CPT5' then t8.ICD1 else q1.[ICD-10-5] end,
  
  q1.[CPT 6]=case  when t1.CPT_ORDER='CPT6' then t1.CPT1+'-'+t1.MODF when t2.CPT_ORDER='CPT6' then t2.CPT2+'-'+t2.MODF  when t3.CPT_ORDER='CPT6' then t3.cpt3+'-'+t3.MODF when t4.CPT_ORDER='CPT6' then t4.cpt4+'-'+t4.MODF
   when t5.CPT_ORDER='CPT6' then t5.cpt5+'-'+t5.MODF when t6.CPT_ORDER='CPT6' then t6.cpt6+'-'+t6.MODF when t7.CPT_ORDER='CPT6' then t7.cpt7+'-'+t7.MODF when t8.CPT_ORDER='CPT6' then t8.cpt8+'-'+t8.MODF else [CPT 6] end,
     --q1.MOD6=case  when t1.CPT_ORDER='CPT6' then t1.MODF when t2.CPT_ORDER='CPT6' then t2.MODF  when t3.CPT_ORDER='CPT6' then t3.Modf  when t4.CPT_ORDER='CPT6' then t4.MODF
     --when t5.CPT_ORDER='CPT6' then t5.MODF  when t6.CPT_ORDER='CPT6' then t6.MODF  when t7.CPT_ORDER='CPT6' then t7.MODF  when t8.CPT_ORDER='CPT6' then t8.MODF else q1.MOD6 end,
  q1.[ICD-10-6]=case  when t1.CPT_ORDER='CPT6' then t1.ICD1 when t2.CPT_ORDER='CPT6' then t2.ICD1  when t3.CPT_ORDER='CPT6' then t3.ICD1  when t4.CPT_ORDER='CPT6' then t4.ICD1
  when t5.CPT_ORDER='CPT6' then t5.ICD1 when t6.CPT_ORDER='CPT6' then t6.ICD1 when t7.CPT_ORDER='CPT6' then t7.ICD1 when t8.CPT_ORDER='CPT6' then t8.ICD1 else q1.[ICD-10-6] end,
  
  q1.[CPT 7]=case  when t1.CPT_ORDER='CPT7' then t1.CPT1 when t2.CPT_ORDER='CPT7' then t2.CPT2  when t3.CPT_ORDER='CPT7' then t3.cpt3 when t4.CPT_ORDER='CPT7' then t4.cpt4 
  when t5.CPT_ORDER='CPT7' then t5.cpt5 when t6.CPT_ORDER='CPT7' then t6.cpt6 when t7.CPT_ORDER='CPT7' then t7.cpt7 when t8.CPT_ORDER='CPT7' then t8.cpt8 else [CPT 7] end,
  q1.[ICD-10-7]=case  when t1.CPT_ORDER='CPT7' then t1.ICD1 when t2.CPT_ORDER='CPT7' then t2.ICD1  when t3.CPT_ORDER='CPT7' then t3.ICD1  when t4.CPT_ORDER='CPT7' then t4.ICD1 
  when t5.CPT_ORDER='CPT7' then t5.ICD1 when t6.CPT_ORDER='CPT7' then t6.ICD1 when t7.CPT_ORDER='CPT7' then t7.ICD1 when t8.CPT_ORDER='CPT7' then t8.ICD1 else q1.[ICD-10-7] end,
  
  q1.[CPT 8]=case  when t1.CPT_ORDER='CPT8' then t1.CPT1 when t2.CPT_ORDER='CPT8' then t2.CPT2  when t3.CPT_ORDER='CPT8' then t3.cpt3 when t4.CPT_ORDER='CPT8' then t4.cpt4
  when t5.CPT_ORDER='CPT8' then t5.cpt5 when t6.CPT_ORDER='CPT8' then t6.cpt6 when t7.CPT_ORDER='CPT8' then t7.cpt7 when t8.CPT_ORDER='CPT8' then t8.cpt8 else [CPT 8] end,
  q1.[ICD-10-8]=case  when t1.CPT_ORDER='CPT8' then t1.ICD1 when t2.CPT_ORDER='CPT8' then t2.ICD1  when t3.CPT_ORDER='CPT8' then t3.ICD1 when t4.CPT_ORDER='CPT8' then t4.ICD1 
  when t5.CPT_ORDER='CPT8' then t5.ICD1 when t6.CPT_ORDER='CPT8' then t6.ICD1 when t7.CPT_ORDER='CPT8' then t7.ICD1 when t8.CPT_ORDER='CPT8' then t8.ICD1 else q1.[ICD-10-8] end 
   from @QCData q1 inner join #temp61 t1 on q1.TRANS_ID=t1.TRANS_ID inner join  #temp61 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp61 t3 on t2.TRANS_ID=t3.TRANS_ID 
  inner join #temp61 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp61 t5 on t4.TRANS_ID=t5.TRANS_ID
  inner join #temp61 t6 on t5.TRANS_ID=t6.TRANS_ID
    
   inner join #temp61 t7 on t6.TRANS_ID=t7.TRANS_ID
    inner join #temp61 t8 on t7.TRANS_ID=t8.TRANS_ID
     where (t1.CPT1 is not null )
   and (t2.CPT2 is not null )
  and (t3.CPT3 is not null )
   and (t4.cpt4 is not null )
    and (t5.cpt5 is not null )
    and (t6.cpt6 is not null )
    and (t7.cpt7 is not null )
    and (t8.cpt8 is not null ) 

  
  end



 
  end
  
 
 

      drop table #temp4,#temp41,#temp61
drop table #temp3
drop table #temp6


set @startCount=@startCount+1

End


--select TRANS_ID,convert(varchar(12), DOS,101) as DOS,[Account],[Attending Physician],[NP/PA],[Scribe],[Resident],[D/C Status],
--[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],
--[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],[Coder],[Coded_Date],[Coder Comments] from @QCData


select * from @QCData

--select TRANS_ID,convert(varchar(12),DOS,101) as DOS,Account,[Attending Physician],[NP/PA],Resident,[D/C Status],Coder, convert(varchar(12),Coded_Date,101) as Coded_Date,[Coder Comments] from @QCData

--select TRANS_ID from @QCData

select max([Coded_Date]) as [Coded_Date],count(TRANS_ID) as [Charts Coded],
(select COUNT([CPT1]) as [LWBS] from @QCData where [CPT1] like 'LWBS%') as [LWBS],
(select COUNT([CPT1]) as [PVT/Void/Suture Removal/Global]  from @QCData where [CPT1] like 'Unbillable%') as [PVT/Void/Suture Removal/Global],
(select COUNT([CPT1]) as [Charts to send back] from @QCData where [CPT1] like 'Deficient%') as [Charts to send back]
 into #newresult from @QCData
 
 
select [Coded_Date],([Charts Coded]-(LWBS+ [PVT/Void/Suture Removal/Global]+[Charts to send back])) as [Charts Coded],[LWBS],[PVT/Void/Suture Removal/Global],[Charts to send back] from #newresult
drop table #TRANSIDS
drop table #newresult

END


--declare @table [Perimeter_production_report] 
--insert into @table values(1,29322,'jEOb9/KlNvhWGTxnY1WqTA==','ManoharR','Wedowee Hospital','Completed')
--exec [sp_Production_Report_ICD10Validate] @table

--select getdate()

--3	29285	E6T320Pn0vLDhRYMYAOm9g==	AmitkumaC	National Park Medical Center	Completed
--1	29383	6E0SISA6NaiK1/jRjfOBWQ==	LavanyaB	Wedowee Hospital	Coded
GO
/****** Object:  StoredProcedure [dbo].[sp_Production_ReportNew]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Production_ReportNew] --'ManoharR','2015-02-01','2015-07-01',8
	
	
(@TT  [Perimeter_production_report]  readonly,
@Facility varchar(50)=null
)
as

BEGIN
Declare @QCData table
(
TRANS_ID int null,
DOS Date null,
[Account] varchar(100)null,
[Attending Physician] varchar(500)null,
[NP/PA] varchar(200)null,
[Resident]varchar(200)null,
[D/C Status]varchar(200)null,


[CPT1]varchar(100)null,
[ICD-9 1]varchar(200)null,
[ICD-9 2]varchar(200)null,
[ICD-9 3]varchar(200)null,
[ICD-9 4]varchar(200)null,

[CPT1-10]varchar(100)null,
[ICD-10 1]varchar(200)null,
[ICD-10 2]varchar(200)null,
[ICD-10 3]varchar(200)null,
[ICD-10 4]varchar(200)null,


[CPT 2]varchar(200)null,
[ICD-9-2]varchar(200)null,
[ICD-9-2.2]varchar(200)null,

[CPT2-10]varchar(200)null,
[ICD-10-2]varchar(200)null,
[ICD-10-2.2]varchar(200)null,


[CPT 3]varchar(200)null,
[ICD-9-3]varchar(200)null,

[CPT3-10]varchar(200)null,
[ICD-10-3]varchar(200)null,

[CPT 4]varchar(200)null,
[ICD-9-4]varchar(200)null,

[CPT4-10]varchar(200)null,
[ICD-10-4]varchar(200)null,


[CPT 5]varchar(200)null,
[ICD-9-5]varchar(200)null,

[CPT5-10]varchar(200)null,
[ICD-10-5]varchar(200)null,


[CPT 6]varchar(200)null,
[ICD-9-6]varchar(200)null,

[CPT6-10]varchar(200)null,
[ICD-10-6]varchar(200)null,

[CPT 7]varchar(200)null,
[ICD-9-7]varchar(200)null,

[CPT7-10]varchar(200)null,
[ICD-10-7]varchar(200)null,


[CPT 8]varchar(200)null,
[ICD-9-8]varchar(200)null,


[CPT8-10]varchar(200)null,
[ICD-10-8]varchar(200)null,


[Coder]varchar(200)null,
[Coded_Date] Datetime null,
[Coder Comments]varchar(max)null
)


Declare @trans_id int,@TotalCount int,@startCount int
set @startCount=1;

select dense_rank() over (order by trans_id)as RowNumber,TRANS_ID into #TRANSIDS   from @TT
where TRANS_ID in (select distinct TRANS_ID from @TT)
group by TRANS_ID
set @TotalCount=(select  COUNT(TRANS_ID)  from #TRANSIDS)

while @startCount <= @TotalCount


begin
set @trans_id=(select TRANS_ID from #TRANSIDS where RowNumber=@startCount)

select TD.TRANS_ID,F.DESCRIPTION,I.RECEIVED_DATE,I.ACCOUNT_NO, ATTENDING_PHY=case when T.ATTENDING_PHY =''  then ''  when  T.ATTENDING_PHY not like '%-%' then  T.ATTENDING_PHY else left(T.ATTENDING_PHY, charindex('-', T.ATTENDING_PHY) - 1)end   ,
NPPA=case when T.NPPA =''  then ''  when  T.NPPA not like '%-%' then  T.NPPA else left(T.NPPA, charindex('-', T.NPPA) - 1)end,
T.RESIDENT,T.PATIENT_STATUS  ,cpt,icd,MODIFIER as modf,CPT_ORDER,'ICD'+ cast(row_number() over (partition by TD.trans_id,cpt order by TRANS_DETAIL_ID   ) as varchar(500)) as icdList,
T.CODED_BY,CONVERT(varchar(12),CODED_DATE,101)as Coded_Date , T.CODING_COMMENTS into #temp3 from tbl_TRANSACTION_DETAILS TD

inner join dbo.tbl_TRANSACTION T on TD.TRANS_ID=T.TRANS_ID
inner join tbl_IMPORT_TABLE I on T.BATCH_ID=I.BATCH_ID
inner join tbl_FACILITY F on I.FACILITY=f.CODE
where TD.TRANS_ID =@trans_id
--and (nullif(@CodingStatus,null)is null or t.CODING_STATUS =@CodingStatus)
--and (nullif(@Facility,null)is null or i.FACILITY=@Facility)

--as NPPA1  , ,(select NP_PA_CODE  from  dbo.tbl_NP_PA_MASTER where NP_PA_NAME in (NPPA1) )as [NPPA]

select * into #temp4 from #temp3
pivot
(
max(icd)
for icdList in (ICD1,ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8,ICD9)
)p
order by CPT_ORDER



select * into #temp6 from  #temp4
pivot
(
max(cpt)
for CPT_ORDER in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
) p


Declare @cou int
set @cou=(select COUNT(cpt) from #temp4)

if @cou=1
begin

insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],Coder, Coded_Date, [Coder Comments])
SELECT   t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from  #temp6  t1
   where (t1.CPT1 is not null )
end

if @cou=2
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  end
  
if @cou=3
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  
  end
 
 
 if @cou=4
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null
  
  end
  
  
  if @cou=5
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],
Coder, Coded_Date,[Coder Comments])

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null
  end
  
  if @cou=6
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
Coder, Coded_Date, [Coder Comments] )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,t6.cpt6+'-' +t6.[modf],t6.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  end
  
  if @cou=7
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],Coder, Coded_Date, [Coder Comments] )


SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  end
  
   if @cou=8
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],Coder, Coded_Date, [Coder Comments] )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,t8.cpt8,t8.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  and t8.cpt8 is not null
  end
  
  
  
  -- and t3.cpt3 is not null
      drop table #temp4
drop table #temp3
drop table #temp6


set @startCount=@startCount+1

End


select TRANS_ID,convert(varchar(12), DOS,101) as DOS,[Account],[Attending Physician],[NP/PA],[Resident],[D/C Status],
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],
[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],[Coder],[Coded_Date],[Coder Comments],[ICD-10 1] from @QCData

--select TRANS_ID,convert(varchar(12),DOS,101) as DOS,Account,[Attending Physician],[NP/PA],Resident,[D/C Status],Coder, convert(varchar(12),Coded_Date,101) as Coded_Date,[Coder Comments] from @QCData

--select TRANS_ID from @QCData

select max([Coded_Date]) as [Coded_Date], count(TRANS_ID) as [Charts Coded],
(select COUNT([CPT1]) as [LWBS] from @QCData where [CPT1]='LWBS') as [LWBS],
(select COUNT([CPT1]) as [PVT/Void/Suture Removal/Global] from @QCData where [CPT1]='Deficient') as [PVT/Void/Suture Removal/Global],
(select COUNT([CPT1]) as [Charts to send back] from @QCData where [CPT1]='Unbillable') as [Charts to send back]
 from @QCData

drop table #TRANSIDS

END

declare @table [Perimeter_production_report] 
insert into @table values(1,9,'32452450',null,'247','Completed')
exec [sp_Production_Report] @table

--select getdate()
GO
/****** Object:  StoredProcedure [dbo].[sp_QC_Production_Report]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_QC_Production_Report] --'ManoharR','2015-02-01','2015-07-01',8
	
	--@UserName varchar (100),
	--@FromCodedDate varchar (100),
	--@ToCodedDate varchar (100),
	--@ProjectId int,
	--@TransDetails varchar(100)
--(@TT  Perimeter_QC  readonly)
   (@TT  [Perimeter_production_report]  readonly)
as

BEGIN
Declare @QCData table
(
TRANS_ID int null,
DOS Datetime null,
[Account] varchar(100)null,
[Attending Physician] varchar(500)null,
[NP/PA] varchar(200)null,
[Resident]varchar(200)null,
[D/C Status]varchar(200)null,
[CPT1]varchar(100)null,
[ICD-9 1]varchar(200)null,
[ICD-9 2]varchar(200)null,
[ICD-9 3]varchar(200)null,
[ICD-9 4]varchar(200)null,
[CPT 2]varchar(200)null,
[ICD-9-2]varchar(200)null,
[ICD-9-2.2]varchar(200)null,
[CPT 3]varchar(200)null,
[ICD-9-3]varchar(200)null,
[CPT 4]varchar(200)null,
[ICD-9-4]varchar(200)null,
[CPT 5]varchar(200)null,
[ICD-9-5]varchar(200)null,
[CPT 6]varchar(200)null,
[ICD-9-6]varchar(200)null,
[CPT 7]varchar(200)null,
[ICD-9-7]varchar(200)null,
[CPT 8]varchar(200)null,
[ICD-9-8]varchar(200)null,
[Coder]varchar(200)null,
[Coded_Date] Datetime null,
[Coder Comments]varchar(max)null,
[QC] varchar(200)null,
[QC_Date] datetime null
)


Declare @trans_id int,@TotalCount int,@startCount int
set @startCount=1;

select dense_rank() over (order by trans_id)as RowNumber,TRANS_ID into #TRANSIDS   from @TT
where TRANS_ID in (select distinct TRANS_ID from @TT)
group by TRANS_ID
set @TotalCount=(select  COUNT(TRANS_ID)  from #TRANSIDS)

while @startCount <= @TotalCount


begin
set @trans_id=(select TRANS_ID from #TRANSIDS where RowNumber=@startCount)

--select TD.TRANS_ID,I.RECEIVED_DATE,I.ACCOUNT_NO,T.ATTENDING_PHY,T.NPPA,T.RESIDENT,T.PATIENT_STATUS  ,cpt,icd,CPT_ORDER,'ICD'+ cast(row_number() over (partition by TD.trans_id,cpt order by TRANS_DETAIL_ID   ) as varchar(500)) as icdList,
select TD.TRANS_ID,t.DOS as RECEIVED_DATE,I.ACCOUNT_NO,T.ATTENDING_PHY,T.NPPA,T.RESIDENT,T.PATIENT_STATUS  ,cpt,icd,MODIFIER as modf,CPT_ORDER,'ICD'+ cast(row_number() over (partition by TD.trans_id,cpt order by TRANS_DETAIL_ID   ) as varchar(500)) as icdList,

T.CODED_BY,CONVERT(varchar(12),CODED_DATE,101)as Coded_Date , T.CODING_COMMENTS,t.QC_BY,CONVERT(varchar(12),t.QC_DATE,101) as QC_DATE into #temp3 from tbl_TRANSACTION_DETAILS TD

inner join dbo.tbl_TRANSACTION T on TD.TRANS_ID=T.TRANS_ID inner join tbl_IMPORT_TABLE I on T.BATCH_ID=I.BATCH_ID
where TD.TRANS_ID =@trans_id
select * into #temp4 from #temp3
pivot
(
max(icd)
for icdList in (ICD1,ICD2,ICD3,ICD4,ICD5,ICD6,ICD7,ICD8,ICD9)
)p
order by CPT_ORDER



select * into #temp6 from  #temp4
pivot
(
max(cpt)
for CPT_ORDER in (CPT1 ,CPT2,cpt3,cpt4,cpt5,cpt6,cpt7,cpt8)
) p


Declare @cou int
set @cou=(select COUNT(cpt) from #temp4)

if @cou=1
begin

insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],Coder, Coded_Date, [Coder Comments],QC,QC_Date)
SELECT   t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from  #temp6  t1
   where (t1.CPT1 is not null )
end

if @cou=2
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],Coder, Coded_Date,[Coder Comments],QC,QC_Date)

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID 
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  end
  
if @cou=3
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],Coder, Coded_Date,[Coder Comments],QC,QC_Date)

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 +'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  
  end
 
 
 if @cou=4
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],Coder, Coded_Date,[Coder Comments],QC,QC_Date)

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null
  
  end
  
  
  if @cou=5
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],
Coder, Coded_Date,[Coder Comments],QC,QC_Date)

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2+'-' +t2.[modf] end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null
  end
  
  if @cou=6
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
Coder, Coded_Date, [Coder Comments],QC,QC_Date )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1+'-' +t1.[modf],t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2+'-' +t2.[modf] IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3+'-' +t3.[modf],t3.ICD1,t4.cpt4+'-' +t4.[modf],t4.ICD1,t5.cpt5+'-' +t5.[modf],t5.ICD1,t6.cpt6+'-' +t6.[modf],t6.ICD1,
 t1.CODED_BY,t1.Coded_Date,t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  end
  
  if @cou=7
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],Coder, Coded_Date, [Coder Comments],QC,QC_Date )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  end
  
   if @cou=8
begin
insert into @QCData(  TRANS_ID,DOS,[Account],[Attending Physician],[NP/PA],[Resident] ,[D/C Status],                   
[CPT1],[ICD-9 1],[ICD-9 2],[ICD-9 3],[ICD-9 4],[CPT 2],[ICD-9-2],[ICD-9-2.2],[CPT 3],[ICD-9-3],[CPT 4],[ICD-9-4],[CPT 5],[ICD-9-5],[CPT 6],[ICD-9-6],
[CPT 7],[ICD-9-7],[CPT 8],[ICD-9-8],Coder, Coded_Date, [Coder Comments],QC,QC_Date )

SELECT t1.TRANS_ID,convert(varchar(12),t1.RECEIVED_DATE,101),t1.ACCOUNT_NO,t1.ATTENDING_PHY,t1.NPPA,t1.RESIDENT,t1.PATIENT_STATUS,
t1.CPT1,t1.ICD1,t1.ICD2,t1.ICD3,t1.ICD4,CPT2=case when t2.CPT2 IS null then NULL else t2.CPT2 end,t2.ICD1,t2.ICD2,t3.cpt3,t3.ICD1,t4.cpt4,t4.ICD1,t5.cpt5,t5.ICD1,t6.cpt6,t6.ICD1,
t7.cpt7,t7.ICD1,t8.cpt8,t8.ICD1,
 t1.CODED_BY,t1.Coded_Date,  t1.CODING_COMMENTS,t1.QC_BY,t1.QC_DATE from #temp6 t1 inner join  #temp6 t2 on t1.TRANS_ID=t2.TRANS_ID inner join #temp6 t3 on t2.TRANS_ID=t3.TRANS_ID
inner join #temp6 t4 on t3.TRANS_ID=t4.TRANS_ID inner join #temp6 t5 on t4.TRANS_ID=t5.TRANS_ID inner join #temp6 t6 on t5.TRANS_ID=t6.TRANS_ID
inner join #temp6 t7 on t6.TRANS_ID=t7.TRANS_ID inner join #temp6 t8 on t7.TRANS_ID=t8.TRANS_ID
   where (t1.CPT1 is not null )
   and t2.CPT2 is not null
  and t3.CPT3 is not null
  and t4.cpt4 is not null and t5.cpt5 is not null and t6.cpt6 is not null
  and t7.cpt7 is not null
  and t8.cpt8 is not null
  end
  
  
  
  -- and t3.cpt3 is not null
      drop table #temp4
drop table #temp3
drop table #temp6


set @startCount=@startCount+1

End


select * from @QCData

select TRANS_ID,Convert(varchar(12),DOS,101) as DOS,Account,[Attending Physician],[NP/PA],Resident,[D/C Status],Coder, Convert(varchar(12),Coded_Date,101) as Coded_Date,[Coder Comments],QC,QC_Date from @QCData

--select TRANS_ID from @QCData

drop table #TRANSIDS

END

--as
--select GETDATE()

GO
/****** Object:  StoredProcedure [dbo].[sp_ReleaseToClient]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_ReleaseToClient]
	-- Add the parameters for the stored procedure here
	(@BatchName varchar(50)=null,
	 @FromDate varchar(50)=null,
	 @ToDate varchar(50)=null,
	 @ProjectID int
	)
AS
BEGIN
	
	select it.BATCH_NAME as [Batch_Name],it.ACCOUNT_NO as [Account#],Convert(varchar(12), it.RECEIVED_DATE,101) as [Received Date],it.SPECIALITY as SPECIALITY,it.FACILITY as FACILITY,it.LOCATION as LOCATION,
	it.BATCH_STATUS as [Batch Status],NPPA,SCRIBE,RESIDENT, t.CODED_BY as Coder,CONVERT(varchar(12),t.CODED_DATE,101) as [Coded Date],it.ALLOTTED_TO as [ALLOTTED TO],it.ALLOTTED_BY as [ALLOTTED BY],
	Convert(varchar(12),it.ALLOTTED_DATE,101) as [Allotted Date],it.UPLOAD_BY as [Upload By],Convert(varchar(12),it.UPLOAD_DATE,101) as [Upload Date],
	t.QC_BY as [QC],CONVERT(varchar(12), t.QC_DATE,101) as [QC Date], it.PATIENT_NAME as [Patient Name],
	AGE,it.DISPOSITION as [Disposition],t.PENDING_UPDATED_BY as [Pending Updated By],IS_SKIPPED,[Sample Audit]=case when T.IS_AUDITED=1 then 'SKIPPED' else 'AUDITTED' end,
	Convert(varchar(12),t.SEND_TO_CLIENT_DATE,101) as [Send To Client Date],CONVERT(varchar(12), it.RELEASED_DATE,101) as [Released Date] from dbo.tbl_IMPORT_TABLE IT
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID=T.BATCH_ID
	where t.PROJECT_ID=@ProjectID and (nullif(@BatchName,null) is null or it.BATCH_NAME=@BatchName)
	and (it.RECEIVED_DATE=(case when @FromDate IS NULL and @ToDate IS NULL then it.RECEIVED_DATE 
	when @FromDate IS NULL  then it.RECEIVED_DATE
	when @FromDate IS NOT NULL then @FromDate end) or
	convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101))
	and it.BATCH_STATUS ='Released' and t.QC_STATUS='Released'
	
END


--exec [sp_ReleaseToClient] '263_09-08-2015',null,null,16
GO
/****** Object:  StoredProcedure [dbo].[sp_Trans_Details]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--exec [sp_Trans_Details] null,null,'11/15/2016','11/17/2016','Completed','85',16
CREATE PROCEDURE [dbo].[sp_Trans_Details]-- 'PadmalatV',null,null,null,null,null,null
(
@Coder varchar(50)=null,
@BatchName varchar(100)=null,
@FromDate varchar(50)=null,
@ToDate varchar(50)=null,
@CodingStatus varchar(50)=null,
@Facility varchar(50)= NULL,
@PROJ_ID int
)
AS
BEGIN
	if(@CodingStatus='Completed')
	begin
	 select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where 
	t.PROJECT_ID=@PROJ_ID 
	and (nullif(@Coder,null)is null or t.CODED_BY=@Coder) 
	and convert(varchar(10),it.RECEIVED_DATE,101) between convert(varchar(10),@FromDate,101) and convert(varchar(10),@ToDate,101)
	and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	and (t.QC_STATUS in ('Completed','Error')) and it.BATCH_STATUS in('Completed','QC')--Released
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	
	end
	else if(@CodingStatus='UnCoded')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)--)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR IT.FACILITY=@Facility)
	 and ((it.BATCH_STATUS='FRESH') or (it.BATCH_STATUS='ASSIGNED'))
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end
	
	else if(@CodingStatus='Error Accounts')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
   and convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)

	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and (t.QC_STATUS='ERROR')
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end
	
	else if(@CodingStatus='Released')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and (t.QC_STATUS='Released')
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end
	
	else if(@CodingStatus='Pending')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and ((t.CODING_STATUS='Pending')or(t.CODING_STATUS='IT Clarification'))
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end

	--for coding and QC Production Report
	else if(@CodingStatus='Coded')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),t.CODED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and ((t.CODING_STATUS='Coded'))
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end

	else if(@CodingStatus='Qced')
	
	begin
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),t.QC_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and ((t.QC_STATUS='Qced'))
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end
	--for coding and QC Production Report
	else
	
	begin
	
	select DENSE_RANK() over (order by t.TRANS_ID) as RowNumber, t.TRANS_ID,it.ACCOUNT_NO, t.CODED_BY,F.DESCRIPTION as [Facility],t.CODING_STATUS from dbo.tbl_IMPORT_TABLE IT 
	inner join dbo.tbl_TRANSACTION T on it.BATCH_ID =t.BATCH_ID
	inner join dbo.tbl_FACILITY F on IT.FACILITY=F.CODE
	where t.PROJECT_ID=@PROJ_ID and (nullif(@Coder,null)is null or t.CODED_BY=@Coder)
	and convert(varchar(12),it.RECEIVED_DATE,101) between convert(varchar(12),@FromDate,101) and convert(varchar(12),@ToDate,101)
	 and (nullif(@BatchName,null)is null or it.BATCH_NAME =@BatchName)
	 and (nullif(@Facility,null) is null OR F.CODE=@Facility)
	 and (nullif(@CodingStatus,null)is null or t.CODING_STATUS=@CodingStatus)
	group by t.TRANS_ID,it.ACCOUNT_NO,t.CODED_BY,F.DESCRIPTION,t.CODING_STATUS
	end
	
END	

--exec [sp_Trans_Details] null,null,null,null,'Completed',null,16

--exec [sp_Trans_Details] null,'85-07-02-2015','01-01-2015','08-09-2015',null,null,16

GO
/****** Object:  StoredProcedure [dbo].[sp_USP_SELECT_INCREMENTALHCC_POPUP_Color]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_USP_SELECT_INCREMENTALHCC_POPUP_Color]      
(      
@Batch_Id int      
)      
as      
begin      
 declare  @trans_id as int      
 declare  @eci as int      
 declare @MEMBER_GENDER Nvarchar(10)      
 declare @ACCOUNT_NO nvarchar(10)      
      
 select @eci=eci,@MEMBER_GENDER=MEMBER_GENDER,@ACCOUNT_NO=ACCOUNT_NO from tbl_IMPORT_TABLE where Batch_Id=@Batch_Id      
 select @trans_id=TRANS_ID from tbl_TRANSACTION where BATCH_ID=@Batch_Id      
   -- select TRANS_DETAIL_ID,TRANS_ID,icd,ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=@trans_id      
         
     
     
     
     
     
     
 --select @eci=eci,@MEMBER_GENDER=MEMBER_GENDER,@ACCOUNT_NO=ACCOUNT_NO from tbl_IMPORT_TABLE where Batch_Id=@Batch_Id      
 --select @trans_id=TRANS_ID from tbl_TRANSACTION where BATCH_ID=@Batch_Id      
 --  -- select TRANS_DETAIL_ID,TRANS_ID,icd,ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=@trans_id      
         
 --select ROW_NUMBER() over(order by t.ICD)as PAGE_NO,      
 --case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),'NULLVAlUES') when 'NULLVALUES'       
 --then (case when t.ICD_CODE='9' then (select  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))      
 --else  (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)               
 --else (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as color,       
 --t.TRANS_ID,t.BEGINNING_DOS,t.ENDING_DOS,t.ICD_CODE,t.ICD,t.EO_CODE1,t.EO_CODE2,t.EO_CODE3,t.EO_CODE4,t.EO_CODE5,t.EO_CODE6,t.EO_COMMENT1,t.EO_COMMENT2,t.EO_COMMENT3,t.EO_COMMENT4,t.EO_COMMENT5,t.EO_COMMENT6,t.TRANS_DETAIL_ID      
 --from tbl_TRANSACTION_DETAILS t        
 --where t.TRANS_ID=@trans_id      
     
     
     
 select ROW_NUMBER() over(order by t.ICD)as PAGE_NO,      
 case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),'NULLVAlUES') when 'NULLVALUES'       
 then (case when t.ICD_CODE='9' then     
   (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))      
 else  (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)               
 else (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as HCCType,    
     
 case isnull((select top 1  DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),1) when 1       
 then (case when t.ICD_CODE='9' then     
   (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))      
 else  (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_TYPE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)               
 else (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as HCCCode,    
     
        
 t.TRANS_ID,t.BEGINNING_DOS,t.ENDING_DOS,t.ICD_CODE,t.ICD,t.EO_CODE1,t.EO_CODE2,t.EO_CODE3,t.EO_CODE4,t.EO_CODE5,t.EO_CODE6,t.EO_COMMENT1,t.EO_COMMENT2,t.EO_COMMENT3,t.EO_COMMENT4,t.EO_COMMENT5,t.EO_COMMENT6,t.TRANS_DETAIL_ID      
 from tbl_TRANSACTION_DETAILS t        
 where t.TRANS_ID=@trans_id      
     
     
     
end      
  
--exec [dbo].[sp_USP_SELECT_INCREMENTALHCC_POPUP_Color] 33852
GO
/****** Object:  StoredProcedure [dbo].[ups_Check_Error_Accounts]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  procedure [dbo].[ups_Check_Error_Accounts]
(

@ProjectId int, 
@Userntlg Varchar(50),
@PracticeId int
) 
  AS
      
  BEGIN

  DECLARE @Date as date 
  SET @Date = GETDATE()

  select T.TRANS_ID FROM  tbl_IMPORT_TABLE I INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID  
  where (I.PROJECT_ID=@ProjectId)  and (T.PRACTICE_ID=@PracticeId)  AND (T.QC_STATUS in ('Error','QC')) AND  (T.CODED_BY=@Userntlg)
  and CONVERT(varchar(12),T.QC_DATE,101)!=CONVERT(varchar(12),@Date,101)
  AND (T.IS_ACKNOWLEDGE IS NULL or T.IS_ACKNOWLEDGE='N') 
  AND (T.CODED_BY=@Userntlg) AND (T.ACKNOWLEDGE_COMMENTS='N' or T.ACKNOWLEDGE_COMMENTS  IS NULL)
  
  
  --AND (dbo.[SplitERROR_WEIGHTAGE]([ERROR_WEIGHTAGE])  <> '0')
  END     


 -- exec [dbo].[ups_Check_Error_Accounts] 18,'ManoharR',1
GO
/****** Object:  StoredProcedure [dbo].[ups_Delete_Accounts]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ups_Delete_Accounts]
	(
	@ProjectID int,
	@PracticeID int,
	@UserNtlg varchar(20)
	)

AS
BEGIN
	
    delete from tbl_TRANSACTION_HISTORY where TRANS_ID in(select TRANS_ID from tbl_TRANSACTION where BATCH_ID in (select BATCH_ID from tbl_IMPORT_TABLE
	where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID ))--and UPLOAD_BY =@UserNtlg))

	delete from tbl_TRANSACTION_DETAILS_HISTORY where TRANS_ID in(select TRANS_ID from tbl_TRANSACTION where BATCH_ID in (select BATCH_ID from tbl_IMPORT_TABLE
	where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID))-- and UPLOAD_BY =@UserNtlg))

	delete from tbl_TRANSACTION_DETAILS_BACKUP where TRANS_ID in(select TRANS_ID from tbl_TRANSACTION where BATCH_ID in (select BATCH_ID from tbl_IMPORT_TABLE
	where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID))-- and UPLOAD_BY =@UserNtlg))

	delete from tbl_TRANSACTION_DETAILS where TRANS_ID in(select TRANS_ID from tbl_TRANSACTION where BATCH_ID in (select BATCH_ID from tbl_IMPORT_TABLE
	where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID)) --and UPLOAD_BY =@UserNtlg))

	delete from tbl_TRANSACTION where BATCH_ID in (select BATCH_ID from tbl_IMPORT_TABLE where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID)-- and UPLOAD_BY =@UserNtlg)

	Update tbl_IMPORT_TABLE set Batch_Status = 'Fresh',ALLOTTED_TO = Null, ALLOTTED_DATE = Null,QC_ALLOTTED_BY = Null, QC_ALLOTTED_DATE = Null, UPLOAD_DATE = getdate(),
    ALLOTTED_BY = Null,RELEASED_DATE = Null,RELEASED_BY = Null where PROJECT_ID=@ProjectID and PRACTICE_ID =@PracticeID --and UPLOAD_BY =@UserNtlg

	select 'Success';

END

GO
/****** Object:  StoredProcedure [dbo].[ups_Get_AllotmentData]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

        
  CREATE procedure [dbo].[ups_Get_AllotmentData]
  (
  @ProjectId int,
  @User_Ntlg varchar(100), 
  @PracticeId int,
  @Status varchar(50),
  @FromDate date=null,
  @ToDate date=null,
  @encounterType varchar(12)
  ) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)
  declare @location nvarchar(max)
  declare @AccessType nvarchar(max) = null
  
  set @location=(select  [Location] from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@User_Ntlg AND PRACTICE_ID=@practiceId)
  set @taskId=(select TOP 1  TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='Coding_Allotment' )
  set @query=(select TOP 1 FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId)
  set @AccessType=(select USER_NTLG from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@User_Ntlg and TL_NTLG=@User_Ntlg and OM_NTLG=@User_Ntlg AND PRACTICE_ID=@practiceId)
 
	if(@AccessType is null)
	begin
	set @AccessType = 'TL'
	end
	
 if @ProjectId=18
  begin
  set @res='select top 2000 BATCH_ID,BATCH_STATUS,'+@query+' from  dbo.tbl_IMPORT_TABLE 
            where PROJECT_ID=@ProjectId and LOCATION=@location and PRACTICE_ID=@PracticeId
		    AND BATCH_STATUS=case when @Status in(''Fresh'',''Coding Allotted'') then @Status  else ''Fresh'' end
			AND Batch_ID NOT IN (select Batch_ID from tbl_TRANSACTION where coding_status=''In process'')
			AND ENCOUNTER_TYPE=case when @encounterType in(''I'',''O'',''P'') then @encounterType else ENCOUNTER_TYPE end
			AND (RECEIVED_DATE = case when @FromDate is null then RECEIVED_DATE else @FromDate end  
            or RECEIVED_DATE = case when @ToDate is null then RECEIVED_DATE else @ToDate end  
			or convert(varchar(12),RECEIVED_DATE,101) between @FromDate and @ToDate)
			AND TL_NAME = case when '''+@AccessType+''' in (''TL'') then @User_Ntlg else TL_NAME end
			order by upload_date desc'

  set @parameterList='@ProjectId int,@User_Ntlg varchar(100),@location nvarchar(max),@PracticeId int,@Status varchar(50),@FromDate varchar(12),@ToDate varchar(12),@encounterType varchar(12)'
  execute  sp_executesql @res output,@parameterList,@ProjectId,@User_Ntlg,@location,@PracticeId,@Status,@FromDate,@ToDate,@encounterType
  end
 end

 -- exec [dbo].[ups_Get_AllotmentData] 18,'LavanyaB',2,'',null,null,null

GO
/****** Object:  StoredProcedure [dbo].[ups_Get_Hearder]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

        
  CREATE procedure [dbo].[ups_Get_Hearder](@ProjectId int,@PracticeId int) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)
  
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='Import')
 
 set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
  print @query
 

  
 set @res=' select BATCH_ID,'+@query+',REMARKS as [Reason for unsuccessful]  from  dbo.tbl_UNSUCCESSFUL_IMPORTED_TABLE where PROJECT_ID=@ProjectId and PRACTICE_ID=@PracticeId'
  
  set @parameterList='@ProjectId int , @PracticeId int'
  
   execute  sp_executesql @res output,@parameterList,@ProjectId,@PracticeId
  

  end    
  

  
  --exec  ups_Get_Hearder 18,2
  
  
         

               
               

GO
/****** Object:  StoredProcedure [dbo].[ups_Get_QcAllotmentData]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE procedure [dbo].[ups_Get_QcAllotmentData](@ProjectId int,@UserNTLG varchar(100)) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)
  declare @location nvarchar(max)
  
  
  set @location=(select SM_NAME from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNTLG)
  print @location
  
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='QC_Allotment')
 print @taskId
 set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
  print @query
 
 if @ProjectId=18
 begin
 set @res='select coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS] ,coalesce(T.CODING_STATUS,'''') as [CODING STATUS],'+@query+' from  dbo.tbl_IMPORT_TABLE I inner join tbl_TRANSACTION T on I.BATCH_ID=T.BATCH_ID where I.PROJECT_ID=@ProjectId and I.LOCATION
=@location'
  print @res
  set @parameterList='@ProjectId int,@UserNTLG varchar(100),@location nvarchar(max)'
  
   execute  sp_executesql @res output,@parameterList,@ProjectId,@UserNTLG,@location
 end
 else
 begin
 set @res='select coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS] ,coalesce(T.CODING_STATUS,'''') as [CODING STATUS],'+@query+' from  dbo.tbl_IMPORT_TABLE I inner join tbl_TRANSACTION T on I.BATCH_ID=T.BATCH_ID where I.PROJECT_ID=@ProjectId'
  print @res
  set @parameterList='@ProjectId int'
  
   execute  sp_executesql @res output,@parameterList,@ProjectId
 end
  
end
  
  --exec  [ups_Get_QCAllotmentData] 16,'ManoharR','3/6/2016'    

GO
/****** Object:  StoredProcedure [dbo].[ups_Get_QcAllotmentDataHighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[ups_Get_QcAllotmentDataHighMark] 18,'Incremental Audit','SubhajakK',2
        
 CREATE procedure [dbo].[ups_Get_QcAllotmentDataHighMark]
  (
  @ProjectId int,
  @practiceId int,
  @Status varchar(50)=null,
  @CodedFromDate date=null,
  @CodedToDate date=null,
  @UserNtlg varchar(50)=null,
  @encounterType varchar(12)=null
  ) 
  as
begin
declare @location nvarchar(max)

  set @location=(select Location from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNtlg AND PRACTICE_ID=@practiceId)
  
  SELECT DISTINCT coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS] ,coalesce(T.CODING_STATUS,'''') as [CODING STATUS],I.BATCH_NAME as [Batch Name],I.RECEIVED_DATE as [Scheduled Retrieval Date],I.ECI as [ECI],I.ACCOUNT_NO as [Tracking Code],
  I.UMI as UMI,I.HIC as HIC,I.First_Name as [Member First Name],I.Last_Name as [Member Last Name],I.MEMBER_DOB as [MEMBER DOB], I.ENCOUNTER_TYPE as [ENCOUNTER TYPE],
  I.MEMBER_GENDER as [Member Gender],I.Performing_Provider_NPI as [Performing Provider NPI],I.Performing_Provider_BSID as [Performing Provider BSID],
  I.Billing_Provider_NPI as [Billing Provider NPI],I.Billing_Provider_BSID as [Billing Provider BSID],I.LOCATION as [Location],T.CODED_BY as [Coded By],T.CODED_DATE as [Coded Date],
  I.QC_ALLOTTED_BY as [ASSIGNED TO],I.QC_ALLOTTED_DATE as [ASSIGNED DATE]
  FROM tbl_IMPORT_TABLE I
  INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID
  INNER JOIN tbl_TRANSACTION_DETAILS TD ON t.TRANS_ID = td.TRANS_ID
  WHERE I.PROJECT_ID=@ProjectId
  AND I.PRACTICE_ID=@practiceId
  AND I.LOCATION=@location
  AND (T.CODED_DATE = case when @CodedFromDate ='' then T.CODED_DATE else @CodedFromDate end  
  or T.CODED_DATE = case when @CodedToDate='' then T.CODED_DATE else @CodedToDate end  
  or convert(varchar(12),T.CODED_DATE,101) between @CodedFromDate and @CodedToDate)
  AND I.BATCH_STATUS=case when @Status ='' then 'Coded' else @Status end
  AND I.ENCOUNTER_TYPE=case when @encounterType in('I','O','P') then @encounterType  else I.ENCOUNTER_TYPE end
  AND I.TL_NAME=@UserNtlg
  end   

-- exec [dbo].[ups_Get_QcAllotmentDataHighMark] 18,2,'','','','ManoharR',''


GO
/****** Object:  StoredProcedure [dbo].[ups_Get_QcAllotmentDataHighMark_Perf]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[ups_Get_QcAllotmentDataHighMark] 18,'Incremental Audit','SubhajakK',1
        
 CREATE procedure [dbo].[ups_Get_QcAllotmentDataHighMark_Perf]
  (
  @ProjectId int,
  --@Status varchar(50)=null,
  @AuditType varchar(50)=null,
  --@ReceivedFromDate date=null,
  --@ReceivedToDate date=null,
  @UserNtlg varchar(50)=null,
  @practiceId int
  ) 
  as
begin
declare @location nvarchar(max)
DECLARE @PROJECTIDD INT
DECLARE @AUDITTYPEE  varchar(50)
DECLARE @PRACTICEIDD INT
DECLARE  @USERNTLGG varchar(50)

SET @PROJECTIDD=@ProjectId
SET @AUDITTYPEE=@AuditType
SET @PRACTICEIDD=@practiceId
SET @USERNTLGG=@UserNtlg
  
  if @AuditType='Regular Audit'
  begin
  set @location=(select Location from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNtlg AND PRACTICE_ID=@practiceId)
  print @location
SELECT DISTINCT I.Batch_id,coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS],coalesce(T.CODING_STATUS,'''') as [CODING STATUS],I.BATCH_NAME as [Batch Name],I.RECEIVED_DATE as [Scheduled Retrieval Date],I.ECI as [ECI],I.ACCOUNT_NO as [Tracking Code],
  I.UMI as UMI,I.HIC as HIC,I.First_Name as [Member First Name],I.Last_Name as [Member Last Name],I.MEMBER_DOB as [MEMBER DOB], I.ENCOUNTER_TYPE as [ENCOUNTER TYPE],
  I.MEMBER_GENDER as [Member Gender],I.Performing_Provider_NPI as [Performing Provider NPI],I.Performing_Provider_BSID as [Performing Provider BSID],
  I.Billing_Provider_NPI as [Billing Provider NPI],I.Billing_Provider_BSID as [Billing Provider BSID],I.LOCATION as [Location],T.CODED_BY as [Coded By],T.CODED_DATE as [Coded Date],
  I.QC_ALLOTTED_BY as [ASSIGNED TO],I.QC_ALLOTTED_DATE as [ASSIGNED DATE]
FROM tbl_IMPORT_TABLE I
INNER JOIN tbl_TRANSACTION T      ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD    ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM    ON IHDM.PROJECT_ID = I.PROJECT_ID
WHERE I.PROJECT_ID=@ProjectId AND  I.BATCH_STATUS NOT IN ('QC','Completed') and I.PRACTICE_ID=@practiceId
AND IHDM.ECI = I.ECI
AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)
AND TD.ICD= IHDM.DX_CODE
AND TD.ICD_CODE= IHDM.DX_TYPE
AND I.BATCH_ID NOT IN ( SELECT DISTINCT  I.BATCH_ID FROM tbl_IMPORT_TABLE I
INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM ON IHDM.PROJECT_ID = I.PROJECT_ID
LEFT OUTER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM9 ON ICDMM9.ICD_9 = TD.ICD OR ICDMM9.ICD_10 = TD.ICD
INNER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM10 ON ICDMM10.ICD_10 = IHDM.DX_CODE OR ICDMM10.ICD_9 = IHDM.DX_CODE
WHERE I.PROJECT_ID = @ProjectId and I.PRACTICE_ID=@practiceId
AND I.LOCATION = @location
--AND (I.QC_ALLOTTED_BY = @QC_AllotedTo)

 AND I.BATCH_STATUS NOT IN ('QC','Completed')
AND IHDM.ECI NOT IN ( (select distinct ECI from tbl_IMPORT_TABLE where BATCH_STATUS NOT IN ('QC','Completed') and PRACTICE_ID=@practiceId))

--AND IHDM.ECI <> I.ECI
AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)
AND ((TD.ICD NOT IN (SELECT IHDM.DX_CODE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM   WHERE IHDM.PROJECT_ID = I.PROJECT_ID))
OR (TD.ICD_CODE NOT IN (SELECT IHDM.DX_TYPE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID = I.PROJECT_ID))))
   end
  ELSE IF @AuditType='Incremental Audit'
  BEGIN
		  SET @location=(SELECT Location FROM tbl_USER_ACCESS WHERE PROJECT_ID=@PROJECTIDD and USER_NTLG=@USERNTLGG AND PRACTICE_ID=@PRACTICEIDD)
		  PRINT @location 
		  --SELECT * FROM #TEMP1
		  	SELECT DISTINCT COALESCE(I.BATCH_STATUS,'''') AS [BATCH STATUS] ,
                COALESCE(T.CODING_STATUS,'''') AS [CODING STATUS],
				I.BATCH_NAME AS [Batch Name],
				I.RECEIVED_DATE AS [Scheduled Retrieval Date],
				I.ECI AS [ECI],
				I.ACCOUNT_NO AS [Tracking Code],
				I.UMI AS UMI,
				I.HIC AS HIC,
				I.First_Name AS [Member First Name],
				I.Last_Name AS [Member Last Name],
				I.MEMBER_DOB AS [MEMBER DOB], 
				I.ENCOUNTER_TYPE AS [ENCOUNTER TYPE],
				I.MEMBER_GENDER AS [Member Gender],
				I.Performing_Provider_NPI AS [Performing Provider NPI],
				I.Performing_Provider_BSID AS [Performing Provider BSID],
				I.Billing_Provider_NPI AS [Billing Provider NPI],
				I.Billing_Provider_BSID AS [Billing Provider BSID],
				I.LOCATION AS [Location],
				T.CODED_BY AS [Coded By],
				T.CODED_DATE AS [Coded Date],
				I.PROJECT_ID,
				TD.ICD,
				T.IS_SKIPPED,
				TD.ICD_CODE,
				I.PRACTICE_ID,
				I.QC_ALLOTTED_BY AS [ASSIGNED TO],
				I.QC_ALLOTTED_DATE AS [ASSIGNED DATE]
			INTO #TEMP1
			FROM tbl_IMPORT_TABLE I
			INNER JOIN tbl_TRANSACTION T      ON I.BATCH_ID = T.BATCH_ID
			INNER JOIN tbl_TRANSACTION_DETAILS TD    ON t.TRANS_ID = td.TRANS_ID
			WHERE I.BATCH_STATUS NOT IN ('QC','Completed')

			SELECT * FROM #TEMP1
			SELECT DISTINCT  [BATCH STATUS] ,
                [CODING STATUS],
				[Batch Name],
				[Scheduled Retrieval Date],
				T1.[ECI],
				[Tracking Code],
				 UMI,
				 HIC,
				 [Member First Name],
				 [Member Last Name],
				[MEMBER DOB], 
				 [ENCOUNTER TYPE],
				 [Member Gender],
				 [Performing Provider NPI],
				 [Performing Provider BSID],
				 [Billing Provider NPI],
				[Billing Provider BSID],
				[Location],
				 [Coded By],				
				 [ASSIGNED TO],				
				 [ASSIGNED DATE]  INTO #TEMP2
			FROM #TEMP1 T1
			INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM    ON IHDM.PROJECT_ID = T1.PROJECT_ID
			LEFT OUTER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM9   ON ICDMM9.ICD_9 = T1.ICD OR ICDMM9.ICD_10 = T1.ICD
			INNER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM10 ON ICDMM10.ICD_10 = IHDM.DX_CODE OR ICDMM10.ICD_9 = IHDM.DX_CODE
			WHERE T1.PROJECT_ID=@PROJECTIDD
			AND T1.LOCATION = @location
			
			AND IHDM.ECI NOT IN ( (SELECT DISTINCT ECI FROM tbl_IMPORT_TABLE WHERE BATCH_STATUS NOT IN ('QC','Completed'))) and T1.PRACTICE_ID=@PRACTICEIDD
			--AND IHDM.ECI <> I.ECI
			AND (T1.IS_SKIPPED = 0 OR T1.IS_SKIPPED IS NULL)
			AND ((T1.ICD NOT IN (SELECT IHDM.DX_CODE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID = T1.PROJECT_ID))
			OR (T1.ICD_CODE NOT IN (SELECT IHDM.DX_TYPE     FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID = T1.PROJECT_ID)))

			SELECT * FROM #TEMP2
			DROP TABLE #TEMP1
			DROP TABLE #TEMP2
  END
  else if @AuditType='Blind Audit'
  begin
  set @location=(select Location from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNtlg AND PRACTICE_ID=@practiceId)
  print @location
  
  SELECT DISTINCT coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS] ,coalesce(T.CODING_STATUS,'''') as [CODING STATUS],I.BATCH_NAME as [Batch Name],I.RECEIVED_DATE as [Scheduled Retrieval Date],I.ECI as [ECI],I.ACCOUNT_NO as [Tracking Code],
  I.UMI as UMI,I.HIC as HIC,I.First_Name as [Member First Name],I.Last_Name as [Member Last Name],I.MEMBER_DOB as [MEMBER DOB], I.ENCOUNTER_TYPE as [ENCOUNTER TYPE],
  I.MEMBER_GENDER as [Member Gender],I.Performing_Provider_NPI as [Performing Provider NPI],I.Performing_Provider_BSID as [Performing Provider BSID],
  I.Billing_Provider_NPI as [Billing Provider NPI],I.Billing_Provider_BSID as [Billing Provider BSID],I.LOCATION as [Location],T.CODED_BY as [Coded By],T.CODED_DATE as [Coded Date],
  I.QC_ALLOTTED_BY as [ASSIGNED TO],I.QC_ALLOTTED_DATE as [ASSIGNED DATE]
FROM tbl_IMPORT_TABLE I
INNER JOIN tbl_TRANSACTION T      ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD    ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM    ON IHDM.PROJECT_ID = I.PROJECT_ID
WHERE I.PROJECT_ID=@ProjectId 
AND I.LOCATION = @location
AND I.BATCH_STATUS NOT IN ('QC','Completed')
AND IHDM.ECI = I.ECI
AND (T.IS_SKIPPED = 1)
AND TD.ICD= IHDM.DX_CODE
AND TD.ICD_CODE= IHDM.DX_TYPE
AND T.AUDIT_CATEGORY is null
and I.PRACTICE_ID=@practiceId
  end
  else
  begin
  
  set @location=(select Location from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNtlg AND PRACTICE_ID=@practiceId)
  print @location
  
  SELECT DISTINCT coalesce(I.BATCH_STATUS,'''') as [BATCH STATUS] ,coalesce(T.CODING_STATUS,'''') as [CODING STATUS],I.BATCH_NAME as [Batch Name],I.RECEIVED_DATE as [Scheduled Retrieval Date],I.ECI as [ECI],I.ACCOUNT_NO as [Tracking Code],
  I.UMI as UMI,I.HIC as HIC,I.First_Name as [Member First Name],I.Last_Name as [Member Last Name],I.MEMBER_DOB as [MEMBER DOB], I.ENCOUNTER_TYPE as [ENCOUNTER TYPE],
  I.MEMBER_GENDER as [Member Gender],I.Performing_Provider_NPI as [Performing Provider NPI],I.Performing_Provider_BSID as [Performing Provider BSID],
  I.Billing_Provider_NPI as [Billing Provider NPI],I.Billing_Provider_BSID as [Billing Provider BSID],I.LOCATION as [Location],T.CODED_BY as [Coded By],T.CODED_DATE as [Coded Date],
  I.QC_ALLOTTED_BY as [ASSIGNED TO],I.QC_ALLOTTED_DATE as [ASSIGNED DATE]
FROM tbl_IMPORT_TABLE I
INNER JOIN tbl_TRANSACTION T      ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD    ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM    ON IHDM.PROJECT_ID = I.PROJECT_ID
WHERE I.PROJECT_ID=@ProjectId AND I.LOCATION = @location and I.PRACTICE_ID=@practiceId
  
  end

  end   



GO
/****** Object:  StoredProcedure [dbo].[ups_Get_QcClarificationData]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--ups_Get_QcClarificationData 18,1,'Bangalore','SubhajakK'
CREATE PROCEDURE  [dbo].[ups_Get_QcClarificationData]
(
@ProjectId int ,
@PracticeId int,
@Location varchar(30),
@NTLG varchar(30)

) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)
  
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='QC Clarification')
 --print @taskId
 set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
  --print @query
 
 
 

BEGIN
 IF(@ProjectId = '18')
begin
 SELECT        tbl_IMPORT_TABLE.ACCOUNT_NO,tbl_TRANSACTION.TRANS_ID, tbl_TRANSACTION_DETAILS.TRANS_DETAIL_ID, tbl_IMPORT_TABLE.BATCH_NAME, tbl_TRANSACTION_DETAILS.BEGINNING_DOS, tbl_TRANSACTION_DETAILS.ENDING_DOS, 
                         tbl_TRANSACTION_DETAILS.ICD, tbl_TRANSACTION_DETAILS.ICD_CODE, tbl_TRANSACTION_DETAILS.PAGE_NO, tbl_TRANSACTION_DETAILS.EO_CODE1, 
                         tbl_TRANSACTION_DETAILS.EO_COMMENT1, tbl_TRANSACTION_DETAILS.EO_CODE2, tbl_TRANSACTION_DETAILS.EO_COMMENT2, 
                         tbl_TRANSACTION_DETAILS.EO_CODE3, tbl_TRANSACTION_DETAILS.EO_COMMENT3, tbl_TRANSACTION_DETAILS.EO_CODE4, 
                         tbl_TRANSACTION_DETAILS.EO_COMMENT4, tbl_TRANSACTION_DETAILS.EO_CODE5, tbl_TRANSACTION_DETAILS.EO_COMMENT5, 
                         tbl_TRANSACTION_DETAILS.EO_CODE6, tbl_TRANSACTION_DETAILS.EO_COMMENT6,  tbl_IMPORT_TABLE.ECI, 
                         tbl_IMPORT_TABLE.UMI, tbl_IMPORT_TABLE.First_Name, tbl_IMPORT_TABLE.Last_Name, tbl_IMPORT_TABLE.HIC, tbl_IMPORT_TABLE.MEMBER_DOB, 
                         tbl_IMPORT_TABLE.MEMBER_GENDER, tbl_IMPORT_TABLE.ENCOUNTER_TYPE, tbl_TRANSACTION_DETAILS.ERROR_CATEGORY, 
                         tbl_TRANSACTION_DETAILS.ERROR_SUBCATEGORY, tbl_TRANSACTION.QC_BY, tbl_TRANSACTION.QC_DATE, tbl_TRANSACTION.CODED_DATE, 
                         tbl_TRANSACTION.CODED_BY, tbl_TRANSACTION_DETAILS.COMMENTS, tbl_TRANSACTION_DETAILS.QC_COMMENTS,tbl_IMPORT_TABLE.PDF_Path
FROM            tbl_IMPORT_TABLE INNER JOIN
                         tbl_TRANSACTION ON tbl_IMPORT_TABLE.BATCH_ID = tbl_TRANSACTION.BATCH_ID INNER JOIN
                         tbl_TRANSACTION_DETAILS ON tbl_TRANSACTION.TRANS_ID = tbl_TRANSACTION_DETAILS.TRANS_ID
WHERE        (tbl_IMPORT_TABLE.PROJECT_ID = @ProjectId) AND (tbl_IMPORT_TABLE.BATCH_STATUS = 'QC') AND (tbl_TRANSACTION.QC_STATUS in ('ERROR','QC')) AND --(tbl_TRANSACTION.CODING_STATUS = 'Coded') AND
                          (tbl_TRANSACTION.IS_ACKNOWLEDGE = 'N')  AND (tbl_TRANSACTION.PRACTICE_ID=@PracticeId) AND (tbl_IMPORT_TABLE.LOCATION=@Location) AND (tbl_TRANSACTION.QC_BY=@NTLG)  AND (tbl_TRANSACTION.ACKNOWLEDGE_COMMENTS='Y')
end
 
 else
begin     
      set @Query=REPLACE(@Query,'QC_Comments','T.QC_Comments')
      set @Query=REPLACE(@Query,'Error_Category','T.Error_Category')
      set @Query=REPLACE(@Query,'ERROR_SUBCATEGORY','T.ERROR_SUBCATEGORY')
      set @Query=REPLACE(@Query,'QC_By','T.QC_By')
      set @Query=REPLACE(@Query,'QC_DATE','T.QC_DATE') 
      set @Query=REPLACE(@Query,'PATIENT_NAME','T.PATIENT_NAME')     
      
      End

 
  BEGIN
 set @res='select T.TRANS_ID,'+@query+' FROM  tbl_IMPORT_TABLE I INNER JOIN
                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID   where I.PROJECT_ID=@ProjectId  AND I.BATCH_STATUS =''QC'' AND T.QC_STATUS =''ERROR'' AND (T.CODING_STATUS=''Coded'')  AND (T.IS_ACKNOWLEDGE =''N'') AND T.PRACTICE_ID=@PracticeId'
  END         
 
              
  --print @res
  set @parameterList='@ProjectId int, @QCStatus Varchar(50),@PracticeId int'
  
   execute  sp_executesql @res output,@parameterList,@ProjectId, QCStatus,@PracticeId 
 
  end    
  
  End
--EXEC [dbo].[ups_Get_QcClarificationData]  18,2
--		@ProjectId = 18 
		
	 
GO
/****** Object:  StoredProcedure [dbo].[ups_Get_QcFeedBackData]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec ups_Get_QcFeedBackData 18,'No','ManoharR',2
CREATE procedure [dbo].[ups_Get_QcFeedBackData]
(

@ProjectId int,
@QCStatus Varchar(50),
@Userntlg Varchar(50),
@PracticeId int
) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)
  DECLARE @USERACCESS VARCHAR (100)
  
  SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@ProjectId and PRACTICE_ID=@PracticeId)
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='QC Feedback')
 --print @taskId
 set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
  --print @query
 
begin     
      set @Query=REPLACE(@Query,'ICD_CODE','TD.ICD_CODE')
      set @Query=REPLACE(@Query,'PAGE_NO','TD.PAGE_NO')
      set @Query=REPLACE(@Query,'QC_Comments','T.QC_Comments')
      set @Query=REPLACE(@Query,'Error_Category','T.Error_Category')
      set @Query=REPLACE(@Query,'ERROR_SUBCATEGORY','T.ERROR_SUBCATEGORY')
      set @Query=REPLACE(@Query,'QC_BY','T.QC_BY')
      set @Query=REPLACE(@Query,'QC_DATE','T.QC_DATE')
      set @Query=REPLACE(@Query,'PATIENT_NAME','T.PATIENT_NAME')
      
      
      End
      
--IF(@USERACCESS = 'CODER-TL')
--BEGIN
--      if(@QCStatus='No')
--  BEGIN
 set @res='select T.TRANS_ID,'+@query+',T.QC_STATUS as [QC STATUS]  FROM  tbl_IMPORT_TABLE I INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID   
          where I.PROJECT_ID=@ProjectId AND I.BATCH_STATUS =''QC'' AND T.QC_STATUS in (''Error'',''Qc'') 
		  AND T.PRACTICE_ID=@PracticeId AND (ERROR_WEIGHTAGE <> ''0'') AND (T.IS_ACKNOWLEDGE IS NULL or T.IS_ACKNOWLEDGE=''N'') 
		  AND (T.CODED_BY=@Userntlg) AND (T.ACKNOWLEDGE_COMMENTS=''N'' or T.ACKNOWLEDGE_COMMENTS  IS NULL) '--(T.QC_ERROR_CORRECTION =''N'')  and T.RESIDENT is null 
  --print @res
  --END         
--  else if(@QCStatus='Yes')  
  
--  BEGIN
-- set @res='select T.TRANS_ID,'+@query+',T.QC_STATUS  FROM  tbl_IMPORT_TABLE I INNER JOIN
--                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID  where I.PROJECT_ID=@ProjectId  AND I.BATCH_STATUS =''QC'' AND T.QC_STATUS in(''Error'') AND T.PRACTICE_ID=@PracticeId AND QC_ERROR_CORRECTION =''Y''   AND (T.IS_ACKNOWLEDGE IS NULL) AND ERROR_WEIGHTAGE=''0''  AND (T.CODED_BY=@Userntlg)'
 
 
-- ------------------
-- --set @res='select T.TRANS_ID,'+@query+' FROM  tbl_IMPORT_TABLE I INNER JOIN
-- --                        tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID  where I.PROJECT_ID=@ProjectId  AND I.BATCH_STATUS =''QC'' AND T.QC_STATUS =''ERROR'' AND QC_ERROR_CORRECTION =''Y''   AND (T.IS_ACKNOWLEDGE IS NULL) AND ERROR_WEIGHTAGE IS NOT ''0'' '
 
-- --------------------------------------------
--  END 
--END
---- CODER 
--ELSE

--BEGIN
--     if(@QCStatus='No')
--  BEGIN
-- set @res='select T.TRANS_ID,'+@query+',T.QC_STATUS  FROM  tbl_IMPORT_TABLE I INNER JOIN
--                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID   where I.PROJECT_ID=@ProjectId  AND I.BATCH_STATUS =''QC'' AND T.PRACTICE_ID=@PracticeId AND T.QC_STATUS in (''ERROR'',''Qc'') AND (QC_ERROR_CORRECTION =''N'' or QC_ERROR_CORRECTION =''Y'') AND (ERROR_WEIGHTAGE <> ''0'') AND (T.IS_ACKNOWLEDGE IS NULL  or T.IS_ACKNOWLEDGE=''N'')  AND (T.CODED_BY=@Userntlg)'
--  END         
--  else if(@QCStatus='Yes')  
  
--  BEGIN
-- set @res='select T.TRANS_ID,'+@query+',T.QC_STATUS  FROM  tbl_IMPORT_TABLE I INNER JOIN
--                         tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID  where I.PROJECT_ID=@ProjectId  AND I.BATCH_STATUS =''QC'' AND T.QC_STATUS in(''Qced'',''Error'') AND QC_ERROR_CORRECTION =''Y''AND T.PRACTICE_ID=@PracticeId  AND (T.IS_ACKNOWLEDGE IS NULL) AND (T.CODED_BY=@Userntlg)  AND ERROR_WEIGHTAGE=''0'' '
--  END  
END

       
  --print @res
  set @parameterList='@ProjectId int, @QCStatus Varchar(50), @Userntlg Varchar(50),@PracticeId int'
  
   execute  sp_executesql @res output,@parameterList,@ProjectId, QCStatus,@Userntlg,@PracticeId
 
  --end    
  

  --exec ups_Get_QcFeedBackData 18,'No','ManoharR',1
  
  --EXEC [ups_Get_QcFeedBackData] 18,null,'ManoharR',2
--		@ProjectId = 16,
--        @QCStatus='No',
--@Userntlg='AmitKumaC'

GO
/****** Object:  StoredProcedure [dbo].[ups_Get_ReleaseScreenData]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

        
  CREATE procedure [dbo].[ups_Get_ReleaseScreenData](
  @ProjectId int,
  @UserNTLG varchar(100),
  @practiceId int,
  @fromDate varchar(50),
  @toDate varchar(50),
  @Auditstatus int
  ) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)   
  declare @location nvarchar(max)
  
  
  set @location=(select Location  from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNTLG AND PRACTICE_ID=@practiceId)
   
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='Release Screen')
  
  set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
   
  set @res='select I.BATCH_ID,I.BATCH_STATUS,T.TRANS_ID,'+@query+',[AUDIT STATUS]=case when IS_AUDITED=''1'' and IS_SKIPPED=''0'' then ''Audited'' else ''Skipped'' end 
           from  dbo.tbl_IMPORT_TABLE I join tbl_TRANSACTION T on I.BATCH_ID=T.BATCH_ID where I.PROJECT_ID=@ProjectId and I.LOCATION=@location
		   and T.CODING_STATUS=''Coded'' and (T.QC_STATUS=''Qced'') and I.PRACTICE_ID=@practiceId and (T.QC_ERROR_CORRECTION=''Y'' or T.QC_ERROR_CORRECTION is null)
		   AND (T.QC_DATE = case when @fromDate ='''' then T.QC_DATE else @fromDate end  
           or T.QC_DATE = case when @toDate='''' then T.QC_DATE else @toDate end  
           or convert(varchar(12),T.QC_DATE,101) between @fromDate and @toDate) AND IS_AUDITED=@Auditstatus
		   And (T.INSURANCE=''Y'' or T.INSURANCE is null)'--( or T.QC_STATUS=''QC''  and I.BATCH_STATUS=''QC''
  set @parameterList='@ProjectId int,@UserNTLG varchar(100),@location nvarchar(max),@practiceId int,@fromDate varchar(50), @toDate varchar(50),@Auditstatus int'--,
 
  execute sp_executesql @res output,@parameterList,@ProjectId,@UserNTLG,@location,@practiceId,@fromDate,@toDate,@Auditstatus--,
  
end
GO
/****** Object:  StoredProcedure [dbo].[ups_Get_ReleaseScreenDataWithBatchName]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

        
  CREATE procedure [dbo].[ups_Get_ReleaseScreenDataWithBatchName](
  @ProjectId int,
  @UserNTLG varchar(100),
  @practiceId int,
  @fromDate varchar(50),
  @toDate varchar(50),
  @Auditstatus int,
  @batchName varchar(100)=null
  ) 
  as
 begin
  declare @taskId int
  declare @query nvarchar(max)
  declare @parameterList nvarchar(max)
  Declare @res nvarchar(max)   
  declare @location nvarchar(max)
  declare @batchNameFilter nvarchar(max)
  
  IF(@batchName IS NULL)
  BEGIN
	SET @batchNameFilter=''
  END
  ELSE
  BEGIN  
	SET @batchNameFilter=' and I.BATCH_NAME like '''+@batchName+''''
  END

  set @location=(select Location  from tbl_USER_ACCESS where PROJECT_ID=@ProjectId and USER_NTLG=@UserNTLG AND PRACTICE_ID=@practiceId)
  
  set @taskId=(select TASK_ID from tbl_TASK_TABLE where PROJECT_ID=@ProjectId and TASK_NAME='Release Screen')
  
  set @query=(select FIELD_NAME from tbl_COMMON_FIELD where TASK_ID=@taskId and PROJECT_ID=@ProjectId) 
  
  set @res='select I.BATCH_ID,I.BATCH_STATUS,T.TRANS_ID,'+@query+',[AUDIT STATUS]=case when IS_AUDITED=''1'' and IS_SKIPPED=''0'' then ''Audited'' else ''Skipped'' end 
           from  dbo.tbl_IMPORT_TABLE I join tbl_TRANSACTION T on I.BATCH_ID=T.BATCH_ID where I.PROJECT_ID=@ProjectId and I.LOCATION=@location
		   and T.CODING_STATUS=''Coded'' and (T.QC_STATUS=''Qced'') and (T.QC_ERROR_CORRECTION=''Y'' or T.QC_ERROR_CORRECTION is null)
		   AND (T.QC_DATE = case when @fromDate ='''' then T.QC_DATE else @fromDate end  
           or T.QC_DATE = case when @toDate='''' then T.QC_DATE else @toDate end  
           or convert(varchar(12),T.QC_DATE,101) between @fromDate and @toDate) AND IS_AUDITED=@Auditstatus
		   And (T.INSURANCE=''Y'' or T.INSURANCE is null) and I.PRACTICE_ID=@PracticeId'+@batchNameFilter+''--( or T.QC_STATUS=''QC''  and I.BATCH_STATUS=''QC''
  
  set @parameterList='@ProjectId int,@UserNTLG varchar(100),@location nvarchar(max),@practiceId int,@fromDate varchar(50), @toDate varchar(50),@Auditstatus int,@batchName varchar(100)'--,
  
  execute sp_executesql @res output,@parameterList,@ProjectId,@UserNTLG,@location,@practiceId,@fromDate,@toDate,@Auditstatus,@batchName--,
  
end

  --exec  [ups_Get_ReleaseScreenDataWithBatchName] 18,'SubhajakK',1,'','','wgvynHZJP2evu8nJz47n7w=='


GO
/****** Object:  StoredProcedure [dbo].[UPS_QC_TRANSACTION_AUDITS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[dbo].[UPS_QC_TRANSACTION_AUDITS] 'ManoharR',18,'Regular',1
CREATE procedure [dbo].[UPS_QC_TRANSACTION_AUDITS]   
(  
 @QC_AllotedTo  varchar(100)=null,          
 @ProjectId int,         
 @AuditType varchar(20),
 @PracticeID int
)     
as      
begin      
    SET FMTONLY OFF     
select I.batch_id,I.eci,t.TRANS_ID,td.ICD,td.ICD_CODE,I.PROJECT_ID into #BaseTemp from tbl_IMPORT_TABLE I       
inner join tbl_TRANSACTION T on i.BATCH_ID=t.BATCH_ID      
inner join tbl_TRANSACTION_DETAILS TD on t.TRANS_ID=td.TRANS_ID       
where I.PROJECT_ID=@ProjectId and I.QC_ALLOTTED_BY=@QC_AllotedTo and I.BATCH_STATUS='QC Allotted'  AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)          
--where I.PROJECT_ID=18 and I.BATCH_STATUS='QC Allotted' and I.QC_ALLOTTED_BY='venkannam'     
  
  
select I.batch_id,I.eci,I.TRANS_ID,I.PROJECT_ID,I.ICD,I.ICD_CODE,  
--1st Condition  
case isnull((select  top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD),'NULL') when 'NULL'   
		then case when i.ICD_CODE='9'   
			then case  ISNULL((select  top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD)),'Null') 
		              when 'Null' then  case ISNULL((select  top 1  ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD),'Null') when 'Null' 
					       then (select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC18 where SIC18.ICD_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))
						   else(select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC81 where SIC81.ICD_CODE=I.ICD) end
					   
			else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))  end   
		else case  ISNULL((select top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)),'Null')

					 when 'Null' then  case ISNULL((select top 1 ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD),'Null') when 'Null' 
					       then (select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC18 where SIC18.ICD_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD))
						   else(select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC83 where SIC83.ICD_CODE=I.ICD) end

		 else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)) end  end   

else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD) end as Outputj  
 into #BaseTemp2  
 from #BaseTemp I  
  
-- select *from  #BaseTemp
-- select * from #BaseTemp2
     
if(@AuditType='Regular')      
--if('Regular'='Regular')      
begin       
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,I.QC_ALLOTTED_DATE ,     
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,t.Coded_By,t.Total_Pages,
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE            
        from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID          
	where T.PRACTICE_ID = @PracticeID AND I.BATCH_ID in (select distinct batch_id from #basetemp2 where batch_id not in (select distinct batch_id from #basetemp2 where outputj ='Y'))
 -- where I.BATCH_ID in  (select distinct batch_id from #basetemp2 where batch_id not in(select batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null)))  
  -- (select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is not null))       
  --select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is null)      
  end      
else       
begin      
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,      I.QC_ALLOTTED_DATE ,  
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE, t.Coded_By,
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE          
          from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID  
	where T.PRACTICE_ID = @PracticeID AND I.BATCH_ID in (select distinct batch_id from #basetemp2 where batch_id in (select distinct batch_id from #basetemp2 where outputj ='Y'))
    --where I.BATCH_ID in (select distinct batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null))  
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is not null))        
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is null))      
end      
      
drop table #BaseTemp      
drop table #BaseTemp2      
  
  --select * from #BaseTemp
  --select * from #BaseTemp2
End


GO
/****** Object:  StoredProcedure [dbo].[UPS_QC_TRANSACTION_AUDITS_FlowChart]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UPS_QC_TRANSACTION_AUDITS_FlowChart]   
(  
 @QC_AllotedTo  varchar(100)=null,          
 @ProjectId int,         
 @AuditType varchar(20),
 @PracticeID int
)     
as      
begin      
    SET FMTONLY OFF     
select I.batch_id,I.eci,t.TRANS_ID,td.ICD,td.ICD_CODE,I.PROJECT_ID into #BaseTemp from tbl_IMPORT_TABLE I       
inner join tbl_TRANSACTION T on i.BATCH_ID=t.BATCH_ID      
inner join tbl_TRANSACTION_DETAILS TD on t.TRANS_ID=td.TRANS_ID       
where I.PROJECT_ID=@ProjectId and I.QC_ALLOTTED_BY=@QC_AllotedTo and I.BATCH_STATUS='QC Allotted'  AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)          
--where I.PROJECT_ID=18 and I.BATCH_STATUS='QC Allotted' and I.QC_ALLOTTED_BY='venkannam'     
  
  
select I.batch_id,I.eci,I.TRANS_ID,I.PROJECT_ID,I.ICD,I.ICD_CODE,  
--1st Condition  
case isnull((select  top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD),'NULL') when 'NULL'   
		then case when i.ICD_CODE='9'   
			then case  ISNULL((select  top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD)),'Null') 
		              when 'Null' then  case ISNULL((select  top 1  ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD),'Null') when 'Null' 
					       then (select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC18 where SIC18.ICD_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))
						   else(select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC81 where SIC81.ICD_CODE=I.ICD) end
					   
			else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))  end   
		else case  ISNULL((select top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)),'Null')

					 when 'Null' then  case ISNULL((select top 1 ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD),'Null') when 'Null' 
					       then (select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC18 where SIC18.ICD_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD))
						   else(select top 1 'Y' from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC83 where SIC83.ICD_CODE=I.ICD) end

		 else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)) end  end   

else (select top 1 'N' from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD) end as Outputj  
 into #BaseTemp2  
 from #BaseTemp I  
  
-- select *from  #BaseTemp
-- select * from #BaseTemp2
     
if(@AuditType='Regular')      
--if('Regular'='Regular')      
begin       
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,        
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,      
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE            
        from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID          
	where I.BATCH_ID in (select distinct batch_id from #basetemp2 where batch_id not in (select distinct batch_id from #basetemp2 where outputj ='Y'))
 -- where I.BATCH_ID in  (select distinct batch_id from #basetemp2 where batch_id not in(select batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null)))  
  -- (select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is not null))       
  --select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is null)      
  end      
else       
begin      
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,        
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,      
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE          
          from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID  
	where I.BATCH_ID in (select distinct batch_id from #basetemp2 where batch_id in (select distinct batch_id from #basetemp2 where outputj ='Y'))
    --where I.BATCH_ID in (select distinct batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null))  
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is not null))        
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is null))      
end      
      
drop table #BaseTemp      
drop table #BaseTemp2      
  
  --select * from #BaseTemp
  --select * from #BaseTemp2
End


GO
/****** Object:  StoredProcedure [dbo].[UPS_QC_TRANSACTION_AUDITS_N]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UPS_QC_TRANSACTION_AUDITS_N]( @QC_AllotedTo  varchar(100)=null,          
 @ProjectId int,         
 @AuditType varchar(20),
 @PracticeID int)
AS
BEGIN
	--get the icd and eci
	SELECT  I.batch_id,I.eci,t.TRANS_ID,td.ICD,td.ICD_CODE,I.PROJECT_ID INTO #BASETEMP 
	FROM tbl_IMPORT_TABLE I       
	INNER JOIN  tbl_TRANSACTION T ON i.BATCH_ID=t.BATCH_ID      
	INNER JOIN tbl_TRANSACTION_DETAILS TD ON t.TRANS_ID=td.TRANS_ID       
	WHERE I.PROJECT_ID=@ProjectId AND I.QC_ALLOTTED_BY=@QC_AllotedTo AND I.BATCH_STATUS='QC Allotted'  AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)          
	--where I.PROJECT_ID=18 and I.BATCH_STATUS='QC Allotted' and I.QC_ALLOTTED_BY='rubeshs' 
	--SELECT * FROM #BASETEMP

	--MATCHING RECORDS WITH HCCLIST
	SELECT  I.batch_id,I.eci,I.TRANS_ID,I.PROJECT_ID,I.ICD,I.ICD_CODE
		--CASE (ISNULL((SELECT DX_CODE FROM tbl_IMPORT_HCC_DXCODE_MASTER HCC WHERE  HCC.ECI=I.Eci AND DX_CODE=I.ICD AND DX_TYPE=I.ICD_CODE),'NULL') ) WHEN 'NULL'
		--	THEN 
		--		 CASE WHEN I.ICD_CODE='9' THEN
		--		    CASE (SELECT  FROM tbl_IMPORT_HCC_DXCODE_MASTER WHERE ECI=I.ECI AND  DX_CODE IN (SELECT ICD_10 FROM TBL_ICD9_ICD10_MAPPING_MASTER)) WHEN 'NULL'
		--			 THEN 
		--		 ELSE
		--		    (SELECT 'N' FROM tbl_IMPORT_HCC_DXCODE_MASTER WHERE ECI=I.ECI AND DX_CODE IN (SELECT ICD_CODE FROM TBL_SECOND_ICD9_ICD10_MAPPING_MASTER))
		--		 END 
		--ELSE 'N' 
		--END 
		--AS OUTPUT
	INTO #BASETEMP2
	FROM #BASETEMP I
	

END

GO
/****** Object:  StoredProcedure [dbo].[UPS_QC_TRANSACTION_AUDITS_NEW]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UPS_QC_TRANSACTION_AUDITS_NEW]   
(  
 @QC_AllotedTo  varchar(100)=null,          
 @ProjectId int,         
 @AuditType varchar(20),
 @PracticeID int
)     
as      
begin      
 
select I.batch_id,I.eci,t.TRANS_ID,td.ICD,td.ICD_CODE,I.PROJECT_ID into #BaseTemp from tbl_IMPORT_TABLE I       
inner join tbl_TRANSACTION T on i.BATCH_ID=t.BATCH_ID      
inner join tbl_TRANSACTION_DETAILS TD on t.TRANS_ID=td.TRANS_ID       
--where I.PROJECT_ID=@ProjectId and I.QC_ALLOTTED_BY=@QC_AllotedTo and I.BATCH_STATUS='QC Allotted'  AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)          
where I.PROJECT_ID=18 and I.BATCH_STATUS='QC Allotted' and I.QC_ALLOTTED_BY='rubeshs'     
    --select * from #BaseTemp
  
select * into #BaseTemp2  from ( select ROW_NUMBER() over( order by I.batch_id asc) as RowNo,I.batch_id,I.eci,I.TRANS_ID,I.PROJECT_ID,I.ICD,I.ICD_CODE,  
--1st Condition  
case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD),'NULL') when 'NULL'   
then case when i.ICD_CODE='9'   
then case  ISNULL((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD)),'Null') when 'Null' then  (select top 1 SIC8.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD)   else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))  end   
else case  ISNULL((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)),'Null') when 'Null' then (select top 1 SIC8.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD)   else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)) end  end   
else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD) end as Outputj  ,'XXXXXXXX' as Combination
 
 from     #BaseTemp I)t where RowNo>0
  -- select * from  #basetemp2 
  --drop table #BaseTemp3

  --update #BaseTemp2 set Combination='No Codes' where RowNo in(7,9,10,11,12,13) and batch_id=2145
  --update #BaseTemp2 set Combination='N' where RowNo in(8,14) and batch_id=2145
 --update #BaseTemp2 set Combination='N' where RowNo in(1,4,5,6) and batch_id=2144
 --update #BaseTemp2 set Combination='Y' where RowNo in(2,3) and batch_id=2144
  --select * from  #BaseTemp2 WHERE BATCH_ID=2145
     


    
--IF(@AuditType='Regular')      
--BEGIN    
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE  from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,        
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,      
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE        into #BaseTemp3     
        from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID          

	 --select * from  #BaseTemp3
      
IF(@AuditType='Regular')      
BEGIN
 SELECT * FROM #BaseTemp3 T1 INNER JOIN #BaseTemp2 T2 ON T1.BATCH_ID=T2.BATCH_ID WHERE T2.Combination LIKE 'N' or T2.Combination LIKE 'No Codes'--,'N')-- & (N) ,(nocode,N)
END

	--if('@regular')
	--{
	--select * from temp3 where  & (N) ,(nocode,N)
	--}
	--else
	--{
	--select * from temp3 where (N) & (Y,N) 


-- where I.BATCH_ID in  (select distinct batch_id from #basetemp2 where batch_id not in(select batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null)))  
 
  -- (select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is not null))       
  --select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is null)      
--end     
--else       
--begin      
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,      
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,              
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,      
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,      
        I.BATCH_STATUS,      
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,      
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,        
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE             
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,      
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,      
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE          
          from tbl_IMPORT_TABLE I       
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID       
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID       
   -- where I.BATCH_ID in (select distinct batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null))  
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is not null))        
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is null))      
--end      
      
drop table #BaseTemp      
drop table #BaseTemp2      
  
  
End
     
  
  


GO
/****** Object:  StoredProcedure [dbo].[usp_accuracy_Highmark_static]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--usp_accuracy_Highmark_static 'Pradeeprg',18,1,null,null,null
--usp_accuracy_Highmark_static 'pradeeprg',18,1,'04/27/2017','04/27/2017','Bangalore'
--modified on 04/20/2017 by Subhaja changes error Category and error sub category added 

CREATE procedure [dbo].[usp_accuracy_Highmark_static]
(  
    @Userntlg VARCHAR (100), 
    @project_id INT,
    @practice_id INT,
	@task_id INT,

	--@codername varchar(200)=NULL,
    @fromdate DATETIME=NULL,
    @todate DATETIME=NULL,          
    --@batchname VARCHAR (200)=NULL ,   
    --@Status VARCHAR (200)=NULL,
	@Location VARCHAR(200)=NULL
	)

AS 
BEGIN

DECLARE @USERACCESS VARCHAR(200)
DECLARE @LOCATIONFILTER VARCHAR(200)
SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id and PRACTICE_ID=@practice_id)
	IF @Location IS NOT NULL
	BEGIN
 
 
----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
-- --drop table ##ResultCodingProd

		SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,qc_status,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],TD.PQRS AS [Incremental HCC], ua1.EMP_ID,
		QC_DATE AS [QC_DATE],t.CODED_BY AS [CODED_BY],t.CODED_DATE
		,ua.EMP_ID AS [QAEmpID],t.QC_BY AS [QC_BY],ua1.TL_NAME,td.QC_COMMENTS as [QA Comments],
		--isnull(TD.Error_Count, 0) as [Error Count]
		TD.Error_Count AS [Error Count],td.ERROR_CATEGORY,td.ERROR_SUBCATEGORY,it.LOCATION,t.IS_AUDITED,t.IS_SKIPPED,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages]
		--x.New_ICD,x.New_Error_Count,x.Total_Error_Count

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		INNER JOIN dbo.tbl_TRANSACTION t ON IT.BATCH_ID=t.BATCH_ID
		INNER JOIN tbl_USER_ACCESS ua  ON ua.USER_NTLG=t.QC_BY
		LEFT JOIN tbl_USER_ACCESS ua1  ON ua1.USER_NTLG=t.CODED_BY
		INNER JOIN dbo.tbl_TRANSACTION_DETAILS td ON td.TRANS_ID=t.TRANS_ID
		--outer apply dbo.funGetErrorCount(it.ACCOUNT_NO) as x  
		WHERE it.PROJECT_ID=18  and it.PRACTICE_ID=@task_id AND @USERACCESS IN ('CODER-QC-TL','CODER-TL','WFM')
		AND QC_STATUS in('qced','completed')   AND  (CONVERT(VARCHAR(12),t.QC_DATE,101) BETWEEN @fromdate and @todate) AND it.LOCATION=@Location 
		AND t.IS_SKIPPED = 0
	   -- and TD.Error_Count IS NOT NULL 
		GROUP BY  td.trans_id,qc_status,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,TD.PQRS,
		t.CODED_DATE, t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID,ua1.TL_NAME,ua1.EMP_ID,td.QC_COMMENTS,TD.Error_Count,td.ERROR_CATEGORY,td.ERROR_SUBCATEGORY,it.LOCATION,t.IS_AUDITED,t.IS_SKIPPED,td.COMMENTS,t.Total_Pages
		--x.New_ICD,x.New_Error_Count,x.Total_Error_Count
		ORDER BY td.trans_id 
	END
	ELSE
	BEGIN
		 SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,qc_status,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],TD.PQRS AS [Incremental HCC], ua1.EMP_ID,
		QC_DATE AS [QC_DATE],t.CODED_BY AS [CODED_BY],t.CODED_DATE
		,ua.EMP_ID AS [QAEmpID],t.QC_BY AS [QC_BY],ua1.TL_NAME,td.QC_COMMENTS as [QA Comments],
		--isnull(TD.Error_Count, 0) as [Error Count]
		TD.Error_Count AS [Error Count],td.ERROR_CATEGORY,td.ERROR_SUBCATEGORY,it.LOCATION,t.IS_AUDITED,t.IS_SKIPPED,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages]
		--x.New_ICD,x.New_Error_Count,x.Total_Error_Count

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		INNER JOIN dbo.tbl_TRANSACTION t ON IT.BATCH_ID=t.BATCH_ID
		INNER JOIN tbl_USER_ACCESS ua  ON ua.USER_NTLG=t.QC_BY
		LEFT JOIN tbl_USER_ACCESS ua1  ON ua1.USER_NTLG=t.CODED_BY
		INNER JOIN dbo.tbl_TRANSACTION_DETAILS td ON td.TRANS_ID=t.TRANS_ID
		--outer apply dbo.funGetErrorCount(it.ACCOUNT_NO) as x  
		WHERE it.PROJECT_ID=18  and it.PRACTICE_ID=@task_id AND @USERACCESS IN ('CODER-QC-TL','CODER-TL','WFM')
		AND QC_STATUS in('qced','completed')   AND  (CONVERT(VARCHAR(12),t.QC_DATE,101) BETWEEN @fromdate and @todate) 
		AND t.IS_SKIPPED = 0
	   -- and TD.Error_Count IS NOT NULL 
		GROUP BY  td.trans_id,qc_status,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,TD.PQRS,
		t.CODED_DATE, t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID,ua1.TL_NAME,ua1.EMP_ID,td.QC_COMMENTS,TD.Error_Count,td.ERROR_CATEGORY,td.ERROR_SUBCATEGORY,it.LOCATION,t.IS_AUDITED,t.IS_SKIPPED,td.COMMENTS,t.Total_Pages
		--x.New_ICD,x.New_Error_Count,x.Total_Error_Count
		ORDER BY td.trans_id
	END																	
END
GO
/****** Object:  StoredProcedure [dbo].[USP_BULK_CODING_ALLOTMENT]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_BULK_CODING_ALLOTMENT] 
	(
	  @PROJECTID INT,
	  @USERNTLG VARCHAR(200),
	  @PRACTICEID INT,
	  @USERNTLGS VARCHAR(MAX),
	  @NOOFRECORDS INT ,
	  @LOCATION VARCHAR(20),
	  @NOOFUSERS INT,
	  @ENCOUNTERTYPE VARCHAR(20),
	  @BATCHNAME VARCHAR(MAX)=NULL
	)
AS
BEGIN
--SELECT * FROM tbl_IMPORT_TABLE WHERE    BATCH_STATUS='Coding Allotted'  and convert(varchar(15),ALLOTTED_DATE,101) like '06/05/2017' AND LOCATION='Bangalore' 
SET NOCOUNT ON;

	DECLARE @LEN INT
	DECLARE @INDEX INT
	DECLARE @USER VARCHAR(500)
	DECLARE @NAME VARCHAR(MAX)

	SET @NAME=@USERNTLGS
	SET @NAME=@NAME+','
	SET @LEN=LEN(@NAME)
	

	WHILE @LEN>0
		BEGIN

			SET @INDEX=CHARINDEX(',',@NAME)
			SET @USER=  LEFT(@NAME, @INDEX)
	
			IF NULLIF(@BATCHNAME,'') IS NULL
			BEGIN
				;WITH CTE AS
							(
								SELECT BATCH_STATUS,ALLOTTED_TO,ALLOTTED_DATE,ALLOTTED_BY,ROW_NUMBER() OVER(ORDER BY UPLOAD_DATE DESC) AS RN FROM TBL_IMPORT_TABLE
								 WHERE (ALLOTTED_TO='' OR ALLOTTED_TO IS NULL) AND LOCATION=@LOCATION AND PRACTICE_ID=@PRACTICEID AND ENCOUNTER_TYPE=@ENCOUNTERTYPE AND BATCH_STATUS='Fresh'
							)
							--SELECT * FROM  CTE
				 UPDATE CTE SET ALLOTTED_TO=REPLACE(@USER,',',''),ALLOTTED_BY=(select TL_NTLG from tbl_USER_ACCESS where USER_NTLG=REPLACE(@USER,',','') and PRACTICE_ID=@PRACTICEID and PROJECT_ID=@PROJECTID),ALLOTTED_DATE=GETDATE(),BATCH_STATUS='Coding Allotted' WHERE RN<=@NOOFRECORDS
				  IF @@ROWCOUNT = 0  
				 begin
					SELECT 'FAIL'
					end
				else
				begin
				 SELECT 'SUCCESS'
				 end	
			 END
			 ELSE
			 BEGIN
			 ;WITH CTE AS
							(
								SELECT BATCH_STATUS,ALLOTTED_TO,ALLOTTED_DATE,ALLOTTED_BY,ROW_NUMBER() OVER(ORDER BY UPLOAD_DATE DESC) AS RN FROM TBL_IMPORT_TABLE
								 WHERE (ALLOTTED_TO='' OR ALLOTTED_TO IS NULL)  AND LOCATION=@LOCATION AND PRACTICE_ID=@PRACTICEID AND ENCOUNTER_TYPE=@ENCOUNTERTYPE AND BATCH_NAME=@BATCHNAME AND BATCH_STATUS='Fresh'
							)
							

				 UPDATE CTE SET ALLOTTED_TO=REPLACE(@USER,',',''),ALLOTTED_BY=(select TL_NTLG from tbl_USER_ACCESS where USER_NTLG=REPLACE(@USER,',','') and PRACTICE_ID=@PRACTICEID and PROJECT_ID=@PROJECTID),ALLOTTED_DATE=GETDATE(),BATCH_STATUS='Coding Allotted' WHERE RN<=@NOOFRECORDS

				 --SELECT * FROM  CTE
				 --SELECT @NOOFRECORDS
				 IF @@ROWCOUNT = 0  
				 begin
					SELECT 'FAIL'
					end
				else
				begin
				 SELECT 'SUCCESS'
				 end			 
			 END
			
			SET @NAME= REPLACE(@NAME,@USER,'')
			SET @LEN=LEN(@NAME)
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CBI_Production_Report]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [usp_CBI_Production_Report] 17,129,'06/20/2016','06/20/2016'
CREATE procedure [dbo].[usp_CBI_Production_Report]   
(  
    @projectid int=null,
    @taskid int=null,
    @fromdate datetime=NULL,
    @todate datetime=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
    @facility VARCHAR (200)=NULL,
    @location Varchar(50)=null
      )

as begin

--DECLARE @LasttransactionDate datetime = (SELECT TOP 1  DOS FROM tbl_IMPORT_TABLE where DOS is not null ORDER BY BATCH_ID DESC )
DECLARE @LasttransactionDate datetime =(SELECT MAX(T.CODED_DATE) FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=@projectid and t.CODING_STATUS='Completed' and CODED_DATE is not null)


if OBJECT_ID('tempdb..##Result11')is not null

drop table ##Result11

DECLARE @FIELD_NAME nVARCHAR(MAX)
--DECLARE @Filter VARCHAR (max)
declare @PARAMlIST nvarchar(max)

 SET @FIELD_NAME= (SELECT FIELD_NAME FROM tbl_COMMON_FIELD WHERE PROJECT_ID=@projectid AND TASK_ID=@taskid)
--PRINT @FIELD_NAME

if @FIELD_NAME like '%DOS AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'DOS AS','IT.DOS AS')
      end  
          
          if @FIELD_NAME like '%Beginning_IT.DOS AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'Beginning_IT.DOS AS','Beginning_DOS AS')
      end  
             if @FIELD_NAME like '%Ending_IT.DOS AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'Ending_IT.DOS AS','Ending_DOS AS')
      end    
                 
if @FIELD_NAME like '%PATIENT_NAME AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'PATIENT_NAME AS','T.PATIENT_NAME AS')
      end
 if @FIELD_NAME like '%QC_BY AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'QC_BY AS','t.QC_BY AS')
      end
  if @FIELD_NAME like '%QC_DATE AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'QC_DATE AS','t.QC_DATE AS')
      end
   if @FIELD_NAME like '%ICD_CODE AS%'
     begin
      set @FIELD_NAME=REPLACE(@FIELD_NAME,'ICD_CODE AS','TD.ICD_CODE AS')
      end 
      
      if @FIELD_NAME like '%PAGE_NO AS%' 
      BEGIN 
      SET @FIELD_NAME=REPLACE(@FIELD_NAME,'PAGE_NO AS','T.PAGE_NO AS')    
      END 
      
   DECLARE @Filter VARCHAR (max)  
    SET @Filter = (select  Filters from tbl_COMMON_FIELD where PROJECT_ID=@projectid and TASK_ID=@taskid) 
   -- print @filter
    if @Filter like '%DOS%'
    BEGIN 
    SET @Filter=REPLACE(@Filter,'DOS','it.DOS')
    END
    
        if @Filter like '%RECEIVED_DATE%'
    BEGIN 
    SET @Filter=REPLACE(@Filter,'RECEIVED_DATE','it.RECEIVED_DATE')
    END
    
    
    DECLARE @ST1 VARCHAR(100)
SET @ST1='CODED'
declare @val nvarchar(max)


if  @fromdate is NULL AND @todate is NULL AND @facility is NULL AND @batchname is NULL AND @location is null
begin
set @val='select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, '+(@FIELD_NAME)+' into ##Result11 FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=@projectid and t.CODING_STATUS=''Completed''
 and  Convert(varchar(12),T.CODED_DATE,101)='''+Convert(varchar(12),@LasttransactionDate,101)+''''

--and (nullif(@facility,null)is null or it.facility=@facility) and
 --(nullif(@batchname,null)is null or it.BATCH_NAME=@batchname)
 -- and  Convert(varchar(12),T.CODED_DATE,101)='''+Convert(varchar(12),@LasttransactionDate,101)+''''
end

else
begin
set @val='select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, 
'+(@FIELD_NAME)+' into ##Result11 FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=@projectid  
and t.CODING_STATUS=''Completed'''
--and (nullif(@facility,null)is null or it.facility=@facility) and (nullif(@batchname,null)is null or it.BATCH_NAME=@batchname)'  

--AND '+@Filter+'
if @fromdate is not null and @todate is null
begin 
set @val=@val +' And Convert(varchar(12),T.CODED_DATE,101)=@fromdate and (nullif(@batchname,null)is null or it.BATCH_NAME=@batchname)and (nullif(@encountertype,null)is null or it.ENCOUNTER_TYPE=@encountertype)and (nullif(@facility,null)is null or it.FACILITY=@facility)and (nullif(@location,null)is null or it.LOCATION=@location)'
end

if @fromdate is not null and @todate is not null
begin 
set @val=@val +' And (Convert(varchar(12),T.CODED_DATE,101) between @fromdate and @todate) and (nullif(@batchname,null)is null or it.BATCH_NAME=@batchname)and (nullif(@encountertype,null)is null or it.ENCOUNTER_TYPE=@encountertype)and (nullif(@facility,null)is null or it.FACILITY=@facility)and (nullif(@location,null)is null or it.LOCATION=@location)'
end
end

 set @PARAMlIST='@projectid int=null,
    @taskid int=null,
    @fromdate datetime=NULL,
    @todate datetime=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
    @facility VARCHAR (200)=NULL,
    @location VARCHAR (50)=NULL'
      
 execute sp_executesql @val,@PARAMlIST, @projectid,@taskid ,@fromdate,@todate,@batchname,@encountertype,@facility,@location
--select * from ##Result11
  if OBJECT_ID('tempdb..##DynamicSet12')is not null

    drop table ##DynamicSet12
    
    Declare @tablename varchar(max)='##Result11'
    declare @Keycol varchar(max)='SNO'
    
    Declare @columns nvarchar(max)=''
    Declare @values nvarchar(max)=''
    declare @DyResult nvarchar(max)=''
    
    select @columns+=','+QUOTENAME(COLUMN_NAME),
    @values+= ','+QUOTENAME(COLUMN_NAME)+'=convert(nvarchar(max),'+QUOTENAME(COLUMN_NAME)+')'
    from tempdb.INFORMATION_SCHEMA.COLUMNS
    where TABLE_NAME=@tablename and COLUMN_NAME<>@Keycol
      
    set @DyResult=N'select * into ##DynamicSet12
     from
     (
     select '+@Keycol+@values+' from '+@tablename+')as tableq1
     unpivot
     (
     Value for COLUMN_NAME in ('+stuff(@columns,1,1,'')+')
     )as dyn'
     
     exec sp_executesql @DyResult
     
  select * from ##DynamicSet12
    end
GO
/****** Object:  StoredProcedure [dbo].[usp_CBI_ReleasedReport]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CBI_ReleasedReport] 
	-- Add the parameters for the stored procedure here
	(
	@projectid int=null,
    @fromdate datetime=null,
    @todate datetime=null,           
    @batchname VARCHAR (200)=NULL,
    @PracticeName varchar(200)=null,
    @facility VARCHAR (200)=NULL,
    @location Varchar(50)=null
	)
	
AS
BEGIN
	
	DECLARE @LasttransactionDate datetime =(SELECT MAX(T.CODED_DATE) FROM tbl_IMPORT_TABLE IT
	inner join dbo.tbl_TRANSACTION T on IT.BATCH_ID=T.BATCH_ID
	inner join dbo.tbl_TRANSACTION_DETAILS TD on td.TRANS_ID=T.TRANS_ID
	where IT.PROJECT_ID=@projectid and T.CODING_STATUS='Completed')
	
	 select distinct case when SUBSTRING (I.BATCH_NAME ,1 ,2)='CB' then SUBSTRING (I.BATCH_NAME ,9 ,4) else SUBSTRING (I.BATCH_NAME ,8 ,4) end as [PRACTICE NAME], I.FACILITY as FACILITY,I.BATCH_NAME AS [BATCH NO],ACCOUNT_NO AS [ACCOUNT NO],
      T.PATIENT_NAME AS [PATIENT NAME],(ISNULL(T.PROVIDER_NAME1,'')+','+ISNULL(T.PROVIDER_NAME2,'')+','+ISNULL(T.PROVIDER_NAME3,'')+','+ISNULL(T.PROVIDER_NAME4,'')+','+ISNULL(T.PROVIDER_NAME5,'')) AS [PROVIDER NAME],
      (ISNULL(T.CRNA1,'')+','+ISNULL(T.CRNA2,'')+','+ISNULL(T.CRNA3,'')+','+ISNULL(T.CRNA4,'')+','+ISNULL(T.CRNA5,'')) AS [CRNA NAME],T.PHYSICAL_STATUS as [PHYSICAL STATUS],TD.CPT,TD.ASA_CROSS as [ASA CROSS],
      TD.Anesthesia_Start_time as [Anesthesia Start time], TD.Anesthesia_End_time AS [Anesthesia End time],TD.Anesthesia_Time_Diff AS[Time difference],
      ICD_RESULT AS[Diagnosis],T.ANES_TYPE AS [Anesthesia Type],TD.QUALIFYING_CIRCUMSTANCES AS [Qualifying Circumstance],TD.MODIFIER AS Modifier,
      UNITS AS [Base Unit Modification],TD.MEDICAL_DIRECTION AS[Medical Direction],PQRS AS[PQRS],[ANCILLARY_SERVICES]AS [Ancillary services],
      ANCILLARY_MODIFIER AS [Ancillary Modifier],ANCILLARY_SERVICE_PROVIDERS AS [Ancillary Service Provider],ACUTE_PAIN_POS AS [Acute Pain POS],
      ACUTE_PAIN_DX AS [Acute Pain Dx],ACUTE_PAIN_CPT AS [Acute Pain CPT], [COMMENTS] AS[Coded Comments],BATCH_STATUS as [Status],CODED_BY as [Coded By],
      CODED_DATE AS[Coded Date],QC_BY as [QC By],QC_DATE as [QC Date],LOCATION
      from tbl_IMPORT_TABLE I 
      inner join tbl_TRANSACTION T on I.BATCH_ID=T.BATCH_ID
      inner join tbl_TRANSACTION_DETAILS TD on T.TRANS_ID=TD.TRANS_ID
      where I.PROJECT_ID=@projectid and T.CODING_STATUS='Completed' 
	  and ((nullif(@fromdate,null)is null or convert(varchar(12),CODED_DATE,101)=@fromdate)or ((nullif(@fromdate,null)is null and nullif(@todate,null)is null)or 
	  convert(varchar(12),CODED_DATE,101) between convert(varchar(12),@fromdate,101) and convert(varchar(12),@todate,101)))
      --and convert(varchar(12),CODED_DATE,101) = case when convert(varchar(12),@fromdate,101) Is not null and convert(varchar(12),@todate,101) is null then convert(varchar(12),@fromdate,101) else convert(varchar(12),CODED_DATE,101)  end 
      --and convert(varchar(12),CODED_DATE,101)=case when convert(varchar(12),@fromdate,101) is null and convert(varchar(12),@todate,101) is not null then convert(varchar(12),@todate,101) end
      --or convert(varchar(12),CODED_DATE,101) between convert(varchar(12),@fromdate,101) and convert(varchar(12),@todate,101)
      and BATCH_NAME=case when @batchname IS not null then @batchname else BATCH_NAME end 
      and case when SUBSTRING (I.BATCH_NAME ,1 ,2)='CB' then SUBSTRING (I.BATCH_NAME ,9 ,4) else SUBSTRING (I.BATCH_NAME ,8 ,4) end =case when @PracticeName is not null then @PracticeName else case when SUBSTRING (I.BATCH_NAME ,1 ,2)='CB' then SUBSTRING (I.BATCH_NAME ,9 ,4) else SUBSTRING (I.BATCH_NAME ,8 ,4) end end
      --and SUBSTRING (I.BATCH_NAME ,8 ,4)=case when @PracticeName is not null then @PracticeName else SUBSTRING (I.BATCH_NAME ,8 ,4) end
      and FACILITY=case when @facility is not null then @facility else FACILITY end
      and LOCATION=case when @location is not null then @location else LOCATION end
      --and CODED_DATE =case when @fromdate is null and @todate is null then @LasttransactionDate else @LasttransactionDate end
      
END



--exec [dbo].[usp_CBI_ReleasedReport] 17,'07/08/2016','07/08/2016'
GO
/****** Object:  StoredProcedure [dbo].[USP_CHANGE_ACCESS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_CHANGE_ACCESS] 
	(
	  @PROJECTID INT,
	  @USERNTLG VARCHAR(200),
	  @PRACTICEID INT,
	  @USERNTLGS VARCHAR(MAX),	 
	  @LOCATION VARCHAR(20),
	  @ACCESS_TYPE VARCHAR(10)
	)
AS
BEGIN
SET NOCOUNT ON;
BEGIN TRANSACTION;

BEGIN TRY
    DECLARE @LEN INT
	DECLARE @INDEX INT
	DECLARE @USER VARCHAR(500)
	DECLARE @NAME VARCHAR(MAX)

	SET @NAME=@USERNTLGS
	SET @NAME=@NAME+','	
	SET @LEN=LEN(@NAME)
	--print @LEN
	

	WHILE @LEN>0
		BEGIN

			SET @INDEX=CHARINDEX(',',@NAME)
			--print @INDEX
			SET @USER=  LEFT(@NAME, @INDEX)
			print @USER


	Update  dbo.tbl_USER_ACCESS set  ACCESS_TYPE=@ACCESS_TYPE,Update_Date=GETDATE(), Update_By=@USERNTLG 
	WHERE (USER_NTLG = REPLACE(@USER,',','')) and (PROJECT_ID=@PROJECTID) and (Location=@LOCATION) and (PRACTICE_ID=@PRACTICEID)

	--select USER_NTLG,ACCESS_TYPE,Update_Date, Update_By from dbo.tbl_USER_ACCESS
	--WHERE (USER_NTLG = REPLACE(@USER,',','')) and (PROJECT_ID=@PROJECTID) and (Location=@LOCATION) and (PRACTICE_ID=@PRACTICEID)


	SET @NAME= REPLACE(@NAME,@USER,'')
			--print @NAME
			SET @LEN=LEN(@NAME)
			--print @LEN


	 END
	 
			
			
		
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH

    ROLLBACK TRANSACTION;
END CATCH;
END
GO
/****** Object:  StoredProcedure [dbo].[USP_CodingProduction_v2_HighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- Modified on:04/13/2017
-- Modified By: Subhajakrishnan
-- =============================================
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,'05/06/2017','05/06/2017',NULL,NULL,null,'Bangalore',1
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,null,null,NULL,NULL,null,'Bangalore',1
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,null,null,NULL,null,null,null,1
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,'04/21/2017','04/21/2017',NULL,NULL,'Coded','Bangalore',1
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,'04/18/2017','04/18/2017','hV7LJSLCO8tsHY/lz0XnZvAod3wDp8xDA8BG0TbP+Nf5gGom2534x960k9WdksOx',NULL,null,null,1
--exec [dbo].[USP_CodingProduction_v2_HighMark] 	'pradeeprg',18,115,'04/27/2017','04/27/2017','BTAjCFZhjupw7pbwGnScpDnCg10BXmDWcitTiTHyc/2tVDsYQ5HLwGxBLqtQ775j',NULL,null,'Chennai',1
--ALTER PROCEDURE [dbo].[USP_CodingProduction_v2_HighMark]              
--	-- Add the parameters for the stored procedure here
--	(   
--		@Userntlg VARCHAR(100),
--		@project_id INT,
--		@task_id INT,
--		@fromdate VARCHAR(20)=NULL,
--		@todate VARCHAR(20)=NULL,           
--		@batchname VARCHAR (200)=NULL,  
--		@encountertype VARCHAR(200)=NULL,
--	 -- @facility VARCHAR (200)=NULL , 
--		@Status VARCHAR (200)=NULL,
--		@Location VARCHAR(200)=NULL,
--		@PracticeId varchar(10)
--	 )
--AS
--BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
--	SET NOCOUNT ON;
--	DECLARE @USERACCESS VARCHAR(200)
--    SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg  and PROJECT_ID=@project_id AND PRACTICE_ID=@PracticeId )
--	DECLARE @USERACCESSFilter VARCHAR(100)
--	DECLARE @CodedTimeFilter1 VARCHAR(100)
--	DECLARE @CodedTimeFilter2 VARCHAR(100)
--	DECLARE @BatchNameFilter VARCHAR(100)
--	DECLARE @encountertypeFilter VARCHAR(100)
--	DECLARE @StatusFilter  VARCHAR(100)
--    DECLARE  @LocationFilter  VARCHAR(100)

--DECLARE @PARAMlIST NVARCHAR(max)

----passing null values

--		IF @USERACCESS in ('CODER') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS  NULL and @Location is  null
--		BEGIN
--			SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(VARCHAR(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID AS [Coder EMP ID],t.CODED_BY AS [Coder Name],ua.TL_NAME,
--			t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) AS Time_Diff,td.ICD_COMMENTS AS [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION AS Location

--			FROM tbl_IMPORT_TABLE it
--			INNER JOIN dbo.tbl_TRANSACTION t ON IT.BATCH_ID=t.BATCH_ID
--			INNER JOIN tbl_USER_ACCESS ua  ON ua.USER_NTLG=t.CODED_BY
--			INNER JOIN dbo.tbl_TRANSACTION_DETAILS_BACKUP td ON td.TRANS_ID=t.TRANS_ID

--			WHERE it.PROJECT_ID=18 AND it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg AND t.CODING_STATUS NOT IN ('coding allotted','fresh','in process')

--			GROUP BY  td.trans_id,t.CODING_STATUS,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			 it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
--			CONVERT(VARCHAR(12),t.CODING_ENDTIME,101)  ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			ORDER BY td.trans_id 
--		END

--		ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') AND @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS  NULL and @Location IS  NULL
--		BEGIN
--			SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) AS Time_Diff,td.ICD_COMMENTS AS [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION AS Location

--			FROM tbl_IMPORT_TABLE it
--			INNER JOIN dbo.tbl_TRANSACTION t ON IT.BATCH_ID=t.BATCH_ID
--			INNER JOIN tbl_USER_ACCESS ua  ON ua.USER_NTLG=t.CODED_BY
--			INNER JOIN dbo.tbl_TRANSACTION_DETAILS_BACKUP td ON td.TRANS_ID=t.TRANS_ID
--			WHERE it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND t.CODING_STATUS NOT IN ('coding allotted','fresh','in process')

--			GROUP BY  td.trans_id,t.CODING_STATUS,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,CONVERT(VARCHAR(12),t.CODING_ENDTIME,101) ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			ORDER BY td.trans_id 
--		END

--			-- only status filter
--		ELSE IF @USERACCESS in ('CODER') AND @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS not  NULL and @Location is  null
--		BEGIN
--			SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,
--			t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg and  t.CODING_STATUS=@status

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
--			convert(varchar(12),t.CODING_ENDTIME,101)  ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END

--		ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS not  NULL and @Location is  null
--		BEGIN
--			     SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME
--			,t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  t.CODING_STATUS=@status

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,convert(varchar(12),t.CODING_ENDTIME,101) ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END

--			--only location 
--		ELSE IF @USERACCESS in ('CODER') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS   NULL and @Location is not null
--		BEGIN
--				 SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME
--			,t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg and  it.LOCATION=@Location

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
--			convert(varchar(12),t.CODING_ENDTIME,101)  ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END

--		ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS   NULL and @Location is not null
--		BEGIN
--			     SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,
--			t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  it.LOCATION=@Location

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,convert(varchar(12),t.CODING_ENDTIME,101) ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END

--			--locaton and status
--		ELSE IF @USERACCESS in ('CODER') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS not  NULL and @Location is not null
--		BEGIN
--				 SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME, t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,
--			t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg  and  t.CODING_STATUS=@status and   it.LOCATION=@Location

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
--			convert(varchar(12),t.CODING_ENDTIME,101)  ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END

--		ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS NOT  NULL and @Location is not null
--		BEGIN
--			    SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,
--			ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--			it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--			Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--			--Place_Of_Service AS [Place Of Service],Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type]

--			td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--			EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--			EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--			convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--			,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,
--			t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--			FROM tbl_IMPORT_TABLE it
--			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
--			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  t.CODING_STATUS=@status and  it.LOCATION=@Location

--			group by  td.trans_id,t.coding_status,
--			ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
--			it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--			Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--			Billing_Provider_BSID ,
--			TD.Dx_TYPE ,td.Dx_CODE,
--			--Place_Of_Service ,Delete_Indicator ,CPT ,Procedure_Type ,
--			td.PAGE_NO ,EO_CODE1 ,
--			EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--			EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,convert(varchar(12),t.CODING_ENDTIME,101) ,t.QC_BY ,t.QC_DATE 
--			,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--			order by td.trans_id 
--		END


--	IF (@USERACCESS='CODER')
--	BEGIN
--		SET @USERACCESSFilter ='AND T.CODED_BY='+''''+@Userntlg+''''
--		PRINT @USERACCESSFilter
--	END
--	ELSE
--	BEGIN
--		SET @USERACCESSFilter=''
--	END 
---- FOR BATCHNAME
--	IF (@batchname IS NOT NULL)
--	BEGIN
--		SET @BatchNameFilter ='and it.batch_name='''+@batchname+''''
--		PRINT @BatchNameFilter
--	END
  
--	ELSE
--	BEGIN
--		SET @BatchNameFilter=''
--	END 
-- -- FOR ENCOUNTER TYPE
--	IF (@encountertype IS NOT NULL)
--	BEGIN
--		 SET @encountertypeFilter ='and it.ENCOUNTER_TYPE='''+@encountertype+''''
--	END
--	ELSE		
--	BEGIN
--		SET @encountertypeFilter=''
--	END 
--	-- FOR STATUS
--	IF (@Status IS NOT NULL)
--	BEGIN
--		print @status
--		 SET @StatusFilter ='and t.CODING_STATUS IN (''Coded'',''Completed'')'
--	END
--	ELSE IF(@Status='Coding Allotted')
		
--	BEGIN
--		SET @StatusFilter ='and t.CODING_STATUS in (''Coding Allotted'',''in process'')'
--		END 
--	ELSE 
--	BEGIN 
--		SET @StatusFilter=''
--	END
--	--FOR LOCATION 
--	IF (@Location IS NOT NULL)
--	BEGIN
--		SET  @LocationFilter ='and it.LOCATION='+''''+@Location+''''
--	END
--	ELSE
--	BEGIN
--		SET  @LocationFilter=''
--	END  
--	-- for date range CODING_ENDTIME
--	IF (@fromdate IS NOT NULL )
--	BEGIN
--		SET @CodedTimeFilter1 ='and (convert(Date,CODING_ENDTIME,101) between convert(varchar(12),cast('''+@fromdate+'''as date),101)' 
--	END
--	ELSE
--	BEGIN 
--		SET @CodedTimeFilter1=''
--	END 
--	IF (@todate IS NOT NULL )
--	BEGIN
--		SET @CodedTimeFilter2 ='and convert(varchar(12),cast('''+@todate+'''as date),101))' 
--	END
--	ELSE
--	BEGIN
--		SET @CodedTimeFilter1=''
--	END 
--	--PRINT @LocationFilter

--DECLARE @var1 NVARCHAR(MAX)

--		SET @var1 ='select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
--		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
--		it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
--		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
--		Billing_Provider_BSID AS [Billing Provider BSID],TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],
--		td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
--		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
--		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
--		convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
--		,ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,
--		t.CODING_STARTTIME,t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + '':''+  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff
--		,td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

--		FROM tbl_IMPORT_TABLE it
--		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
--		inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID		
--		where it.PROJECT_ID=18  and  it.PRACTICE_ID='+@PracticeId+''+@USERACCESSFilter+' '+@CodedTimeFilter1+' '+@CodedTimeFilter2+' '+@BatchNameFilter+' '+@encountertypeFilter+' '+@StatusFilter+' '+@LocationFilter+'
--		and ua.PRACTICE_ID='+@PracticeId+'

--		-- group by  td.trans_id,it.RECEIVED_DATE,
--		-- it.location,
--		--ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
--		--it.MEMBER_DOB,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
--		--Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
--		--Billing_Provider_BSID ,TD.DX_CODE ,TD.Dx_TYPE ,td.PAGE_NO ,EO_CODE1 ,
--		--EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
--		--EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
--		--convert(varchar(12),t.CODING_ENDTIME,101) ,t.QC_BY ,t.QC_DATE 
--		--,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
--		order by td.trans_id'

--		PRINT @var1


--SET @PARAMlIST=' @fromdate VARCHAR(100),
--    @todate VARCHAR(100),           
--    @batchname VARCHAR (200),  
--    @encountertype VARCHAR(200),
--    @Status VARCHAR (200),
--	@Location VARCHAR(200),
--	@PracticeId INT'

--	--print @LocationFilter
--	PRINT @var1
--EXECUTE sp_executesql @var1,@PARAMlIST,@fromdate,@todate,@batchname,@encountertype, @Status,@Location,@PracticeId

--END




	--exec [dbo].[USP_CodingProduction_v2_HighMark]
	--@Userntlg='ManoharR', 
 --   @project_id=18,
 --   @task_id=115,
 --   @fromdate =null,
 --   @todate=null,           
 --   @batchname= null,  
 --   @encountertype=null,
 --  -- @facility=NULL, 
 --   @Status=null,
 --   @Location=null, 
	--@PracticeId=1
/*
--exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate =NULL,
--    @todate=NULL,           
--    @batchname=null ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status='coded'
--    ,@Location='Bangalore', 
--	@PracticeId=1





--	exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='03/15/2017',
--    @todate='03/30/2017',           
--    @batchname='r40PmA1Tq7m9C3Qh+wseRw==' ,  
--   @encountertype='P',
--  --  @facility=NULL, 
--    @Status='CODED'
--    ,@Location='Bangalore', 
--	@PracticeId=1


--	exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate =NULL,
--    @todate=NULL,           
--    @batchname='r40PmA1Tq7m9C3Qh+wseRw==' ,  
--   @encountertype=NULL,
--  --  @facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL, 
--	@PracticeId=1


-- --select * from tbl_IMPORT_TABLE where PROJECT_ID=18 and account_no='1zJZfiRRAeOEBSqiSyWs4w=='

-- exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='SaranyaK3', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/03/16',
--    @todate='2017/03/16',           
--    @batchname=NULL ,  
--   @encountertype=NULL,
----    @facility=NULL, 
--    @Status='coded',
--	@PracticeId=1
--    ,@Location=NULL 


-- exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/04/06',
--    @todate='2017/04/06',           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location='Bangalore' ,
--	@PracticeId=1


-- exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL 


-- exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location='Bangalore' 


-- exec [dbo].[USP_CodingProduction_v2_HighMark] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype='P',
--    --@facility=NULL, 
--    @Status='Coded'
--    ,@Location='Bangalore' 
 */


 CREATE PROCEDURE [dbo].[USP_CodingProduction_v2_HighMark]  
	(   
		@Userntlg VARCHAR(100),
		@project_id INT,
		@task_id INT,
		@fromdate VARCHAR(20)=NULL,
		@todate VARCHAR(20)=NULL,           
		@batchname VARCHAR (200)=NULL,  
		@encountertype VARCHAR(200)=NULL,
		@Status VARCHAR (200)=NULL,
		@Location VARCHAR(200)=NULL,
		@PracticeId varchar(10)
	 )
AS
BEGIN 
	 
	 DECLARE @USERACCESS VARCHAR(200)
     SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg  and PROJECT_ID=@project_id AND PRACTICE_ID=@PracticeId)

	 SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,	ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],
	        LAST_NAME AS [Member Last Name],it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],Billing_Provider_BSID AS [Billing Provider BSID],
			TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],
			EO_COMMENT3 AS [EO COMMENT3],EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],
			t.QC_BY AS [QC By],t.QC_DATE AS[QC Date],ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,t.CODING_STARTTIME,
			t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,
			td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location
			FROM tbl_IMPORT_TABLE it
			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId 
			AND T.CODED_BY=case when @USERACCESS='Coder' then @Userntlg else T.CODED_BY end
			AND it.LOCATION=case when @Location IS NULL then it.LOCATION else @Location  end
			AND it.BATCH_NAME=case when @batchname is null then it.BATCH_NAME else @batchname end
			AND t.CODING_STATUS in ('Coded','Completed')
			AND it.ENCOUNTER_TYPE=case when @encountertype is null then it.ENCOUNTER_TYPE else @encountertype end
			AND((nullif(convert(VARCHAR(12),@fromdate,101),NULL)IS NULL OR CONVERT(VARCHAR(12),t.CODING_ENDTIME,101)=CONVERT(VARCHAR(12),@fromdate,101))
			OR ((NULLIF(CONVERT(VARCHAR(12),@fromdate,101),NULL)IS NULL 
			AND NULLIF(CONVERT(VARCHAR(12),@todate,101),NULL)IS NULL)OR CONVERT(VARCHAR(12),t.CODING_ENDTIME,101) 
		    BETWEEN CONVERT(VARCHAR(12),@fromdate,101) AND CONVERT(VARCHAR(12),@todate,101))) 
			--group by  td.trans_id,t.coding_status,
			--ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS,
			--Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI,Billing_Provider_BSID,TD.Dx_TYPE ,td.Dx_CODE,td.PAGE_NO ,EO_CODE1 ,
			--EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3,EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,convert(varchar(12),t.CODING_ENDTIME,101),
			--t.QC_BY ,t.QC_DATE,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
			order by td.trans_id 

end
GO
/****** Object:  StoredProcedure [dbo].[USP_CodingProduction_v2_HighMark_Test]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 
	CREATE PROCEDURE [dbo].[USP_CodingProduction_v2_HighMark_Test]  
	(   
		@Userntlg VARCHAR(100),
		@project_id INT,
		@task_id INT,
		@fromdate VARCHAR(20)=NULL,
		@todate VARCHAR(20)=NULL,           
		@batchname VARCHAR (200)=NULL,  
		@encountertype VARCHAR(200)=NULL,
		@Status VARCHAR (200)=NULL,
		@Location VARCHAR(200)=NULL,
		@PracticeId varchar(10)
	 )
AS
BEGIN 
	 
	 DECLARE @USERACCESS VARCHAR(200)
     SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg  and PROJECT_ID=@project_id AND PRACTICE_ID=@PracticeId)

	 SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,t.coding_status,	ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],
	        LAST_NAME AS [Member Last Name],it.MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
			Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],Billing_Provider_BSID AS [Billing Provider BSID],
			TD.Dx_TYPE AS [Dx Type],td.Dx_CODE AS [Dx Code],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],
			EO_COMMENT3 AS [EO COMMENT3],EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],convert(varchar(12),t.CODING_ENDTIME,101)  AS [Coded Date],
			t.QC_BY AS [QC By],t.QC_DATE AS[QC Date],ua.EMP_ID as [Coder EMP ID],t.CODED_BY as [Coder Name],ua.TL_NAME,t.CODING_STARTTIME,
			t.CODING_ENDTIME,(CAST (DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) AS NVARCHAR(10)) + ' : ' +  CAST(ABS(DATEDIFF(SECOND, t.CODING_STARTTIME, t.CODING_ENDTIME) - DATEDIFF(MINUTE, t.CODING_STARTTIME, t.CODING_ENDTIME) * 60) AS NVARCHAR (10))) as Time_Diff,
			td.ICD_COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location
			FROM tbl_IMPORT_TABLE it
			inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
			inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
			inner join dbo.tbl_TRANSACTION_DETAILS_BACKUP td on td.TRANS_ID=t.TRANS_ID
			where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId 
			AND T.CODED_BY=case when @USERACCESS='Coder' then @Userntlg else T.CODED_BY end
			AND it.LOCATION=case when @Location IS NULL then it.LOCATION else @Location  end
			AND it.BATCH_NAME=case when @batchname is null then it.BATCH_NAME else @batchname end
			AND t.CODING_STATUS in ('Coded','Completed')
			AND it.ENCOUNTER_TYPE=case when @encountertype is null then it.ENCOUNTER_TYPE else @encountertype end
			AND((nullif(convert(VARCHAR(12),@fromdate,101),NULL)IS NULL OR CONVERT(VARCHAR(12),t.CODING_ENDTIME,101)=CONVERT(VARCHAR(12),@fromdate,101))
			OR ((NULLIF(CONVERT(VARCHAR(12),@fromdate,101),NULL)IS NULL 
			AND NULLIF(CONVERT(VARCHAR(12),@todate,101),NULL)IS NULL)OR CONVERT(VARCHAR(12),t.CODING_ENDTIME,101) 
		    BETWEEN CONVERT(VARCHAR(12),@fromdate,101) AND CONVERT(VARCHAR(12),@todate,101))) 
			--group by  td.trans_id,t.coding_status,
			--ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,it.MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS,
			--Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI,Billing_Provider_BSID,TD.Dx_TYPE ,td.Dx_CODE,td.PAGE_NO ,EO_CODE1 ,
			--EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3,EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,convert(varchar(12),t.CODING_ENDTIME,101),
			--t.QC_BY ,t.QC_DATE,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,t.CODING_STARTTIME,t.CODING_ENDTIME,td.ICD_COMMENTS,t.Total_Pages,it.LOCATION
			order by td.trans_id 

end

----SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG ='LavanyaB'  and PROJECT_ID=18 AND PRACTICE_ID=1

--exec [dbo].[USP_CodingProduction_v2_HighMark_Test]
--    @Userntlg='ManoharR', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='07/04/2017',
--    @todate='07/04/2017',           
--    @batchname= null,  
--    @encountertype=null,
--    @Status=null,
--    @Location=null, 
--	@PracticeId=1
GO
/****** Object:  StoredProcedure [dbo].[USP_Get_Account_Details]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_Get_Account_Details]
	(@ProjectID int,
	@PracticeID int,
	@FromDate varchar(12),
	@ToDate varchar(12),
	@BatchName varchar(Max),
	@Location varchar(50),
	@Type varchar(50))
AS
BEGIN

if(@Type <>'Fresh')
begin
		select I.BATCH_NAME,I.ACCOUNT_NO,convert(varchar(12),I.UPLOAD_DATE,101) as [Uploaded Date],I.ENCOUNTER_TYPE,i.ALLOTTED_TO as [Coding Allotted] ,convert(varchar(12),I.ALLOTTED_DATE,101) as [Coding Allotted Date],
		convert(varchar(12),T.CODING_ENDTIME,101) as [Coded Date],(select top 1 EMP_ID from tbl_USER_ACCESS where USER_NTLG=T.CODED_BY) as [Coder Emp ID],(select top 1[USER_NAME] from tbl_USER_ACCESS where USER_NTLG=T.CODED_BY) as [Coder Name],
		convert(varchar(12),I.QC_ALLOTTED_DATE,101) as [QC Allotted Date],convert(varchar(12),T.QC_DATE,101) as [QC Date],convert(varchar(12),T.QC_DATE,101) as [QC Completion Date],
		T.IS_AUDITED as [QC Type],(select top 1 EMP_ID from tbl_USER_ACCESS where USER_NTLG= T.QC_BY) as [QC Emp ID],(select top 1 [USER_NAME] from tbl_USER_ACCESS where USER_NTLG= T.QC_BY) as [QC Name],
		convert(varchar(12),I.RELEASED_DATE,101) as [Released Date],I.BATCH_STATUS as [Batch Status],T.CODING_STATUS as [Coding Status],T.QC_STATUS as [QC Status],(select top 1 TL_NAME from tbl_USER_ACCESS where USER_NTLG= T.QC_BY) as [TL Name],I.LOCATION
		from tbl_IMPORT_TABLE I
		inner join tbl_TRANSACTION T on T.BATCH_ID=I.BATCH_ID
		where I.PROJECT_ID=@ProjectID and I.PRACTICE_ID=@PracticeID
		and I.BATCH_NAME=case when @BatchName='' then I.BATCH_NAME else @BatchName end
		and I.LOCATION=case when @Location='' then I.LOCATION else @Location end
		and (I.ALLOTTED_DATE = case when @FromDate ='' then @FromDate else @FromDate end  
		or I.ALLOTTED_DATE = case when @ToDate='' then I.ALLOTTED_DATE else @ToDate end  
		or convert(varchar(12),I.ALLOTTED_DATE,101) between @FromDate and @ToDate) 
		and BATCH_STATUS not in ('Fresh','Coding Allotted')
		order by I.ALLOTTED_DATE
end
else
begin
		select I.BATCH_NAME,I.ACCOUNT_NO,convert(varchar(12),I.UPLOAD_DATE,101) as [Uploaded Date],I.ENCOUNTER_TYPE,i.ALLOTTED_TO as [Coding Allotted],convert(varchar(12),I.ALLOTTED_DATE,101) as [Coding Allotted Date],
		convert(varchar(12),I.RELEASED_DATE,101) as [Released Date],I.BATCH_STATUS as [Batch Status],I.LOCATION,I.AGE as [QC Type]
		from tbl_IMPORT_TABLE I
		where I.PROJECT_ID=@ProjectID and I.PRACTICE_ID=@PracticeID
		and I.BATCH_NAME=case when @BatchName='' then I.BATCH_NAME else @BatchName end
		and I.LOCATION=case when @Location='' then I.LOCATION else @Location end
		and BATCH_STATUS in ('Fresh','Coding Allotted')
		order by I.ALLOTTED_DATE
end
END


--exec [dbo].[USP_Get_Account_Details] 18,1,'','','','Manila','Fresh'    4564  34


--select * from tbl_IMPORT_TABLE where location ='Manila'

 
GO
/****** Object:  StoredProcedure [dbo].[usp_getCoderAllotedDetails]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_getCoderAllotedDetails]
	
AS
BEGIN

	select BATCH_NAME as [Batch Name], ALLOTTED_TO as [Coder Name], count(BATCH_NAME) as [No of Acc#' s]
	from tbl_IMPORT_TABLE 
	where convert(varchar(12),ALLOTTED_DATE,101)=convert(varchar(12),getdate(),101) and PROJECT_ID=16
	group by BATCH_NAME,ALLOTTED_TO 
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_getCoderAndQCAllotedDetails]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_getCoderAndQCAllotedDetails]
	@Role varchar(12) = null
AS
BEGIN

if (@Role='Coder')
begin
	select BATCH_NAME as [Batch Name], ALLOTTED_TO as [Coder Name], count(BATCH_NAME) as [No of Acc#' s]
	from tbl_IMPORT_TABLE 
	where convert(varchar(12),ALLOTTED_DATE,101)=convert(varchar(12),getdate(),101) and PROJECT_ID=16 and BATCH_STATUS='Coding Allotted'
	
	group by BATCH_NAME,ALLOTTED_TO 
end
else if (@Role='QC')
begin 
	select BATCH_NAME as [Batch Name], QC_ALLOTTED_BY as [QC Name], count(BATCH_NAME) as [No of Acc#' s]
	from tbl_IMPORT_TABLE 
	where convert(varchar(12),ALLOTTED_DATE,101)=convert(varchar(12),getdate(),101) and PROJECT_ID=16 and BATCH_STATUS in ('QC Allotted','Completed')
	group by BATCH_NAME,QC_ALLOTTED_BY 
end
END


--exec [usp_getCoderAndQCAllotedDetails] 'Coder'

GO
/****** Object:  StoredProcedure [dbo].[usp_GetHccUploadedRecords]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[usp_GetHccUploadedRecords](@projectId int,@currentDate varchar(50))
as
begin
select * from tbl_IMPORT_HCC_DXCODE_MASTER where PROJECT_ID=@projectId and CONVERT(VARCHAR(25), UPLOADED_DATE, 126)   like ''+@currentDate+'' 
end

GO
/****** Object:  StoredProcedure [dbo].[usp_HighMark_ProductionReport]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--modified on 04/18/2017   subhajakrishnan
--EXEC [usp_HighMark_ProductionReport] '04/17/2017','04/17/2017','BANGALORE',1
CREATE PROCEDURE [dbo].[usp_HighMark_ProductionReport] 
      (
      @Fromdate DATETIME=NULL,
      @Todate DATETIME=NULL, 
      @Location VARCHAR(20)=NULL,
	  @PracticeId INT
      )
AS
BEGIN
      
      SELECT CONVERT(VARCHAR(8),GETDATE(),112) AS [Date],t.trans_id,t.coding_status,td.ERROR_CATEGORY,IT.ACCOUNT_NO AS [Tracking Code],IT.ECI AS [ECI],IT.UMI AS [UMI],IT.HIC AS [HIC],
	  IT.First_Name AS [Member First Name],
      IT.Last_Name AS [Member Last Name],IT.MEMBER_DOB AS [Member DOB],ISNULL(IT.MEMBER_GENDER,'') AS [Member Gender],IT.ENCOUNTER_TYPE AS [Encounter Type],
      TD.BEGINNING_DOS AS [Beginning DOS],TD.ENDING_DOS AS [Ending DOS],IT.Performing_Provider_NPI AS [Performing Provider NPI],
      IT.Performing_Provider_BSID AS [Performing Provider BSID],IT.Billing_Provider_NPI AS [Billing Provider NPI],IT.Billing_Provider_BSID AS [Billing Provider BSID],
      TD.ICD_CODE AS [Dx Type], TD.ICD AS [Dx Code],TD.PAGE_NO AS [Page No],TD.EO_CODE1 AS [EO CODE1],TD.EO_COMMENT1 AS [Comment1],TD.EO_CODE2 AS [EO CODE2],
      TD.EO_COMMENT2 AS [Comment2],TD.EO_CODE3 AS [EO CODE3],TD.EO_COMMENT3 AS [Comment3], TD.EO_CODE4 AS [EO CODE4],TD.EO_COMMENT4 AS [Comment4],TD.EO_CODE5 AS [EO CODE5],
      TD.EO_COMMENT5 AS [Comment5],T.CODED_BY AS [Coder Name],T.CODED_DATE AS [Coded Date], T.QC_BY AS [QC Name],CONVERT(VARCHAR(8),
      T.QC_DATE,112) AS [QC Date],TD.PQRS AS [Incremental HCC],
	  TD.COMMENTS as [ICD_Comments],U.EMP_ID as [Coders Emp ID],IT.LOCATION as Location,UA.EMP_ID as [QC Emp ID]
      FROM tbl_IMPORT_TABLE IT
	  INNER JOIN dbo.tbl_TRANSACTION T ON IT.BATCH_ID=t.BATCH_ID
      INNER JOIN dbo.tbl_TRANSACTION_DETAILS TD ON td.TRANS_ID=t.TRANS_ID 
	   INNER JOIN dbo.tbl_USER_ACCESS U ON T.CODED_BY=U.USER_NTLG
	  INNER JOIN dbo.tbl_USER_ACCESS UA ON T.QC_BY=UA.USER_NTLG
      WHERE T.PROJECT_ID =18 
	  AND it.PRACTICE_ID=@PracticeId
	  AND IT.BATCH_STATUS='Completed' 
	  AND T.CODING_STATUS ='Completed' 
	  AND T.QC_STATUS ='Completed'
	  AND( td.ERROR_CATEGORY NOT LIKE '%_Dx cannot be coded%' OR td.ERROR_CATEGORY IS NULL)
	  AND((nullif(convert(VARCHAR(12),@Fromdate,101),NULL)IS NULL OR CONVERT(VARCHAR(12),RELEASED_DATE,101)=CONVERT(VARCHAR(12),@Fromdate,101))
	  OR ((NULLIF(CONVERT(VARCHAR(12),@Fromdate,101),NULL)IS NULL 
	  AND NULLIF(CONVERT(VARCHAR(12),@Todate,101),NULL)IS NULL)OR CONVERT(VARCHAR(12),it.Released_date,101) 
	  BETWEEN CONVERT(VARCHAR(12),@Fromdate,101) AND CONVERT(VARCHAR(12),@Todate,101))) 
	  AND (NULLIF(@Location,NULL)IS NULL OR IT.LOCATION=@Location)
     
END


--EXEC [usp_HighMark_ProductionReport] '04/07/2017','04/10/2017','BANGALORE',1



GO
/****** Object:  StoredProcedure [dbo].[usp_qc_prod_Highmark_static]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC usp_qc_prod_Highmark_static 'ManoharR',18,126,'07/17/2017','07/25/2017','0qT62XJV9N/sZzAcZctOTNYg+KbvpmWKC2HKqJnpa0w=','Qced','Manila',1
CREATE PROCEDURE [dbo].[usp_qc_prod_Highmark_static]
(  
    @Userntlg VARCHAR (100), 
    @project_id INT,
    @task_id INT,
	--@codername varchar(200)=NULL,
    @fromdate DATETIME=NULL,
    @todate DATETIME=NULL,          
    @batchname VARCHAR (200)=NULL ,   
    @Status VARCHAR (200)=NULL,
	@Location VARCHAR(200)=NULL,
	@PracticeId VARCHAR(10)
	)

AS BEGIN

DECLARE @USERACCESS VARCHAR(200)
SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id and PRACTICE_ID=@PracticeId)


   
   IF @USERACCESS ='QC' and  @task_id=126  AND @fromdate IS  NULL AND @todate IS  NULL AND @batchname IS  NULL AND @Status IS   NULL  and @Location is  null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID AS [QA'EmpID],t.QC_BY AS [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		INNER JOIN dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		INNER JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		INNER JOIN dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 WHERE it.PROJECT_ID=18 AND it.PRACTICE_ID=@PracticeId  AND QC_BY=@Userntlg and t.QC_STATUS IN('qc','qced','completed') AND IS_AUDITED=1 
		 -- AND (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.QC_STATUS=@status AND QC_BY=@Userntlg and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		GROUP BY  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
       , td.COMMENTS,t.Total_Pages,it.LOCATION
		ORDER BY td.trans_id 
	END




 ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS  NULL AND @todate IS  NULL AND @batchname IS  NULL AND @Status IS   NULL  and @Location is  null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId  and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1 
		 --AND (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.QC_STATUS=@status  and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
		,td.COMMENTS ,t.Total_Pages,it.LOCATION 
		order by td.trans_id 
	end


else IF @USERACCESS ='QC' and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS  NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
	    ,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND QC_BY=@Userntlg and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1
		 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
	    ,td.COMMENTS,t.Total_Pages ,it.LOCATION 
		order by td.trans_id 
	end




else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS  NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
	    ,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1
		 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
	    ,td.COMMENTS,t.Total_Pages ,it.LOCATION 
		order by td.trans_id 
	end


else IF @USERACCESS ='QC' and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS not NULL AND @Status IS  NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
	   ,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname AND QC_BY=@Userntlg and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1
		 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
	    ,td.COMMENTS,t.Total_Pages ,it.LOCATION 
		order by td.trans_id 
	end



else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS not NULL AND @Status IS  NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
	   ,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1
		 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
		--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
		,td.COMMENTS ,t.Total_Pages,it.LOCATION 
		order by td.trans_id 
	end


else IF @USERACCESS ='QC' and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS not NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd
			if @Status ='Error'
			begin 
				select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
				ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
				MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
				Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
				Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
				Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
				EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
				EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
				QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
				,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
				,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

				----into ##ResultCodingProd 
				FROM tbl_IMPORT_TABLE it
				inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
				inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
				inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
				 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId  and (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and t.QC_STATUS in('Error') AND IS_AUDITED=1 AND qc_BY=@Userntlg
				 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
				--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
				group by  td.trans_id,
				ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
				MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
				Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
				Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
				Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
				EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
				EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
				QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
				,td.COMMENTS,t.Total_Pages ,it.LOCATION 
				order by td.trans_id 
				end 

				else 
				begin 
				select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
				ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
				MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
				Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
				Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
				Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
				EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
				EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
				QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
				,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
				,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

				----into ##ResultCodingProd 
				FROM tbl_IMPORT_TABLE it
				INNER JOIN dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
				INNER JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
				INNER JOIN dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
				 WHERE it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId  and (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and t.QC_STATUS in('qced','qc','completed') AND qc_BY=@Userntlg
				 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
				--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
				GROUP BY  td.trans_id,
				ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
				MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
				Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
				Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
				Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
				EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
				EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
				QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
				,td.COMMENTS ,t.Total_Pages,it.LOCATION 

				ORDER BY td.trans_id 
				END 
	 --  PRINT @STATUS
	END


ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS not NULL  and @Location is null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd
	--if @Status
			IF @Status ='Error'
			begin 
				select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
				ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
				MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
				Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
				Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
				Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
				EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
				EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
				QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
				,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
				,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

				----into ##ResultCodingProd 
				FROM tbl_IMPORT_TABLE it
				inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
				inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
				inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
				 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId  and (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and t.QC_STATUS in('Error') AND IS_AUDITED=1 
				 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
				--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
				group by  td.trans_id,
				ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
				MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
				Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
				Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
				Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
				EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
				EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
				QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
				,td.COMMENTS,t.Total_Pages ,it.LOCATION 
				order by td.trans_id 
				end 

				else 
				begin 
				select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
				ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
				MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
				Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
				Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
				Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
				EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
				EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
				QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
				,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
				,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

				----into ##ResultCodingProd 
				FROM tbl_IMPORT_TABLE it
				inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
				inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
				inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
				 WHERE it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId  and (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and t.QC_STATUS in('qced','qc','completed') 
				 --and T.qc_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
				--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
				GROUP BY  td.trans_id,
				ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
				MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
				Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
				Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
				Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
				EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
				EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
				QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
				,td.COMMENTS ,t.Total_Pages,it.LOCATION 
				ORDER BY td.trans_id 
				END 	
	--print @Status
	END

ELSE IF @USERACCESS='QC' and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS  NULL  and @Location is not null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and it.LOCATION=@Location AND qc_BY=@Userntlg
	
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
		,td.COMMENTS ,t.Total_Pages,it.LOCATION 
		ORDER BY td.trans_id 
	END

ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS not NULL AND @Status IS not NULL  and @Location is not null

BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) 
		 and it.BATCH_NAME=@batchname 
		 and it.LOCATION=@Location and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1 
	
		--group by  td.trans_id,
		--ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		--MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		--Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		--Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		--Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		--EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		--EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		--QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
		--,td.COMMENTS ,t.Total_Pages,it.LOCATION 
		order by td.trans_id 
	END

ELSE IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and  @task_id=126  AND @fromdate IS not NULL AND @todate  IS not NULL AND @batchname IS NULL AND @Status IS  NULL  and @Location is not null
	BEGIN 
	----if OBJECT_ID('tempdb..##ResultCodingProd')is not null
	-- --drop table ##ResultCodingProd

		select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [Codded By]
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location

		----into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
	
		 where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) and it.LOCATION=@Location and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1 
	
		group by  td.trans_id,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY,ua.EMP_ID ,ua.TL_NAME
		,td.COMMENTS ,t.Total_Pages,it.LOCATION 
		order by td.trans_id 
	END

ELSE 
	BEGIN
		SELECT ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id, qc_status,
		ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
		MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
		Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
		Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
		Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
		EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
		EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
		QC_DATE AS [QC Date],t.CODED_BY AS [CODED_BY],t.QC_BY
		,ua.EMP_ID as [QA'EmpID],t.QC_BY as [QC Name],ua.TL_NAME
		,td.COMMENTS as [ICD_Comments],t.Total_Pages as [Total Pages],it.LOCATION as Location
		--into ##ResultCodingProd 
		FROM tbl_IMPORT_TABLE it
		INNER JOIN dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
		INNER JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
		INNER JOIN dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
		 WHERE it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.QC_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname  and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1  AND QC_BY=@Userntlg and it.LOCATION=@Location
		-- and t.QC_STATUS in('qc','qced','completed') AND IS_AUDITED=1 
 
		GROUP BY  td.trans_id,qc_status,
		ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
		MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
		Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
		Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
		Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
		EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
		EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,
		QC_DATE ,t.CODED_BY ,t.QC_DATE ,t.QC_BY
		,ua.EMP_ID  ,ua.TL_NAME
		,td.COMMENTS,t.Total_Pages,it.LOCATION
		ORDER BY td.trans_id 
	END

END 


--select COUNT(ICD) AS [Dx Code Count]
--FROM tbl_IMPORT_TABLE it
--inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
--inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.QC_BY
--inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID where QC_STATUS='Qced' and ACCOUNT_NO='mnQZtVER/dMdFQ/XNyxJ7Q=='
--group by ACCOUNT_NO,t.BATCH_ID, QC_STATUS


	




--exec usp_qc_prod_Highmark_static
-- @Userntlg='DebshreeC', 
--    @project_id=18,
--    @task_id=126,
--	--@codername varchar(200)=NULL,
--    @fromdate=NULL,
--    @todate=NULL,          
--    @batchname=NULL ,   
--    @Status=NULL,
--	@Location=NULL,
--	@PracticeId=1




--exec usp_qc_prod_Highmark_static
--@Userntlg='lavanyab', 
--    @project_id =18,
--    @task_id =126,
--    @fromdate='2016/05/05',
--    @todate='2016/11/02',           
--    @batchname=null ,  
--    --@encountertype='P',
--   -- @facility =NULL , 
--    @Status =null,
--	@Location='Bangalore' 





--select * from tbl_STATUS_MASTER where PROJECT_ID=18


--select * from tbl_transaction where project_id=18 and trans_id in (29451,
--29451,
--29455,
--29455,
--29455,
--29460,
--29461)

--select * from tbl_IMPORT_TABLE where BATCH_ID in (1304,1350,1351)





GO
/****** Object:  StoredProcedure [dbo].[USP_SELECT_INCREMENTAL_ACCOUNT_DETAILS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<JAGADEESH J>
-- Create date: <06/21/2016>
-- Description:	<Fetch all the non matching details from Import, HCC Master, Transactions and Transaction Details tables>
-- =============================================
CREATE procedure  [dbo].[USP_SELECT_INCREMENTAL_ACCOUNT_DETAILS]
(   
  @QC_AllotedTo varchar(100)=null,  
  @ProjectId int  
 )  
AS  
BEGIN  
SET FMTONLY OFF  
 select  I.BATCH_ID,td.IS_ACKNOWLEDGE as is_acknowledge,i.ECI,t.is_skipped,
  td.ICD, T.TRANS_ID,I.BATCH_STATUS,td.ICD_CODE,
  I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,
  t.CODED_DATE,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,t.RELEASE_REAUDIT_STATUS,t.ERROR_SENT_DATE  
    
   into #tempAccount from tbl_IMPORT_TABLE  I 
  inner join tbl_TRANSACTION T on I.BATCH_ID=t.BATCH_ID
  inner join tbl_TRANSACTION_DETAILS TD on t.TRANS_ID=TD.TRANS_ID  
  where I.PROJECT_ID=@ProjectId and I.QC_ALLOTTED_BY=@QC_AllotedTo and I.BATCH_STATUS='QC Allotted' AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)  

SELECT   T.TRANS_ID,  t.BATCH_ID,  
    t.BATCH_STATUS,  
      
    t.ACCOUNT_NO,  
   ---- I.ECI,  
   t.MEMBER_GENDER,  
    t.MEMBER_DOB,   
    t.CODED_DATE,  
    t.First_Name,  
    t.Last_Name,  
     t.ENCOUNTER_TYPE,   
          min(t.IS_ACKNOWLEDGE) as IS_ACKNOWLEDGE,       
           t.RELEASE_REAUDIT_STATUS,  
     t.ERROR_SENT_DATE   
from #tempAccount t  
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM ON IHDM.PROJECT_ID = 18 
LEFT OUTER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM9 ON ICDMM9.ICD_9 = T.ICD OR ICDMM9.ICD_10 = T.ICD  
INNER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM10 ON ICDMM10.ICD_10 = IHDM.DX_CODE OR ICDMM10.ICD_9 = IHDM.DX_CODE  
 where
--IHDM.ECI <> t.ECI
 IHDM.ECI NOT IN ( (select distinct ECI from tbl_IMPORT_TABLE where BATCH_STATUS ='QC Allotted'))
AND ((T.ICD NOT IN (SELECT IHDM.DX_CODE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID = @ProjectId))  
OR (T.ICD_CODE NOT IN (SELECT IHDM.DX_TYPE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID =@ProjectId)))   
group by  t.BATCH_ID, T.TRANS_ID, t.BATCH_STATUS,t.ACCOUNT_NO,t.MEMBER_DOB,t.MEMBER_GENDER,  t.CODED_DATE,      t.First_Name,      t.Last_Name,       t.ENCOUNTER_TYPE,   t.RELEASE_REAUDIT_STATUS,       t.ERROR_SENT_DATE   
 
drop table #tempAccount

End


--exec USP_SELECT_INCREMENTAL_ACCOUNT_DETAILS 'ChandraK1',18

GO
/****** Object:  StoredProcedure [dbo].[USP_SELECT_INCREMENTALHCC_POPUP_Color]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    
CREATE procedure [dbo].[USP_SELECT_INCREMENTALHCC_POPUP_Color]            
(            
@Batch_Id int            
)            
as            
begin            
 declare  @trans_id as int            
 declare  @eci as nvarchar(50)            
 declare @MEMBER_GENDER Nvarchar(10)            
 declare @ACCOUNT_NO nvarchar(10)            
        SET FMTONLY OFF    
 select @eci=eci,@MEMBER_GENDER=MEMBER_GENDER,@ACCOUNT_NO=ACCOUNT_NO from tbl_IMPORT_TABLE where Batch_Id=@Batch_Id            
 select @trans_id=TRANS_ID from tbl_TRANSACTION where BATCH_ID=@Batch_Id            
   -- select TRANS_DETAIL_ID,TRANS_ID,icd,ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=@trans_id          
         
 --select @eci=eci,@MEMBER_GENDER=MEMBER_GENDER,@ACCOUNT_NO=ACCOUNT_NO from tbl_IMPORT_TABLE where Batch_Id=@Batch_Id            
 --select @trans_id=TRANS_ID from tbl_TRANSACTION where BATCH_ID=@Batch_Id            
 --  -- select TRANS_DETAIL_ID,TRANS_ID,icd,ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=@trans_id            
               
 --select ROW_NUMBER() over(order by t.ICD)as PAGE_NO,            
 --case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),'NULLVAlUES') when 'NULLVALUES'             
 --then (case when t.ICD_CODE='9' then (select  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))            
 --else  (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)                     
 --else (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as color,             
 --t.TRANS_ID,t.BEGINNING_DOS,t.ENDING_DOS,t.ICD_CODE,t.ICD,t.EO_CODE1,t.EO_CODE2,t.EO_CODE3,t.EO_CODE4,t.EO_CODE5,t.EO_CODE6,t.EO_COMMENT1,t.EO_COMMENT2,t.EO_COMMENT3,t.EO_COMMENT4,t.EO_COMMENT5,t.EO_COMMENT6,t.TRANS_DETAIL_ID            
 --from tbl_TRANSACTION_DETAILS t              
 --where t.TRANS_ID=@trans_id            
           
           
           
 select ROW_NUMBER() over(order by t.ICD)as ROW_NO,               
 case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),'NULLVAlUES') when 'NULLVALUES'             
 then (case when t.ICD_CODE='9' then           
   (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))            
 else  (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)                     
 else (select  top 1 DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as HCCType,          
           
 case isnull((select top 1  DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD),1) when 1             
 then (case when t.ICD_CODE='9' then           
   (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=t.ICD))            
 else  (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=@eci and DX_CODE = (select  top 1  ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=t.ICD)) end)                     
 else (select  top 1 DX_TYPE from tbl_IMPORT_HCC_DXCODE_MASTER where  eci=@eci and DX_TYPE=t.ICD_CODE and DX_CODE=t.ICD) end as HCCCode,          
                 
 t.TRANS_ID,t.PAGE_NO,t.BEGINNING_DOS,t.ENDING_DOS,t.ICD_CODE,t.ICD,t.EO_CODE1,t.EO_CODE2,t.EO_CODE3,t.EO_CODE4,t.EO_CODE5,t.EO_CODE6,t.EO_COMMENT1,t.EO_COMMENT2,t.EO_COMMENT3,t.EO_COMMENT4,t.EO_COMMENT5,t.EO_COMMENT6,t.TRANS_DETAIL_ID,t.Error_Correction  ,t.COMMENTS,t.ICD_RESULT
 into #temp2    
 from tbl_TRANSACTION_DETAILS t              
 where t.TRANS_ID=@trans_id                   
         
 select * into #temp1 from #temp2          
 --select * from #temp1    
-- select * from #temp2  where HCCCode is null and HCCType is null      
       
 select t.ROW_NO,      
 case when HCCCode='9' then (select top 1 SIC7.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC7 where SIC7.ICD_CODE=t.ICD)      
 else (select top 1 SIC8.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=t.ICD)      
 end as HCCType      
 ,      
 case when HCCCode='9' then (select top 1 SIC9.ICD_Type from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC9 where SIC9.ICD_type=t.ICD_CODE)      
 else (select top 1 SIC10.ICD_Type from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC10 where SIC10.ICD_type=t.ICD_CODE)      
 end as HCCCode,'3' as Color,     
 t.TRANS_ID,t.PAGE_NO,t.BEGINNING_DOS,t.ENDING_DOS,t.ICD_CODE,t.ICD,t.EO_CODE1,t.EO_CODE2,t.EO_CODE3,t.EO_CODE4,t.EO_CODE5,t.EO_CODE6,t.EO_COMMENT1,t.EO_COMMENT2,t.EO_COMMENT3,t.EO_COMMENT4,t.EO_COMMENT5,t.EO_COMMENT6,t.TRANS_DETAIL_ID            
 into #temp3 from #temp2 t   where HCCCode is null and HCCType is null      
      
--select * from #temp3     
      
 select case isnull(t3.HCCCode,1) when 1 then t1.HCCCode  else t3.HCCCode end as HCCCode,    
 case isnull(t3.HCCType,'Null') when 'Null' then t1.HCCType   else t3.HCCType end as HCCType,t3.Color,t1.TRANS_ID,t1.PAGE_NO,t1.BEGINNING_DOS,t1.ENDING_DOS,t1.ICD_CODE,t1.ICD,t1.EO_CODE1,t1.EO_CODE2,t1.EO_CODE3,t1.EO_CODE4,t1.EO_CODE5,t1.EO_CODE6,
 t1.EO_COMMENT1,t1.  
EO_COMMENT2,t1.EO_COMMENT3,t1.EO_COMMENT4,t1.EO_COMMENT5,t1.EO_COMMENT6,t1.TRANS_DETAIL_ID,t1.Error_Correction ,t1.COMMENTS,t1.ICD_RESULT
 --t1.HCCCode,t1.HCCType,t3.HCCCode,t3.HCCType,    
 from #temp1 t1 left  join #temp3 t3 on t1.ROW_NO=t3.ROW_NO   order by TRANS_DETAIL_ID
   
     
 drop table #temp2      
 drop table #temp3    
 drop table #temp1      
     
end 

 --exec USP_SELECT_INCREMENTALHCC_POPUP_Color 2044
GO
/****** Object:  StoredProcedure [dbo].[USP_SELECT_REGULAR_AUDIT_ACCOUNT_DETAILS]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<JAGADEESH J>
-- Create date: <06/21/2016>
-- Description:	<Fetch all the matching details from Import, HCC Master, Transactions and Transaction Details tables>
-- =============================================

--exec [dbo].[USP_SELECT_REGULAR_AUDIT_ACCOUNT_DETAILS] null,18

CREATE PROCEDURE [dbo].[USP_SELECT_REGULAR_AUDIT_ACCOUNT_DETAILS] 
	-- Add the parameters for the stored procedure here
	(	
		@QC_AllotedTo varchar(100)=null,
		@ProjectId int
	)
AS
BEGIN
SELECT DISTINCT T.TRANS_ID,I.BATCH_ID,I.BATCH_STATUS,
--I.ECI,
I.ACCOUNT_NO,I.MEMBER_GENDER,
--TD.BEGINNING_DOS,TD.ENDING_DOS,TD.ICD_CODE AS TD_ICD_CODE,TD.ICD AS TD_ICD,TD.PAGE_NO,TD.EO_CODE1,TD.EO_CODE2,TD.EO_CODE3,TD.EO_CODE4,TD.EO_CODE5,TD.EO_CODE6
--,TD.EO_COMMENT1,TD.EO_COMMENT2,TD.EO_COMMENT3,TD.EO_COMMENT4,TD.EO_COMMENT5,TD.EO_COMMENT6,TD.TRANS_DETAIL_ID,I.QC_ALLOTTED_BY,
T.CODED_DATE,I.First_Name,I.Last_Name,I.ENCOUNTER_TYPE,TD.IS_ACKNOWLEDGE,T.RELEASE_REAUDIT_STATUS	,T.ERROR_SENT_DATE

FROM tbl_IMPORT_TABLE I
INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM ON IHDM.PROJECT_ID = I.PROJECT_ID

WHERE I.PROJECT_ID = @ProjectId
AND I.BATCH_STATUS = 'QC Allotted'
AND (I.QC_ALLOTTED_BY = @QC_AllotedTo)
AND IHDM.ECI = I.ECI
AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)
AND TD.ICD = IHDM.DX_CODE
AND TD.ICD_CODE = IHDM.DX_TYPE
AND I.BATCH_ID NOT IN (SELECT DISTINCT I.BATCH_ID FROM  tbl_IMPORT_TABLE  I

INNER JOIN tbl_TRANSACTION T ON I.BATCH_ID = T.BATCH_ID
INNER JOIN tbl_TRANSACTION_DETAILS TD ON t.TRANS_ID = td.TRANS_ID
INNER JOIN tbl_IMPORT_HCC_DXCODE_MASTER IHDM ON IHDM.PROJECT_ID = I.PROJECT_ID
LEFT OUTER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM9 ON ICDMM9.ICD_9 = TD.ICD OR ICDMM9.ICD_10 = TD.ICD
INNER JOIN TBL_ICD9_ICD10_MAPPING_MASTER ICDMM10 ON ICDMM10.ICD_10 = IHDM.DX_CODE OR ICDMM10.ICD_9 = IHDM.DX_CODE
WHERE I.PROJECT_ID=@ProjectId
AND I.BATCH_STATUS = 'QC Allotted' AND (I.QC_ALLOTTED_BY = @QC_AllotedTo)  
--AND IHDM.ECI != I.ECI 
AND IHDM.ECI NOT IN ( (select distinct ECI from tbl_IMPORT_TABLE where BATCH_STATUS ='QC Allotted'))
AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)
AND ((TD.ICD NOT IN (SELECT IHDM.DX_CODE FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM WHERE IHDM.PROJECT_ID = I.PROJECT_ID))
	OR (TD.ICD_CODE NOT IN (SELECT IHDM.DX_TYPE	FROM tbl_IMPORT_HCC_DXCODE_MASTER IHDM	WHERE IHDM.PROJECT_ID = I.PROJECT_ID))) 
--	 order by td.IS_ACKNOWLEDGE desc and
	group by t.trans_id,i.batch_id,t.RELEASE_REAUDIT_STATUS,t.ERROR_SENT_DATE,I.ACCOUNT_NO,I.BATCH_STATUS,I.Eci,I.MEMBER_GENDER,T.CODED_DATE,I.First_Name,I.Last_Name,I.ENCOUNTER_TYPE)
END

-- exec [USP_SELECT_REGULAR_AUDIT_ACCOUNT_DETAILS] 'venum',18
GO
/****** Object:  StoredProcedure [dbo].[usp_static_Coding_Prod_HighMark]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_static_Coding_Prod_HighMark]   
(   @Userntlg varchar (100), 
    @project_id int,
    @task_id int,
    @fromdate datetime=NULL,
    @todate datetime=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
   -- @facility VARCHAR (200)=NULL , 
    @Status VARCHAR (200)=NULL
    ,@Location VARCHAR(200)=NULL 
	)

as begin

-- DECLARE @USERACCESS VARCHAR(200)
--   SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id)
   
--  IF @USERACCESS='CODER' and @task_id=115 AND @fromdate IS NULL AND @todate IS NULL AND @encountertype IS NULL AND @batchname IS NULL AND @Status IS NOT NULL  and @Location is null
--BEGIN 
--if OBJECT_ID('tempdb..##ResultCodingProd')is not null
 --drop table ##ResultCodingProd
select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],CODED_BY AS [Coder Name],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

--into ##ResultCodingProd 
FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
 where it.PROJECT_ID=18
--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 

--select * from  ##Result11 
--DECLARE @Table1 TABLE(ID INT, Value INT)
--INSERT INTO @Table1 VALUES (1,100),(1,200),(1,300),(1,400)

--select * from tbl_USER_ACCESS where PROJECT_ID=18

--SELECT  ID
--       ,STUFF((SELECT ', ' + CAST(Value AS VARCHAR(10)) [text()]
--         FROM @Table1 
--         WHERE ID = t.ID
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') List_Output
--FROM @Table1 t
--GROUP BY ID


--select   trans_id ,[Tracking Code], [ECI],[UMI],COUNT([Dx Code]) as [ICD's coded per chart]
--,[HIC],[Member First Name],
--[Member Last Name],[Member DOB],[Member Gender],[Claim Type],[Beginning Dos],[Ending Dos],[Performing Provider NPI],[Performing Provider BSID],
--[Billing Provider NPI], [Billing Provider BSID]
--,STUFF((SELECT ', ' + CAST([Dx Type] AS VARCHAR(10)) [text()]
--         FROM ##ResultCodingProd
--          WHERE trans_id = t.trans_id
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') [Dx Type]
--        ,STUFF((SELECT ', ' + CAST([Dx Code] AS VARCHAR(10)) [text()]
--         FROM ##ResultCodingProd
--          WHERE trans_id = t.trans_id
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') [Dx Code]
        --,[Place Of Service],[Delete Indicator],[Procedure Type],[Page],[EO CODE1],
--[EO COMMENT1],[EO_CODE2],[EO CODE3],[EO COMMENT2],[EO COMMENT3],[EO CODE4],[EO COMMENT4],[EO CODE5],[EO COMMENT5],[Coder Name],
--[Coded Date],[QC By],[QC Date],[BATCH NAME]
--FROM ##ResultCodingProd t
--GROUP BY trans_id,[Tracking Code],[ECI],[UMI],[Dx Code]
--,[HIC],[Member First Name],
--[Member Last Name],[Member DOB],[Member Gender],[Claim Type],[Beginning Dos],[Ending Dos],[Performing Provider NPI],[Performing Provider BSID],
--[Billing Provider NPI], [Billing Provider BSID],[Place Of Service],[Delete Indicator],[Procedure Type],[Page],[EO CODE1],
--[EO COMMENT1],[EO_CODE2],[EO CODE3],[EO COMMENT2],[EO COMMENT3],[EO CODE4],[EO COMMENT4],[EO CODE5],[EO COMMENT5],[Coder Name],
--[Coded Date],[QC By],[QC Date],[BATCH NAME]
         
 
--delete from ##Result12
end
GO
/****** Object:  StoredProcedure [dbo].[usp_static_Coding_Prod_HighMark1]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_static_Coding_Prod_HighMark1]  
(   @Userntlg varchar (100), 
    @project_id int,
    @task_id int,
    @fromdate datetime=NULL,
    @todate datetime=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
   -- @facility VARCHAR (200)=NULL , 
    @Status VARCHAR (200)=NULL
    ,@Location VARCHAR(200)=NULL,
	@PracticeId int 

	)

as begin

-- DECLARE @USERACCESS VARCHAR(200)
--   SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id)
   
--  IF @USERACCESS='CODER' and @task_id=115 AND @fromdate IS NULL AND @todate IS NULL AND @encountertype IS NULL AND @batchname IS NULL AND @Status IS NOT NULL  and @Location is null
--BEGIN 
--if OBJECT_ID('tempdb..##ResultCodingProd')is not null
 --drop table ##ResultCodingProd
 DECLARE @USERACCESS VARCHAR(200)
 SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id) 
   
  --user select no parameters  
 -- print @USERACCESS
  
 IF @USERACCESS in ('CODER') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg
--and T.CODED_BY=@Userntlg  AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 

--print @USERACCESS
end
 else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId
--and T.CODED_BY=@Userntlg  AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end



--user select fromdate todate
else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND T.CODED_BY=@Userntlg  AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) 

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
--print @USERACCESS
end

else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId   AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) 

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

--user select fromdate todate status



else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS not   NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  T.CODED_BY=@Userntlg AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and CODING_STATUS=@Status

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end





else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS not   NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId   AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and CODING_STATUS=@Status

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end



--user select fromdate todate batchname

else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  T.CODED_BY=@Userntlg AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end



else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

--user select fromdate todate batchname status

else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname and CODING_STATUS=@Status

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname and CODING_STATUS=@Status

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

--user select fromdate todate  status location
else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate)   and CODING_STATUS=@Status and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end




else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS   NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate)   and CODING_STATUS=@Status and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

--user select fromdate todate batchname status location

else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname   and CODING_STATUS=@Status and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end


else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS  NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname   and CODING_STATUS=@Status and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end

--user select fromdate todate batchname status encountertype location

else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS not NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg  AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname   and CODING_STATUS=@Status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end




else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not NULL AND @encountertype IS not NULL AND @batchname IS not  NULL AND @Status IS not NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.RECEIVED_DATE,it.batch_name,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname   and CODING_STATUS=@Status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME,it.batch_name
order by td.trans_id 
end


--user select fromdate todate location


else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS   NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg and (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate)  and it.LOCATION=@Location 

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end

else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS   NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate)  and it.LOCATION=@Location 

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end

--fromdate todate batchname location 
else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not  NULL AND @encountertype IS  NULL AND @batchname IS not NULL AND @Status IS   NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg and (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname and it.LOCATION=@Location 

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end


else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS not NULL AND @todate IS not  NULL AND @encountertype IS  NULL AND @batchname IS not NULL AND @Status IS   NULL and @Location is not null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) and it.batch_name=@batchname and it.LOCATION=@Location 

group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end

--only status
else IF @USERACCESS in('CODER') and @task_id=115 AND @fromdate IS  NULL AND @todate IS   NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS not  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and T.CODED_BY=@Userntlg and  CODING_STATUS=@Status 

group by  td.trans_id,it.BATCH_NAME,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end

else IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS   NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS not  NULL and @Location is  null
BEGIN

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  CODING_STATUS=@Status 

group by  td.trans_id,it.BATCH_NAME,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end


else 

begin 

select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,it.RECEIVED_DATE,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18 and it.PRACTICE_ID=@PracticeId and  T.CODED_BY=@Userntlg  AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location
--and T.CODED_BY=@Userntlg  AND (convert(varchar(12),it.RECEIVED_DATE,101) between @fromdate and @todate) AND it.BATCH_NAME=@batchname and t.CODING_STATUS=@status and it.ENCOUNTER_TYPE=@encountertype and it.LOCATION=@Location

group by  td.trans_id,it.RECEIVED_DATE,it.BATCH_NAME,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 
end
end 
 
--exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate =NULL,
--    @todate=NULL,           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--  --  @facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL, 
--	@PracticeId=2
-- --select * from tbl_IMPORT_TABLE where PROJECT_ID=18 and account_no='1zJZfiRRAeOEBSqiSyWs4w=='

-- exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='SaranyaK3', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/03/16',
--    @todate='2017/03/16',           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status='coded',
--	@PracticeId=1
--  --  ,@Location=NULL 


-- exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location='Bangalore' 



-- exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL 


-- exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location='Bangalore' 


-- exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/19',
--    @todate='2017/01/19',           
--    @batchname='aCHNShi59zp2cOzkSzpS7MjblUm6MPjZ2Zg8dqw4wVE=' ,  
--   @encountertype='P',
--    --@facility=NULL, 
--    @Status='Coded'
--    ,@Location='Bangalore' 
 
GO
/****** Object:  StoredProcedure [dbo].[usp_static_Coding_Prod_HighMark12]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_static_Coding_Prod_HighMark12]  
(   @Userntlg varchar (100), 
    @project_id int,
    @task_id int,
   @fromdate DATETIME=NULL,
   @todate DATETIME=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
    @Status VARCHAR (200)=NULL
    ,@Location VARCHAR(200)=NULL 
	)

as begin
declare @query nvarchar(max)
 DECLARE @USERACCESS VARCHAR(200)
 SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id) 
   
  --user select all parameters  

  DECLARE @batchstring VARCHAR(100)
  --declare @fromdtstring varchar(100)
  declare @todtstring varchar(100)
DECLARE @encountertypestring VARCHAR(100)
--DECLARE @practicenamestring VARCHAR(100)
--DECLARE @codernamestring VARCHAR(100)
DECLARE @codingstatusstring VARCHAR(100)
DECLARE @Locationstring VARCHAR(100)

declare @st1 varchar(10)
set @st1='''CODER-TL+'''+''','''+'CODER-QC-TL'+''','''+'''WFM'
IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM')

begin
if (@batchname is not null)
begin
     SET @batchstring ='and it.BATCH_NAME = @batchname';
	 print @batchstring
end
else
begin
SET @batchstring =' '
print @batchstring
end

--if (@fromdate is not null)
--	begin
-- SET @fromdtstring ='and t.coded_date = @fromdate';
--end
--else
--begin
--SET @fromdate =''
--end

if (@fromdate is not null and  @todate is not null)
	begin
 SET @todtstring ='AND (convert(varchar(12),t.CODED_DATE,101) between @fromdate and @todate)';
end
else
begin
SET @todtstring =''
end
	if (@encountertype is not null)
	begin
 SET @encountertypestring ='and it.ENCOUNTER_TYPE=@encountertype';
 print @encountertypestring
end
else
begin
SET  @encountertypestring=' '
print @encountertype
end
	if (@Status is not null)
	begin
 SET @codingstatusstring ='t.CODING_STATUS=@status';
end
else
begin
SET @codingstatusstring =' '
end
 if (@Location is not null)
	begin
 SET @Locationstring ='it.Location=@Location';
end
else
begin
SET @Locationstring =' '
end

end

 --IF @USERACCESS in('CODER-TL','CODER-QC-TL','WFM') and @task_id=115 AND @fromdate IS  NULL AND @todate IS  NULL AND @encountertype IS  NULL AND @batchname IS  NULL AND @Status IS  NULL and @Location is  null
BEGIN

set @query='select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,it.BATCH_NAME,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders''Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
where it.PROJECT_ID=18' 
+@batchstring+''+@todtstring+''+@encountertypestring+''+@codingstatusstring+''+@Locationstring+'


group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,it.BATCH_NAME,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id' 

print @query
end

declare @PARAMlIST nvarchar(max)
--set @PARAMlIST='@Userntlg  varchar(50),@project_id  varchar(50),@task_id varchar(20),@todate DATETIME,@batchname varchar(50),@encountertype varchar(50),@Status varchar(100),@Location varchar(50)'
set @PARAMlIST='@Userntlg  varchar(50),@project_id  varchar(50),@task_id varchar(20),@batchname varchar(50),@encountertype varchar(50),@Status varchar(100),@Location varchar(50)'
   -- execute sp_executesql @query,@PARAMlIST,@Userntlg,@project_id,@task_id,@fromdate,@batchname,@todate,@encountertype,@Status,@Location
	execute sp_executesql @query,@PARAMlIST,@Userntlg,@project_id,@task_id,@fromdate,@batchname,@todate,@encountertype,@Status,@Location

END

--exec [dbo].[usp_static_Coding_Prod_HighMark12] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate =NULL,
--    @todate=NULL,           
--    @batchname='aCHNShi59zp2cOzkSzpS7BBkHmvShev3Bm3hLLqEFXw=' ,  
--   @encountertype=NULL,
--   -- @facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL 


--	--and (Convert(Date,CODED_DATE,101) between convert(varchar(12),cast('''+@fromdate+'''as date),101) and convert(varchar(12),cast('''+@todate+'''as date),101))'
-- exec [dbo].[usp_static_Coding_Prod_HighMark12] 
--@Userntlg='Rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate ='2017/01/23',
--    @todate='2017/01/25',           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL 
GO
/****** Object:  StoredProcedure [dbo].[usp_static_Coding_Prod_HighMark2]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_static_Coding_Prod_HighMark2]   
(   @Userntlg varchar (100), 
    @project_id int,
    @task_id int,
    @fromdate datetime=NULL,
    @todate datetime=NULL,           
    @batchname VARCHAR (200)=NULL ,  
    @encountertype VARCHAR(200)=NULL,
   -- @facility VARCHAR (200)=NULL , 
    @Status VARCHAR (200)=NULL
    ,@Location VARCHAR(200)=NULL 
	)

as begin

-- DECLARE @USERACCESS VARCHAR(200)
--   SET @USERACCESS = (SELECT ACCESS_TYPE FROM tbl_USER_ACCESS WHERE USER_NTLG =@Userntlg and PROJECT_ID=@project_id)
   
--  IF @USERACCESS='CODER' and @task_id=115 AND @fromdate IS NULL AND @todate IS NULL AND @encountertype IS NULL AND @batchname IS NULL AND @Status IS NOT NULL  and @Location is null
--BEGIN 
--if OBJECT_ID('tempdb..##ResultCodingProd')is not null
 --drop table ##ResultCodingProd
select ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO,td.trans_id,
ACCOUNT_NO AS [Tracking Code],ECI AS [ECI],UMI AS [UMI],HIC AS [HIC],FIRST_NAME AS [Member First Name],LAST_NAME AS [Member Last Name],
MEMBER_DOB AS [Member DOB],Member_Gender AS [Member Gender],ENCOUNTER_TYPE AS [Claim Type],Beginning_DOS AS [Beginning Dos],Ending_DOS AS [Ending Dos],
Performing_Provider_NPI AS [Performing Provider NPI],Performing_Provider_BSID AS [Performing Provider BSID],Billing_Provider_NPI AS [Billing Provider NPI],
Billing_Provider_BSID AS [Billing Provider BSID],TD.ICD_CODE AS [Dx Type],ICD AS [Dx Code],Place_Of_Service AS [Place Of Service],
Delete_Indicator AS [Delete Indicator],CPT AS [Procedure Code],Procedure_Type AS [Procedure Type],td.PAGE_NO AS [Page],EO_CODE1 AS [EO CODE1],
EO_COMMENT1 AS [EO COMMENT1],EO_CODE2 AS [EO_CODE2],EO_CODE3 AS [EO CODE3],EO_COMMENT2 AS [EO COMMENT2],EO_COMMENT3 AS [EO COMMENT3],
EO_CODE4 AS [EO CODE4],EO_COMMENT4 AS [EO COMMENT4],EO_CODE5 AS [EO CODE5],EO_COMMENT5 AS [EO COMMENT5],CODED_BY AS [Coder Name],
CODED_DATE AS [Coded Date],t.QC_BY AS [QC By],t.QC_DATE AS[QC Date]
,ua.EMP_ID as [Coders'Emp#],t.CODED_BY as [Coder Name],ua.TL_NAME

--into ##ResultCodingProd 
FROM tbl_IMPORT_TABLE it
inner join dbo.tbl_TRANSACTION t on IT.BATCH_ID=t.BATCH_ID
inner JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
inner join dbo.tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID
 where it.PROJECT_ID=18
--left outer JOIN tbl_USER_ACCESS ua  on ua.USER_NTLG=t.CODED_BY
group by  td.trans_id,
ACCOUNT_NO ,ECI ,UMI ,HIC ,FIRST_NAME ,LAST_NAME ,
MEMBER_DOB ,Member_Gender ,ENCOUNTER_TYPE ,Beginning_DOS ,Ending_DOS ,
Performing_Provider_NPI ,Performing_Provider_BSID ,Billing_Provider_NPI ,
Billing_Provider_BSID ,TD.ICD_CODE ,ICD ,Place_Of_Service ,
Delete_Indicator ,CPT ,Procedure_Type ,td.PAGE_NO ,EO_CODE1 ,
EO_COMMENT1 ,EO_CODE2 ,EO_CODE3 ,EO_COMMENT2 ,EO_COMMENT3 ,
EO_CODE4 ,EO_COMMENT4 ,EO_CODE5 ,EO_COMMENT5 ,CODED_BY ,
CODED_DATE ,t.QC_BY ,t.QC_DATE 
,ua.EMP_ID ,t.CODED_BY ,ua.TL_NAME
order by td.trans_id 

--select * from  ##Result11 
--DECLARE @Table1 TABLE(ID INT, Value INT)
--INSERT INTO @Table1 VALUES (1,100),(1,200),(1,300),(1,400)

--select * from tbl_USER_ACCESS where PROJECT_ID=18

--SELECT  ID
--       ,STUFF((SELECT ', ' + CAST(Value AS VARCHAR(10)) [text()]
--         FROM @Table1 
--         WHERE ID = t.ID
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') List_Output
--FROM @Table1 t
--GROUP BY ID


--select   trans_id ,[Tracking Code], [ECI],[UMI],COUNT([Dx Code]) as [ICD's coded per chart]
--,[HIC],[Member First Name],
--[Member Last Name],[Member DOB],[Member Gender],[Claim Type],[Beginning Dos],[Ending Dos],[Performing Provider NPI],[Performing Provider BSID],
--[Billing Provider NPI], [Billing Provider BSID]
--,STUFF((SELECT ', ' + CAST([Dx Type] AS VARCHAR(10)) [text()]
--         FROM ##ResultCodingProd
--          WHERE trans_id = t.trans_id
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') [Dx Type]
--        ,STUFF((SELECT ', ' + CAST([Dx Code] AS VARCHAR(10)) [text()]
--         FROM ##ResultCodingProd
--          WHERE trans_id = t.trans_id
--         FOR XML PATH(''), TYPE)
--        .value('.','NVARCHAR(MAX)'),1,2,' ') [Dx Code]
        --,[Place Of Service],[Delete Indicator],[Procedure Type],[Page],[EO CODE1],
--[EO COMMENT1],[EO_CODE2],[EO CODE3],[EO COMMENT2],[EO COMMENT3],[EO CODE4],[EO COMMENT4],[EO CODE5],[EO COMMENT5],[Coder Name],
--[Coded Date],[QC By],[QC Date],[BATCH NAME]
--FROM ##ResultCodingProd t
--GROUP BY trans_id,[Tracking Code],[ECI],[UMI],[Dx Code]
--,[HIC],[Member First Name],
--[Member Last Name],[Member DOB],[Member Gender],[Claim Type],[Beginning Dos],[Ending Dos],[Performing Provider NPI],[Performing Provider BSID],
--[Billing Provider NPI], [Billing Provider BSID],[Place Of Service],[Delete Indicator],[Procedure Type],[Page],[EO CODE1],
--[EO COMMENT1],[EO_CODE2],[EO CODE3],[EO COMMENT2],[EO COMMENT3],[EO CODE4],[EO COMMENT4],[EO CODE5],[EO COMMENT5],[Coder Name],
--[Coded Date],[QC By],[QC Date],[BATCH NAME]
         
 
--delete from ##Result12
end


--exec [dbo].[usp_static_Coding_Prod_HighMark1] 
--@Userntlg='rasmitas', 
--    @project_id=18,
--    @task_id=115,
--    @fromdate =NULL,
--    @todate=NULL,           
--    @batchname=NULL ,  
--   @encountertype=NULL,
--    --@facility=NULL, 
--    @Status=NULL
--    ,@Location=NULL 
 
GO
/****** Object:  StoredProcedure [OMH\RubeshS].[UPS_QC_TRANSACTION_AUDITS_Final]    Script Date: 11/6/2017 10:17:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [OMH\RubeshS].[UPS_QC_TRANSACTION_AUDITS_Final]
(
@QC_AllotedTo  varchar(100)=null,        
 @ProjectId int,       
 @AuditType varchar(20)  
)   
as    
begin    
    SET FMTONLY OFF   
select I.batch_id,I.eci,t.TRANS_ID,td.ICD,td.ICD_CODE,I.PROJECT_ID into #BaseTemp from tbl_IMPORT_TABLE I     
inner join tbl_TRANSACTION T on i.BATCH_ID=t.BATCH_ID    
inner join tbl_TRANSACTION_DETAILS TD on t.TRANS_ID=td.TRANS_ID     
where I.PROJECT_ID=@ProjectId and I.QC_ALLOTTED_BY=@QC_AllotedTo and I.BATCH_STATUS='QC Allotted'  AND (T.IS_SKIPPED = 0 OR T.IS_SKIPPED IS NULL)        
--where I.PROJECT_ID=18 and I.BATCH_STATUS='QC Allotted' and I.QC_ALLOTTED_BY='vijaykumm1'   


select I.batch_id,I.eci,I.TRANS_ID,I.PROJECT_ID,I.ICD,I.ICD_CODE,
--1st Condition
case isnull((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD),'NULL') when 'NULL' 
then case when i.ICD_CODE='9' 
then case  ISNULL((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD)),'Null') when 'Null' then  (select top 1 SIC8.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD)   else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_10 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_9=I.ICD))  end 
else case  ISNULL((select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)),'Null') when 'Null' then (select top 1 SIC8.ICD_CODE from TBL_SECOND_ICD9_ICD10_MAPPING_MASTER SIC8 where SIC8.ICD_CODE=I.ICD)   else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER where ECI=I.Eci and DX_CODE in (select ICD_9 from TBL_ICD9_ICD10_MAPPING_MASTER where ICD_10=I.ICD)) end  end 
else (select top 1  DX_CODE from tbl_IMPORT_HCC_DXCODE_MASTER HCC where  HCC.ECI=I.Eci and DX_TYPE=I.ICD_CODE and DX_CODE=I.ICD) end as Outputj
 into #BaseTemp2
 from     #BaseTemp I


   
if(@AuditType='Regular')    
--if('Regular'='Regular')    
begin     
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,    
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,            
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,    
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,    
        I.BATCH_STATUS,    
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,    
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,      
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE           
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,    
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE          
        from tbl_IMPORT_TABLE I     
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID     
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID        
  where I.BATCH_ID in  (select distinct batch_id from #basetemp2 where batch_id not in(select batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null)))
  -- (select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is not null))     
  --select distinct BATCH_ID from #BaseTemp2 where BATCH_ID not in (select distinct batch_id from #BaseTemp2 where Output is null)    
  end    
else     
begin    
 select distinct I.BATCH_ID,(select top 1 IS_ACKNOWLEDGE from tbl_TRANSACTION_DETAILS where trans_iD=t.TRANS_ID order by is_acknowledge desc) as is_acknowledge,    
        i.ECI,(select top 1 IS_SKIPPED from tbl_TRANSACTION where TRANS_ID=td.TRANS_ID)as is_skipped,            
        (select top 1  ICD from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD,    
        (select top 1 TRANS_ID from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as TRANS_ID,    
        I.BATCH_STATUS,    
        (select top 1  ICD_CODE from tbl_TRANSACTION_DETAILS where TRANS_ID=Td.TRANS_ID)as ICD_CODE,    
        I.ACCOUNT_NO,I.MEMBER_GENDER,I.MEMBER_DOB,      
       (select top 1  CODED_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as CODED_DATE           
        ,i.First_Name,i.Last_Name,i.ENCOUNTER_TYPE,   
        (select top 1  RELEASE_REAUDIT_STATUS from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as RELEASE_REAUDIT_STATUS,    
        (select top 1  ERROR_SENT_DATE from tbl_TRANSACTION where TRANS_ID=T.TRANS_ID)as ERROR_SENT_DATE        
          from tbl_IMPORT_TABLE I     
   inner join tbl_TRANSACTION t on t.BATCH_ID=i.BATCH_ID     
    inner join tbl_TRANSACTION_DETAILS td on td.TRANS_ID=t.TRANS_ID     
    where I.BATCH_ID in (select distinct batch_id from #basetemp2 where outputj is null and batch_id in(select batch_id from #basetemp2 where outputj is not null))
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is not null))      
    --(select distinct BATCH_ID from #BaseTemp2 where BATCH_ID in (select distinct batch_id from #BaseTemp2 where Output is null))    
end    
    
drop table #BaseTemp    
drop table #BaseTemp2    

End
GO
USE [master]
GO
ALTER DATABASE [CBIHighmark_ACA] SET  READ_WRITE 
GO
