USE [master]
GO
/****** Object:  Database [TimeTracker_ATS]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE DATABASE [TimeTracker_ATS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimeTracker_ATS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TimeTracker_ATS.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TimeTracker_ATS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TimeTracker_ATS_log.ldf' , SIZE = 13632KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TimeTracker_ATS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimeTracker_ATS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimeTracker_ATS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimeTracker_ATS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimeTracker_ATS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TimeTracker_ATS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimeTracker_ATS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET RECOVERY FULL 
GO
ALTER DATABASE [TimeTracker_ATS] SET  MULTI_USER 
GO
ALTER DATABASE [TimeTracker_ATS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimeTracker_ATS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimeTracker_ATS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimeTracker_ATS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TimeTracker_ATS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TimeTracker_ATS]
GO
/****** Object:  User [Tracker]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [Tracker] FOR LOGIN [Tracker] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\PrasanthR1]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [OMH\PrasanthR1] FOR LOGIN [OMH\PrasanthR1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\MaryM]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [OMH\MaryM] FOR LOGIN [OMH\MaryM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\JosephR]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [OMH\JosephR] FOR LOGIN [OMH\JosephR] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [OMH\Domain Users]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [OMH\Domain Users] FOR LOGIN [OMH\Domain Users]
GO
/****** Object:  User [OMH\DebshreeC]    Script Date: 11/6/2017 10:24:32 AM ******/
CREATE USER [OMH\DebshreeC] FOR LOGIN [OMH\DebshreeC] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Tracker]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\PrasanthR1]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\MaryM]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\JosephR]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\Domain Users]
GO
ALTER ROLE [db_owner] ADD MEMBER [OMH\DebshreeC]
GO
/****** Object:  UserDefinedFunction [dbo].[FNC_DECRIPTION_PW]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE FUNCTION [dbo].[FNC_DECRIPTION_PW](@encryp varchar(2000))
RETURNS nvarchar(2000)
AS
BEGIN
DECLARE @decript varbinary(2000)
SET @decript = DECRYPTBYPASSPHRASE('omega_Automation',@encryp)
RETURN (@decript)
END

GO
/****** Object:  UserDefinedFunction [dbo].[FNC_ENCRIPTION_PW]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FNC_ENCRIPTION_PW](@str nvarchar(2000))
RETURNS varbinary(2000)
AS
BEGIN
DECLARE @encript varbinary(2000)
SET @encript = EncryptBYPASSPHRASE('omega_Automation',@str)
RETURN (@encript)
END

GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_ACCESS_TYPE_TM]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ACCESS_TYPE_TM](
	[ACCESS_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACCESS_TYPE] [varchar](50) NULL,
	[PROJECT_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PROJECT_MASTER_TM]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PROJECT_MASTER_TM](
	[PROJECT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_NAME] [varchar](100) NULL,
	[IS_DELETED] [varchar](1) NULL,
 CONSTRAINT [PK_tbl_PROJECT_MASTER_TM] PRIMARY KEY CLUSTERED 
(
	[PROJECT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Rooter]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Rooter](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[R_Name] [nvarchar](500) NULL,
	[Active] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_SOFTWARE_MASTER]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_SOFTWARE_MASTER](
	[SOFTWARE_ID] [int] IDENTITY(1,1) NOT NULL,
	[SOFTWARE] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NOT NULL CONSTRAINT [DF_tbl_SOFTWARE_MASTER_IS_DELETED]  DEFAULT ('N'),
	[PROJECT_ID] [int] NULL,
 CONSTRAINT [PK_tbl_SOFTWARE_MASTER] PRIMARY KEY CLUSTERED 
(
	[SOFTWARE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_SPECIALITY]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_SPECIALITY](
	[SP_ID] [int] IDENTITY(1,1) NOT NULL,
	[SPECIALITY] [varchar](100) NULL,
	[IS_DELETED] [varchar](10) NULL CONSTRAINT [DF_tbl_SPECIALITY_IS_DELETED]  DEFAULT ('N'),
	[PROJECT_ID] [int] NULL,
 CONSTRAINT [PK_tbl_SPECIALITY] PRIMARY KEY CLUSTERED 
(
	[SP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_SUB_PROJECT]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_SUB_PROJECT](
	[SUB_PROJ_ID] [int] IDENTITY(1,1) NOT NULL,
	[PROJECT_ID] [int] NULL,
	[SUB_PROJ_NAME] [varchar](50) NULL,
	[IS_DELETED] [char](1) NULL CONSTRAINT [DF_TBL_SUB_PROJECT_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_SUB_PROJECT] PRIMARY KEY CLUSTERED 
(
	[SUB_PROJ_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TIME_TRACKER]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TIME_TRACKER](
	[TIME_TRACK_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_ID] [int] NULL,
	[PROJECT_NAME] [varchar](50) NULL,
	[VERTICAL_ID] [varchar](50) NULL,
	[SPECIALITY_ID] [varchar](50) NULL,
	[LOCATION_NAME] [varchar](50) NULL,
	[SOFTWARE] [varchar](50) NULL,
	[ACCOUNT_NO] [varbinary](2500) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[UPDATE_DATE] [date] NULL,
	[NTLG] [varchar](50) NULL,
	[STATUS] [varchar](50) NULL,
	[PAUSED_AT_TIME] [datetime] NULL,
	[RESUMED_AT_TIME] [datetime] NULL,
	[SUB_PROJ_NAME] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_TIME_TRACKER] PRIMARY KEY CLUSTERED 
(
	[TIME_TRACK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_TRANSACTION_MC_DES]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_TRANSACTION_MC_DES](
	[TIMETRACKERID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_ID] [int] NULL,
	[PROJECT_NAME] [varchar](50) NULL,
	[VERTICAL_ID] [varchar](50) NULL,
	[SPECIALITY_ID] [varchar](50) NULL,
	[LOCATION_NAME] [varchar](50) NULL,
	[SOFTWARE] [varchar](50) NULL,
	[ACCOUNT_NO] [varbinary](2500) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[UPDATE_DATE] [date] NULL,
	[NTLG] [varchar](50) NULL,
	[STATUS] [varchar](50) NULL,
	[PAUSED_AT_TIME] [datetime] NULL,
	[RESUMED_AT_TIME] [datetime] NULL,
	[SUB_PROJ_NAME] [varchar](50) NULL,
	[Selection] [nvarchar](999) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_USER_ACCESS_TM]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_USER_ACCESS_TM](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_ID] [int] NULL,
	[PROJECT_ID] [int] NULL,
	[USER_NAME] [varchar](50) NULL,
	[USER_NTLG] [varchar](50) NULL,
	[ACCESS_ID] [int] NULL,
	[TL_NTLG] [varchar](50) NULL,
	[TL_NAME] [varchar](500) NULL,
	[OM_NTLG] [varchar](50) NULL,
	[OM_NAME] [varchar](500) NULL,
	[SM_NTLG] [varchar](50) NULL,
	[SM_NAME] [varchar](500) NULL,
	[IS_DELETED] [varchar](1) NULL,
	[UPDATED_DATE] [datetime] NULL,
	[UPDATED_BY] [varchar](50) NULL,
	[LOCATION_ID] [int] NULL,
	[Rooter] [int] NULL,
 CONSTRAINT [PK_tbl_USER_ACCESS_TM] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_VERTICAL_MASTER]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_VERTICAL_MASTER](
	[VERTICAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[VERTICAL_NAME] [varchar](100) NULL,
	[DELETED_FLAG] [char](10) NULL CONSTRAINT [DF_TBL_VERTICAL_MASTER_DELETED_FLAG]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_VERTICAL_MASTER] PRIMARY KEY CLUSTERED 
(
	[VERTICAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_LOCATION]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_LOCATION](
	[LOCATION_ID] [int] NOT NULL,
	[LOCATION] [varchar](100) NULL,
	[IS_DELETED] [char](10) NULL CONSTRAINT [DF_TBL_LOCATION_TM_IS_DELETED]  DEFAULT ('N'),
 CONSTRAINT [PK_TBL_LOCATION_TM] PRIMARY KEY CLUSTERED 
(
	[LOCATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USP_Facility_Peri]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USP_Facility_Peri](
	[FaID] [int] IDENTITY(1,1) NOT NULL,
	[FaName] [nvarchar](250) NULL,
	[Active] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USP_Transaction_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USP_Transaction_PERI](
	[TIME_TRACK_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_ID] [int] NULL,
	[PROJECT_NAME] [varchar](50) NULL,
	[VERTICAL_ID] [varchar](50) NULL,
	[SPECIALITY_ID] [varchar](50) NULL,
	[LOCATION_NAME] [varchar](50) NULL,
	[NTLG] [varchar](50) NULL,
	[STATUS] [varchar](50) NULL,
	[FACILITY] [nvarchar](500) NULL,
	[PAUSED_AT_TIME] [datetime] NULL,
	[RESUMED_AT_TIME] [datetime] NULL,
	[SUB_PROJ_NAME] [varchar](50) NULL,
	[SOFTWARE] [varchar](50) NULL,
	[ACCOUNT_NO] [varbinary](2500) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[UPDATE_DATE] [date] NULL,
	[DOS] [date] NULL,
	[ED_LEVEL] [nvarchar](50) NULL,
	[Comments] [nvarchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
ALTER TABLE [dbo].[TBL_SUB_PROJECT]  WITH CHECK ADD  CONSTRAINT [FK_TBL_SUB_PROJECT_tbl_PROJECT_MASTER_TM] FOREIGN KEY([PROJECT_ID])
REFERENCES [dbo].[tbl_PROJECT_MASTER_TM] ([PROJECT_ID])
GO
ALTER TABLE [dbo].[TBL_SUB_PROJECT] CHECK CONSTRAINT [FK_TBL_SUB_PROJECT_tbl_PROJECT_MASTER_TM]
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorsXml]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[ELMAH_GetErrorsXml]
(    @Application NVARCHAR(60),    @PageIndex INT = 0,    @PageSize INT = 15,    @TotalCount INT OUTPUT)
AS     SET NOCOUNT ON
    DECLARE @FirstTimeUTC DATETIME
    DECLARE @FirstSequence INT
    DECLARE @StartRow INT
    DECLARE @StartRowIndex INT
    SELECT @TotalCount = COUNT(1) FROM [ELMAH_Error]    WHERE [Application] = @Application

    -- Get the ID of the first error for the requested page

    SET @StartRowIndex = @PageIndex * @PageSize + 1

    IF @StartRowIndex <= @TotalCount
    BEGIN
        SET ROWCOUNT @StartRowIndex
        SELECT @FirstTimeUTC = [TimeUtc], @FirstSequence = [Sequence] FROM[ELMAH_Error] WHERE [Application] = @Application ORDER BY [TimeUtc] DESC, [Sequence] DESC
    END
    ELSE
    BEGIN
        SET @PageSize = 0
    END

    -- Now set the row count to the requested page size and get
    -- all records below it for the pertaining application.

    SET ROWCOUNT @PageSize

    SELECT errorId = [ErrorId],application = [Application],host= [Host],type= [Type],source= [Source],message= [Message],[user]= [User],statusCode  = [StatusCode],time = CONVERT(VARCHAR(50), [TimeUtc], 126) + 'Z'
    FROM [ELMAH_Error] error    WHERE [Application] = @Application    AND [TimeUtc] <= @FirstTimeUTC    AND [Sequence] <= @FirstSequence    ORDER BY [TimeUtc] DESC, [Sequence] DESC
    FOR XML AUTO
	
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_GetErrorXml]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ELMAH_GetErrorXml]
(    @Application NVARCHAR(60),    @ErrorId UNIQUEIDENTIFIER)
AS
    SET NOCOUNT ON
    SELECT [AllXml] FROM [ELMAH_Error] WHERE [ErrorId] = @ErrorId    AND [Application] = @Application
GO
/****** Object:  StoredProcedure [dbo].[ELMAH_LogError]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ELMAH_LogError]
(
    @ErrorId UNIQUEIDENTIFIER,    @Application NVARCHAR(60),    @Host NVARCHAR(30),    @Type NVARCHAR(100),
    @Source NVARCHAR(60),    @Message NVARCHAR(500),    @User NVARCHAR(50),    @AllXml NTEXT,
    @StatusCode INT,    @TimeUtc DATETIME)
AS
    SET NOCOUNT ON
    INSERT    INTO [ELMAH_Error] ([ErrorId], [Application], [Host], [Type], [Source],[Message],[User],[AllXml],[StatusCode],[TimeUtc] )
    VALUES (@ErrorId,@Application,@Host,@Type,@Source,@Message,@User,@AllXml,@StatusCode,@TimeUtc )

GO
/****** Object:  StoredProcedure [dbo].[SP_Transaction_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SP_Transaction_PERI]
@empid int=null,
@pname varchar (100)=null,
@vertical Varchar (100)=null,
@speciality Varchar (100)=null,
@location varchar(100)=null,
@software varchar(100)=null,
@accno varchar(200)=null,
@update datetime=null,
@ntlg varchar(100)=null,
@subproj varchar(50)=null,
@status varchar(50)=null,
@Action int=null,
@Fac nvarchar(250)=null,
@dos datetime=null,
@edlvl nvarchar(50)=null,
@comm nvarchar(max)=null,
@tskid int=null
As
begin
-- Insert Perimeter Transaction 
if(@Action=1)
begin
INSERT INTO [dbo].[USP_Transaction_PERI] ([EMP_ID],[PROJECT_NAME],[VERTICAL_ID],[SPECIALITY_ID] ,[LOCATION_NAME] ,[NTLG],[FACILITY],[SUB_PROJ_NAME]
           ,[SOFTWARE],[ACCOUNT_NO],[START_TIME],[UPDATE_DATE] ,[DOS] ,[ED_LEVEL] ,[Comments])
     VALUES (@empid,@pname,@vertical,@speciality,@location,@ntlg,@Fac,@subproj,@software,[dbo].FNC_ENCRIPTION_PW(@accno),convert(varchar,getdate(),113),convert(date,@update,103),
	 convert(date,@dos,103),@edlvl,@comm)
end     
-- Update Transaction Details
if(@Action=2)
begin
update [dbo].[USP_Transaction_PERI] set  END_TIME= convert(varchar,getdate(),113),STATUS=@status,ED_LEVEL=@edlvl,Comments=@comm,DOS=@dos where TIME_TRACK_ID=@tskid  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end
--Pause Transaction 
if(@Action=3)
begin
update [dbo].[USP_Transaction_PERI] set  PAUSED_AT_TIME = convert(varchar,getdate(),113) where TIME_TRACK_ID=@tskid  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end
--Resume Transaction
if(@Action=4)
begin
update [dbo].[USP_Transaction_PERI] set  RESUMED_AT_TIME = convert(varchar,getdate(),113) where TIME_TRACK_ID=@tskid  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end
--Verify Validation 
if(@Action=5)
begin
select * from(
SELECT  dbo.FNC_DECRIPTION_PW(ACCOUNT_NO) as ACCOUNT_NO1  from [dbo].[USP_Transaction_PERI]) as T where ACCOUNT_NO1=@accno
end
--bind Facility
if(@Action=6)
begin
SELECT * From USP_Facility_Peri
end
end



GO
/****** Object:  StoredProcedure [dbo].[TM_ATS_Coder_Count]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[TM_ATS_Coder_Count]
@ntlg nvarchar(100)=null
as
Begin
select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from TBL_TIME_TRACKER where  STATUS='Completed' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from TBL_TIME_TRACKER where  STATUS='Pended' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

end
GO
/****** Object:  StoredProcedure [dbo].[TM_ATS_Coder_Count_dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[TM_ATS_Coder_Count_dest]
@ntlg nvarchar(100)=null
as
Begin
select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from TBL_TRANSACTION_MC_DES where  STATUS='Completed' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from TBL_TRANSACTION_MC_DES where  STATUS='Pended' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

end
GO
/****** Object:  StoredProcedure [dbo].[TM_ATS_Coder_Count_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[TM_ATS_Coder_Count_PERI]
@ntlg nvarchar(100)=null
as
Begin
select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from USP_Transaction_PERI where  STATUS='Completed' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from USP_Transaction_PERI where  STATUS='Pended' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

select t.* from(
select EMP_ID, count(EMP_ID) as cntcomp from USP_Transaction_PERI where  STATUS='Discarded' and UPDATE_DATE=Convert(varchar,GETDATE(),113) group by EMP_ID)
as t inner join tbl_USER_ACCESS_TM b on t.EMP_ID=b.EMP_ID where b.USER_NTLG=@ntlg

end
GO
/****** Object:  StoredProcedure [dbo].[TM_validate]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[TM_validate]
@acc_no nvarchar(100)
as
begin
select * from(
SELECT  dbo.FNC_DECRIPTION_PW(ACCOUNT_NO) as ACCOUNT_NO1  from TBL_TIME_TRACKER
)  as T where ACCOUNT_NO1=@acc_no
end

GO
/****** Object:  StoredProcedure [dbo].[TM_validate_dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [dbo].[TM_validate_dest]
@acc_no nvarchar(100)
as
begin
select * from(
SELECT  dbo.FNC_DECRIPTION_PW(ACCOUNT_NO) as ACCOUNT_NO1  from TBL_TRANSACTION_MC_DES
)  as T where ACCOUNT_NO1=@acc_no
end

GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_Data_BasedOnUserNTLG]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[USP_Bind_Data_BasedOnUserNTLG]  --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@user_ntlg varchar(50)
)
as begin 
select max(TIME_TRACK_ID) AS [COUNT] from TBL_TIME_TRACKER WHERE NTLG=@user_ntlg
Select ACCESS_ID from  tbl_USER_ACCESS_TM where USER_NTLG =@user_ntlg 
--select ACCOUNT_NO from TBL_TIME_TRACKER WHERE TIME_TRACK_ID=@user_ntlg
end 

GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_Data_BasedOnUserNTLG_dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create procedure [dbo].[USP_Bind_Data_BasedOnUserNTLG_dest]  --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@user_ntlg varchar(50)
)
as begin 
select max(TIMETRACKERID) AS [COUNT] from TBL_TRANSACTION_MC_DES WHERE NTLG=@user_ntlg
Select ACCESS_ID from  tbl_USER_ACCESS_TM where USER_NTLG =@user_ntlg 
--select ACCOUNT_NO from TBL_TIME_TRACKER WHERE TIME_TRACK_ID=@user_ntlg
end 

GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_Data_BasedOnUserNTLG_Peri]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_Bind_Data_BasedOnUserNTLG_Peri] --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@user_ntlg nvarchar(50)
)
as begin 
select max(TIME_TRACK_ID) AS [COUNT] from USP_Transaction_PERI WHERE NTLG=@user_ntlg
Select ACCESS_ID from  tbl_USER_ACCESS_TM where USER_NTLG =@user_ntlg 
--select ACCOUNT_NO from TBL_TIME_TRACKER WHERE TIME_TRACK_ID=@user_ntlg
end 

GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_EmpDetails]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_Bind_EmpDetails]  --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@user_ntlg varchar(50)
)
as begin 
Select USER_NTLG,EMP_ID,LOCATION_ID,PROJECT_ID,Rooter from  tbl_USER_ACCESS_TM where USER_NTLG = @user_ntlg AND IS_DELETED='N'

end 
GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_Home_DropDown_Binding]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[USP_Bind_Home_DropDown_Binding]  --exec USP_Bind_Home_DropDown_Binding 1
(
@Proj_Id int
)
as begin 
SELECT  SUB_PROJ_NAME FROM  TBL_SUB_PROJECT  where PROJECT_ID = @Proj_Id AND IS_DELETED='N' order by SUB_PROJ_NAME
SELECT  SPECIALITY FROM  TBL_SPECIALITY where PROJECT_ID = @Proj_Id AND IS_DELETED='N' order by SPECIALITY
SELECT  SOFTWARE FROM  TBL_SOFTWARE_MASTER where PROJECT_ID = @Proj_Id  AND IS_DELETED='N' order by SOFTWARE
SELECT FaName FROM USP_Facility_Peri where Active=1
end 


GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_LocationDetails]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[USP_Bind_LocationDetails]  --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@loc_id varchar(20)
)
as begin 

SELECT  LOCATION,LOCATION_id FROM [dbo].[TM_LOCATION]  where LOCATION_id=@loc_id
end 

GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_ProjectDetails]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_Bind_ProjectDetails]  --exec USP_Bind_Data_BasedOnUserNTLG 'RasmitaS'
(
@proj_id varchar(50)
)
as begin 
SELECT PROJECT_ID, PROJECT_NAME FROM [dbo].tbl_PROJECT_MASTER_TM  where PROJECT_ID=@proj_id AND IS_DELETED='N' order by PROJECT_NAME

end 
GO
/****** Object:  StoredProcedure [dbo].[USP_Bind_TLDetails]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[USP_Bind_TLDetails]
@SMntlg nvarchar(100)=null,
@flag int=null
as
begin
Select TL_NAME from tbl_USER_ACCESS_TM where SM_NTLG=@SMntlg GROUP BY TL_NAME
end
GO
/****** Object:  StoredProcedure [dbo].[USP_HourlyReport]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_HourlyReport] -- EXEC [dbo].[USP_HourlyReport] @Fromdate='30/06/2017',  @Todate ='30/06/2017', @user ='ReenajaA', @Software = NULL, @Vertical = NULL, @Project = NULL, @Speciality = NULL,@Status=null, @subproj=null
(   @Fromdate varchar(20)=NULL,
    @Todate varchar(20)=NULL,
    @user varchar(50)=NULL,           
    @Software VARCHAR(200)=NULL,
	@Vertical VARCHAR(200)=NULL,
	@Project VARCHAR(100)= NULL,
	@Speciality VARCHAR(200)=NULL,
	@Status varchar(50)=NULL,
	@subproj varchar(50)=null,
	@access int=null,
	@untlg nvarchar(100)=null
)

AS BEGIN 

DECLARE @user1 VARCHAR(200)
DECLARE @Software1 VARCHAR(200)
DECLARE @Vertical1 varchar(200)
DECLARE @Project1 varchar(200)
DECLARE @Speciality1 VARCHAR(200)
DECLARE @Status1 varchar(50)
DECLARE @subproj1 VARCHAR(50)
DECLARE @QUERY NVARCHAR(MAX)
DECLARE @acc nvarchar(500)
DECLARE @unt nvarchar(500)

IF(@user IS NOT NULL)BEGIN SET @user1 ='AND [NTLG]='''+@user+'''' END ELSE BEGIN SET @user1 =' ' END 
IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
IF(@Project IS NOT NULL) BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
IF (@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END
IF(@access IS NOT NULL) BEGIN IF(@access !=3)BEGIN SET @acc='TL_NTLG='''+@untlg+'''' END ELSE BEGIN SET @acc='SM_NTLG='''+@untlg+'''' END END
SET @unt='OR USER_NTLG='''+@untlg+''''

if OBJECT_ID('tempdb..##HOURSBasis')is not null drop table ##HOURSBasis

SET @QUERY= 'SELECT * into ##HOURSBasis
FROM (SELECT  CAST(END_TIME AS DATE) [Date],EMP_ID AS [EMP ID], DATEPART(hour,END_TIME) [Hour], COUNT(1)  [account count],NTLG AS [NAME],LOCATION_NAME[FACILITY],
UPDATE_DATE,Project_name FROM TBL_TIME_TRACKER  where END_TIME IS NOT NULL  AND (convert(datetime,UPDATE_DATE,103) between @Fromdate and @Todate) '+@user1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+' '+@Status1+' '+@subproj1+'
GROUP BY EMP_ID,[NTLG],LOCATION_NAME,UPDATE_DATE,Project_name, CAST(END_TIME AS DATE), (DATEPART(hour,END_TIME)) ) AS HourlySalesData PIVOT(SUM([account count])  FOR [Hour] IN ( [0] ,[1] , [2], [3], [4], [5], [6], [7], [8], [9], [10],[11], [12], [13], [14], [15], [16], 
[17], [18], [19], [20], [21], [22], [23]))  AS DatePivot '

IF(@access!=4)
begIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where '+@acc+' '+@unt+'
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'
END
ELSE BEGIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'


END
print @QUERY
DECLARE @PARAMlIST NVARCHAR(max)
SET @PARAMlIST='@Fromdate varchar(20), @Todate varchar(20), @user varchar(50),@Software VARCHAR(200), @Vertical varchar(200),@Project varchar(200), @Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50),@access int,@untlg nvarchar(100)'
EXECUTE sp_executesql @QUERY,@PARAMlIST,@Fromdate,@Todate,@user,@Software, @Vertical, @Project, @Speciality,@Status,@subproj,@access,@acc
select @QUERY
 END
GO
/****** Object:  StoredProcedure [dbo].[USP_HourlyReport_Dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[USP_HourlyReport_Dest] -- EXEC [dbo].[USP_HourlyReport] @Fromdate='30/06/2017',  @Todate ='30/06/2017', @user ='ReenajaA', @Software = NULL, @Vertical = NULL, @Project = NULL, @Speciality = NULL,@Status=null, @subproj=null
(   @Fromdate varchar(20)=NULL,
    @Todate varchar(20)=NULL,
    @user varchar(50)=NULL,           
    @Software VARCHAR(200)=NULL,
	@Vertical VARCHAR(200)=NULL,
	@Project VARCHAR(100)= NULL,
	@Speciality VARCHAR(200)=NULL,
	@Status varchar(50)=NULL,
	@subproj varchar(50)=null,
	@access int=null,
	@untlg nvarchar(100)=null
)

AS BEGIN 

DECLARE @user1 VARCHAR(200)
DECLARE @Software1 VARCHAR(200)
DECLARE @Vertical1 varchar(200)
DECLARE @Project1 varchar(200)
DECLARE @Speciality1 VARCHAR(200)
DECLARE @Status1 varchar(50)
DECLARE @subproj1 VARCHAR(50)
DECLARE @QUERY NVARCHAR(MAX)
DECLARE @acc nvarchar(500)
DECLARE @unt nvarchar(500)

IF(@user IS NOT NULL)BEGIN SET @user1 ='AND [NTLG]='''+@user+'''' END ELSE BEGIN SET @user1 =' ' END 
IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
IF(@Project IS NOT NULL) BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
IF (@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END
IF(@access IS NOT NULL) BEGIN IF(@access !=3)BEGIN SET @acc='TL_NTLG='''+@untlg+'''' END ELSE BEGIN SET @acc='SM_NTLG='''+@untlg+'''' END END
SET @unt='OR USER_NTLG='''+@untlg+''''

if OBJECT_ID('tempdb..##HOURSBasis')is not null drop table ##HOURSBasis

SET @QUERY= 'SELECT * into ##HOURSBasis
FROM (SELECT  CAST(END_TIME AS DATE) [Date],EMP_ID AS [EMP ID], DATEPART(hour,END_TIME) [Hour], COUNT(1)  [account count],NTLG AS [NAME],LOCATION_NAME[FACILITY],
UPDATE_DATE,Project_name FROM TBL_TRANSACTION_MC_DES  where END_TIME IS NOT NULL  AND (convert(datetime,UPDATE_DATE,103) between @Fromdate and @Todate) '+@user1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+' '+@Status1+' '+@subproj1+'
GROUP BY EMP_ID,[NTLG],LOCATION_NAME,UPDATE_DATE,Project_name, CAST(END_TIME AS DATE), (DATEPART(hour,END_TIME)) ) AS HourlySalesData PIVOT(SUM([account count])  FOR [Hour] IN ( [0] ,[1] , [2], [3], [4], [5], [6], [7], [8], [9], [10],[11], [12], [13], [14], [15], [16], 
[17], [18], [19], [20], [21], [22], [23]))  AS DatePivot '

IF(@access!=4)
begIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where '+@acc+' '+@unt+'
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'
END
ELSE BEGIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'


END
print @QUERY
DECLARE @PARAMlIST NVARCHAR(max)
SET @PARAMlIST='@Fromdate varchar(20), @Todate varchar(20), @user varchar(50),@Software VARCHAR(200), @Vertical varchar(200),@Project varchar(200), @Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50),@access int,@untlg nvarchar(100)'
EXECUTE sp_executesql @QUERY,@PARAMlIST,@Fromdate,@Todate,@user,@Software, @Vertical, @Project, @Speciality,@Status,@subproj,@access,@acc
select @QUERY
 END
GO
/****** Object:  StoredProcedure [dbo].[USP_HourlyReport_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[USP_HourlyReport_PERI] -- EXEC [dbo].[USP_HourlyReport] @Fromdate='30/06/2017',  @Todate ='30/06/2017', @user ='ReenajaA', @Software = NULL, @Vertical = NULL, @Project = NULL, @Speciality = NULL,@Status=null, @subproj=null
(   @Fromdate varchar(20)=NULL,
    @Todate varchar(20)=NULL,
    @user varchar(50)=NULL,           
    @Software VARCHAR(200)=NULL,
	@Vertical VARCHAR(200)=NULL,
	@Project VARCHAR(100)= NULL,
	@Speciality VARCHAR(200)=NULL,
	@Status varchar(50)=NULL,
	@subproj varchar(50)=null,
	@access int=null,
	@untlg nvarchar(100)=null
)

AS BEGIN 

DECLARE @user1 VARCHAR(200)
DECLARE @Software1 VARCHAR(200)
DECLARE @Vertical1 varchar(200)
DECLARE @Project1 varchar(200)
DECLARE @Speciality1 VARCHAR(200)
DECLARE @Status1 varchar(50)
DECLARE @subproj1 VARCHAR(50)
DECLARE @QUERY NVARCHAR(MAX)
DECLARE @acc nvarchar(500)
DECLARE @unt nvarchar(500)

IF(@user IS NOT NULL)BEGIN SET @user1 ='AND [NTLG]='''+@user+'''' END ELSE BEGIN SET @user1 =' ' END 
IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
IF(@Project IS NOT NULL) BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
IF (@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END
IF(@access IS NOT NULL) BEGIN IF(@access !=3)BEGIN SET @acc='TL_NTLG='''+@untlg+'''' END ELSE BEGIN SET @acc='SM_NTLG='''+@untlg+'''' END END
SET @unt='OR USER_NTLG='''+@untlg+''''

if OBJECT_ID('tempdb..##HOURSBasis')is not null drop table ##HOURSBasis

SET @QUERY= 'SELECT * into ##HOURSBasis
FROM (SELECT  CAST(END_TIME AS DATE) [Date],EMP_ID AS [EMP ID], DATEPART(hour,END_TIME) [Hour], COUNT(1)  [account count],NTLG AS [NAME],LOCATION_NAME[FACILITY],
UPDATE_DATE,Project_name FROM USP_Transaction_PERI  where END_TIME IS NOT NULL  AND (convert(datetime,UPDATE_DATE,103) between @Fromdate and @Todate) '+@user1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+' '+@Status1+' '+@subproj1+'
GROUP BY EMP_ID,[NTLG],LOCATION_NAME,UPDATE_DATE,Project_name, CAST(END_TIME AS DATE), (DATEPART(hour,END_TIME)) ) AS HourlySalesData PIVOT(SUM([account count])  FOR [Hour] IN ( [0] ,[1] , [2], [3], [4], [5], [6], [7], [8], [9], [10],[11], [12], [13], [14], [15], [16], 
[17], [18], [19], [20], [21], [22], [23]))  AS DatePivot '

IF(@access!=4)
begIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where '+@acc+' '+@unt+'
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'
END
ELSE BEGIN
SET @QUERY= @QUERY+'
select  ROW_NUMBER() OVER (ORDER BY (SELECT 100)) AS SNO, [EMP ID],[NAME],[Date], 
[8] as [8 AM - 9 AM],[9] as [9 AM - 10 AM],[10] as [10 AM - 11 AM],
[11] as [11 AM - 12 AM],[12] as [12 AM - 1 PM], [13] as [1 PM - 2 PM],[14] as [2 PM - 3 PM],
[15] AS [3 PM - 4 PM],[16] as [4 PM - 5 PM],
[17] as [5 PM - 6 PM],[18] AS [6 PM - 7 PM],
[19] as [7 PM - 8 PM],[20] AS [8 PM - 9 PM] ,
[21] AS [9 PM - 10 PM] ,[22] AS [10 PM - 11 PM] ,
[23] AS [11 PM - 12 AM] ,[0] AS [12 AM - 1 AM],
[1] AS [1 AM - 2 AM],[2] AS [2 AM- 3 AM],
[3] AS [3 AM- 4 AM],[4] AS [4 AM- 5 AM],[5] AS [5 AM- 6 AM],
[6] AS [6 AM- 7 AM],[7] AS [7 AM- 8 AM],
SUM(ISNULL([0],0)+ISNULL([1],0)+ISNULL([2],0)+ISNULL([8],0)+ISNULL([9],0)+ISNULL([10],0)+ISNULL([11],0)+ISNULL([12],0)+ISNULL([13],0)+ISNULL([14],0)+ISNULL([15],0)+
ISNULL([16],0)+ISNULL([17],0)+ISNULL([18],0)+ISNULL([19],0)+ISNULL([20],0)+ISNULL([21],0)+ISNULL([22],0)+ISNULL([23],0)) AS TOTAL from ##HOURSBasis A inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID
GROUP BY DATE, [EMP ID], NAME, [0] ,[1] ,[2],[3],[4],[5],[6],[7], [8] ,[9] ,[10] ,[11] ,[12] ,[13] ,[14] ,[15] ,[16] ,[17] ,[18] ,[19] ,[20],[21] ,[22] ,[23]'


END
print @QUERY
DECLARE @PARAMlIST NVARCHAR(max)
SET @PARAMlIST='@Fromdate varchar(20), @Todate varchar(20), @user varchar(50),@Software VARCHAR(200), @Vertical varchar(200),@Project varchar(200), @Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50),@access int,@untlg nvarchar(100)'
EXECUTE sp_executesql @QUERY,@PARAMlIST,@Fromdate,@Todate,@user,@Software, @Vertical, @Project, @Speciality,@Status,@subproj,@access,@acc
select @QUERY
 END
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_BIND_FILTERS]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_TM_BIND_FILTERS] --  EXEC [dbo].[USP_TM_BIND_FILTERS]
--(
--@Fromdate varchar(20)=NULL,
  --  @Todate varchar(20)=NULL  )
  @smntlg nvarchar(200)=null
AS BEGIN 

SELECT distinct LOCATION_NAME AS LOCATION FROM [dbo]. TBL_TIME_TRACKER
	-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct VERTICAL_ID AS VERTICAL FROM [dbo]. TBL_TIME_TRACKER where vertical_id not like '%select vertical%' order by VERTICAL_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct PROJECT_NAME AS [PROJECT] FROM [dbo]. TBL_TIME_TRACKER order by PROJECT_NAME
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SPECIALITY_ID AS SPECIALITY FROM [dbo]. TBL_TIME_TRACKER order by  SPECIALITY_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SOFTWARE AS SOFTWARE FROM [dbo]. TBL_TIME_TRACKER  order by  SOFTWARE
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct [STATUS] AS [STATUS] FROM [dbo]. TBL_TIME_TRACKER where [STATUS] is not null 
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SUB_PROJ_NAME  FROM [dbo].TBL_TIME_TRACKER order by  SUB_PROJ_NAME

select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TIME_TRACKER on tbl_USER_ACCESS_TM.EMP_ID=TBL_TIME_TRACKER.EMP_ID
 where tbl_USER_ACCESS_TM.ACCESS_ID=2 and TL_NTLG=@smntlg order by NTLG

--- SELECT * FROM TBL_TIME_TRACKER where vertical_id like '%select vertical%'

Select TL_NAME,TL_NTLG from tbl_USER_ACCESS_TM where SM_NTLG=@smntlg or OM_NTLG=@smntlg GROUP BY TL_NTLG ,TL_NAME order by TL_NAME


select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TIME_TRACKER on tbl_USER_ACCESS_TM.EMP_ID=TBL_TIME_TRACKER.EMP_ID
where SM_NTLG=@smntlg or OM_NTLG=@smntlg order by  NTLG

--ADMIN USER FILTER
select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TIME_TRACKER on tbl_USER_ACCESS_TM.EMP_ID=TBL_TIME_TRACKER.EMP_ID order by  NTLG
end


--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14-06-2017' and DATEADD(day,1,'14-06-2017'))
--select * from TBL_TIME_TRACKER




--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14/06/2017' and '15/06/2017')
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_BIND_FILTERS_Dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create PROCEDURE [dbo].[USP_TM_BIND_FILTERS_Dest] --  EXEC [dbo].[USP_TM_BIND_FILTERS]
--(
--@Fromdate varchar(20)=NULL,
  --  @Todate varchar(20)=NULL  )
  @smntlg nvarchar(200)=null
AS BEGIN 

SELECT distinct LOCATION_NAME AS LOCATION FROM [dbo]. TBL_TRANSACTION_MC_DES
	-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct VERTICAL_ID AS VERTICAL FROM [dbo]. TBL_TRANSACTION_MC_DES where vertical_id not like '%select vertical%' order by VERTICAL_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct PROJECT_NAME AS [PROJECT] FROM [dbo]. TBL_TRANSACTION_MC_DES order by PROJECT_NAME
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SPECIALITY_ID AS SPECIALITY FROM [dbo]. TBL_TRANSACTION_MC_DES order by  SPECIALITY_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SOFTWARE AS SOFTWARE FROM [dbo]. TBL_TRANSACTION_MC_DES  order by  SOFTWARE
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct [STATUS] AS [STATUS] FROM [dbo]. TBL_TRANSACTION_MC_DES where [STATUS] is not null 
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SUB_PROJ_NAME  FROM [dbo].TBL_TRANSACTION_MC_DES order by  SUB_PROJ_NAME

select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TRANSACTION_MC_DES on tbl_USER_ACCESS_TM.EMP_ID=TBL_TRANSACTION_MC_DES.EMP_ID
 where tbl_USER_ACCESS_TM.ACCESS_ID=2 and TL_NTLG=@smntlg order by NTLG

--- SELECT * FROM TBL_TIME_TRACKER where vertical_id like '%select vertical%'

Select TL_NAME,TL_NTLG from tbl_USER_ACCESS_TM where SM_NTLG=@smntlg or OM_NTLG=@smntlg GROUP BY TL_NTLG ,TL_NAME order by TL_NAME


select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TRANSACTION_MC_DES on tbl_USER_ACCESS_TM.EMP_ID=TBL_TRANSACTION_MC_DES.EMP_ID
where SM_NTLG=@smntlg or OM_NTLG=@smntlg order by  NTLG

--ADMIN USER FILTER
select distinct NTLG from tbl_USER_ACCESS_TM inner join TBL_TRANSACTION_MC_DES on tbl_USER_ACCESS_TM.EMP_ID=TBL_TRANSACTION_MC_DES.EMP_ID order by  NTLG
end


--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14-06-2017' and DATEADD(day,1,'14-06-2017'))
--select * from TBL_TIME_TRACKER




--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14/06/2017' and '15/06/2017')
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_BIND_FILTERS_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_TM_BIND_FILTERS_PERI] --  EXEC [dbo].[USP_TM_BIND_FILTERS]
--(
--@Fromdate varchar(20)=NULL,
  --  @Todate varchar(20)=NULL  )
  @smntlg nvarchar(200)=null
AS BEGIN 

SELECT distinct LOCATION_NAME AS LOCATION FROM [dbo]. USP_Transaction_PERI
	-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct VERTICAL_ID AS VERTICAL FROM [dbo]. USP_Transaction_PERI where vertical_id not like '%select vertical%' order by VERTICAL_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct PROJECT_NAME AS [PROJECT] FROM [dbo]. USP_Transaction_PERI order by PROJECT_NAME
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SPECIALITY_ID AS SPECIALITY FROM [dbo]. USP_Transaction_PERI order by  SPECIALITY_ID
-- where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SOFTWARE AS SOFTWARE FROM [dbo]. USP_Transaction_PERI  order by  SOFTWARE
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct [STATUS] AS [STATUS] FROM [dbo]. USP_Transaction_PERI where [STATUS] is not null 
--where (convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)

SELECT distinct SUB_PROJ_NAME  FROM [dbo].USP_Transaction_PERI order by  SUB_PROJ_NAME

select distinct NTLG from tbl_USER_ACCESS_TM inner join USP_Transaction_PERI on tbl_USER_ACCESS_TM.EMP_ID=USP_Transaction_PERI.EMP_ID
 where tbl_USER_ACCESS_TM.ACCESS_ID=2 and TL_NTLG=@smntlg order by NTLG

--- SELECT * FROM TBL_TIME_TRACKER where vertical_id like '%select vertical%'

Select TL_NAME,TL_NTLG from tbl_USER_ACCESS_TM where SM_NTLG=@smntlg or OM_NTLG=@smntlg GROUP BY TL_NTLG ,TL_NAME order by TL_NAME


select distinct NTLG from tbl_USER_ACCESS_TM inner join USP_Transaction_PERI on tbl_USER_ACCESS_TM.EMP_ID=USP_Transaction_PERI.EMP_ID
where SM_NTLG=@smntlg or OM_NTLG=@smntlg order by  NTLG

--ADMIN USER FILTER
select distinct NTLG from tbl_USER_ACCESS_TM inner join USP_Transaction_PERI on tbl_USER_ACCESS_TM.EMP_ID=USP_Transaction_PERI.EMP_ID order by  NTLG
end


--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14-06-2017' and DATEADD(day,1,'14-06-2017'))
--select * from TBL_TIME_TRACKER




--SELECT distinct LOCATION_NAME AS LOCATION 

--	FROM [dbo]. TBL_TIME_TRACKER where (convert(varchar(12),UPDATE_DATE,103) between '14/06/2017' and '15/06/2017')
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_INSERT]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[USP_TM_INSERT]
(
@empid int ,
@pname varchar (100),
@vertical Varchar (100),
@speciality Varchar (100),
@location varchar(100),
@software varchar(100),
@accno varchar(200),
@update datetime,
@ntlg varchar(100),
@subproj varchar(50)
--,@status varchar(50)
)
as
begin

Insert into TBL_TIME_TRACKER (EMP_ID,PROJECT_NAME,VERTICAL_ID,SPECIALITY_ID,LOCATION_NAME,SOFTWARE,ACCOUNT_NO,START_TIME,UPDATE_DATE,NTLG,PAUSED_AT_TIME,SUB_PROJ_NAME) values 
(@empid,@pname,@vertical,@speciality,@location,@software,[dbo].FNC_ENCRIPTION_PW(@accno),convert(varchar,getdate(),113),convert(date,@update,103),@ntlg,convert(varchar,getdate(),113),@subproj)
--@status,convert(varchar,getdate(),113))

End
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_INSERT_dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


cREATE procedure [dbo].[USP_TM_INSERT_dest]
(
@empid int ,
@pname varchar (100),
@vertical Varchar (100),
@speciality Varchar (100),
@location varchar(100),
@software varchar(100),
@accno varchar(200),
@update datetime,
@ntlg varchar(100),
@subproj varchar(50)
--,@status varchar(50)
)
as
begin

Insert into TBL_TRANSACTION_MC_DES (EMP_ID,PROJECT_NAME,VERTICAL_ID,SPECIALITY_ID,LOCATION_NAME,SOFTWARE,ACCOUNT_NO,START_TIME,UPDATE_DATE,NTLG,PAUSED_AT_TIME,SUB_PROJ_NAME) values 
(@empid,@pname,@vertical,@speciality,@location,@software,[dbo].FNC_ENCRIPTION_PW(@accno),convert(varchar,getdate(),113),convert(date,@update,103),@ntlg,convert(varchar,getdate(),113),@subproj)
--@status,convert(varchar,getdate(),113))

End
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_INSERT1]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[USP_TM_INSERT1]
(
@empid int ,
@pname varchar (100),
@vertical Varchar (100),
@speciality Varchar (100),
@location varchar(100),
@software varchar(100),
@accno VARBINARY(200),
--@stime time(7),
--@etime time(7),
@update datetime,
@ntlg varchar(100)
)
as
begin

--Insert into TBL_TIME_TRACKER (EMP_ID,PROJECT_NAME,VERTICAL_ID,SPECIALITY_ID,LOCATION_NAME,SOFTWARE,ACCOUNT_NO,UPDATE_DATE,NTLG) values 
--(@empid,@pname,@vertical,@speciality,@location,@software,@accno,convert(date,@update,103),@ntlg)

declare @encrypt varbinary(200)

Insert into TBL_TIME_TRACKER1(EMP_ID,PROJECT_NAME,VERTICAL_ID,SPECIALITY_ID,LOCATION_NAME,SOFTWARE,ACCOUNT_NO,START_TIME,UPDATE_DATE,NTLG) values 
(@empid,@pname,@vertical,@speciality,@location,@software,ENCRYPTBYPASSPHRASE('key',@accno),convert(varchar,getdate(),8),convert(date,@update,103),@ntlg)

End


--declare @encrypt varbinary(200)
--select @encrypt =ENCRYPTBYPASSPHRASE('key','abc')

--select @encrypt


--select CONVERT(varchar(100),DecryptByPassPhrase('key',@encrypt))



GO
/****** Object:  StoredProcedure [dbo].[USP_TM_PAUSED_TIME]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[USP_TM_PAUSED_TIME]
(
@time_track_id int,
@ntlg varchar(100)
)

as begin 
update TBL_TIME_TRACKER set  PAUSED_AT_TIME = convert(varchar,getdate(),113) where TIME_TRACK_ID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_PAUSED_TIME_DEST]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
cREATE procedure [dbo].[USP_TM_PAUSED_TIME_DEST]
(
@time_track_id int,
@ntlg varchar(100)
)
as begin 
update TBL_TRANSACTION_MC_DES set  PAUSED_AT_TIME = convert(varchar,getdate(),113) where TIMETRACKERID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_PRODUCTION_REPORT]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE procedure [dbo].[USP_TM_PRODUCTION_REPORT] 
	(
		@Fromdate VARCHAR (20)=NULL,
		@Todate VARCHAR (20)=NULL,           
		@Location VARCHAR (200)=NULL,  
		@Software VARCHAR(200)=NULL,
		@Vertical VARCHAR (200)=NULL , 
		@Project VARCHAR (200)=NULL,
		@Speciality VARCHAR(200)=NULL,
		@Status varchar(50)=NULL,
		@subproj varchar(50)=null,
		@categories int=null,
		@untlg nvarchar(100)=null
		)
		as begin 
		DECLARE @Location1 VARCHAR(200)
		DECLARE @Software1 VARCHAR(200)
		DECLARE @Vertical1 varchar(200)
		DECLARE @Project1 varchar(200)
		DECLARE @Speciality1 VARCHAR(200)
		DECLARE @Status1 varchar(50)
		DECLARE @subproj1 VARCHAR(50)
		DECLARE @QUERY NVARCHAR(MAX)
		IF(@Location IS NOT NULL) BEGIN SET @Location1 ='AND LOCATION_NAME='''+@Location+'''' END ELSE BEGIN SET @Location1 =' ' END 
		IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
		IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
		IF(@Project IS NOT NULL)  BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
		IF(@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
		IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
		IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END


		declare @PARAMlIST nvarchar(max)

		if OBJECT_ID('tempdb..##TimeDifference')is not null drop table ##TimeDifference
	
		set @QUERY='SELECT  EMP_ID as [EMP ID],SUB_PROJ_NAME,LOCATION_NAME AS LOCATION,VERTICAL_ID AS VERTICAL,PROJECT_NAME AS [PROJECT], 
		SPECIALITY_ID AS SPECIALITY, SOFTWARE,NTLG,[dbo].FNC_DECRIPTION_PW(ACCOUNT_NO) AS[ACCOUNT NO],START_TIME AS [START TIME],END_TIME AS [END TIME],

		convert(varchar(5),DateDiff(s, START_TIME, END_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, START_TIME, END_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, START_TIME, END_TIME)%60)) 
		as [TIME DIFFERENCE],
	
		convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%60)) 
		as [PAUSE TIME DIFFERENCE] into   ##TimeDifference
		FROM TBL_TIME_TRACKER  where END_TIME is not null and 
		(convert(datetime,UPDATE_DATE,103) between convert(datetime, @Fromdate ,103) and convert(datetime,@Todate,103))  '+@Location1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+'  '+@Status1+'  '+@subproj1+'   ' 
		
		set @PARAMlIST='@Fromdate VARCHAR (20),@Todate VARCHAR (20),@Location VARCHAR (200),@Software VARCHAR (200), @Vertical VARCHAR(200),@Project VARCHAR (200),@Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50)'
		execute sp_executesql @query,@PARAMlIST,@Fromdate,@Todate,@Location,@Software,@Vertical,@Project,@Speciality,@Status,@subproj

        if(@categories=1)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID  where TL_NTLG=@untlg or USER_NTLG=@untlg
		end
		else if(@categories=2)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where SM_NTLG=@untlg or USER_NTLG=@untlg or OM_NTLG=@untlg
		end
		else if(@categories=3)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE]
			from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID 
		end
		END
		select @QUERY
		print @query
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_PRODUCTION_REPORT_Dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE procedure [dbo].[USP_TM_PRODUCTION_REPORT_Dest] 
	(
		@Fromdate VARCHAR (20)=NULL,
		@Todate VARCHAR (20)=NULL,           
		@Location VARCHAR (200)=NULL,  
		@Software VARCHAR(200)=NULL,
		@Vertical VARCHAR (200)=NULL , 
		@Project VARCHAR (200)=NULL,
		@Speciality VARCHAR(200)=NULL,
		@Status varchar(50)=NULL,
		@subproj varchar(50)=null,
		@categories int=null,
		@untlg nvarchar(100)=null
		)
		as begin 
		DECLARE @Location1 VARCHAR(200)
		DECLARE @Software1 VARCHAR(200)
		DECLARE @Vertical1 varchar(200)
		DECLARE @Project1 varchar(200)
		DECLARE @Speciality1 VARCHAR(200)
		DECLARE @Status1 varchar(50)
		DECLARE @subproj1 VARCHAR(50)
		DECLARE @QUERY NVARCHAR(MAX)
		IF(@Location IS NOT NULL) BEGIN SET @Location1 ='AND LOCATION_NAME='''+@Location+'''' END ELSE BEGIN SET @Location1 =' ' END 
		IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
		IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
		IF(@Project IS NOT NULL)  BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
		IF(@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
		IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
		IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END


		declare @PARAMlIST nvarchar(max)

		if OBJECT_ID('tempdb..##TimeDifference')is not null drop table ##TimeDifference
	
		set @QUERY='SELECT  EMP_ID as [EMP ID],SUB_PROJ_NAME,LOCATION_NAME AS LOCATION,VERTICAL_ID AS VERTICAL,PROJECT_NAME AS [PROJECT], 
		SPECIALITY_ID AS SPECIALITY, SOFTWARE,NTLG,[dbo].FNC_DECRIPTION_PW(ACCOUNT_NO) AS[ACCOUNT NO],START_TIME AS [START TIME],END_TIME AS [END TIME],

		convert(varchar(5),DateDiff(s, START_TIME, END_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, START_TIME, END_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, START_TIME, END_TIME)%60)) 
		as [TIME DIFFERENCE],
	
		convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%60)) 
		as [PAUSE TIME DIFFERENCE],[Selection] into   ##TimeDifference
		FROM TBL_TRANSACTION_MC_DES  where END_TIME is not null and 
		(convert(datetime,UPDATE_DATE,103) between convert(datetime, @Fromdate ,103) and convert(datetime,@Todate,103))  '+@Location1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+'  '+@Status1+'  '+@subproj1+'   ' 
		
		set @PARAMlIST='@Fromdate VARCHAR (20),@Todate VARCHAR (20),@Location VARCHAR (200),@Software VARCHAR (200), @Vertical VARCHAR(200),@Project VARCHAR (200),@Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50)'
		execute sp_executesql @query,@PARAMlIST,@Fromdate,@Todate,@Location,@Software,@Vertical,@Project,@Speciality,@Status,@subproj

        if(@categories=1)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE],[Selection]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID  where TL_NTLG=@untlg or USER_NTLG=@untlg
		end
		else if(@categories=2)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE] ,[Selection]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where SM_NTLG=@untlg or USER_NTLG=@untlg or OM_NTLG=@untlg
		end
		else if(@categories=3)
		begin
		select [EMP ID],SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE],[Selection]
			from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID 
		end
		END
		select @QUERY
		print @query
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_PRODUCTION_REPORT_PERI]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE procedure [dbo].[USP_TM_PRODUCTION_REPORT_PERI] 
	(
		@Fromdate VARCHAR (20)=NULL,
		@Todate VARCHAR (20)=NULL,           
		@Location VARCHAR (200)=NULL,  
		@Software VARCHAR(200)=NULL,
		@Vertical VARCHAR (200)=NULL , 
		@Project VARCHAR (200)=NULL,
		@Speciality VARCHAR(200)=NULL,
		@Status varchar(50)=NULL,
		@subproj varchar(50)=null,
		@categories int=null,
		@untlg nvarchar(100)=null
		)
		as begin 
		DECLARE @Location1 VARCHAR(200)
		DECLARE @Software1 VARCHAR(200)
		DECLARE @Vertical1 varchar(200)
		DECLARE @Project1 varchar(200)
		DECLARE @Speciality1 VARCHAR(200)
		DECLARE @Status1 varchar(50)
		DECLARE @subproj1 VARCHAR(50)
		DECLARE @QUERY NVARCHAR(MAX)
		IF(@Location IS NOT NULL) BEGIN SET @Location1 ='AND LOCATION_NAME='''+@Location+'''' END ELSE BEGIN SET @Location1 =' ' END 
		IF(@Software IS NOT NULL) BEGIN SET @Software1 ='AND Software='''+@Software+'''' END ELSE  BEGIN SET @Software1 =' ' END
		IF(@Vertical IS NOT NULL) BEGIN SET @Vertical1 ='AND Vertical_id='''+@Vertical+'''' END ELSE BEGIN SET @Vertical1 =' ' END
		IF(@Project IS NOT NULL)  BEGIN SET @Project1 ='AND Project_Name='''+@Project+'''' END ELSE BEGIN SET @Project1 =' ' END
		IF(@Speciality IS NOT NULL) BEGIN SET @Speciality1 ='AND SPECIALITY_ID='''+@Speciality+'''' END ELSE BEGIN SET @Speciality1 =' ' END
		IF(@Status IS NOT NULL) BEGIN SET @Status1 ='AND Status='''+@Status+'''' END ELSE BEGIN SET @Status1 =' ' END
		IF(@subproj IS NOT NULL) BEGIN SET @subproj1 ='AND SUB_PROJ_NAME='''+@subproj+'''' END ELSE BEGIN SET @subproj1 =' ' END


		declare @PARAMlIST nvarchar(max)

		if OBJECT_ID('tempdb..##TimeDifference')is not null drop table ##TimeDifference
	
		set @QUERY='SELECT  EMP_ID as [EMP ID],DOS,ED_LEVEL,SUB_PROJ_NAME,LOCATION_NAME AS LOCATION,VERTICAL_ID AS VERTICAL,PROJECT_NAME AS [PROJECT], 
		SPECIALITY_ID AS SPECIALITY, SOFTWARE,NTLG,[dbo].FNC_DECRIPTION_PW(ACCOUNT_NO) AS[ACCOUNT NO],START_TIME AS [START TIME],END_TIME AS [END TIME],

		convert(varchar(5),DateDiff(s, START_TIME, END_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, START_TIME, END_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, START_TIME, END_TIME)%60)) 
		as [TIME DIFFERENCE],
	
		convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)/3600)+'':''+convert(varchar(5),DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%3600/60)+'':''+convert(varchar(5),(DateDiff(s, PAUSED_AT_TIME, RESUMED_AT_TIME)%60)) 
		as [PAUSE TIME DIFFERENCE],Comments,[STATUS] as [Account Stauts] into   ##TimeDifference
		FROM USP_Transaction_PERI  where END_TIME is not null and 
		(convert(datetime,UPDATE_DATE,103) between convert(datetime, @Fromdate ,103) and convert(datetime,@Todate,103))  '+@Location1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+'  '+@Status1+'  '+@subproj1+'   ' 
		--(convert(varchar(12),UPDATE_DATE,103) between @Fromdate and @Todate)  '+@Location1+' '+@Software1+' '+@Vertical1+' '+@Project1+' '+@Speciality1+'  '+@Status1+'  '+@subproj1+'   ' 


		set @PARAMlIST='@Fromdate VARCHAR (20),@Todate VARCHAR (20),@Location VARCHAR (200),@Software VARCHAR (200), @Vertical VARCHAR(200),@Project VARCHAR (200),@Speciality VARCHAR(200),@Status varchar(50),@subproj VARCHAR(50)'
		execute sp_executesql @query,@PARAMlIST,@Fromdate,@Todate,@Location,@Software,@Vertical,@Project,@Speciality,@Status,@subproj

        if(@categories=1)
		begin
		select [EMP ID],DOS,ED_LEVEL,SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE],Comments,[Account Stauts]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID  where TL_NTLG=@untlg or USER_NTLG=@untlg
		end
		else if(@categories=2)
		begin
		select [EMP ID],DOS,ED_LEVEL,SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE] ,Comments,[Account Stauts]
		--,ISNULL( convert(varchar(5),DateDiff(s,  [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])/3600)+':'+convert(varchar(5),DateDiff(s, [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])%3600/60)+':'+convert(varchar(5),(DateDiff(s, [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])%60)),[TIME DIFFERENCE]) as [EXACT TIME DIFFERENCE]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID where SM_NTLG=@untlg or USER_NTLG=@untlg or OM_NTLG=@untlg
		end
		else if(@categories=3)
		begin
		select [EMP ID],DOS,ED_LEVEL,SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE],Comments,[Account Stauts]
		--,ISNULL( convert(varchar(5),DateDiff(s,  [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])/3600)+':'+convert(varchar(5),DateDiff(s, [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])%3600/60)+':'+convert(varchar(5),(DateDiff(s, [PAUSE TIME DIFFERENCE],[TIME DIFFERENCE])%60)),[TIME DIFFERENCE]) as [EXACT TIME DIFFERENCE]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on A.[EMP ID]=B.EMP_ID 
		end
		else if(@categories=4)
		begin
		select [EMP ID],DOS,ED_LEVEL,SUB_PROJ_NAME, LOCATION, VERTICAL, [PROJECT],SPECIALITY, SOFTWARE,NTLG,[ACCOUNT NO], [START TIME], [END TIME],[TIME DIFFERENCE],ISNULL([PAUSE TIME DIFFERENCE],'00:00:00') AS [PAUSE TIME DIFFERENCE],Comments,[Account Stauts]
		from ##TimeDifference A
		inner join tbl_USER_ACCESS_TM B on  A.[EMP ID]=B.EMP_ID where TL_NTLG=(select TL_NTLG from tbl_USER_ACCESS_TM where USER_NTLG=@untlg)
		end
		END
		select @QUERY
		print @query
GO
/****** Object:  StoredProcedure [dbo].[USP_TM_RESUMED_TIME]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[USP_TM_RESUMED_TIME]
(
@time_track_id int,
@ntlg varchar(100)
)

as begin 
update TBL_TIME_TRACKER set  RESUMED_AT_TIME = convert(varchar,getdate(),113) where TIME_TRACK_ID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 


GO
/****** Object:  StoredProcedure [dbo].[USP_TM_RESUMED_TIME_Dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[USP_TM_RESUMED_TIME_Dest]
(
@time_track_id int,
@ntlg varchar(100)
)

as begin 
update TBL_TRANSACTION_MC_DES set  RESUMED_AT_TIME = convert(varchar,getdate(),113) where TIMETRACKERID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 


GO
/****** Object:  StoredProcedure [dbo].[USP_TM_UPDATE]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[USP_TM_UPDATE]
(
@time_track_id int,
@ntlg varchar(100),
@status  varchar(50)
)

as begin 
update TBL_TIME_TRACKER set  END_TIME= convert(varchar,getdate(),113),[STATUS]=@status where TIME_TRACK_ID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 

GO
/****** Object:  StoredProcedure [dbo].[USP_TM_UPDATE_Dest]    Script Date: 11/6/2017 10:24:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[USP_TM_UPDATE_Dest]
(
@time_track_id int,
@ntlg varchar(100),
@status  varchar(50)
)

as begin 
update TBL_TRANSACTION_MC_DES set  END_TIME= convert(varchar,getdate(),113),[STATUS]=@status,Selection='Header/Ordering reviewed,Technique Reviewed,RFV/Indication noted,Findings verified,Reviewed Impression,Reviewed complete documentation' where TIMETRACKERID=@time_track_id  AND NTLG = @ntlg  AND  END_TIME IS  NULL 
end 

GO
USE [master]
GO
ALTER DATABASE [TimeTracker_ATS] SET  READ_WRITE 
GO
