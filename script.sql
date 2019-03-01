USE [dbs-s03-uks-neilm-1]
GO
/****** Object:  User [adam.sewell@kennedyslaw.com]    Script Date: 01/03/2019 14:22:11 ******/
CREATE USER [adam.sewell@kennedyslaw.com] FROM  EXTERNAL PROVIDER  WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DataSync]    Script Date: 01/03/2019 14:22:11 ******/
CREATE USER [DataSync] WITH PASSWORD=N'mA8d/DOBZOjCjWM4RxHoBmwY9ta20LfoFP9BMLjJ9D0=', DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DataSyncAgent]    Script Date: 01/03/2019 14:22:11 ******/
CREATE USER [DataSyncAgent] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [KLAiMRep]    Script Date: 01/03/2019 14:22:11 ******/
CREATE ROLE [KLAiMRep]
GO
ALTER ROLE [db_owner] ADD MEMBER [adam.sewell@kennedyslaw.com]
GO
ALTER ROLE [KLAiMRep] ADD MEMBER [DataSync]
GO
ALTER ROLE [db_owner] ADD MEMBER [DataSync]
GO
ALTER ROLE [db_owner] ADD MEMBER [DataSyncAgent]
GO
/****** Object:  Schema [DataSync]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [DataSync]
GO
/****** Object:  Schema [dbadmin]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [dbadmin]
GO
/****** Object:  Schema [KCG]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KCG]
GO
/****** Object:  Schema [KLAiM]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiM]
GO
/****** Object:  Schema [KLAiMAdmin]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMAdmin]
GO
/****** Object:  Schema [KLAiMDoc]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMDoc]
GO
/****** Object:  Schema [KLAiMFlex]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMFlex]
GO
/****** Object:  Schema [KLAiMFlexV1]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMFlexV1]
GO
/****** Object:  Schema [KLAiMInfo]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMInfo]
GO
/****** Object:  Schema [KLAiMMig]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMMig]
GO
/****** Object:  Schema [KLAiMSys]    Script Date: 01/03/2019 14:22:11 ******/
CREATE SCHEMA [KLAiMSys]
GO
/****** Object:  UserDefinedTableType [DataSync].[Claims_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Claims_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[BusUnitId] [int] NULL,
	[UserId] [int] NULL,
	[ClaimTypeId] [int] NULL,
	[ProcessId] [int] NULL,
	[ClaimStatusId] [int] NULL,
	[ClaimRef] [nvarchar](30) NULL,
	[Complete] [bit] NULL,
	[ClosedDate] [datetime2](7) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[Claims_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Claims_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[BusUnitId] [int] NULL,
	[UserId] [int] NULL,
	[ClaimTypeId] [int] NULL,
	[ProcessId] [int] NULL,
	[ClaimStatusId] [int] NULL,
	[ClaimRef] [nvarchar](30) NULL,
	[Complete] [bit] NULL,
	[ClosedDate] [datetime2](7) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[Claims_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Claims_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[BusUnitId] [int] NULL,
	[UserId] [int] NULL,
	[ClaimTypeId] [int] NULL,
	[ProcessId] [int] NULL,
	[ClaimStatusId] [int] NULL,
	[ClaimRef] [nvarchar](30) NULL,
	[Complete] [bit] NULL,
	[ClosedDate] [datetime2](7) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimsFlex_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimsFlex_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[SchemaId] [int] NULL,
	[FlowId] [int] NULL,
	[FlexData] [nvarchar](max) NULL,
	[FlexFlow] [nvarchar](max) NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimsFlex_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimsFlex_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[SchemaId] [int] NULL,
	[FlowId] [int] NULL,
	[FlexData] [nvarchar](max) NULL,
	[FlexFlow] [nvarchar](max) NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimsFlex_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimsFlex_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] AS TABLE(
	[ClaimId] [int] NOT NULL,
	[SchemaId] [int] NULL,
	[FlowId] [int] NULL,
	[FlexData] [nvarchar](max) NULL,
	[FlexFlow] [nvarchar](max) NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimStatuses_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimStatuses_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] AS TABLE(
	[ClaimStatusId] [int] NOT NULL,
	[ClaimStatus] [nvarchar](30) NULL,
	[ClaimStatusCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimStatusId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimStatuses_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimStatuses_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] AS TABLE(
	[ClaimStatusId] [int] NOT NULL,
	[ClaimStatus] [nvarchar](30) NULL,
	[ClaimStatusCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimStatusId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimStatuses_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimStatuses_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] AS TABLE(
	[ClaimStatusId] [int] NOT NULL,
	[ClaimStatus] [nvarchar](30) NULL,
	[ClaimStatusCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimStatusId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimTypes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimTypes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] AS TABLE(
	[ClaimTypeId] [int] NOT NULL,
	[ClaimType] [nvarchar](20) NULL,
	[ClaimTypeCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimTypes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimTypes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] AS TABLE(
	[ClaimTypeId] [int] NOT NULL,
	[ClaimType] [nvarchar](20) NULL,
	[ClaimTypeCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[ClaimTypes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[ClaimTypes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] AS TABLE(
	[ClaimTypeId] [int] NOT NULL,
	[ClaimType] [nvarchar](20) NULL,
	[ClaimTypeCode] [nvarchar](10) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[Processes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Processes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] AS TABLE(
	[ProcessId] [int] NOT NULL,
	[ProcessName] [nvarchar](50) NULL,
	[ProcessCode] [nvarchar](20) NULL,
	[ProcessDesc] [nvarchar](200) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[Processes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Processes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] AS TABLE(
	[ProcessId] [int] NOT NULL,
	[ProcessName] [nvarchar](50) NULL,
	[ProcessCode] [nvarchar](20) NULL,
	[ProcessDesc] [nvarchar](200) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [DataSync].[Processes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [DataSync].[Processes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] AS TABLE(
	[ProcessId] [int] NOT NULL,
	[ProcessName] [nvarchar](50) NULL,
	[ProcessCode] [nvarchar](20) NULL,
	[ProcessDesc] [nvarchar](200) NULL,
	[Deleted] [bit] NULL,
	[CreateDt] [datetime2](7) NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[sync_update_peer_timestamp] [bigint] NULL,
	[sync_update_peer_key] [int] NULL,
	[sync_create_peer_timestamp] [bigint] NULL,
	[sync_create_peer_key] [int] NULL,
	PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  UserDefinedTableType [KLAiM].[IdsTable]    Script Date: 01/03/2019 14:22:11 ******/
CREATE TYPE [KLAiM].[IdsTable] AS TABLE(
	[Id] [int] NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbadmin].[f_snake_to_pascal]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbadmin].[f_snake_to_pascal]
( @pSnake AS NVARCHAR(MAX)
)
RETURNS NVARCHAR(MAX)
AS
  BEGIN
	DECLARE @UCamel NVARCHAR(MAX);

	WITH cWork
	AS
	(
		SELECT	UPPER(LEFT(@pSnake, 1)) + SUBSTRING(@pSnake, 2, LEN(@pSnake)) AS WStr,
				CONVERT(BIGINT, 1) AS Ind
		UNION ALL
		SELECT	CONVERT(NVARCHAR(MAX), CASE WHEN CHARINDEX('_', cWork.WStr) > 0 THEN SUBSTRING(cWork.WStr, 1, CHARINDEX('_', cWork.WStr) - 1) + UPPER(SUBSTRING(cWork.WStr, CHARINDEX('_', cWork.WStr) + 1, 1)) + SUBSTRING(cWork.WStr, CHARINDEX('_', cWork.WStr) + 2, LEN(cWork.WStr)) ELSE cWork.WStr END) AS Snake,
				CHARINDEX('_', cWork.WStr) AS Ind
		FROM	cWork
		WHERE	CHARINDEX('_', cWork.WStr) > 0
	)
	SELECT	TOP 1 @UCamel = cWork.WStr
	FROM	cWork
	ORDER   BY Ind DESC;

	RETURN @UCamel;

  END;
GO
/****** Object:  UserDefinedFunction [KLAiM].[fFullName]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [KLAiM].[fFullName]
(	@pTitle NVARCHAR(20),
	@pFirstName NVARCHAR(50),
	@pSurname NVARCHAR(50),
	@pCompany NVARCHAR(50)
)
	RETURNS NVARCHAR(100)
AS
	BEGIN	 
	  RETURN CASE WHEN @pCompany IS NOT NULL
						THEN ISNULL(NULLIF(ISNULL(@pTitle + N' ', N'') + ISNULL(@pFirstName + N' ', N'') + ISNULL(@pSurname, N''), N'') + N', ', N'') + @pCompany
						ELSE NULLIF(ISNULL(@pTitle + N' ', N'') + ISNULL(@pFirstName + N' ', N'') + ISNULL(@pSurname, N''), N'')
			    END;
	END;
GO
/****** Object:  Table [KLAiMFlex].[Claims]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Claims](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[BusUnitId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimTypeId] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[ClaimStatusId] [int] NOT NULL,
	[ClaimRef] [nvarchar](30) NOT NULL,
	[Complete] [bit] NOT NULL,
	[ClosedDate] [datetime2](1) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Claims] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[Processes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Processes](
	[ProcessId] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
	[ProcessCode] [nvarchar](20) NOT NULL,
	[ProcessDesc] [nvarchar](200) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Processes] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Processes_ProcessCode] UNIQUE NONCLUSTERED 
(
	[ProcessCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[ClaimTypes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ClaimTypes](
	[ClaimTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](20) NOT NULL,
	[ClaimTypeCode] [nvarchar](10) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClaimTypes] PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ClaimTypes_ClaimType] UNIQUE NONCLUSTERED 
(
	[ClaimType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ClaimTypes_ClaimTypeCode] UNIQUE NONCLUSTERED 
(
	[ClaimTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[ClaimStatuses]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ClaimStatuses](
	[ClaimStatusId] [int] IDENTITY(1,1) NOT NULL,
	[ClaimStatus] [nvarchar](30) NULL,
	[ClaimStatusCode] [nvarchar](10) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClaimStatuses] PRIMARY KEY CLUSTERED 
(
	[ClaimStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ClaimStatuses_ClaimStatus] UNIQUE NONCLUSTERED 
(
	[ClaimStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ClaimStatuses_ClaimStatusCode] UNIQUE NONCLUSTERED 
(
	[ClaimStatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KCG].[vBusUnits]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[vBusUnits]
(
	[BusUnitId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[BusUnitCode] [nvarchar](10) NOT NULL,
	[BusUnitName] [nvarchar](50) NOT NULL,
	[ParBusUnitId] [int] NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'vBusUnits')
GO
/****** Object:  Table [KCG].[vClients]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[vClients]
(
	[ClientId] [int] NOT NULL,
	[ClientCode] [nvarchar](10) NOT NULL,
	[ClientName] [nvarchar](50) NOT NULL,
	[ClientSName] [nvarchar](20) NOT NULL,
	[Addr] [nvarchar](200) NOT NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NOT NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NOT NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'vClients')
GO
/****** Object:  Table [KCG].[vUserDetails]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[vUserDetails]
(
	[UserId] [int] NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[UserCode] [nvarchar](10) NOT NULL,
	[ClientId] [int] NOT NULL,
	[BusUnitId] [int] NULL,
	[MgrUserId] [int] NULL,
	[Forename] [nvarchar](250) NULL,
	[Surname] [nvarchar](250) NULL,
	[FullName] [nvarchar](501) NULL,
	[SecurityAnswNr1] [nvarchar](250) NULL,
	[SecurityAnswNr2] [nvarchar](250) NULL,
	[SecurityAnswNr3] [nvarchar](250) NULL,
	[PasswordExpiry] [datetime2](7) NOT NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](250) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'vUserDetails')
GO
/****** Object:  Table [KLAiMFlex].[Schemas]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Schemas](
	[SchemaId] [int] IDENTITY(1,1) NOT NULL,
	[SchemaName] [nvarchar](50) NOT NULL,
	[SchemaCode] [nvarchar](30) NOT NULL,
	[VersionNo] [int] NOT NULL,
	[ClaimTypeId] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[BaseSchemaId] [int] NULL,
	[IsDisabled] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[FlexSchema] [nvarchar](max) NULL,
 CONSTRAINT [PK_Schemas] PRIMARY KEY CLUSTERED 
(
	[SchemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Schemas_SchemaCode_VersionNo] UNIQUE NONCLUSTERED 
(
	[SchemaCode] ASC,
	[VersionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[Flows]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Flows](
	[FlowId] [int] IDENTITY(1,1) NOT NULL,
	[FlowName] [nvarchar](50) NOT NULL,
	[FlowCode] [nvarchar](30) NOT NULL,
	[FlowVersion] [int] NOT NULL,
	[FlowDesc] [nvarchar](250) NULL,
	[IsDisabled] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[FlexFlow] [nvarchar](max) NULL,
 CONSTRAINT [PK_Flows] PRIMARY KEY CLUSTERED 
(
	[FlowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Flows_FlowCode_FlowVersion] UNIQUE NONCLUSTERED 
(
	[FlowCode] ASC,
	[FlowVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[ClaimsFlex]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ClaimsFlex](
	[ClaimId] [int] NOT NULL,
	[SchemaId] [int] NOT NULL,
	[FlowId] [int] NOT NULL,
	[FlexData] [nvarchar](max) NOT NULL,
	[FlexFlow] [nvarchar](max) NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClaimsFlex] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [KLAiMFlex].[vClaimSummaries]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vClaimSummaries]
AS
WITH cSUM
AS
(	SELECT	CF.ClaimId,
			Val.SummaryValues
	FROM	KLAiMFlex.ClaimsFlex AS CF
			INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaId = CF.SchemaId
			CROSS APPLY (
				SELECT	dJS.SummaryPosition AS [summaryPosition],
						dJS.Label AS [label],
						-- dJS.SourceType AS [sourceType],
                        -- dJS.SourcePath AS [sourcePath],
                        dJS.IconImg AS [iconImg],
                        dJS.SummaryFlags AS [summaryFlags],
						CASE dJS.SourceType
							WHEN N'ContactName'
								THEN CONVERT(NVARCHAR(100), KLAiM.fFullName(JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath + N'.Title'), JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath + N'.FirstName'), JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath + N'.LastName'), JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath + N'.Company')))
							WHEN N'ContactCompany'
								THEN CONVERT(NVARCHAR(100), JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath + N'.Company'))
							WHEN N'Field'
								THEN CONVERT(NVARCHAR(100), JSON_VALUE(CF.FlexData, N'$.' + dJS.SourcePath))
							ELSE N'* Unknown SourceType *'
						END  AS [value]
				FROM	(	SELECT	CONVERT(NVARCHAR(50), JSON_VALUE(jS.Value, N'$.label')) AS Label,
									CONVERT(NVARCHAR(20), JSON_VALUE(jS.Value, N'$.sourceType')) AS SourceType,
									CONVERT(NVARCHAR(100), JSON_VALUE(jS.Value, N'$.sourcePath')) AS SourcePath,
									CONVERT(NVARCHAR(50), JSON_VALUE(jS.Value, N'$.iconImg')) AS IconImg,
									CONVERT(INT, JSON_VALUE(jS.Value, N'$.summaryFlags')) AS SummaryFlags,
									CONVERT(INT, JSON_VALUE(jS.Value, N'$.summaryPosition')) AS SummaryPosition,
									CONVERT(INT, JSON_VALUE(jS.Value, N'$.wizardPosition')) AS WizardPosition
							FROM	OPENJSON(SCH.FlexSchema, N'$.summary') AS jS) AS dJS
				WHERE	dJS.SummaryPosition > 0
				ORDER	BY summaryPosition
				FOR JSON PATH, ROOT(N'summary'), INCLUDE_NULL_VALUES) AS Val (SummaryValues)
)
	SELECT	CLM.ClaimId,
			CLM.ClientId,
			CLM.UserId,
			CLM.BusUnitId,
			CLM.ClaimRef AS OurRef,
			LEFT(ISNULL(NULLIF(ISNULL(vUD.Forename + N' ', N'') + ISNULL(vUD.Surname, N''), N''), '<No Claim Handler Name>'), 30) AS ClaimHandlerName,
			CLM.UserId AS ClaimHandlerId,
			CONVERT(NVARCHAR(1000), cSUM.SummaryValues) AS SummaryValues,
			KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Claimant.Title'), JSON_VALUE(CF.FlexData, '$.Claimant.FirstName'), JSON_VALUE(CF.FlexData, '$.Claimant.LastName'), JSON_VALUE(CF.FlexData, '$.Claimant.Company')) AS ClaimantName,
			ISNULL(KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Defendant.DefendantContacts[0].Title'), JSON_VALUE(CF.FlexData, '$.Defendant.DefendantContacts[0].FirstName'), JSON_VALUE(CF.FlexData, '$.Defendant.DefendantContacts[0].LastName'), JSON_VALUE(CF.FlexData, '$.Defendant.DefendantContacts[0].Company')),
				 KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Defendant.Title'), JSON_VALUE(CF.FlexData, '$.Defendant.FirstName'), JSON_VALUE(CF.FlexData, '$.Defendant.LastName'), JSON_VALUE(CF.FlexData, '$.Defendant.Company'))) AS DefendantName,
			KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Policyholder.Title'), JSON_VALUE(CF.FlexData, '$.Policyholder.FirstName'), JSON_VALUE(CF.FlexData, '$.Policyholder.LastName'), JSON_VALUE(CF.FlexData, '$.Policyholder.Company')) AS PolicyholderName,
			-- Temporary workaround for Kollect: use Solicitor to hold Third Party Insurer name
			LEFT(CASE WHEN PRC.ProcessCode = N'KOLLECT'
						THEN JSON_VALUE(CF.FlexData, '$.ThirdParty.Company')
						ELSE JSON_VALUE(CF.FlexData, '$.Solicitor.Company')
			  END, 50) AS SolicitorName,
			CONVERT(DATE, CLM.CreateDt) AS CreatedDate,
			PRC.ProcessName AS Process,
			CT.ClaimType,
			CONVERT(INT, JSON_VALUE(CF.FlexFlow, '$.progress')) AS Progress,
			CLM.ClaimStatusId,
			CS.ClaimStatus,
			CLM.ClosedDate,
			CLM.CreateDt,
			CLM.UpdateDt
	FROM	KLAiMFlex.Claims AS CLM
			INNER JOIN cSUM ON cSUM.ClaimId = CLM.ClaimId
			INNER JOIN KLAiMFlex.ClaimsFlex AS CF ON CF.ClaimId = CLM.ClaimId
			INNER JOIN KLAiMFlex.Processes AS PRC ON PRC.ProcessId = CLM.ProcessId
			INNER JOIN KLAiMFlex.ClaimTypes AS CT ON CT.ClaimTypeId = CLM.ClaimTypeId
			INNER JOIN KLAiMFlex.ClaimStatuses AS CS ON CS.ClaimStatusId = CLM.ClaimStatusId
			INNER JOIN KCG.vUserDetails AS vUD ON vUD.UserId = CLM.UserId;
GO
/****** Object:  View [KLAiMInfo].[vAllClaimsFlex]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vAllClaimsFlex]
AS
SELECT	CF.ClaimId,
        CF.SchemaId,
		SCH.SchemaName,
        CF.FlowId,
		FLW.FlowName,
		LEFT(JSON_VALUE(CF.FlexData, '$.OurRef'), 30) AS OurRef,
		LEFT(JSON_VALUE(CF.FlexData, '$.CourtClaimNo'), 30) AS CourtNo,
		CONVERT(DATE, JSON_VALUE(CF.FlexData, '$.AccidentDate')) AS AccidentDate,
		CONVERT(DATE, JSON_VALUE(CF.FlexData, '$.IssueDate')) AS IssueDate,
		CONVERT(DATE, JSON_VALUE(CF.FlexData, '$.ClaimFormDate')) AS ClaimFormDate,
		CONVERT(DATE, JSON_VALUE(CF.FlexData, '$.Claimant.DateofBirth')) AS ClaimantDOB,
		vCS.ClaimantName,
		vCS.DefendantName,
		vCS.PolicyholderName,
		vCS.SolicitorName AS Solicitor,
		--KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Claimant.Title'), JSON_VALUE(CF.FlexData, '$.Claimant.FirstName'), JSON_VALUE(CF.FlexData, '$.Claimant.LastName'), JSON_VALUE(CF.FlexData, '$.Claimant.Company')) AS ClaimantName,
		--KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Defendant.Title'), JSON_VALUE(CF.FlexData, '$.Defendant.FirstName'), JSON_VALUE(CF.FlexData, '$.Defendant.LastName'), JSON_VALUE(CF.FlexData, '$.Defendant.Company')) AS DefendantName,
		--KLAiM.fFullName(JSON_VALUE(CF.FlexData, '$.Policyholder.Title'), JSON_VALUE(CF.FlexData, '$.Policyholder.FirstName'), JSON_VALUE(CF.FlexData, '$.Policyholder.LastName'), JSON_VALUE(CF.FlexData, '$.Policyholder.Company')) AS PolicyholderName,
		--LEFT(JSON_VALUE(CF.FlexData, '$.Solicitor.Company'), 50) AS Solicitor,
		LEFT(JSON_VALUE(CF.FlexData, '$.Counsel.Company'), 50) AS Counsel,
        CF.FlexData,
        CF.FlexFlow,
        CF.CreateDt,
        CF.CreateUser,
        CF.UpdateDt,
        CF.UpdateUser
FROM	KLAiMFlex.ClaimsFlex AS CF
		INNER JOIN KLAiMFlex.vClaimSummaries AS vCS ON vCS.ClaimId = CF.ClaimId
		INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaId = CF.SchemaId
		INNER JOIN KLAiMFlex.Flows AS FLW ON FLW.FlowId = CF.FlowId;
GO
/****** Object:  View [KLAiMInfo].[vAllClaims]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vAllClaims]
AS
SELECT	CLM.ClaimId,
        CLM.ClientId,
		vCLI.ClientName,
        CLM.BusUnitId,
		vBU.BusUnitName,
        CLM.UserId,
		vUD.Username,
		vUD.FullName AS UserFullName,
        CLM.ClaimTypeId,
        CLM.ProcessId,
		PRC.ProcessName,
        CLM.ClaimStatusId,
		CS.ClaimStatus,
		CT.ClaimType,
        CLM.ClaimRef,
        CLM.Complete,
        CLM.ClosedDate,
        CLM.Deleted,
        vACF.SchemaId,
        vACF.SchemaName,
        vACF.FlowId,
        vACF.FlowName,
        vACF.OurRef,
        vACF.CourtNo,
        vACF.AccidentDate,
        vACF.IssueDate,
        vACF.ClaimFormDate,
        vACF.ClaimantDOB,
        vACF.ClaimantName,
        vACF.DefendantName,
        vACF.PolicyholderName,
        vACF.Solicitor,
        vACF.Counsel,
        vACF.FlexData,
        vACF.FlexFlow,
        CLM.CreateDt,
        CLM.CreateUser,
        CLM.UpdateDt,
        CLM.UpdateUser
FROM	KLAiMFlex.Claims AS CLM
		INNER JOIN KCG.vClients AS vCLI ON vCLI.ClientId = CLM.ClientId
		INNER JOIN KCG.vBusUnits AS vBU ON vBU.BusUnitId = CLM.BusUnitId
		INNER JOIN KCG.vUserDetails AS vUD ON vUD.UserId = CLM.UserId
		INNER JOIN KLAiMFlex.Processes AS PRC ON PRC.ProcessId = CLM.ProcessId
		INNER JOIN KLAiMFlex.ClaimTypes AS CT ON CT.ClaimTypeId = CLM.ClaimTypeId
		INNER JOIN KLAiMFlex.ClaimStatuses AS CS ON CS.ClaimStatusId = CLM.ClaimStatusId
		INNER JOIN KLAiMInfo.vAllClaimsFlex AS vACF ON vACF.ClaimId = CLM.ClaimId
GO
/****** Object:  Table [KLAiMFlex].[Activities]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Activities](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [nvarchar](50) NOT NULL,
	[ActivityCode] [nvarchar](30) NOT NULL,
	[ActivityDesc] [nvarchar](250) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Activities_ActivityCode] UNIQUE NONCLUSTERED 
(
	[ActivityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[Steps]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Steps](
	[StepId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityId] [int] NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[StepTypeId] [int] NOT NULL,
	[StepLabel] [nvarchar](30) NOT NULL,
	[StepName] [nvarchar](50) NOT NULL,
	[StepDesc] [nvarchar](250) NULL,
	[StartActivityId] [int] NULL,
	[WaitForActivity] [bit] NULL,
	[FlexStep] [nvarchar](max) NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Steps] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Steps_ActivityId_SequenceNo] UNIQUE NONCLUSTERED 
(
	[ActivityId] ASC,
	[SequenceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Steps_ActivityId_StepLabel] UNIQUE NONCLUSTERED 
(
	[ActivityId] ASC,
	[StepLabel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[Tasks]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Tasks](
	[TaskId] [int] IDENTITY(1,1) NOT NULL,
	[ClaimId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[TaskTypeId] [int] NOT NULL,
	[TaskName] [nvarchar](100) NOT NULL,
	[TaskDesc] [nvarchar](250) NULL,
	[StatusId] [int] NOT NULL,
	[FlexTask] [nvarchar](max) NOT NULL,
	[DueDate] [date] NULL,
	[CompleteUserId] [int] NULL,
	[CompleteDt] [datetime2](1) NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[TaskVisibility] [int] NULL,
	[TaskFlags] [int] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vAllTasks]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vAllTasks]
AS
SELECT	vAC.ClaimId,
        vAC.ClientId,
        vAC.ClientName,
        vAC.BusUnitId,
        vAC.BusUnitName,
        vAC.UserId AS ClaimUserId,
        vAC.Username AS ClaimUsername,
        vAC.UserFullName AS ClaimUserFullName,
        vAC.ClaimRef,
		vUD.Username,
		vUD.FullName AS UserFullName,
		TSK.TaskId,
        TSK.ActivityId,
        TSK.StepId,
        TSK.UserId,
        CASE TSK.TaskTypeId WHEN 1 THEN N'Document' WHEN 2 THEN N'Dialogue' ELSE N'*Unknown*' END AS TaskType,
        TSK.TaskName,
        TSK.StatusId,
        TSK.FlexTask,
        TSK.DueDate,
		TSK.TaskVisibility,
		TSK.TaskFlags,
        TSK.CompleteUserId,
		vUDc.Username AS CompleteUsername,
		vUDc.FullName AS CompleteUserFullName,
        TSK.CompleteDt,
        TSK.CreateDt,
        TSK.CreateUser,
        TSK.UpdateDt,
        TSK.UpdateUser
FROM	KLAiMInfo.vAllClaims AS vAC
		INNER JOIN KLAiMFlex.Tasks AS TSK ON TSK.ClaimId = vAC.ClaimId
		INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityId = TSK.ActivityId
		INNER JOIN KLAiMFlex.Steps AS STP ON STP.StepId = TSK.StepId
		INNER JOIN KCG.vUserDetails AS vUD ON vUD.UserId = TSK.UserId
		LEFT JOIN KCG.vUserDetails AS vUDc ON vUDc.UserId = TSK.UserId
		;
GO
/****** Object:  Table [KLAiMFlex].[ClientConfig]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ClientConfig](
	[ClientConfigId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[ClaimTypeId] [int] NOT NULL,
	[ProcessId] [int] NOT NULL,
	[SchemaId] [int] NOT NULL,
	[FlowId] [int] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClientConfig] PRIMARY KEY CLUSTERED 
(
	[ClientConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ClientConfig_ClientId_ClaimTypeId_ProcessId] UNIQUE NONCLUSTERED 
(
	[ClientId] ASC,
	[ClaimTypeId] ASC,
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vClientConfig]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vClientConfig]
AS
SELECT	CC.ClientConfigId,
        CC.ClientId,
		CLI.ClientName,
        CC.ProcessId,
		PRC.ProcessName,
        CC.ClaimTypeId,
		CT.ClaimType,
        CC.SchemaId,
		SCH.SchemaName,
        CC.FlowId,
		FLW.FlowName,
        CC.CreateDt,
        CC.CreateUser,
        CC.UpdateDt,
        CC.UpdateUser
FROM	KLAiMFlex.ClientConfig AS CC
		INNER JOIN KCG.vClients AS CLI ON CLI.ClientId = CC.ClientId
		INNER JOIN KLAiMFlex.Processes AS PRC ON PRC.ProcessId = CC.ProcessId
		INNER JOIN KLAiMFlex.ClaimTypes AS CT ON CT.ClaimTypeId = CC.ClaimTypeId
		INNER JOIN KLAiMFlex.[Schemas] AS SCH ON SCH.SchemaId = CC.SchemaId
		INNER JOIN KLAiMFlex.Flows AS FLW ON FLW.FlowId = CC.FlowId;
GO
/****** Object:  View [KLAiMFlex].[vFlows]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vFlows]
AS
SELECT	FLW.FlowId,
        FLW.FlowName,
        FLW.FlowCode,
        FLW.FlowVersion,
        FLW.FlowDesc,
        FLW.IsDisabled,
        FLW.CreateDt,
        FLW.CreateUser,
        FLW.UpdateDt,
        FLW.UpdateUser,
        FLW.FlexFlow,
		dTS.UrgentValue,
        dTS.UrgentDays,
        dTS.DueSoonValue,
        dTS.DueSoonDays,
        dTS.ToDoValue,
        dTS.CompleteValue,
        dTS.CancelledValue
FROM	KLAiMFlex.Flows AS FLW
		CROSS APPLY (
		SELECT	CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.urgent.value')) AS UrgentValue,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.urgent.days')) AS UrgentDays,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.duesoon.value')) AS DueSoonValue,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.duesoon.days')) AS DueSoonDays,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.todo.value')) AS ToDoValue,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.complete.value')) AS CompleteValue,
				CONVERT(INT, JSON_VALUE(S.TaskScheme, N'$.cancelled.value')) AS CancelledValue
		FROM	(SELECT	JSON_QUERY(FLW.FlexFlow, N'$.taskScheme') AS TaskScheme) AS S) AS dTS;
GO
/****** Object:  View [KLAiMFlex].[vTaskSummaries]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vTaskSummaries]
AS
SELECT	TSK.TaskId,
		CLM.ClaimId,
		CLM.ClientId,
		CLM.BusUnitId,
		CLM.UserId,
		CLM.ClaimRef,
		CLM.ClaimStatusId,
		CS.ClaimStatus,
		TSK.UserId AS ClaimHandlerId,
		vUD.FullName AS ClaimHandlerName,
		vUD.MgrUserId,
		TSK.TaskTypeId,
		TSK.TaskName,
		TSK.TaskDesc,
		TSK.StatusId,
		TSK.DueDate,
		CASE CASE WHEN TSK.StatusId <= 2 THEN 1 ELSE TSK.StatusId END
			WHEN 1
				THEN CASE WHEN DATEDIFF(DAY, CONVERT(DATE, SYSDATETIME()), ISNULL(TSK.DueDate, '2099-12-31')) <= vF.UrgentDays
						  THEN vF.UrgentValue
						  WHEN DATEDIFF(DAY, CONVERT(DATE, SYSDATETIME()), ISNULL(TSK.DueDate, '2099-12-31')) BETWEEN vF.UrgentDays + 1 AND vF.DueSoonDays
						  THEN vF.DueSoonValue
						  WHEN DATEDIFF(DAY, CONVERT(DATE, SYSDATETIME()), ISNULL(TSK.DueDate, '2099-12-31')) > vF.DueSoonDays
						  THEN vF.ToDoValue
						  ELSE vF.ToDoValue
					   END
			WHEN 99
				THEN vF.CompleteValue
			WHEN 100
				THEN vF.CancelledValue
			ELSE -1
		  END AS TaskUrgency,
		TSK.TaskVisibility,
		TSK.TaskFlags,
		TSK.FlexTask,
		TSK.CompleteDt AS CompletedDate,
		TSK.CompleteUserId AS CompletedClaimHandlerId,
		vUDc.FullName AS CompletedClaimHandlerName
FROM	KLAiMFlex.Claims AS CLM
		INNER JOIN KLAiMFlex.ClaimsFlex AS CF ON CF.ClaimId = CLM.ClaimId
		INNER JOIN KLAiMFlex.vFlows AS vF ON vF.FlowId = CF.FlowId
		INNER JOIN KLAiMFlex.ClaimStatuses AS CS ON CS.ClaimStatusId = CLM.ClaimStatusId
		INNER JOIN KLAiMFlex.Tasks AS TSK ON TSK.ClaimId = CLM.ClaimId
		INNER JOIN KCG.vUserDetails AS vUD ON vUD.UserId = TSK.UserId
		LEFT JOIN KCG.vUserDetails AS vUDc ON vUDc.UserId = TSK.CompleteUserId;
GO
/****** Object:  Table [KLAiMFlex].[FieldGroupComponents]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FieldGroupComponents](
	[ComponentId] [int] IDENTITY(1,1) NOT NULL,
	[ComponentType] [nvarchar](250) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_FieldGroupComponents] PRIMARY KEY CLUSTERED 
(
	[ComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_FieldGroupComponents_ComponentType] UNIQUE NONCLUSTERED 
(
	[ComponentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[FieldGroups]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FieldGroups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](30) NOT NULL,
	[GroupDesc] [nvarchar](200) NOT NULL,
	[GroupHeading] [nvarchar](50) NULL,
	[IsVisible] [bit] NULL,
	[KeepWithPrevious] [bit] NULL,
	[ComponentId] [int] NULL,
	[IconImg] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[VersionNo] [int] NOT NULL,
	[ParentGroupId] [int] NULL,
	[BaseGroupId] [int] NULL,
	[MinRepeat] [int] NULL,
	[MaxRepeat] [int] NULL,
	[FlexGroup] [nvarchar](30) NULL,
 CONSTRAINT [PK_FieldGroups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_FieldGroups_GroupCode_VersionNo] UNIQUE NONCLUSTERED 
(
	[GroupCode] ASC,
	[VersionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[SchemaFieldGroups]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[SchemaFieldGroups](
	[SchemaFieldGroupId] [int] IDENTITY(1,1) NOT NULL,
	[SchemaId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_SchemaFieldGroups] PRIMARY KEY CLUSTERED 
(
	[SchemaFieldGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_SchemaFieldGroups_SchemaId_GroupId] UNIQUE NONCLUSTERED 
(
	[SchemaId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMFlex].[vFlexSchemaFieldGroups]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vFlexSchemaFieldGroups]
AS
SELECT	SCH.SchemaId,
		SFG.SchemaFieldGroupId,
		FG.GroupId,
		SFG.SequenceNo,
		FG.ParentGroupId,
		FG.BaseGroupId,
        ISNULL(BFG.GroupName, FG.GroupName) AS GroupName, -- 23/02/2019 ATS - Inherit base group name, because of hard-coded wizard setup
		ISNULL(BFG.GroupCode, FG.GroupCode) AS GroupCode, -- Inherit base group code as well
		ISNULL(FG.GroupDesc, BFG.GroupDesc) AS GroupDesc,
		ISNULL(FG.GroupHeading, BFG.GroupHeading) AS GroupHeading,
		ISNULL(FG.IsVisible, BFG.IsVisible) AS IsVisible,
		ISNULL(FG.KeepWithPrevious, BFG.KeepWithPrevious) AS KeepWithPrevious,
		ISNULL(FG.MinRepeat, BFG.MinRepeat) AS MinRepeat,
		ISNULL(FG.MaxRepeat, BFG.MaxRepeat) AS MaxRepeat,
        FGC.ComponentType,
        ISNULL(FG.FlexGroup, BFG.FlexGroup) AS FlexGroup,
        ISNULL(FG.IconImg, BFG.IconImg) AS IconImg
FROM	KLAiMFlex.Schemas AS SCH
		INNER JOIN KLAiMFlex.SchemaFieldGroups AS SFG ON (SFG.SchemaId = SCH.SchemaId)
		INNER JOIN KLAiMFlex.FieldGroups AS FG ON (FG.GroupId = SFG.GroupId OR FG.ParentGroupId = SFG.GroupId)
		LEFT JOIN KLAiMFlex.FieldGroups AS BFG ON BFG.GroupId = FG.BaseGroupId
		LEFT JOIN KLAiMFlex.FieldGroupComponents AS FGC ON FGC.ComponentId = ISNULL(FG.ComponentId, BFG.ComponentId)
WHERE	FG.Deleted = 0;
GO
/****** Object:  Table [KLAiMFlex].[Fields]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[Fields](
	[FieldId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[FieldName] [nvarchar](50) NOT NULL,
	[FieldTypeId] [int] NULL,
	[SequenceNo] [int] NULL,
	[IsEnabled] [bit] NULL,
	[IsVisible] [bit] NULL,
	[IsMandatory] [bit] NULL,
	[Label] [nvarchar](50) NULL,
	[HelpText] [nvarchar](2000) NULL,
	[ToolTipText] [nvarchar](200) NULL,
	[ListCode] [nvarchar](50) NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[ActionType] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Fields_GroupId_FieldName] UNIQUE NONCLUSTERED 
(
	[GroupId] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[AssociatedFields]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[AssociatedFields](
	[AssociatedFieldId] [int] IDENTITY(1,1) NOT NULL,
	[TriggerFieldId] [int] NOT NULL,
	[TargetFieldId] [int] NOT NULL,
	[TriggerValue] [nvarchar](50) NOT NULL,
	[MakeVisible] [bit] NOT NULL,
	[MakeMandatory] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_AssociatedFields] PRIMARY KEY CLUSTERED 
(
	[AssociatedFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMFlex].[vFlexAssociatedFields]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vFlexAssociatedFields]
AS
SELECT	AF.AssociatedFieldId,
        AF.TriggerFieldId,
        AF.TargetFieldId,
		TF.FieldName AS TargetFieldName,
        AF.TriggerValue,
        AF.MakeVisible,
        AF.MakeMandatory
FROM	KLAiMFlex.AssociatedFields AS AF
		INNER JOIN KLAiMFlex.Fields AS TF ON TF.FieldId = AF.TargetFieldId;
GO
/****** Object:  Table [KLAiMFlex].[FlowActivities]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FlowActivities](
	[FlowActivityId] [int] IDENTITY(1,1) NOT NULL,
	[FlowId] [int] NOT NULL,
	[ActivityId] [int] NOT NULL,
	[SequenceNo] [int] NOT NULL,
	[IsBootstrap] [bit] NOT NULL,
	[MilestoneValue] [int] NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_FlowActivities] PRIMARY KEY CLUSTERED 
(
	[FlowActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_FlowActivities_FlowId_SequenceNo] UNIQUE NONCLUSTERED 
(
	[FlowId] ASC,
	[SequenceNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vFlexFlowsActivities]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vFlexFlowsActivities]
AS
SELECT	TOP (100) PERCENT
		FLW.FlowId,
        FLW.FlowName,
		FLW.FlowCode,
        FLW.FlowVersion,
        FA.SequenceNo AS ActivitySeqNo,
		FA.IsBootstrap,
		FA.MilestoneValue,
        FA.ActivityId,
        ACT.ActivityName,
        FLW.CreateDt,
        FLW.CreateUser,
        FLW.UpdateDt,
        FLW.UpdateUser
FROM	KLAiMFlex.Flows AS FLW
		INNER JOIN KLAiMFlex.FlowActivities AS FA ON FA.FlowId = FLW.FlowId
		INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityId = FA.ActivityId
													AND ACT.Deleted = 0
ORDER BY FLW.FlowId, FA.SequenceNo, ACT.ActivityCode;
GO
/****** Object:  Table [KLAiMFlex].[ProcessClaimTypes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ProcessClaimTypes](
	[ProcessClaimTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProcessId] [int] NOT NULL,
	[ClaimTypeId] [int] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProcessClaimTypes] PRIMARY KEY CLUSTERED 
(
	[ProcessClaimTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ProcessClaimTypes_ProcessId_ClaimTypeId] UNIQUE NONCLUSTERED 
(
	[ProcessId] ASC,
	[ClaimTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vProcessClaimTypes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vProcessClaimTypes]
AS
SELECT	PCT.ProcessClaimTypeId,
		PCT.ProcessId,
		PRC.ProcessName,
		PRC.ProcessCode,
		PCT.ClaimTypeId,
		CT.ClaimType,
		CT.ClaimTypeCode
FROM	KLAiMFlex.ProcessClaimTypes AS PCT
		INNER JOIN KLAiMFlex.Processes AS PRC ON PRC.ProcessId = PCT.ProcessId
		INNER JOIN KLAiMFlex.ClaimTypes AS CT ON CT.ClaimTypeId = PCT.ClaimTypeId;
GO
/****** Object:  Table [KLAiMFlex].[FieldTypes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FieldTypes](
	[FieldTypeId] [int] IDENTITY(1,1) NOT NULL,
	[FieldType] [nvarchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED 
(
	[FieldTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_FieldTypes_FieldType] UNIQUE NONCLUSTERED 
(
	[FieldType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vFlexFields]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vFlexFields]
AS
SELECT	TOP (100) PERCENT
		FLD.FieldId,
        FLD.GroupId,
		FG.GroupName,
		FG.GroupCode,
        FLD.FieldName,
        FLD.FieldTypeId,
		FT.FieldType,
        FLD.SequenceNo,
        FLD.IsEnabled,
        FLD.IsVisible,
        FLD.IsMandatory,
        FLD.DefaultValue,
        FLD.Label,
        FLD.HelpText,
        FLD.ToolTipText,
        FLD.ListCode,
        FLD.RowVsn,
        FLD.CreateDt,
        FLD.CreateUser,
        FLD.UpdateDt,
        FLD.UpdateUser
FROM	KLAiMFlex.Fields AS FLD
		INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupId = FLD.GroupId
		INNER JOIN KLAiMFlex.FieldTypes AS FT ON FT.FieldTypeId = FLD.FieldTypeId
GO
/****** Object:  Table [KLAiMFlex].[StepTypes]    Script Date: 01/03/2019 14:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[StepTypes](
	[StepTypeId] [int] NOT NULL,
	[StepType] [nvarchar](20) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_StepTypes] PRIMARY KEY CLUSTERED 
(
	[StepTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_StepTypes_StepType] UNIQUE NONCLUSTERED 
(
	[StepType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vFlexActivitiesSteps]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vFlexActivitiesSteps]
AS
SELECT	TOP (100) PERCENT
		ACT.ActivityId,
		ACT.ActivityCode,
		ACT.ActivityName,
		STP.StepId,
        STP.StepName,
        STP.SequenceNo,
		STP.StepTypeId,
		ST.StepType,
        CONVERT(NVARCHAR(10), STP.StepTypeId) + N': ' + ST.StepType AS StepTypeDesc,
        STP.StepDesc,
		STP.StartActivityId,
		SACT.ActivityCode AS StartActivityCode,
        CONVERT(NVARCHAR(10), STP.StartActivityId) + N': ' + SACT.ActivityCode AS StartActivityDesc,
		STP.WaitForActivity,
        STP.FlexStep,
        --STP.ConditionExpr,
        --CONVERT(NVARCHAR(20), STP.ConditionTrue) + N': ' + CASE STP.ConditionTrue WHEN 1 THEN N'Continue' WHEN 2 THEN N'Wait' WHEN 3 THEN N'Skip' ELSE N'* Invalid *' END AS ConditionTrue,
        --CONVERT(NVARCHAR(20), STP.ConditionFalse) + N': ' + CASE STP.ConditionFalse WHEN 1 THEN N'Continue' WHEN 2 THEN N'Wait' WHEN 3 THEN N'Skip' ELSE N'* Invalid *' END AS ConditionFalse,
        --vSBI.BranchInfo,
        STP.CreateDt,
        STP.CreateUser,
        STP.UpdateDt,
        STP.UpdateUser
FROM	KLAiMFlex.Activities AS ACT
		INNER JOIN KLAiMFlex.Steps AS STP ON STP.ActivityId = ACT.ActivityId
		INNER JOIN KLAiMFlex.StepTypes AS ST ON ST.StepTypeId = STP.StepTypeId
		LEFT JOIN KLAiMFlex.Activities AS SACT ON SACT.ActivityId = STP.StartActivityId
		-- LEFT JOIN KLAiMInfo.vFlexStepBranchInfos AS vSBI ON vSBI.StepId = STP.StepId
ORDER BY ACT.ActivityCode, STP.SequenceNo
GO
/****** Object:  Table [KLAiMDoc].[DocTypes]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeCode] [nvarchar](30) NOT NULL,
	[TypeVersion] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[LongName] [nvarchar](100) NOT NULL,
	[ClassId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocTypes_TypeCode_TypeVersion] UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC,
	[TypeVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocClasses]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocClasses](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassCode] [nvarchar](10) NOT NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[FamilyId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocClasses] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocClasses_ClassCode] UNIQUE NONCLUSTERED 
(
	[ClassCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocTemplates]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocTemplates](
	[TemplatesId] [int] IDENTITY(1,1) NOT NULL,
	[TemplatesCode] [nvarchar](30) NOT NULL,
	[TemplatesName] [nvarchar](50) NOT NULL,
	[FamilyId] [int] NULL,
	[ClassId] [int] NULL,
	[TypeId] [int] NULL,
	[ClientId] [int] NULL,
	[BusUnitId] [int] NULL,
	[BinaryUid] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocTemplates] PRIMARY KEY CLUSTERED 
(
	[TemplatesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocTemplates_TemplatesCode] UNIQUE NONCLUSTERED 
(
	[TemplatesCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocBinaries]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocBinaries](
	[BinaryId] [int] IDENTITY(1,1) NOT NULL,
	[BinaryUid] [uniqueidentifier] NOT NULL,
	[BinaryName] [nvarchar](100) NOT NULL,
	[BinaryContent] [varbinary](max) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocBinaries] PRIMARY KEY CLUSTERED 
(
	[BinaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocBinaries_BinaryUid] UNIQUE NONCLUSTERED 
(
	[BinaryUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vDocTypesTemplates]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vDocTypesTemplates]
AS
WITH cDTT
AS
(	SELECT	DT.TypeId,
			TPL.FamilyId AS TplFamilyId,
			TPL.ClassId AS TplClassId,
			TPL.TypeId AS TplDocTypeId,
            TPL.TemplatesCode,
            TPL.TemplatesName,
            TPL.ClientId,
            TPL.BusUnitId,
            TPL.BinaryUid,
			ROW_NUMBER() OVER(PARTITION BY DT.TypeId ORDER BY DT.TypeId, TPL.FamilyId, TPL.ClassId DESC, TPL.TypeId DESC) AS TRank
	FROM	KLAiMDoc.DocTypes AS DT
			INNER JOIN KLAiMDoc.DocClasses AS DC ON DC.ClassId = DT.ClassId
			LEFT JOIN KLAiMDoc.DocTemplates AS TPL
					ON (TPL.FamilyId = DC.FamilyId
						AND (TPL.ClassId = DT.ClassId
								OR TPL.ClassId IS NULL)
						AND (TPL.TypeId = DT.TypeId
								OR TPL.TypeId IS NULL)
						AND TPL.Deleted = 0)
)
SELECT	DT.TypeId,
        DT.TypeCode,
        DT.TypeVersion,
        DT.TypeName,
        cDTT.TplFamilyId,
        cDTT.TplClassId,
        cDTT.TplDocTypeId,
        cDTT.TemplatesCode,
        cDTT.TemplatesName,
        cDTT.ClientId,
        cDTT.BusUnitId,
        cDTT.BinaryUid,
		DB.BinaryName
FROM	cDTT
		INNER JOIN KLAiMDoc.DocTypes AS DT ON DT.TypeId = cDTT.TypeId
		LEFT JOIN KLAiMDoc.DocBinaries AS DB ON DB.BinaryUid = cDTT.BinaryUid
WHERE	cDTT.TRank = 1;
GO
/****** Object:  Table [KLAiMDoc].[DocFamilies]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocFamilies](
	[FamilyId] [int] IDENTITY(1,1) NOT NULL,
	[FamilyCode] [nvarchar](10) NOT NULL,
	[FamilyName] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocFamilies] PRIMARY KEY CLUSTERED 
(
	[FamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocFamilies_FamilyCode] UNIQUE NONCLUSTERED 
(
	[FamilyCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocSubTypes]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocSubTypes](
	[SubTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[ChildTypeId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocSubTypes] PRIMARY KEY CLUSTERED 
(
	[SubTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [KLAiMInfo].[vDocTypes]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vDocTypes]
AS
SELECT	DT.TypeId,
		DF.FamilyCode,
		DC.ClassCode,
        DT.TypeCode,
        DT.TypeVersion,
        DT.TypeName,
        DT.LongName,
        DT.ClassId,
		DC.FamilyId,
        DT.Deleted,
		DTc.TypeId AS ChildTypeId,
        DTc.TypeCode AS ChildTypeCode,
        DTc.TypeVersion AS ChildTypeVersion,
        DTc.TypeName AS ChildTypeName,
        DTc.LongName AS ChildLongName,
        DTc.Deleted AS ChildDeleted
FROM KLAiMDoc.DocTypes AS DT
	INNER JOIN KLAiMDoc.DocClasses AS DC ON DC.ClassId = DT.ClassId
	INNER JOIN KLAiMDoc.DocFamilies AS DF ON DF.FamilyId = DC.FamilyId
	LEFT JOIN KLAiMDoc.DocSubTypes AS DST ON DST.TypeId = DT.TypeId
	LEFT JOIN KLAiMDoc.DocTypes AS DTc ON DTc.TypeId = DST.ChildTypeId;
GO
/****** Object:  View [KLAiMInfo].[vFlexFlowsActivitiesSteps]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vFlexFlowsActivitiesSteps]
AS
SELECT	TOP (100) PERCENT
		vFA.FlowId,
        vFA.FlowName,
		vFA.FlowCode,
        vFA.FlowVersion,
        vFA.ActivitySeqNo AS ActivitySeqNo,
        vFA.ActivityId,
        vFA.ActivityName,
		vFA.IsBootstrap,
		vFA.MilestoneValue,
        vFAS.StepId,
        vFAS.SequenceNo AS StepSeqNo,
		vFAS.StepTypeId,
        vFAS.StepType,
		vFAS.StepTypeDesc,
        vFAS.StepName,
		vFAS.StartActivityId,
		vFAS.StartActivityCode,
        vFAS.StartActivityDesc,
		vFAS.WaitForActivity,
        --vFAS.ConditionExpr,
        --vFAS.ConditionTrue,
        --vFAS.ConditionFalse,
		--vFAS.BranchInfo,
        vFAS.FlexStep
FROM	KLAiMInfo.vFlexFlowsActivities AS vFA
		INNER JOIN KLAiMInfo.vFlexActivitiesSteps AS vFAS ON vFAS.ActivityId = vFA.ActivityId
ORDER BY vFA.FlowId, vFA.ActivitySeqNo, vFA.ActivityId, vFAS.SequenceNo;
GO
/****** Object:  View [KLAiMFlex].[vFlexSchemaFields]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMFlex].[vFlexSchemaFields]
AS
WITH cFLD
AS
(	SELECT	FG.GroupId,
	        ISNULL(FLD.FieldId, BFLD.FieldId) AS FieldId,
			FLD.ActionType,
			ISNULL(FLD.FieldName, BFLD.FieldName) AS FieldName,
			ISNULL(FLD.FieldTypeId, BFLD.FieldTypeId) AS FieldTypeId,
			ISNULL(FLD.SequenceNo, BFLD.SequenceNo) AS SequenceNo,
			ISNULL(FLD.IsEnabled, BFLD.IsEnabled) AS IsEnabled,
			ISNULL(FLD.IsVisible, BFLD.IsVisible) AS IsVisible,
			ISNULL(FLD.IsMandatory, BFLD.IsMandatory) AS IsMandatory,
			ISNULL(FLD.DefaultValue, BFLD.DefaultValue) AS DefaultValue,
			ISNULL(FLD.ListCode, BFLD.ListCode) AS ListCode,
			ISNULL(FLD.Label, BFLD.Label) AS Label,
			ISNULL(FLD.HelpText, BFLD.HelpText) AS HelpText,
			ISNULL(FLD.ToolTipText, BFLD.ToolTipText) AS ToolTipText
	FROM	KLAiMFlex.FieldGroups AS FG
			INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId
			LEFT JOIN KLAiMFlex.Fields AS BFLD ON BFLD.GroupId = FG.BaseGroupId AND BFLD.FieldName = FLD.FieldName AND ISNULL(FLD.ActionType, 0) IN (1, 2)
	WHERE	ISNULL(FLD.ActionType, 0) <> 1
	UNION
	SELECT	FG.GroupId,
			FLD.FieldId,
			NULL AS ActionType,
			FLD.FieldName,
			FLD.FieldTypeId,
			FLD.SequenceNo,
			FLD.IsEnabled,
			FLD.IsVisible,
			FLD.IsMandatory,
			FLD.DefaultValue,
			FLD.ListCode,
			FLD.Label,
			FLD.HelpText,
			FLD.ToolTipText
	FROM	KLAiMFlex.FieldGroups AS FG
			INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.BaseGroupId
	WHERE	NOT EXISTS(
			SELECT	NULL
			FROM	KLAiMFlex.Fields AS PFLD
			WHERE	PFLD.GroupId = FG.GroupId
			AND		PFLD.FieldName = FLD.FieldName)
)
SELECT	vFSFG.SchemaFieldGroupId,
		SCH.SchemaCode,
		FLD.FieldId,
		vFSFG.SchemaId,
		vFSFG.GroupId,
		vFSFG.GroupCode,
		vFSFG.MinRepeat,
		vFSFG.MaxRepeat,
		FLD.ActionType,
		FLD.FieldName,
		FLD.FieldTypeId,
		FLD.SequenceNo,
		FLD.IsEnabled,
		FLD.IsVisible,
		FLD.IsMandatory,
		FLD.DefaultValue,
		FLD.ListCode,
		FLD.Label,
		FLD.HelpText,
		FLD.ToolTipText
FROM	KLAiMFlex.vFlexSchemaFieldGroups AS vFSFG
		INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaId = vFSFG.SchemaId
		INNER JOIN cFLD AS FLD ON FLD.GroupId = vFSFG.GroupId;
GO
/****** Object:  UserDefinedFunction [KLAiMFlex].[fFlexFlowActivities]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [KLAiMFlex].[fFlexFlowActivities]
(	@pClaimId INT
)
RETURNS TABLE
AS
	RETURN (
		SELECT	CF.ClaimId,
				CONVERT(INT, JSON_VALUE(ACT.Value, N'$.id')) AS ActivityId,
				CONVERT(INT, JSON_VALUE(ACT.Value, N'$.sequence')) AS SequenceNo,
				CONVERT(NVARCHAR(50), JSON_VALUE(ACT.Value, N'$.code')) AS ActivityCode,
				CONVERT(NVARCHAR(30), JSON_VALUE(ACT.Value, N'$.name')) AS ActivityName,
				CONVERT(NVARCHAR(20), JSON_VALUE(ACT.Value, N'$.status')) AS ActivityStatus,
				CONVERT(BIT, JSON_VALUE(ACT.Value, N'$.bootstrap')) AS Bootstrap,
				CONVERT(DATETIME2, JSON_VALUE(ACT.Value, N'$.startDt')) AS StartDt,
				CONVERT(DATETIME2, JSON_VALUE(ACT.Value, N'$.endDt')) AS EndDt,
				CONVERT(NVARCHAR(MAX), JSON_QUERY(ACT.Value, N'$.steps')) AS Steps,
				CONVERT(NVARCHAR(MAX), ACT.Value) AS Activity
		FROM	KLAiMFlex.ClaimsFlex AS CF
				CROSS APPLY OPENJSON(CF.FlexFlow, N'$.activities') AS ACT
		WHERE	CF.ClaimId = @pClaimId
		);
GO
/****** Object:  UserDefinedFunction [KLAiMFlex].[fFlexFlowActivitiesSteps]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [KLAiMFlex].[fFlexFlowActivitiesSteps]
(	@pClaimId INT
)
RETURNS TABLE
AS
	RETURN (
		SELECT	FFA.ClaimId,
				FFA.ActivityId,
				FFA.SequenceNo,
				FFA.ActivityCode,
				FFA.ActivityName,
				FFA.ActivityStatus,
				FFA.Bootstrap,
				CONVERT(INT, JSON_VALUE(STP.Value, N'$.id')) AS StepId,
				CONVERT(NVARCHAR(20), JSON_VALUE(STP.Value, N'$.type')) AS StepType,
				CONVERT(NVARCHAR(30), JSON_VALUE(STP.Value, N'$.label')) AS StepLabel,
				CONVERT(INT, JSON_VALUE(STP.Value, N'$.startActivityId')) AS StartActivityId,
				CONVERT(BIT, JSON_VALUE(STP.Value, N'$.waitForActivity')) AS WaitForActivity,
				CONVERT(NVARCHAR(20), JSON_VALUE(STP.Value, N'$.status')) AS StepStatus,
				STP.Value AS Steps
		FROM	KLAiMFlex.fFlexFlowActivities(@pClaimId) AS FFA
				CROSS APPLY OPENJSON(FFA.Steps, N'$') AS STP
		);
GO
/****** Object:  View [KLAiMInfo].[vStepStatuses]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	VIEW [KLAiMInfo].[vStepStatuses]
AS
SELECT	S.StepStatusId,
        S.StepStatus
FROM	(VALUES
			(0, N'Invalid'),
		    (1, N'Not Started'),
	        (2, N'Started'),
			(3, N'Awaiting Condition'),
	        (4, N'Awaiting Activity'),
	        (5, N'Awaiting Task'),
	        (99, N'Completed'),
	        (100, N'Skipped'),
	        (101, N'Cancelled')
		) AS S (StepStatusId, StepStatus);
GO
/****** Object:  Table [DataSync].[Claims_dss_tracking]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[Claims_dss_tracking](
	[ClaimId] [int] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DataSync.Claims_dss_tracking] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[ClaimsFlex_dss_tracking]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[ClaimsFlex_dss_tracking](
	[ClaimId] [int] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DataSync.ClaimsFlex_dss_tracking] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[ClaimStatuses_dss_tracking]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[ClaimStatuses_dss_tracking](
	[ClaimStatusId] [int] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DataSync.ClaimStatuses_dss_tracking] PRIMARY KEY CLUSTERED 
(
	[ClaimStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[ClaimTypes_dss_tracking]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[ClaimTypes_dss_tracking](
	[ClaimTypeId] [int] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DataSync.ClaimTypes_dss_tracking] PRIMARY KEY CLUSTERED 
(
	[ClaimTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[Processes_dss_tracking]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[Processes_dss_tracking](
	[ProcessId] [int] NOT NULL,
	[update_scope_local_id] [int] NULL,
	[scope_update_peer_key] [int] NULL,
	[scope_update_peer_timestamp] [bigint] NULL,
	[local_update_peer_key] [int] NOT NULL,
	[local_update_peer_timestamp] [timestamp] NOT NULL,
	[create_scope_local_id] [int] NULL,
	[scope_create_peer_key] [int] NULL,
	[scope_create_peer_timestamp] [bigint] NULL,
	[local_create_peer_key] [int] NOT NULL,
	[local_create_peer_timestamp] [bigint] NOT NULL,
	[sync_row_is_tombstone] [int] NOT NULL,
	[last_change_datetime] [datetime] NULL,
 CONSTRAINT [PK_DataSync.Processes_dss_tracking] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[provision_marker_dss]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[provision_marker_dss](
	[object_id] [int] NOT NULL,
	[owner_scope_local_id] [int] NOT NULL,
	[provision_scope_local_id] [int] NULL,
	[provision_timestamp] [bigint] NOT NULL,
	[provision_local_peer_key] [int] NOT NULL,
	[provision_scope_peer_key] [int] NULL,
	[provision_scope_peer_timestamp] [bigint] NULL,
	[provision_datetime] [datetime] NULL,
	[state] [int] NULL,
	[version] [timestamp] NOT NULL,
 CONSTRAINT [PK_DataSync.provision_marker_dss] PRIMARY KEY CLUSTERED 
(
	[owner_scope_local_id] ASC,
	[object_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[schema_info_dss]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[schema_info_dss](
	[schema_major_version] [int] NOT NULL,
	[schema_minor_version] [int] NOT NULL,
	[schema_extended_info] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DataSync.schema_info_dss] PRIMARY KEY CLUSTERED 
(
	[schema_major_version] ASC,
	[schema_minor_version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[scope_config_dss]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[scope_config_dss](
	[config_id] [uniqueidentifier] NOT NULL,
	[config_data] [xml] NOT NULL,
	[scope_status] [char](1) NULL,
 CONSTRAINT [PK_DataSync.scope_config_dss] PRIMARY KEY CLUSTERED 
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [DataSync].[scope_info_dss]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DataSync].[scope_info_dss](
	[scope_local_id] [int] IDENTITY(1,1) NOT NULL,
	[scope_id] [uniqueidentifier] NOT NULL,
	[sync_scope_name] [nvarchar](100) NOT NULL,
	[scope_sync_knowledge] [varbinary](max) NULL,
	[scope_tombstone_cleanup_knowledge] [varbinary](max) NULL,
	[scope_timestamp] [timestamp] NULL,
	[scope_config_id] [uniqueidentifier] NULL,
	[scope_restore_count] [int] NOT NULL,
	[scope_user_comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataSync.scope_info_dss] PRIMARY KEY CLUSTERED 
(
	[sync_scope_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KCG].[BusUnits]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[BusUnits]
(
	[BusUnitId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[BusUnitCode] [nvarchar](10) NOT NULL,
	[BusUnitName] [nvarchar](50) NOT NULL,
	[ParBusUnitId] [int] NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'BusUnits')
GO
/****** Object:  Table [KCG].[Clients]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[Clients]
(
	[ClientId] [int] NOT NULL,
	[ClientCode] [nvarchar](10) NOT NULL,
	[ClientName] [nvarchar](50) NOT NULL,
	[ClientSName] [nvarchar](20) NOT NULL,
	[Addr] [nvarchar](200) NOT NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NOT NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NOT NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'Clients')
GO
/****** Object:  Table [KCG].[UserDetails]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE [KCG].[UserDetails]
(
	[UserId] [int] NOT NULL,
	[SubjectId] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](100) NOT NULL,
	[UserCode] [nvarchar](10) NOT NULL,
	[ClientId] [int] NOT NULL,
	[BusUnitId] [int] NULL,
	[MgrUserId] [int] NULL,
	[Forename] [nvarchar](250) NULL,
	[Surname] [nvarchar](250) NULL,
	[SecurityAnswNr1] [nvarchar](250) NULL,
	[SecurityAnswNr2] [nvarchar](250) NULL,
	[SecurityAnswNr3] [nvarchar](250) NULL,
	[PasswordExpiry] [datetime2](7) NOT NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](20) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](250) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL
)
WITH (DATA_SOURCE = [ArmDbSource],SCHEMA_NAME = N'KCG',OBJECT_NAME = N'UserDetails')
GO
/****** Object:  Table [KLAiM].[CounselCourts]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[CounselCourts](
	[CounselCourtId] [int] IDENTITY(1,1) NOT NULL,
	[CourtId] [int] NOT NULL,
	[CounselId] [int] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_CounselCourts] PRIMARY KEY CLUSTERED 
(
	[CounselCourtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_CounselCourts_CourtId_CounselId] UNIQUE NONCLUSTERED 
(
	[CourtId] ASC,
	[CounselId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[Counsels]    Script Date: 01/03/2019 14:22:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[Counsels](
	[CounselId] [int] IDENTITY(1,1) NOT NULL,
	[CounselSetId] [int] NOT NULL,
	[CounselName] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](30) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Title] [nvarchar](20) NULL,
	[Forename] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Counsels] PRIMARY KEY CLUSTERED 
(
	[CounselId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Counsels_CounselSetId_CounselName] UNIQUE NONCLUSTERED 
(
	[CounselSetId] ASC,
	[CounselName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[CounselSets]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [KLAiM].[CounselSets](
	[CounselSetId] [int] IDENTITY(1,1) NOT NULL,
	[CounselSetName] [nvarchar](50) NOT NULL,
	[ClientId] [int] NULL,
	[ClientIdNN]  AS (isnull([ClientId],(-1))) PERSISTED NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_CounselSets] PRIMARY KEY CLUSTERED 
(
	[CounselSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_CounselSets_ClientIdNN] UNIQUE NONCLUSTERED 
(
	[ClientIdNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[Courts]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[Courts](
	[CourtId] [int] IDENTITY(1,1) NOT NULL,
	[CourtName] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](30) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Courts] PRIMARY KEY CLUSTERED 
(
	[CourtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Courts_CourtName] UNIQUE NONCLUSTERED 
(
	[CourtName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[Defendants]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[Defendants](
	[DefendantId] [int] IDENTITY(1,1) NOT NULL,
	[DefSetId] [int] NOT NULL,
	[DefendantName] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Defendants] PRIMARY KEY CLUSTERED 
(
	[DefendantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Defendants_DefSetId_DefendantName] UNIQUE NONCLUSTERED 
(
	[DefSetId] ASC,
	[DefendantName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[DefendantSets]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [KLAiM].[DefendantSets](
	[DefSetId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NULL,
	[ClientIdNN]  AS (isnull([ClientId],(-1))) PERSISTED NOT NULL,
	[BusUnitId] [int] NULL,
	[BusUnitIdNN]  AS (isnull([BusUnitId],(-1))) PERSISTED NOT NULL,
	[DefSetName] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DefendantSets] PRIMARY KEY CLUSTERED 
(
	[DefSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DefendantSets_ClientIdNN_BusUnitIdNN] UNIQUE NONCLUSTERED 
(
	[ClientIdNN] ASC,
	[BusUnitIdNN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[ListValues]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[ListValues](
	[ValueId] [int] IDENTITY(1,1) NOT NULL,
	[ValueSetId] [int] NOT NULL,
	[ValueName] [nvarchar](30) NOT NULL,
	[ValueDesc] [nvarchar](50) NOT NULL,
	[ValueNum] [int] NULL,
	[ValueTrans] [nvarchar](250) NULL,
	[SortValue] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ListValues] PRIMARY KEY CLUSTERED 
(
	[ValueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ListValues_ValueSetId_ValueName] UNIQUE NONCLUSTERED 
(
	[ValueSetId] ASC,
	[ValueName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[ListValueSets]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[ListValueSets](
	[ValueSetId] [int] IDENTITY(1,1) NOT NULL,
	[ValueSetName] [nvarchar](50) NOT NULL,
	[ListId] [int] NOT NULL,
	[ClientId] [int] NULL,
	[BusUnitId] [int] NULL,
	[UserId] [int] NULL,
	[DefaultSort] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ListValueSets] PRIMARY KEY CLUSTERED 
(
	[ValueSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ListValueSets_ListId_ClientId_BusUnitId_UserId] UNIQUE NONCLUSTERED 
(
	[ListId] ASC,
	[ClientId] ASC,
	[BusUnitId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ListValueSets_ListId_ValueSetName] UNIQUE NONCLUSTERED 
(
	[ListId] ASC,
	[ValueSetName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[Solicitors]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiM].[Solicitors](
	[SolicitorId] [int] IDENTITY(1,1) NOT NULL,
	[SolSetId] [int] NOT NULL,
	[SolicitorName] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Addr] [nvarchar](200) NULL,
	[Town] [nvarchar](30) NULL,
	[County] [nvarchar](30) NULL,
	[Postcode] [nvarchar](20) NULL,
	[Dx] [nvarchar](40) NULL,
	[Tel] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
	[Email] [nvarchar](200) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Solicitors] PRIMARY KEY CLUSTERED 
(
	[SolicitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Solicitors_SolSetId_SolicitorName] UNIQUE NONCLUSTERED 
(
	[SolSetId] ASC,
	[SolicitorName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiM].[SolicitorSets]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [KLAiM].[SolicitorSets](
	[SolSetId] [int] IDENTITY(1,1) NOT NULL,
	[SolSetName] [nvarchar](50) NOT NULL,
	[ClientId] [int] NULL,
	[ClientIdNN]  AS (isnull([ClientId],(-1))) PERSISTED NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[SolType] [int] NOT NULL,
 CONSTRAINT [PK_SolicitorSets] PRIMARY KEY CLUSTERED 
(
	[SolSetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_SolicitorSets_ClientIdNN_SolType] UNIQUE NONCLUSTERED 
(
	[ClientIdNN] ASC,
	[SolType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocArchetypes]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocArchetypes](
	[ArchId] [int] IDENTITY(1,1) NOT NULL,
	[ArchCode] [nvarchar](20) NOT NULL,
	[ArchVersion] [int] NOT NULL,
	[ArchName] [nvarchar](50) NOT NULL,
	[BinaryUid] [uniqueidentifier] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocArchetypes] PRIMARY KEY CLUSTERED 
(
	[ArchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocArchetypes_ArchCode_ArchVersion] UNIQUE NONCLUSTERED 
(
	[ArchCode] ASC,
	[ArchVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocElementInputs]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocElementInputs](
	[ElmInputId] [int] IDENTITY(1,1) NOT NULL,
	[ElementId] [int] NOT NULL,
	[InputId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocElementInputs] PRIMARY KEY CLUSTERED 
(
	[ElmInputId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocElements]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocElements](
	[ElementId] [int] IDENTITY(1,1) NOT NULL,
	[ElementCode] [nvarchar](50) NOT NULL,
	[ElementName] [nvarchar](50) NOT NULL,
	[FamilyId] [int] NULL,
	[ClassId] [int] NULL,
	[TypeId] [int] NULL,
	[FormMap] [nvarchar](100) NULL,
	[TempMap] [nvarchar](100) NULL,
	[ElmTypeId] [int] NOT NULL,
	[ElementText] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocElements] PRIMARY KEY CLUSTERED 
(
	[ElementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocElements_ElementCode] UNIQUE NONCLUSTERED 
(
	[ElementCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocElementTypes]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocElementTypes](
	[ElmTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ElmTypeCode] [nvarchar](20) NOT NULL,
	[ElmTypeName] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocElementTypes] PRIMARY KEY CLUSTERED 
(
	[ElmTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocElementTypes_ElmTypeCode] UNIQUE NONCLUSTERED 
(
	[ElmTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocInputs]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocInputs](
	[InputId] [int] IDENTITY(1,1) NOT NULL,
	[InputCode] [nvarchar](50) NOT NULL,
	[InputName] [nvarchar](100) NOT NULL,
	[InpTypeId] [int] NOT NULL,
	[InputText] [nvarchar](max) NULL,
	[SourceTypeId] [int] NULL,
	[SourceTag] [nvarchar](max) NULL,
	[PromptId] [int] NULL,
	[DefaultValue] [nvarchar](50) NULL,
	[RuleEval] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocInputs] PRIMARY KEY CLUSTERED 
(
	[InputId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocInputs_InputCode] UNIQUE NONCLUSTERED 
(
	[InputCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocInputTypes]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocInputTypes](
	[InpTypeId] [int] IDENTITY(1,1) NOT NULL,
	[InpTypeCode] [nvarchar](50) NOT NULL,
	[InpTypeName] [nvarchar](100) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocInputTypes] PRIMARY KEY CLUSTERED 
(
	[InpTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocInputTypes_InpTypeCode] UNIQUE NONCLUSTERED 
(
	[InpTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocPromptOptions]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocPromptOptions](
	[PromptOptId] [int] IDENTITY(1,1) NOT NULL,
	[PromptId] [int] NOT NULL,
	[PromptOptSeqNum] [int] NOT NULL,
	[PromptOptName] [nvarchar](max) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocPromptOptions] PRIMARY KEY CLUSTERED 
(
	[PromptOptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocPromptOptions_PromptId_PromptOptSeqNum] UNIQUE NONCLUSTERED 
(
	[PromptId] ASC,
	[PromptOptSeqNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocPrompts]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocPrompts](
	[PromptId] [int] IDENTITY(1,1) NOT NULL,
	[PromptCode] [nvarchar](20) NOT NULL,
	[PromptName] [nvarchar](50) NOT NULL,
	[PromptText] [nvarchar](100) NOT NULL,
	[Mandatory] [bit] NOT NULL,
	[MinValue] [nvarchar](100) NULL,
	[MaxValue] [nvarchar](100) NULL,
	[ManValMessage] [nvarchar](100) NULL,
	[OthValMessage] [nvarchar](100) NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
	[HelpText] [nvarchar](max) NULL,
	[TooltipText] [nvarchar](150) NULL,
 CONSTRAINT [PK_DocPrompts] PRIMARY KEY CLUSTERED 
(
	[PromptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocPrompts_PromptCode] UNIQUE NONCLUSTERED 
(
	[PromptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[Docs]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[Docs](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ClientId] [int] NOT NULL,
	[ClaimId] [int] NOT NULL,
	[DocTitle] [nvarchar](100) NOT NULL,
	[DocInputs] [nvarchar](4000) NOT NULL,
	[TemplateInputs] [nvarchar](max) NOT NULL,
	[TemplatesId] [int] NULL,
	[BinaryUid] [uniqueidentifier] NULL,
	[StatusId] [int] NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_Docs] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_Docs_BinaryUid] UNIQUE NONCLUSTERED 
(
	[BinaryUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocSourceType]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocSourceType](
	[SourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SourceTypeCode] [nvarchar](50) NOT NULL,
	[SourceTypeName] [nvarchar](100) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocSourceType] PRIMARY KEY CLUSTERED 
(
	[SourceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocSourceType_SourceTypeCode] UNIQUE NONCLUSTERED 
(
	[SourceTypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMDoc].[DocStatus]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMDoc].[DocStatus](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusCode] [nvarchar](10) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocStatus] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_DocStatus_StatusCode] UNIQUE NONCLUSTERED 
(
	[StatusCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[ClaimLocks]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[ClaimLocks](
	[ClaimId] [int] NOT NULL,
	[LockUid] [uniqueidentifier] NOT NULL,
	[LockType] [int] NOT NULL,
	[LockDt] [datetimeoffset](7) NOT NULL,
	[LockUser] [nvarchar](100) NOT NULL,
	[ExpiryDt] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [PK_ClaimLocks] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[FlowLogEntries]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FlowLogEntries](
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
	[LogId] [int] NOT NULL,
	[LogMessage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FlowLogEntries] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [KLAiMFlex].[FlowLogs]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMFlex].[FlowLogs](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[ClaimId] [int] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](1) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](1) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_FlowLogs] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[CounselMaps]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[CounselMaps](
	[counShare_id] [int] NOT NULL,
	[client_id] [int] NOT NULL,
	[counCompany] [nvarchar](50) NULL,
	[CounselSetId] [int] NOT NULL,
	[CounselId] [int] NOT NULL,
 CONSTRAINT [PK_CounselMaps] PRIMARY KEY CLUSTERED 
(
	[counShare_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[CourtMaps]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[CourtMaps](
	[crt_id] [int] NOT NULL,
	[CourtId] [int] NOT NULL,
 CONSTRAINT [PK_CourtMaps] PRIMARY KEY CLUSTERED 
(
	[crt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[DefendantMaps]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[DefendantMaps](
	[defLU_id] [int] NOT NULL,
	[dep_id] [int] NOT NULL,
	[defCompany] [nvarchar](50) NULL,
	[DefSetId] [int] NOT NULL,
	[DefendantId] [int] NOT NULL,
 CONSTRAINT [PK_DefendantMaps] PRIMARY KEY CLUSTERED 
(
	[defLU_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[FlexClaimTypes]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[FlexClaimTypes](
	[claimType_id] [nvarchar](3) NOT NULL,
	[ClaimTypeName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_FlexClaimTypes] PRIMARY KEY CLUSTERED 
(
	[claimType_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[FlexProcesses]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[FlexProcesses](
	[process_code] [nvarchar](3) NOT NULL,
	[ProcessName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FlexProcesses] PRIMARY KEY CLUSTERED 
(
	[process_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMMig].[SolicitorMaps]    Script Date: 01/03/2019 14:22:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMMig].[SolicitorMaps](
	[solShare_id] [int] NOT NULL,
	[client_id] [int] NOT NULL,
	[solCompany] [nvarchar](50) NULL,
	[SolSetId] [int] NOT NULL,
	[SolicitorId] [int] NOT NULL,
 CONSTRAINT [PK_SolicitorMaps] PRIMARY KEY CLUSTERED 
(
	[solShare_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMSys].[DbVersion]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMSys].[DbVersion](
	[id] [int] NOT NULL,
	[DbVersion] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [KLAiMSys].[ListDefs]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [KLAiMSys].[ListDefs](
	[ListId] [int] IDENTITY(1,1) NOT NULL,
	[ListName] [nvarchar](30) NOT NULL,
	[ListCode] [nvarchar](20) NOT NULL,
	[ListDesc] [nvarchar](250) NOT NULL,
	[SysDef] [bit] NOT NULL,
	[ClientDef] [bit] NOT NULL,
	[BusUnitDef] [bit] NOT NULL,
	[UserDef] [bit] NOT NULL,
	[DefaultSort] [int] NOT NULL,
	[TransType] [int] NOT NULL,
	[AllowNull] [bit] NOT NULL,
	[MinLen] [int] NULL,
	[MaxLen] [int] NULL,
	[Deleted] [bit] NOT NULL,
	[RowVsn] [timestamp] NOT NULL,
	[CreateDt] [datetime2](7) NOT NULL,
	[CreateUser] [nvarchar](100) NULL,
	[UpdateDt] [datetime2](7) NULL,
	[UpdateUser] [nvarchar](100) NULL,
 CONSTRAINT [PK_ListDefs] PRIMARY KEY CLUSTERED 
(
	[ListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ListDefs_ListCode] UNIQUE NONCLUSTERED 
(
	[ListCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UN_ListDefs_ListName] UNIQUE NONCLUSTERED 
(
	[ListName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [DataSync].[scope_info_dss] ADD  DEFAULT (newid()) FOR [scope_id]
GO
ALTER TABLE [DataSync].[scope_info_dss] ADD  DEFAULT ((0)) FOR [scope_restore_count]
GO
ALTER TABLE [KLAiM].[CounselCourts] ADD  CONSTRAINT [DF_CounselCourts_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[Counsels] ADD  CONSTRAINT [DF_Counsels_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[Counsels] ADD  CONSTRAINT [DF_Counsels_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[Counsels] ADD  CONSTRAINT [DF_Counsels_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[CounselSets] ADD  CONSTRAINT [DF_CounselSets_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[CounselSets] ADD  CONSTRAINT [DF_CounselSets_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[CounselSets] ADD  CONSTRAINT [DF_CounselSets_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[Courts] ADD  CONSTRAINT [DF_Courts_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[Courts] ADD  CONSTRAINT [DF_Courts_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[Courts] ADD  CONSTRAINT [DF_Courts_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[Defendants] ADD  CONSTRAINT [DF_Defendants_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[Defendants] ADD  CONSTRAINT [DF_Defendants_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[DefendantSets] ADD  CONSTRAINT [DF_DefendantSets_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[DefendantSets] ADD  CONSTRAINT [DF_DefendantSets_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[DefendantSets] ADD  CONSTRAINT [DF_DefendantSets_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[ListValues] ADD  CONSTRAINT [DF_ListValues_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[ListValues] ADD  CONSTRAINT [DF_ListValues_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[ListValues] ADD  CONSTRAINT [DF_ListValues_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[ListValueSets] ADD  CONSTRAINT [DF_ListValueSets_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[ListValueSets] ADD  CONSTRAINT [DF_ListValueSets_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[ListValueSets] ADD  CONSTRAINT [DF_ListValueSets_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[Solicitors] ADD  CONSTRAINT [DF_Solicitors_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[Solicitors] ADD  CONSTRAINT [DF_Solicitors_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[Solicitors] ADD  CONSTRAINT [DF_Solicitors_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[SolicitorSets] ADD  CONSTRAINT [DF_SolicitorSets_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiM].[SolicitorSets] ADD  CONSTRAINT [DF_SolicitorSets_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiM].[SolicitorSets] ADD  CONSTRAINT [DF_SolicitorSets_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[SolicitorSets] ADD  CONSTRAINT [DF_SolicitorSets_SolType]  DEFAULT ((1)) FOR [SolType]
GO
ALTER TABLE [KLAiMDoc].[DocArchetypes] ADD  CONSTRAINT [DF_DocArchetypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocArchetypes] ADD  CONSTRAINT [DF_DocArchetypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocBinaries] ADD  CONSTRAINT [DF_DocBinaries_BinaryUid]  DEFAULT (newid()) FOR [BinaryUid]
GO
ALTER TABLE [KLAiMDoc].[DocBinaries] ADD  CONSTRAINT [DF_DocBinaries_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocBinaries] ADD  CONSTRAINT [DF_DocBinaries_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocClasses] ADD  CONSTRAINT [DF_DocClasses_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocClasses] ADD  CONSTRAINT [DF_DocClasses_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs] ADD  CONSTRAINT [DF_DocElementInputs_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs] ADD  CONSTRAINT [DF_DocElementInputs_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocElements] ADD  CONSTRAINT [DF_DocElements_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocElements] ADD  CONSTRAINT [DF_DocElements_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocElementTypes] ADD  CONSTRAINT [DF_DocElementTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocElementTypes] ADD  CONSTRAINT [DF_DocElementTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocFamilies] ADD  CONSTRAINT [DF_DocFamilies_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocFamilies] ADD  CONSTRAINT [DF_DocFamilies_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocInputs] ADD  CONSTRAINT [DF_DocInputs_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocInputs] ADD  CONSTRAINT [DF_DocInputs_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocInputTypes] ADD  CONSTRAINT [DF_DocInputTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocInputTypes] ADD  CONSTRAINT [DF_DocInputTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocPromptOptions] ADD  CONSTRAINT [DF_DocPromptOptions_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocPromptOptions] ADD  CONSTRAINT [DF_DocPromptOptions_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocPrompts] ADD  CONSTRAINT [DF_DocPrompts_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocPrompts] ADD  CONSTRAINT [DF_DocPrompts_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[Docs] ADD  CONSTRAINT [DF_Docs_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[Docs] ADD  CONSTRAINT [DF_Docs_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocSourceType] ADD  CONSTRAINT [DF_DocSourceType_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocSourceType] ADD  CONSTRAINT [DF_DocSourceType_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocStatus] ADD  CONSTRAINT [DF_DocStatus_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes] ADD  CONSTRAINT [DF_DocSubTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes] ADD  CONSTRAINT [DF_DocSubTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] ADD  CONSTRAINT [DF_DocTemplates_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] ADD  CONSTRAINT [DF_DocTemplates_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMDoc].[DocTypes] ADD  CONSTRAINT [DF_DocTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMDoc].[DocTypes] ADD  CONSTRAINT [DF_DocTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Activities] ADD  CONSTRAINT [DF_Activities_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[Activities] ADD  CONSTRAINT [DF_Activities_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Activities] ADD  CONSTRAINT [DF_Activities_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields] ADD  CONSTRAINT [DF_AssociatedFields_MakeVisible]  DEFAULT ((0)) FOR [MakeVisible]
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields] ADD  CONSTRAINT [DF_AssociatedFields_MakeMandatory]  DEFAULT ((0)) FOR [MakeMandatory]
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields] ADD  CONSTRAINT [DF_AssociatedFields_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields] ADD  CONSTRAINT [DF_AssociatedFields_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Claims] ADD  CONSTRAINT [DF_Claims_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[Claims] ADD  CONSTRAINT [DF_Claims_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Claims] ADD  CONSTRAINT [DF_Claims_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex] ADD  CONSTRAINT [DF_ClaimsFlex_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex] ADD  CONSTRAINT [DF_ClaimsFlex_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[ClaimStatuses] ADD  CONSTRAINT [DF_ClaimStatuses_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[ClaimStatuses] ADD  CONSTRAINT [DF_ClaimStatuses_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[ClaimStatuses] ADD  CONSTRAINT [DF_ClaimStatuses_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[ClaimTypes] ADD  CONSTRAINT [DF_ClaimTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[ClaimTypes] ADD  CONSTRAINT [DF_ClaimTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[ClaimTypes] ADD  CONSTRAINT [DF_ClaimTypes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] ADD  CONSTRAINT [DF_ClientConfig_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] ADD  CONSTRAINT [DF_ClientConfig_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FieldGroupComponents] ADD  CONSTRAINT [DF_FieldGroupComponents_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[FieldGroupComponents] ADD  CONSTRAINT [DF_FieldGroupComponents_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[FieldGroupComponents] ADD  CONSTRAINT [DF_FieldGroupComponents_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_KeepWithPrevious]  DEFAULT ((0)) FOR [KeepWithPrevious]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] ADD  CONSTRAINT [DF_FieldGroups_VersionNo]  DEFAULT ((1)) FOR [VersionNo]
GO
ALTER TABLE [KLAiMFlex].[Fields] ADD  CONSTRAINT [DF_Fields_IsEnabled]  DEFAULT ((0)) FOR [IsEnabled]
GO
ALTER TABLE [KLAiMFlex].[Fields] ADD  CONSTRAINT [DF_Fields_IsVisible]  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [KLAiMFlex].[Fields] ADD  CONSTRAINT [DF_Fields_IsMandatory]  DEFAULT ((0)) FOR [IsMandatory]
GO
ALTER TABLE [KLAiMFlex].[Fields] ADD  CONSTRAINT [DF_Fields_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Fields] ADD  CONSTRAINT [DF_Fields_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] ADD  CONSTRAINT [DF_FlowActivities_IsBootstrap]  DEFAULT ((0)) FOR [IsBootstrap]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] ADD  CONSTRAINT [DF_FlowActivities_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] ADD  CONSTRAINT [DF_FlowActivities_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[FlowLogs] ADD  CONSTRAINT [DF_FlowLogs_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[FlowLogs] ADD  CONSTRAINT [DF_FlowLogs_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Flows] ADD  CONSTRAINT [DF_Flows_IsDisabled]  DEFAULT ((0)) FOR [IsDisabled]
GO
ALTER TABLE [KLAiMFlex].[Flows] ADD  CONSTRAINT [DF_Flows_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Flows] ADD  CONSTRAINT [DF_Flows_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes] ADD  CONSTRAINT [DF_ProcessClaimTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes] ADD  CONSTRAINT [DF_ProcessClaimTypes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Processes] ADD  CONSTRAINT [DF_Processes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[Processes] ADD  CONSTRAINT [DF_Processes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Processes] ADD  CONSTRAINT [DF_Processes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups] ADD  CONSTRAINT [DF_SchemaFieldGroups_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups] ADD  CONSTRAINT [DF_SchemaFieldGroups_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Schemas] ADD  CONSTRAINT [DF_Schemas_IsDisabled]  DEFAULT ((0)) FOR [IsDisabled]
GO
ALTER TABLE [KLAiMFlex].[Schemas] ADD  CONSTRAINT [DF_Schemas_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Schemas] ADD  CONSTRAINT [DF_Schemas_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Steps] ADD  CONSTRAINT [DF_Steps_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Steps] ADD  CONSTRAINT [DF_Steps_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[StepTypes] ADD  CONSTRAINT [DF_StepTypes_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMFlex].[StepTypes] ADD  CONSTRAINT [DF_StepTypes_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[StepTypes] ADD  CONSTRAINT [DF_StepTypes_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Tasks] ADD  CONSTRAINT [DF_Tasks_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMFlex].[Tasks] ADD  CONSTRAINT [DF_Tasks_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiMFlex].[Tasks] ADD  CONSTRAINT [DF_Tasks_TaskVisibility]  DEFAULT ((-1)) FOR [TaskVisibility]
GO
ALTER TABLE [KLAiMFlex].[Tasks] ADD  CONSTRAINT [DF_Tasks_TaskFlags]  DEFAULT ((1)) FOR [TaskFlags]
GO
ALTER TABLE [KLAiMSys].[DbVersion] ADD  CONSTRAINT [DF_DbVersion_id]  DEFAULT ((1)) FOR [id]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_SysDef]  DEFAULT ((0)) FOR [SysDef]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_ClientDef]  DEFAULT ((0)) FOR [ClientDef]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_BusUnitDef]  DEFAULT ((0)) FOR [BusUnitDef]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_UserDef]  DEFAULT ((0)) FOR [UserDef]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_DefaultSort]  DEFAULT ((1)) FOR [DefaultSort]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_TransType]  DEFAULT ((0)) FOR [TransType]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_AllowNull]  DEFAULT ((0)) FOR [AllowNull]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_CreateDt]  DEFAULT (sysdatetime()) FOR [CreateDt]
GO
ALTER TABLE [KLAiMSys].[ListDefs] ADD  CONSTRAINT [DF_ListDefs_CreateUser]  DEFAULT (suser_sname()) FOR [CreateUser]
GO
ALTER TABLE [KLAiM].[CounselCourts]  WITH CHECK ADD  CONSTRAINT [FK_CounselCourts_Counsels] FOREIGN KEY([CounselId])
REFERENCES [KLAiM].[Counsels] ([CounselId])
GO
ALTER TABLE [KLAiM].[CounselCourts] CHECK CONSTRAINT [FK_CounselCourts_Counsels]
GO
ALTER TABLE [KLAiM].[CounselCourts]  WITH CHECK ADD  CONSTRAINT [FK_CounselCourts_Courts] FOREIGN KEY([CourtId])
REFERENCES [KLAiM].[Courts] ([CourtId])
GO
ALTER TABLE [KLAiM].[CounselCourts] CHECK CONSTRAINT [FK_CounselCourts_Courts]
GO
ALTER TABLE [KLAiM].[Counsels]  WITH CHECK ADD  CONSTRAINT [FK_Counsels_CounselSets] FOREIGN KEY([CounselSetId])
REFERENCES [KLAiM].[CounselSets] ([CounselSetId])
GO
ALTER TABLE [KLAiM].[Counsels] CHECK CONSTRAINT [FK_Counsels_CounselSets]
GO
ALTER TABLE [KLAiM].[ListValues]  WITH CHECK ADD  CONSTRAINT [FK_ListValues_ListValuesets] FOREIGN KEY([ValueSetId])
REFERENCES [KLAiM].[ListValueSets] ([ValueSetId])
GO
ALTER TABLE [KLAiM].[ListValues] CHECK CONSTRAINT [FK_ListValues_ListValuesets]
GO
ALTER TABLE [KLAiM].[ListValueSets]  WITH CHECK ADD  CONSTRAINT [FK_ListValueSets_ListDefs] FOREIGN KEY([ListId])
REFERENCES [KLAiMSys].[ListDefs] ([ListId])
GO
ALTER TABLE [KLAiM].[ListValueSets] CHECK CONSTRAINT [FK_ListValueSets_ListDefs]
GO
ALTER TABLE [KLAiM].[Solicitors]  WITH CHECK ADD  CONSTRAINT [FK_Solicitors_SolicitorSets] FOREIGN KEY([SolSetId])
REFERENCES [KLAiM].[SolicitorSets] ([SolSetId])
GO
ALTER TABLE [KLAiM].[Solicitors] CHECK CONSTRAINT [FK_Solicitors_SolicitorSets]
GO
ALTER TABLE [KLAiMDoc].[DocArchetypes]  WITH CHECK ADD  CONSTRAINT [FK_DocArchetypes_DocBinaries] FOREIGN KEY([BinaryUid])
REFERENCES [KLAiMDoc].[DocBinaries] ([BinaryUid])
GO
ALTER TABLE [KLAiMDoc].[DocArchetypes] CHECK CONSTRAINT [FK_DocArchetypes_DocBinaries]
GO
ALTER TABLE [KLAiMDoc].[DocClasses]  WITH CHECK ADD  CONSTRAINT [FK_DocClasses_DocFamilies] FOREIGN KEY([FamilyId])
REFERENCES [KLAiMDoc].[DocFamilies] ([FamilyId])
GO
ALTER TABLE [KLAiMDoc].[DocClasses] CHECK CONSTRAINT [FK_DocClasses_DocFamilies]
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs]  WITH CHECK ADD  CONSTRAINT [FK_DocElementInputs_DocElements] FOREIGN KEY([ElementId])
REFERENCES [KLAiMDoc].[DocElements] ([ElementId])
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs] CHECK CONSTRAINT [FK_DocElementInputs_DocElements]
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs]  WITH CHECK ADD  CONSTRAINT [FK_DocElementInputs_DocInputs] FOREIGN KEY([InputId])
REFERENCES [KLAiMDoc].[DocInputs] ([InputId])
GO
ALTER TABLE [KLAiMDoc].[DocElementInputs] CHECK CONSTRAINT [FK_DocElementInputs_DocInputs]
GO
ALTER TABLE [KLAiMDoc].[DocElements]  WITH CHECK ADD  CONSTRAINT [FK_DocElements_DocClasses] FOREIGN KEY([ClassId])
REFERENCES [KLAiMDoc].[DocClasses] ([ClassId])
GO
ALTER TABLE [KLAiMDoc].[DocElements] CHECK CONSTRAINT [FK_DocElements_DocClasses]
GO
ALTER TABLE [KLAiMDoc].[DocElements]  WITH CHECK ADD  CONSTRAINT [FK_DocElements_DocElementTypes] FOREIGN KEY([ElmTypeId])
REFERENCES [KLAiMDoc].[DocElementTypes] ([ElmTypeId])
GO
ALTER TABLE [KLAiMDoc].[DocElements] CHECK CONSTRAINT [FK_DocElements_DocElementTypes]
GO
ALTER TABLE [KLAiMDoc].[DocElements]  WITH CHECK ADD  CONSTRAINT [FK_DocElements_DocFamilies] FOREIGN KEY([FamilyId])
REFERENCES [KLAiMDoc].[DocFamilies] ([FamilyId])
GO
ALTER TABLE [KLAiMDoc].[DocElements] CHECK CONSTRAINT [FK_DocElements_DocFamilies]
GO
ALTER TABLE [KLAiMDoc].[DocElements]  WITH CHECK ADD  CONSTRAINT [FK_DocElements_DocTypes] FOREIGN KEY([TypeId])
REFERENCES [KLAiMDoc].[DocTypes] ([TypeId])
GO
ALTER TABLE [KLAiMDoc].[DocElements] CHECK CONSTRAINT [FK_DocElements_DocTypes]
GO
ALTER TABLE [KLAiMDoc].[DocInputs]  WITH CHECK ADD  CONSTRAINT [FK_DocInputs_DocInputTypes] FOREIGN KEY([InpTypeId])
REFERENCES [KLAiMDoc].[DocInputTypes] ([InpTypeId])
GO
ALTER TABLE [KLAiMDoc].[DocInputs] CHECK CONSTRAINT [FK_DocInputs_DocInputTypes]
GO
ALTER TABLE [KLAiMDoc].[DocInputs]  WITH CHECK ADD  CONSTRAINT [FK_DocInputs_DocPrompts] FOREIGN KEY([PromptId])
REFERENCES [KLAiMDoc].[DocPrompts] ([PromptId])
GO
ALTER TABLE [KLAiMDoc].[DocInputs] CHECK CONSTRAINT [FK_DocInputs_DocPrompts]
GO
ALTER TABLE [KLAiMDoc].[DocInputs]  WITH CHECK ADD  CONSTRAINT [FK_DocInputs_DocSourceType] FOREIGN KEY([SourceTypeId])
REFERENCES [KLAiMDoc].[DocSourceType] ([SourceTypeId])
GO
ALTER TABLE [KLAiMDoc].[DocInputs] CHECK CONSTRAINT [FK_DocInputs_DocSourceType]
GO
ALTER TABLE [KLAiMDoc].[DocPromptOptions]  WITH CHECK ADD  CONSTRAINT [FK_DocPromptOptions_DocPrompts] FOREIGN KEY([PromptId])
REFERENCES [KLAiMDoc].[DocPrompts] ([PromptId])
GO
ALTER TABLE [KLAiMDoc].[DocPromptOptions] CHECK CONSTRAINT [FK_DocPromptOptions_DocPrompts]
GO
ALTER TABLE [KLAiMDoc].[Docs]  WITH CHECK ADD  CONSTRAINT [FK_Docs_DocBinaries] FOREIGN KEY([BinaryUid])
REFERENCES [KLAiMDoc].[DocBinaries] ([BinaryUid])
GO
ALTER TABLE [KLAiMDoc].[Docs] CHECK CONSTRAINT [FK_Docs_DocBinaries]
GO
ALTER TABLE [KLAiMDoc].[Docs]  WITH CHECK ADD  CONSTRAINT [FK_Docs_DocTemplates] FOREIGN KEY([TemplatesId])
REFERENCES [KLAiMDoc].[DocTemplates] ([TemplatesId])
GO
ALTER TABLE [KLAiMDoc].[Docs] CHECK CONSTRAINT [FK_Docs_DocTemplates]
GO
ALTER TABLE [KLAiMDoc].[Docs]  WITH CHECK ADD  CONSTRAINT [FK_Docs_DocTypes] FOREIGN KEY([TypeId])
REFERENCES [KLAiMDoc].[DocTypes] ([TypeId])
GO
ALTER TABLE [KLAiMDoc].[Docs] CHECK CONSTRAINT [FK_Docs_DocTypes]
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes]  WITH CHECK ADD  CONSTRAINT [FK_ChildTypeId_TypeId] FOREIGN KEY([ChildTypeId])
REFERENCES [KLAiMDoc].[DocTypes] ([TypeId])
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes] CHECK CONSTRAINT [FK_ChildTypeId_TypeId]
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes]  WITH CHECK ADD  CONSTRAINT [FK_DocSubTypes_DocTypes] FOREIGN KEY([TypeId])
REFERENCES [KLAiMDoc].[DocTypes] ([TypeId])
GO
ALTER TABLE [KLAiMDoc].[DocSubTypes] CHECK CONSTRAINT [FK_DocSubTypes_DocTypes]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates]  WITH CHECK ADD  CONSTRAINT [FK_DocTemplates_DocBinaries] FOREIGN KEY([BinaryUid])
REFERENCES [KLAiMDoc].[DocBinaries] ([BinaryUid])
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] CHECK CONSTRAINT [FK_DocTemplates_DocBinaries]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates]  WITH CHECK ADD  CONSTRAINT [FK_DocTemplates_DocClasses] FOREIGN KEY([ClassId])
REFERENCES [KLAiMDoc].[DocClasses] ([ClassId])
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] CHECK CONSTRAINT [FK_DocTemplates_DocClasses]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates]  WITH CHECK ADD  CONSTRAINT [FK_DocTemplates_DocFamilies] FOREIGN KEY([FamilyId])
REFERENCES [KLAiMDoc].[DocFamilies] ([FamilyId])
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] CHECK CONSTRAINT [FK_DocTemplates_DocFamilies]
GO
ALTER TABLE [KLAiMDoc].[DocTemplates]  WITH CHECK ADD  CONSTRAINT [FK_DocTemplates_DocTypes] FOREIGN KEY([TypeId])
REFERENCES [KLAiMDoc].[DocTypes] ([TypeId])
GO
ALTER TABLE [KLAiMDoc].[DocTemplates] CHECK CONSTRAINT [FK_DocTemplates_DocTypes]
GO
ALTER TABLE [KLAiMDoc].[DocTypes]  WITH CHECK ADD  CONSTRAINT [FK_DocTypes_DocClasses] FOREIGN KEY([ClassId])
REFERENCES [KLAiMDoc].[DocClasses] ([ClassId])
GO
ALTER TABLE [KLAiMDoc].[DocTypes] CHECK CONSTRAINT [FK_DocTypes_DocClasses]
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields]  WITH CHECK ADD  CONSTRAINT [FK_AssociatedFields_Fields] FOREIGN KEY([TriggerFieldId])
REFERENCES [KLAiMFlex].[Fields] ([FieldId])
GO
ALTER TABLE [KLAiMFlex].[AssociatedFields] CHECK CONSTRAINT [FK_AssociatedFields_Fields]
GO
ALTER TABLE [KLAiMFlex].[ClaimLocks]  WITH CHECK ADD  CONSTRAINT [FK_ClaimLocks_Claims] FOREIGN KEY([ClaimId])
REFERENCES [KLAiMFlex].[Claims] ([ClaimId])
GO
ALTER TABLE [KLAiMFlex].[ClaimLocks] CHECK CONSTRAINT [FK_ClaimLocks_Claims]
GO
ALTER TABLE [KLAiMFlex].[Claims]  WITH CHECK ADD  CONSTRAINT [FK_Claims_ClaimStatuses] FOREIGN KEY([ClaimStatusId])
REFERENCES [KLAiMFlex].[ClaimStatuses] ([ClaimStatusId])
GO
ALTER TABLE [KLAiMFlex].[Claims] CHECK CONSTRAINT [FK_Claims_ClaimStatuses]
GO
ALTER TABLE [KLAiMFlex].[Claims]  WITH CHECK ADD  CONSTRAINT [FK_Claims_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [KLAiMFlex].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [KLAiMFlex].[Claims] CHECK CONSTRAINT [FK_Claims_ClaimTypes]
GO
ALTER TABLE [KLAiMFlex].[Claims]  WITH CHECK ADD  CONSTRAINT [FK_Claims_Processes] FOREIGN KEY([ProcessId])
REFERENCES [KLAiMFlex].[Processes] ([ProcessId])
GO
ALTER TABLE [KLAiMFlex].[Claims] CHECK CONSTRAINT [FK_Claims_Processes]
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex]  WITH CHECK ADD  CONSTRAINT [FK_ClaimsFlex_Claims] FOREIGN KEY([ClaimId])
REFERENCES [KLAiMFlex].[Claims] ([ClaimId])
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex] CHECK CONSTRAINT [FK_ClaimsFlex_Claims]
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex]  WITH CHECK ADD  CONSTRAINT [FK_ClaimsFlex_Flows] FOREIGN KEY([FlowId])
REFERENCES [KLAiMFlex].[Flows] ([FlowId])
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex] CHECK CONSTRAINT [FK_ClaimsFlex_Flows]
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex]  WITH CHECK ADD  CONSTRAINT [FK_ClaimsFlex_Schemas] FOREIGN KEY([SchemaId])
REFERENCES [KLAiMFlex].[Schemas] ([SchemaId])
GO
ALTER TABLE [KLAiMFlex].[ClaimsFlex] CHECK CONSTRAINT [FK_ClaimsFlex_Schemas]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig]  WITH CHECK ADD  CONSTRAINT [FK_ClientConfig_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [KLAiMFlex].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] CHECK CONSTRAINT [FK_ClientConfig_ClaimTypes]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig]  WITH CHECK ADD  CONSTRAINT [FK_ClientConfig_Flows] FOREIGN KEY([FlowId])
REFERENCES [KLAiMFlex].[Flows] ([FlowId])
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] CHECK CONSTRAINT [FK_ClientConfig_Flows]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig]  WITH CHECK ADD  CONSTRAINT [FK_ClientConfig_Processes] FOREIGN KEY([ProcessId])
REFERENCES [KLAiMFlex].[Processes] ([ProcessId])
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] CHECK CONSTRAINT [FK_ClientConfig_Processes]
GO
ALTER TABLE [KLAiMFlex].[ClientConfig]  WITH CHECK ADD  CONSTRAINT [FK_ClientConfig_Schemas] FOREIGN KEY([SchemaId])
REFERENCES [KLAiMFlex].[Schemas] ([SchemaId])
GO
ALTER TABLE [KLAiMFlex].[ClientConfig] CHECK CONSTRAINT [FK_ClientConfig_Schemas]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups]  WITH CHECK ADD  CONSTRAINT [FK_FieldGroups_BaseGroupId_FieldGroups] FOREIGN KEY([BaseGroupId])
REFERENCES [KLAiMFlex].[FieldGroups] ([GroupId])
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] CHECK CONSTRAINT [FK_FieldGroups_BaseGroupId_FieldGroups]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups]  WITH CHECK ADD  CONSTRAINT [FK_FieldGroups_FieldGroupComponents] FOREIGN KEY([ComponentId])
REFERENCES [KLAiMFlex].[FieldGroupComponents] ([ComponentId])
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] CHECK CONSTRAINT [FK_FieldGroups_FieldGroupComponents]
GO
ALTER TABLE [KLAiMFlex].[FieldGroups]  WITH CHECK ADD  CONSTRAINT [FK_FieldGroups_ParentGroupId_FieldGroups] FOREIGN KEY([ParentGroupId])
REFERENCES [KLAiMFlex].[FieldGroups] ([GroupId])
GO
ALTER TABLE [KLAiMFlex].[FieldGroups] CHECK CONSTRAINT [FK_FieldGroups_ParentGroupId_FieldGroups]
GO
ALTER TABLE [KLAiMFlex].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_FieldGroups] FOREIGN KEY([GroupId])
REFERENCES [KLAiMFlex].[FieldGroups] ([GroupId])
GO
ALTER TABLE [KLAiMFlex].[Fields] CHECK CONSTRAINT [FK_Fields_FieldGroups]
GO
ALTER TABLE [KLAiMFlex].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_FieldTypes] FOREIGN KEY([FieldTypeId])
REFERENCES [KLAiMFlex].[FieldTypes] ([FieldTypeId])
GO
ALTER TABLE [KLAiMFlex].[Fields] CHECK CONSTRAINT [FK_Fields_FieldTypes]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities]  WITH CHECK ADD  CONSTRAINT [FK_FlowActivities_Activities] FOREIGN KEY([ActivityId])
REFERENCES [KLAiMFlex].[Activities] ([ActivityId])
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] CHECK CONSTRAINT [FK_FlowActivities_Activities]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities]  WITH CHECK ADD  CONSTRAINT [FK_FlowActivities_Flows] FOREIGN KEY([FlowId])
REFERENCES [KLAiMFlex].[Flows] ([FlowId])
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] CHECK CONSTRAINT [FK_FlowActivities_Flows]
GO
ALTER TABLE [KLAiMFlex].[FlowLogEntries]  WITH CHECK ADD  CONSTRAINT [FK_FlowLogEntries_FlowLogs] FOREIGN KEY([LogId])
REFERENCES [KLAiMFlex].[FlowLogs] ([LogId])
GO
ALTER TABLE [KLAiMFlex].[FlowLogEntries] CHECK CONSTRAINT [FK_FlowLogEntries_FlowLogs]
GO
ALTER TABLE [KLAiMFlex].[FlowLogs]  WITH CHECK ADD  CONSTRAINT [FK_FlowLogs_Claims] FOREIGN KEY([ClaimId])
REFERENCES [KLAiMFlex].[Claims] ([ClaimId])
GO
ALTER TABLE [KLAiMFlex].[FlowLogs] CHECK CONSTRAINT [FK_FlowLogs_Claims]
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProcessClaimTypes_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [KLAiMFlex].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes] CHECK CONSTRAINT [FK_ProcessClaimTypes_ClaimTypes]
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProcessClaimTypes_Processes] FOREIGN KEY([ProcessId])
REFERENCES [KLAiMFlex].[Processes] ([ProcessId])
GO
ALTER TABLE [KLAiMFlex].[ProcessClaimTypes] CHECK CONSTRAINT [FK_ProcessClaimTypes_Processes]
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups]  WITH CHECK ADD  CONSTRAINT [FK_SchemaFieldGroups_FieldGroups] FOREIGN KEY([GroupId])
REFERENCES [KLAiMFlex].[FieldGroups] ([GroupId])
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups] CHECK CONSTRAINT [FK_SchemaFieldGroups_FieldGroups]
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups]  WITH CHECK ADD  CONSTRAINT [FK_SchemaFieldGroups_Schemas] FOREIGN KEY([SchemaId])
REFERENCES [KLAiMFlex].[Schemas] ([SchemaId])
GO
ALTER TABLE [KLAiMFlex].[SchemaFieldGroups] CHECK CONSTRAINT [FK_SchemaFieldGroups_Schemas]
GO
ALTER TABLE [KLAiMFlex].[Schemas]  WITH CHECK ADD  CONSTRAINT [FK_Schemas_ClaimTypes] FOREIGN KEY([ClaimTypeId])
REFERENCES [KLAiMFlex].[ClaimTypes] ([ClaimTypeId])
GO
ALTER TABLE [KLAiMFlex].[Schemas] CHECK CONSTRAINT [FK_Schemas_ClaimTypes]
GO
ALTER TABLE [KLAiMFlex].[Schemas]  WITH CHECK ADD  CONSTRAINT [FK_Schemas_Processes] FOREIGN KEY([ProcessId])
REFERENCES [KLAiMFlex].[Processes] ([ProcessId])
GO
ALTER TABLE [KLAiMFlex].[Schemas] CHECK CONSTRAINT [FK_Schemas_Processes]
GO
ALTER TABLE [KLAiMFlex].[Steps]  WITH CHECK ADD  CONSTRAINT [FK_Steps_Activities] FOREIGN KEY([ActivityId])
REFERENCES [KLAiMFlex].[Activities] ([ActivityId])
GO
ALTER TABLE [KLAiMFlex].[Steps] CHECK CONSTRAINT [FK_Steps_Activities]
GO
ALTER TABLE [KLAiMFlex].[Steps]  WITH CHECK ADD  CONSTRAINT [FK_Steps_StepTypes] FOREIGN KEY([StepTypeId])
REFERENCES [KLAiMFlex].[StepTypes] ([StepTypeId])
GO
ALTER TABLE [KLAiMFlex].[Steps] CHECK CONSTRAINT [FK_Steps_StepTypes]
GO
ALTER TABLE [KLAiMFlex].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Claims] FOREIGN KEY([ClaimId])
REFERENCES [KLAiMFlex].[Claims] ([ClaimId])
GO
ALTER TABLE [KLAiMFlex].[Tasks] CHECK CONSTRAINT [FK_Tasks_Claims]
GO
ALTER TABLE [KLAiM].[ListValueSets]  WITH CHECK ADD  CONSTRAINT [CK_ListValueSets_DefaultSort] CHECK  (([DefaultSort]>=(1) AND [DefaultSort]<=(3)))
GO
ALTER TABLE [KLAiM].[ListValueSets] CHECK CONSTRAINT [CK_ListValueSets_DefaultSort]
GO
ALTER TABLE [KLAiMFlex].[ClaimLocks]  WITH CHECK ADD  CONSTRAINT [CK_ClaimLocks_LockType] CHECK  (([LockType]>=(1) AND [LockType]<=(2)))
GO
ALTER TABLE [KLAiMFlex].[ClaimLocks] CHECK CONSTRAINT [CK_ClaimLocks_LockType]
GO
ALTER TABLE [KLAiMFlex].[Fields]  WITH CHECK ADD  CONSTRAINT [CK_Fields_ActionType] CHECK  (([ActionType]>=(1) AND [ActionType]<=(3)))
GO
ALTER TABLE [KLAiMFlex].[Fields] CHECK CONSTRAINT [CK_Fields_ActionType]
GO
ALTER TABLE [KLAiMFlex].[FlowActivities]  WITH CHECK ADD  CONSTRAINT [CK_FlowActivities_MilestoneValue] CHECK  (([MilestoneValue]>=(1) AND [MilestoneValue]<=(100)))
GO
ALTER TABLE [KLAiMFlex].[FlowActivities] CHECK CONSTRAINT [CK_FlowActivities_MilestoneValue]
GO
ALTER TABLE [KLAiMFlex].[Tasks]  WITH CHECK ADD  CONSTRAINT [CK_Tasks_StatusId] CHECK  (([StatusId]>(0)))
GO
ALTER TABLE [KLAiMFlex].[Tasks] CHECK CONSTRAINT [CK_Tasks_StatusId]
GO
ALTER TABLE [KLAiMFlex].[Tasks]  WITH CHECK ADD  CONSTRAINT [CK_Tasks_TaskTypeId] CHECK  (([TaskTypeId]>=(1) AND [TaskTypeId]<=(9)))
GO
ALTER TABLE [KLAiMFlex].[Tasks] CHECK CONSTRAINT [CK_Tasks_TaskTypeId]
GO
ALTER TABLE [KLAiMSys].[DbVersion]  WITH CHECK ADD  CONSTRAINT [CK_DbVersion_id] CHECK  (([id]=(1)))
GO
ALTER TABLE [KLAiMSys].[DbVersion] CHECK CONSTRAINT [CK_DbVersion_id]
GO
ALTER TABLE [KLAiMSys].[ListDefs]  WITH CHECK ADD  CONSTRAINT [CK_ListDefs_DefaultSort] CHECK  (([DefaultSort]>=(1) AND [DefaultSort]<=(3)))
GO
ALTER TABLE [KLAiMSys].[ListDefs] CHECK CONSTRAINT [CK_ListDefs_DefaultSort]
GO
ALTER TABLE [KLAiMSys].[ListDefs]  WITH CHECK ADD  CONSTRAINT [CK_ListDefs_TransType] CHECK  (([TransType]>=(0) AND [TransType]<=(2)))
GO
ALTER TABLE [KLAiMSys].[ListDefs] CHECK CONSTRAINT [CK_ListDefs_TransType]
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[Claims] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[Claims] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[Claims] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[Claims] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[Claims] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[Claims] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[ClientId], changes.[BusUnitId], changes.[UserId], changes.[ClaimTypeId], changes.[ProcessId], changes.[ClaimStatusId], changes.[ClaimRef], changes.[Complete], changes.[ClosedDate], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[ClientId], changes.[BusUnitId], changes.[UserId], changes.[ClaimTypeId], changes.[ProcessId], changes.[ClaimStatusId], changes.[ClaimRef], changes.[Complete], changes.[ClosedDate], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[ClientId], changes.[BusUnitId], changes.[UserId], changes.[ClaimTypeId], changes.[ProcessId], changes.[ClaimStatusId], changes.[ClaimRef], changes.[Complete], changes.[ClosedDate], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClientId] = changes.[ClientId], [BusUnitId] = changes.[BusUnitId], [UserId] = changes.[UserId], [ClaimTypeId] = changes.[ClaimTypeId], [ProcessId] = changes.[ProcessId], [ClaimStatusId] = changes.[ClaimStatusId], [ClaimRef] = changes.[ClaimRef], [Complete] = changes.[Complete], [ClosedDate] = changes.[ClosedDate], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClientId] = changes.[ClientId], [BusUnitId] = changes.[BusUnitId], [UserId] = changes.[UserId], [ClaimTypeId] = changes.[ClaimTypeId], [ProcessId] = changes.[ProcessId], [ClaimStatusId] = changes.[ClaimStatusId], [ClaimRef] = changes.[ClaimRef], [Complete] = changes.[Complete], [ClosedDate] = changes.[ClosedDate], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Claims_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON;
-- update the base table
MERGE [KLAiMFlex].[Claims] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Claims_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClientId] = changes.[ClientId], [BusUnitId] = changes.[BusUnitId], [UserId] = changes.[UserId], [ClaimTypeId] = changes.[ClaimTypeId], [ProcessId] = changes.[ProcessId], [ClaimStatusId] = changes.[ClaimStatusId], [ClaimRef] = changes.[ClaimRef], [Complete] = changes.[Complete], [ClosedDate] = changes.[ClosedDate], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Claims_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Claims] FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Claims] FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Claims] FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_deletemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_deletemetadata]
	@P_1 Int,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DataSync].[Claims_dss_tracking] [side] WHERE [ClaimId] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = 1 ;

END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON; INSERT INTO [KLAiMFlex].[Claims]([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON; INSERT INTO [KLAiMFlex].[Claims]([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Claims] ON; INSERT INTO [KLAiMFlex].[Claims]([ClaimId], [ClientId], [BusUnitId], [UserId], [ClaimTypeId], [ProcessId], [ClaimStatusId], [ClaimRef], [Complete], [ClosedDate], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Claims] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_insertmetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_insertmetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DataSync].[Claims_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DataSync].[Claims_dss_tracking] ([ClaimId], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, CAST(@@DBTS AS BIGINT) + 1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Claims] [base] FULL OUTER JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Claims] [base] FULL OUTER JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Claims] [base] FULL OUTER JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[ClientId], [base].[BusUnitId], [base].[UserId], [base].[ClaimTypeId], [base].[ProcessId], [base].[ClaimStatusId], [base].[ClaimRef], [base].[Complete], [base].[ClosedDate], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Claims] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Claims_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 894626230 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Claims] SET [ClientId] = @P_2, [BusUnitId] = @P_3, [UserId] = @P_4, [ClaimTypeId] = @P_5, [ProcessId] = @P_6, [ClaimStatusId] = @P_7, [ClaimRef] = @P_8, [Complete] = @P_9, [ClosedDate] = @P_10, [Deleted] = @P_11, [CreateDt] = @P_12, [CreateUser] = @P_13, [UpdateDt] = @P_14, [UpdateUser] = @P_15 FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Claims] SET [ClientId] = @P_2, [BusUnitId] = @P_3, [UserId] = @P_4, [ClaimTypeId] = @P_5, [ProcessId] = @P_6, [ClaimStatusId] = @P_7, [ClaimRef] = @P_8, [Complete] = @P_9, [ClosedDate] = @P_10, [Deleted] = @P_11, [CreateDt] = @P_12, [CreateUser] = @P_13, [UpdateDt] = @P_14, [UpdateUser] = @P_15 FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 Int,
	@P_5 Int,
	@P_6 Int,
	@P_7 Int,
	@P_8 NVarChar(30),
	@P_9 Bit,
	@P_10 DateTime2,
	@P_11 Bit,
	@P_12 DateTime2,
	@P_13 NVarChar(100),
	@P_14 DateTime2,
	@P_15 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Claims] SET [ClientId] = @P_2, [BusUnitId] = @P_3, [UserId] = @P_4, [ClaimTypeId] = @P_5, [ProcessId] = @P_6, [ClaimStatusId] = @P_7, [ClaimRef] = @P_8, [Complete] = @P_9, [ClosedDate] = @P_10, [Deleted] = @P_11, [CreateDt] = @P_12, [CreateUser] = @P_13, [UpdateDt] = @P_14, [UpdateUser] = @P_15 FROM [KLAiMFlex].[Claims] [base] LEFT JOIN [DataSync].[Claims_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Claims_dss_updatemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Claims_dss_updatemetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DataSync].[Claims_dss_tracking] WHERE ([ClaimId] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DataSync].[Claims_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1906105831 
 AND [owner_scope_local_id] = 0

MERGE [DataSync].[Claims_dss_tracking] AS [target] 
USING (SELECT [ClaimId]
 FROM [KLAiMFlex].[Claims]
 WHERE [ClaimId] = @P_1
) AS source([ClaimId])
ON ([target].[ClaimId] = [source].[ClaimId])
WHEN NOT MATCHED THEN
INSERT (
[ClaimId] ,
[create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) 
VALUES (
[source].[ClaimId],NULL, @marker_scope_create_peer_key, @marker_scope_create_peer_timestamp, 0, @marker_local_create_peer_timestamp , @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, 0, GETDATE() );

SET @sync_row_count = @@ROWCOUNT
IF @sync_row_count = 0 
BEGIN
UPDATE [DataSync].[Claims_dss_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END
 END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[ClaimsFlex] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[ClaimsFlex] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[ClaimsFlex] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[ClaimsFlex] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));
DELETE [KLAiMFlex].[ClaimsFlex] 
OUTPUT DELETED.[ClaimId] INTO @changed FROM [KLAiMFlex].[ClaimsFlex] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[SchemaId], changes.[FlowId], changes.[FlexData], changes.[FlexFlow], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[SchemaId], changes.[FlowId], changes.[FlexData], changes.[FlexFlow], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = base.[ClaimId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimId], changes.[SchemaId], changes.[FlowId], changes.[FlexData], changes.[FlexFlow], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimId] INTO @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) AS changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [SchemaId] = changes.[SchemaId], [FlowId] = changes.[FlowId], [FlexData] = changes.[FlexData], [FlexFlow] = changes.[FlexFlow], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [SchemaId] = changes.[SchemaId], [FlowId] = changes.[FlowId], [FlexData] = changes.[FlexData], [FlexFlow] = changes.[FlexFlow], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimsFlex_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimId] int, PRIMARY KEY ([ClaimId]));

-- update the base table
MERGE [KLAiMFlex].[ClaimsFlex] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] t ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = base.[ClaimId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [SchemaId] = changes.[SchemaId], [FlowId] = changes.[FlowId], [FlexData] = changes.[FlexData], [FlexFlow] = changes.[FlexFlow], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimId] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimsFlex_dss_tracking] side JOIN 
(SELECT p.[ClaimId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimId] = t.[ClaimId]) as changes ON changes.[ClaimId] = side.[ClaimId]
SELECT [ClaimId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimId] from @changed i WHERE t.[ClaimId] = i.[ClaimId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimsFlex] FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimsFlex] FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimsFlex] FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_deletemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_deletemetadata]
	@P_1 Int,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DataSync].[ClaimsFlex_dss_tracking] [side] WHERE [ClaimId] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = 1 ;

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
INSERT INTO [KLAiMFlex].[ClaimsFlex]([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount;  END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
INSERT INTO [KLAiMFlex].[ClaimsFlex]([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount;  END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1)
)
BEGIN 
INSERT INTO [KLAiMFlex].[ClaimsFlex]([ClaimId], [SchemaId], [FlowId], [FlexData], [FlexFlow], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount;  END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_insertmetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_insertmetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DataSync].[ClaimsFlex_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DataSync].[ClaimsFlex_dss_tracking] ([ClaimId], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, CAST(@@DBTS AS BIGINT) + 1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimsFlex] [base] FULL OUTER JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimsFlex] [base] FULL OUTER JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimsFlex] [base] FULL OUTER JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimId]
ELSE [base].[ClaimId] END) 
as [ClaimId], 
[base].[SchemaId], [base].[FlowId], [base].[FlexData], [base].[FlexFlow], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimsFlex] WHERE [ClaimId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE [ClaimId] = @P_1) [side] ON [base].[ClaimId] = [side].[ClaimId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1854629650 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimsFlex] SET [SchemaId] = @P_2, [FlowId] = @P_3, [FlexData] = @P_4, [FlexFlow] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimsFlex] SET [SchemaId] = @P_2, [FlowId] = @P_3, [FlexData] = @P_4, [FlexFlow] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 Int,
	@P_3 Int,
	@P_4 NVarChar(max),
	@P_5 NVarChar(max),
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimsFlex] SET [SchemaId] = @P_2, [FlowId] = @P_3, [FlexData] = @P_4, [FlexFlow] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[ClaimsFlex] [base] LEFT JOIN [DataSync].[ClaimsFlex_dss_tracking] [side] ON [base].[ClaimId] = [side].[ClaimId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimsFlex_dss_updatemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimsFlex_dss_updatemetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DataSync].[ClaimsFlex_dss_tracking] WHERE ([ClaimId] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DataSync].[ClaimsFlex_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1266103551 
 AND [owner_scope_local_id] = 0

MERGE [DataSync].[ClaimsFlex_dss_tracking] AS [target] 
USING (SELECT [ClaimId]
 FROM [KLAiMFlex].[ClaimsFlex]
 WHERE [ClaimId] = @P_1
) AS source([ClaimId])
ON ([target].[ClaimId] = [source].[ClaimId])
WHEN NOT MATCHED THEN
INSERT (
[ClaimId] ,
[create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) 
VALUES (
[source].[ClaimId],NULL, @marker_scope_create_peer_key, @marker_scope_create_peer_timestamp, 0, @marker_local_create_peer_timestamp , @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, 0, GETDATE() );

SET @sync_row_count = @@ROWCOUNT
IF @sync_row_count = 0 
BEGIN
UPDATE [DataSync].[ClaimsFlex_dss_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END
 END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));
DELETE [KLAiMFlex].[ClaimStatuses] 
OUTPUT DELETED.[ClaimStatusId] INTO @changed FROM [KLAiMFlex].[ClaimStatuses] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));
DELETE [KLAiMFlex].[ClaimStatuses] 
OUTPUT DELETED.[ClaimStatusId] INTO @changed FROM [KLAiMFlex].[ClaimStatuses] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));
DELETE [KLAiMFlex].[ClaimStatuses] 
OUTPUT DELETED.[ClaimStatusId] INTO @changed FROM [KLAiMFlex].[ClaimStatuses] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimStatusId], changes.[ClaimStatus], changes.[ClaimStatusCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimStatusId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimStatusId], changes.[ClaimStatus], changes.[ClaimStatusCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimStatusId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimStatusId], changes.[ClaimStatus], changes.[ClaimStatusCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimStatusId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) AS changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimStatus] = changes.[ClaimStatus], [ClaimStatusCode] = changes.[ClaimStatusCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimStatusId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimStatus] = changes.[ClaimStatus], [ClaimStatusCode] = changes.[ClaimStatusCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimStatusId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimStatuses_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimStatusId] int, PRIMARY KEY ([ClaimStatusId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimStatuses] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] t ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = base.[ClaimStatusId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimStatus] = changes.[ClaimStatus], [ClaimStatusCode] = changes.[ClaimStatusCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimStatusId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimStatuses_dss_tracking] side JOIN 
(SELECT p.[ClaimStatusId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimStatusId] = t.[ClaimStatusId]) as changes ON changes.[ClaimStatusId] = side.[ClaimStatusId]
SELECT [ClaimStatusId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimStatusId] from @changed i WHERE t.[ClaimStatusId] = i.[ClaimStatusId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimStatuses] FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimStatuses] FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimStatuses] FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_deletemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_deletemetadata]
	@P_1 Int,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DataSync].[ClaimStatuses_dss_tracking] [side] WHERE [ClaimStatusId] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = 1 ;

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON; INSERT INTO [KLAiMFlex].[ClaimStatuses]([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON; INSERT INTO [KLAiMFlex].[ClaimStatuses]([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] ON; INSERT INTO [KLAiMFlex].[ClaimStatuses]([ClaimStatusId], [ClaimStatus], [ClaimStatusCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimStatuses] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_insertmetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_insertmetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DataSync].[ClaimStatuses_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimStatusId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DataSync].[ClaimStatuses_dss_tracking] ([ClaimStatusId], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, CAST(@@DBTS AS BIGINT) + 1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimStatuses] [base] FULL OUTER JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimStatuses] [base] FULL OUTER JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimStatuses] [base] FULL OUTER JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1) [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1) [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimStatusId]
ELSE [base].[ClaimStatusId] END) 
as [ClaimStatusId], 
[base].[ClaimStatus], [base].[ClaimStatusCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimStatuses] WHERE [ClaimStatusId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE [ClaimStatusId] = @P_1) [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimStatuses] SET [ClaimStatus] = @P_2, [ClaimStatusCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimStatuses] SET [ClaimStatus] = @P_2, [ClaimStatusCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(30),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1298103665 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimStatuses] SET [ClaimStatus] = @P_2, [ClaimStatusCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimStatuses] [base] LEFT JOIN [DataSync].[ClaimStatuses_dss_tracking] [side] ON [base].[ClaimStatusId] = [side].[ClaimStatusId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimStatusId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimStatuses_dss_updatemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimStatuses_dss_updatemetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DataSync].[ClaimStatuses_dss_tracking] WHERE ([ClaimStatusId] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DataSync].[ClaimStatuses_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimStatusId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1790629422 
 AND [owner_scope_local_id] = 0

MERGE [DataSync].[ClaimStatuses_dss_tracking] AS [target] 
USING (SELECT [ClaimStatusId]
 FROM [KLAiMFlex].[ClaimStatuses]
 WHERE [ClaimStatusId] = @P_1
) AS source([ClaimStatusId])
ON ([target].[ClaimStatusId] = [source].[ClaimStatusId])
WHEN NOT MATCHED THEN
INSERT (
[ClaimStatusId] ,
[create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) 
VALUES (
[source].[ClaimStatusId],NULL, @marker_scope_create_peer_key, @marker_scope_create_peer_timestamp, 0, @marker_local_create_peer_timestamp , @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, 0, GETDATE() );

SET @sync_row_count = @@ROWCOUNT
IF @sync_row_count = 0 
BEGIN
UPDATE [DataSync].[ClaimStatuses_dss_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimStatusId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END
 END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));
DELETE [KLAiMFlex].[ClaimTypes] 
OUTPUT DELETED.[ClaimTypeId] INTO @changed FROM [KLAiMFlex].[ClaimTypes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));
DELETE [KLAiMFlex].[ClaimTypes] 
OUTPUT DELETED.[ClaimTypeId] INTO @changed FROM [KLAiMFlex].[ClaimTypes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));
DELETE [KLAiMFlex].[ClaimTypes] 
OUTPUT DELETED.[ClaimTypeId] INTO @changed FROM [KLAiMFlex].[ClaimTypes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimTypeId], changes.[ClaimType], changes.[ClaimTypeCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimTypeId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimTypeId], changes.[ClaimType], changes.[ClaimTypeCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimTypeId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ClaimTypeId], changes.[ClaimType], changes.[ClaimTypeCode], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ClaimTypeId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) AS changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimType] = changes.[ClaimType], [ClaimTypeCode] = changes.[ClaimTypeCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimTypeId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimType] = changes.[ClaimType], [ClaimTypeCode] = changes.[ClaimTypeCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimTypeId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[ClaimTypes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ClaimTypeId] int, PRIMARY KEY ([ClaimTypeId]));

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON;
-- update the base table
MERGE [KLAiMFlex].[ClaimTypes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] t ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = base.[ClaimTypeId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ClaimType] = changes.[ClaimType], [ClaimTypeCode] = changes.[ClaimTypeCode], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ClaimTypeId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[ClaimTypes_dss_tracking] side JOIN 
(SELECT p.[ClaimTypeId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ClaimTypeId] = t.[ClaimTypeId]) as changes ON changes.[ClaimTypeId] = side.[ClaimTypeId]
SELECT [ClaimTypeId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ClaimTypeId] from @changed i WHERE t.[ClaimTypeId] = i.[ClaimTypeId])
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimTypes] FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimTypes] FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; DELETE [KLAiMFlex].[ClaimTypes] FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_deletemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_deletemetadata]
	@P_1 Int,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DataSync].[ClaimTypes_dss_tracking] [side] WHERE [ClaimTypeId] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = 1 ;

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON; INSERT INTO [KLAiMFlex].[ClaimTypes]([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON; INSERT INTO [KLAiMFlex].[ClaimTypes]([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] ON; INSERT INTO [KLAiMFlex].[ClaimTypes]([ClaimTypeId], [ClaimType], [ClaimTypeCode], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[ClaimTypes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_insertmetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_insertmetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DataSync].[ClaimTypes_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimTypeId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DataSync].[ClaimTypes_dss_tracking] ([ClaimTypeId], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, CAST(@@DBTS AS BIGINT) + 1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimTypes] [base] FULL OUTER JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimTypes] [base] FULL OUTER JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[ClaimTypes] [base] FULL OUTER JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1) [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1) [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ClaimTypeId]
ELSE [base].[ClaimTypeId] END) 
as [ClaimTypeId], 
[base].[ClaimType], [base].[ClaimTypeCode], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[ClaimTypes] WHERE [ClaimTypeId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[ClaimTypes_dss_tracking] WHERE [ClaimTypeId] = @P_1) [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId]
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1662628966 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimTypes] SET [ClaimType] = @P_2, [ClaimTypeCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimTypes] SET [ClaimType] = @P_2, [ClaimTypeCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(20),
	@P_3 NVarChar(10),
	@P_4 Bit,
	@P_5 DateTime2,
	@P_6 NVarChar(100),
	@P_7 DateTime2,
	@P_8 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[ClaimTypes] SET [ClaimType] = @P_2, [ClaimTypeCode] = @P_3, [Deleted] = @P_4, [CreateDt] = @P_5, [CreateUser] = @P_6, [UpdateDt] = @P_7, [UpdateUser] = @P_8 FROM [KLAiMFlex].[ClaimTypes] [base] LEFT JOIN [DataSync].[ClaimTypes_dss_tracking] [side] ON [base].[ClaimTypeId] = [side].[ClaimTypeId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ClaimTypeId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[ClaimTypes_dss_updatemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[ClaimTypes_dss_updatemetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DataSync].[ClaimTypes_dss_tracking] WHERE ([ClaimTypeId] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DataSync].[ClaimTypes_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimTypeId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1106102981 
 AND [owner_scope_local_id] = 0

MERGE [DataSync].[ClaimTypes_dss_tracking] AS [target] 
USING (SELECT [ClaimTypeId]
 FROM [KLAiMFlex].[ClaimTypes]
 WHERE [ClaimTypeId] = @P_1
) AS source([ClaimTypeId])
ON ([target].[ClaimTypeId] = [source].[ClaimTypeId])
WHEN NOT MATCHED THEN
INSERT (
[ClaimTypeId] ,
[create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) 
VALUES (
[source].[ClaimTypeId],NULL, @marker_scope_create_peer_key, @marker_scope_create_peer_timestamp, 0, @marker_local_create_peer_timestamp , @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, 0, GETDATE() );

SET @sync_row_count = @@ROWCOUNT
IF @sync_row_count = 0 
BEGIN
UPDATE [DataSync].[ClaimTypes_dss_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ClaimTypeId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END
 END;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkdelete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));
DELETE [KLAiMFlex].[Processes] 
OUTPUT DELETED.[ProcessId] INTO @changed FROM [KLAiMFlex].[Processes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkdelete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));
DELETE [KLAiMFlex].[Processes] 
OUTPUT DELETED.[ProcessId] INTO @changed FROM [KLAiMFlex].[Processes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkdelete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated/inserted
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));
DELETE [KLAiMFlex].[Processes] 
OUTPUT DELETED.[ProcessId] INTO @changed FROM [KLAiMFlex].[Processes] base JOIN
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p  LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId] WHERE (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp

 -- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL)
UPDATE side SET
sync_row_is_tombstone = 1, 
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkinsert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = base.[ProcessId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ProcessId], changes.[ProcessName], changes.[ProcessCode], changes.[ProcessDesc], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ProcessId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkinsert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = base.[ProcessId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ProcessId], changes.[ProcessName], changes.[ProcessCode], changes.[ProcessDesc], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ProcessId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkinsert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated/inserted
DECLARE @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update/insert into the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = base.[ProcessId]
WHEN NOT MATCHED BY TARGET AND changes.local_update_peer_timestamp <= @sync_min_timestamp OR changes.local_update_peer_timestamp IS NULL THEN
INSERT ([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (changes.[ProcessId], changes.[ProcessName], changes.[ProcessCode], changes.[ProcessDesc], changes.[Deleted], changes.[CreateDt], changes.[CreateUser], changes.[UpdateDt], changes.[UpdateUser])
OUTPUT INSERTED.[ProcessId] INTO @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0,
create_scope_local_id = @sync_scope_local_id,
scope_create_peer_key = changes.sync_create_peer_key,
scope_create_peer_timestamp = changes.sync_create_peer_timestamp,
local_create_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) AS changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkupdate_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_03ecba07-7730-4d2c-bb52-2454ea8055f2] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ProcessName] = changes.[ProcessName], [ProcessCode] = changes.[ProcessCode], [ProcessDesc] = changes.[ProcessDesc], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ProcessId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkupdate_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_227d2162-9c29-4b52-93aa-9bb5183044b3] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ProcessName] = changes.[ProcessName], [ProcessCode] = changes.[ProcessCode], [ProcessDesc] = changes.[ProcessDesc], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ProcessId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_bulkupdate_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [DataSync].[Processes_dss_BulkType_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a] READONLY
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([ProcessId] int, PRIMARY KEY ([ProcessId]));

SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON;
-- update the base table
MERGE [KLAiMFlex].[Processes] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [DataSync].[Processes_dss_tracking] t ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = base.[ProcessId]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp-- No tracking record exists
OR (changes.update_scope_local_id IS NULL AND changes.scope_update_peer_key IS NULL AND changes.local_update_peer_timestamp IS NULL) 
 THEN
UPDATE SET [ProcessName] = changes.[ProcessName], [ProcessCode] = changes.[ProcessCode], [ProcessDesc] = changes.[ProcessDesc], [Deleted] = changes.[Deleted], [CreateDt] = changes.[CreateDt], [CreateUser] = changes.[CreateUser], [UpdateDt] = changes.[UpdateDt], [UpdateUser] = changes.[UpdateUser]
OUTPUT INSERTED.[ProcessId] into @changed; -- populates the temp table with successful PKs

SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF;
UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[DataSync].[Processes_dss_tracking] side JOIN 
(SELECT p.[ProcessId], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[ProcessId] = t.[ProcessId]) as changes ON changes.[ProcessId] = side.[ProcessId]
SELECT [ProcessId] FROM @changeTable t WHERE NOT EXISTS (SELECT [ProcessId] from @changed i WHERE t.[ProcessId] = i.[ProcessId])
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_delete_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Processes] FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_delete_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Processes] FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_delete_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; DELETE [KLAiMFlex].[Processes] FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_deletemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_deletemetadata]
	@P_1 Int,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [side] FROM [DataSync].[Processes_dss_tracking] [side] WHERE [ProcessId] = @P_1 AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = 1 ;

END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_insert_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON; INSERT INTO [KLAiMFlex].[Processes]([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_insert_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON; INSERT INTO [KLAiMFlex].[Processes]([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_insert_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF (NOT EXISTS (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1)
 AND NOT EXISTS (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1)
)
BEGIN 
SET IDENTITY_INSERT [KLAiMFlex].[Processes] ON; INSERT INTO [KLAiMFlex].[Processes]([ProcessId], [ProcessName], [ProcessCode], [ProcessDesc], [Deleted], [CreateDt], [CreateUser], [UpdateDt], [UpdateUser]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount; SET IDENTITY_INSERT [KLAiMFlex].[Processes] OFF; END 
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_insertmetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_insertmetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [DataSync].[Processes_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ProcessId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;IF (@sync_row_count = 0) BEGIN INSERT INTO [DataSync].[Processes_dss_tracking] ([ProcessId], [create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) VALUES (@P_1, @sync_scope_local_id, @sync_create_peer_key, @sync_create_peer_timestamp, 0, CAST(@@DBTS AS BIGINT) + 1, @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, @sync_row_is_tombstone, GETDATE());SET @sync_row_count = @@ROWCOUNT; END;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectchanges_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Processes] [base] FULL OUTER JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectchanges_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Processes] [base] FULL OUTER JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectchanges_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int,
	@sync_update_peer_key Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18

SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM [KLAiMFlex].[Processes] [base] FULL OUTER JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId]
 WHERE 
 ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  IS NULL OR (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id OR ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  = @sync_scope_local_id AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  <> @sync_update_peer_key)) AND (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  > @sync_min_timestamp AND  (@marker_state = 1 OR [side].[local_create_peer_timestamp] IS NOT NULL)

END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectrow_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1) [side] ON [base].[ProcessId] = [side].[ProcessId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectrow_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1) [side] ON [base].[ProcessId] = [side].[ProcessId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_selectrow_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18
SELECT (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[ProcessId]
ELSE [base].[ProcessId] END) 
as [ProcessId], 
[base].[ProcessName], [base].[ProcessCode], [base].[ProcessDesc], [base].[Deleted], [base].[CreateDt], [base].[CreateUser], [base].[UpdateDt], [base].[UpdateUser], (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[sync_row_is_tombstone]
ELSE 0
 END) 
 as sync_row_is_tombstone, (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  as sync_row_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_timestamp]
ELSE @marker_scope_update_peer_timestamp
 END)  end as sync_update_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[update_scope_local_id]
ELSE @marker_update_scope_local_id
 END)  <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_key]
ELSE @marker_local_update_peer_key
 END)  end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[scope_update_peer_key]
ELSE @marker_scope_update_peer_key
 END)  end as sync_update_peer_key, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_timestamp]
ELSE @marker_local_create_peer_timestamp
 END) 
 else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_timestamp]
ELSE @marker_scope_create_peer_timestamp
 END) 
 end as sync_create_peer_timestamp, case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 is null or (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[create_scope_local_id]
ELSE @marker_create_scope_local_id
 END) 
 <> @sync_scope_local_id) then case when ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 > @sync_scope_restore_count) then @sync_scope_restore_count else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[local_create_peer_key]
ELSE @marker_local_create_peer_key
 END) 
 end else (CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL 
THEN [side].[scope_create_peer_key]
ELSE @marker_scope_create_peer_key
 END) 
 end as sync_create_peer_key FROM (SELECT * FROM [KLAiMFlex].[Processes] WHERE [ProcessId] = @P_1) [base] FULL OUTER JOIN (SELECT * FROM [DataSync].[Processes_dss_tracking] WHERE [ProcessId] = @P_1) [side] ON [base].[ProcessId] = [side].[ProcessId]
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_update_03ecba07-7730-4d2c-bb52-2454ea8055f2]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1070626857 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Processes] SET [ProcessName] = @P_2, [ProcessCode] = @P_3, [ProcessDesc] = @P_4, [Deleted] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_update_227d2162-9c29-4b52-93aa-9bb5183044b3]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 1
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Processes] SET [ProcessName] = @P_2, [ProcessCode] = @P_3, [ProcessDesc] = @P_4, [Deleted] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_update_e4cda8ef-56c0-40eb-97be-cc950fe9ee6a]
	@P_1 Int,
	@P_2 NVarChar(50),
	@P_3 NVarChar(20),
	@P_4 NVarChar(200),
	@P_5 Bit,
	@P_6 DateTime2,
	@P_7 NVarChar(100),
	@P_8 DateTime2,
	@P_9 NVarChar(100),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

DECLARE @marker_update_scope_local_id INT
DECLARE @marker_scope_update_peer_timestamp BIGINT
DECLARE @marker_scope_update_peer_key INT
DECLARE @marker_local_update_peer_timestamp BIGINT
DECLARE @marker_local_update_peer_key INT
SELECT TOP 1 @marker_update_scope_local_id = [provision_scope_local_id], @marker_local_update_peer_timestamp = [provision_timestamp], @marker_local_update_peer_key = [provision_local_peer_key], @marker_scope_update_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_update_peer_key = [provision_scope_peer_key]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 18
SET @sync_row_count = 0; UPDATE [KLAiMFlex].[Processes] SET [ProcessName] = @P_2, [ProcessCode] = @P_3, [ProcessDesc] = @P_4, [Deleted] = @P_5, [CreateDt] = @P_6, [CreateUser] = @P_7, [UpdateDt] = @P_8, [UpdateUser] = @P_9 FROM [KLAiMFlex].[Processes] [base] LEFT JOIN [DataSync].[Processes_dss_tracking] [side] ON [base].[ProcessId] = [side].[ProcessId] WHERE ((CASE WHEN [side].[local_create_peer_timestamp] IS NOT NULL AND [side].[local_update_peer_timestamp] > @marker_local_update_peer_timestamp 
THEN [side].[local_update_peer_timestamp]
ELSE @marker_local_update_peer_timestamp
 END)  <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[ProcessId] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
GO
/****** Object:  StoredProcedure [DataSync].[Processes_dss_updatemetadata]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DataSync].[Processes_dss_updatemetadata]
	@P_1 Int,
	@sync_scope_local_id Int,
	@sync_row_is_tombstone Int,
	@sync_create_peer_key Int,
	@sync_create_peer_timestamp BigInt,
	@sync_update_peer_key Int,
	@sync_update_peer_timestamp BigInt,
	@sync_check_concurrency Int,
	@sync_row_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DECLARE @was_tombstone int; SELECT @was_tombstone = [sync_row_is_tombstone] FROM [DataSync].[Processes_dss_tracking] WHERE ([ProcessId] = @P_1);IF (@was_tombstone IS NOT NULL AND @was_tombstone = 1 AND @sync_row_is_tombstone = 0) BEGIN UPDATE [DataSync].[Processes_dss_tracking] SET [create_scope_local_id] = @sync_scope_local_id, [scope_create_peer_key] = @sync_create_peer_key, [scope_create_peer_timestamp] = @sync_create_peer_timestamp, [local_create_peer_key] = 0, [local_create_peer_timestamp] = CAST(@@DBTS AS BIGINT) + 1, [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ProcessId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp); END ELSE BEGIN DECLARE @marker_create_scope_local_id INT
DECLARE @marker_scope_create_peer_timestamp BIGINT
DECLARE @marker_scope_create_peer_key INT
DECLARE @marker_local_create_peer_timestamp BIGINT
DECLARE @marker_local_create_peer_key INT
DECLARE @marker_state INT
SELECT TOP 1 @marker_create_scope_local_id = [provision_scope_local_id], @marker_local_create_peer_timestamp = [provision_timestamp], @marker_local_create_peer_key = [provision_local_peer_key], @marker_scope_create_peer_timestamp = [provision_scope_peer_timestamp], @marker_scope_create_peer_key = [provision_scope_peer_key], @marker_state = [state]
FROM [DataSync].[provision_marker_dss]
WHERE [object_id] = 1442104178 
 AND [owner_scope_local_id] = 0

MERGE [DataSync].[Processes_dss_tracking] AS [target] 
USING (SELECT [ProcessId]
 FROM [KLAiMFlex].[Processes]
 WHERE [ProcessId] = @P_1
) AS source([ProcessId])
ON ([target].[ProcessId] = [source].[ProcessId])
WHEN NOT MATCHED THEN
INSERT (
[ProcessId] ,
[create_scope_local_id], [scope_create_peer_key], [scope_create_peer_timestamp], [local_create_peer_key], [local_create_peer_timestamp], [update_scope_local_id], [scope_update_peer_key], [scope_update_peer_timestamp], [local_update_peer_key], [sync_row_is_tombstone], [last_change_datetime]) 
VALUES (
[source].[ProcessId],NULL, @marker_scope_create_peer_key, @marker_scope_create_peer_timestamp, 0, @marker_local_create_peer_timestamp , @sync_scope_local_id, @sync_update_peer_key, @sync_update_peer_timestamp, 0, 0, GETDATE() );

SET @sync_row_count = @@ROWCOUNT
IF @sync_row_count = 0 
BEGIN
UPDATE [DataSync].[Processes_dss_tracking] SET [update_scope_local_id] = @sync_scope_local_id, [scope_update_peer_key] = @sync_update_peer_key, [scope_update_peer_timestamp] = @sync_update_peer_timestamp, [local_update_peer_key] = 0, [sync_row_is_tombstone] = @sync_row_is_tombstone WHERE ([ProcessId] = @P_1) AND (@sync_check_concurrency = 0 or [local_update_peer_timestamp] = @sync_row_timestamp);SET @sync_row_count = @@ROWCOUNT;
END
 END;
END
GO
/****** Object:  StoredProcedure [dbadmin].[add_column]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[add_column]
( @p_tab_name AS SYSNAME,
  @p_col_name AS SYSNAME,
  @p_col_type_def AS SYSNAME,
  @p_quiet AS BIT = 0,
  @p_test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @tabName AS NVARCHAR(200),
			@startTC AS INT,
			@sql NVARCHAR(MAX)

	DECLARE @ATsql NVARCHAR(500) = N'
IF  NOT EXISTS(
	SELECT	NULL
	FROM	sys.columns AS C
	WHERE	C.object_id = OBJECT_ID(N''[tabName]'', N''U'')
	AND		C.name = ''[colName]'')
  BEGIN
	[qc]PRINT ''Adding column [colName] [colTypeDef] to [tabName]''
	ALTER	TABLE [tabName]
	ADD		[colName] [colTypeDef];
  END;
';

	BEGIN TRY
		DECLARE @p_obj_name_q SYSNAME;
		EXEC dbadmin.check_obj_name_local @p_obj_name = @p_tab_name, @p_obj_name_q = @tabName OUTPUT;
		
		SELECT	@startTC = @@TRANCOUNT;

		SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(@ATsql, N'[tabName]', @tabName), N'[colName]', @p_col_name), N'[colTypeDef]', @p_col_type_def), N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);

		IF  @p_test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'add_column: Generated SQL is NULL!', 1;
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @p_test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	  END TRY
	  BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW
	  END CATCH;
	  
	  RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[AddColumn]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[AddColumn]
( @TabName AS SYSNAME,
  @ColName AS SYSNAME,
  @ColTypeDef AS SYSNAME,
  @Quiet AS BIT = 0,
  @Test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @lTabName AS NVARCHAR(200),
			@startTC AS INT,
			@sql NVARCHAR(MAX)

	DECLARE @ATsql NVARCHAR(500) = N'
IF  NOT EXISTS(
	SELECT	NULL
	FROM	sys.columns AS C
	WHERE	C.object_id = OBJECT_ID(N''[tabName]'', N''U'')
	AND		C.name = ''[colName]'')
  BEGIN
	[qc]PRINT ''Adding column [colName] [colTypeDef] to [tabName]''
	ALTER	TABLE [tabName]
	ADD		[colName] [colTypeDef];
  END;
';

	BEGIN TRY
		DECLARE @ObjName_q SYSNAME;
		EXEC dbadmin.CheckObjNameLocal @ObjName = @TabName, @ObjName_q = @lTabName OUTPUT;
		
		SELECT	@startTC = @@TRANCOUNT;

		SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(@ATsql, N'[tabName]', @lTabName), N'[colName]', @ColName), N'[colTypeDef]', @ColTypeDef), N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);

		IF  @Test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'AddColumn: Generated SQL is NULL!', 1;
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @Test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	  END TRY
	  BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW
	  END CATCH;
	  
	  RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[check_obj_name_local]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[check_obj_name_local]
( @p_obj_name AS SYSNAME,
  @p_obj_name_q AS SYSNAME OUTPUT
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @objDb AS SYSNAME,
			@objServer AS SYSNAME

	SELECT	@p_obj_name_q = ISNULL(PARSENAME(@p_obj_name, 2), N'dbo') + N'.' + PARSENAME(@p_obj_name, 1),
			@objDb = PARSENAME(@p_obj_name, 3),
			@objServer = PARSENAME(@p_obj_name, 4);

	IF  @objDb IS NOT NULL
		OR	@objServer IS NOT NULL
		BEGIN
		;
		THROW 50000, N'Object name cannot include database or server qualifications', 1;
		END;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CheckObjNameLocal]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CheckObjNameLocal]
( @ObjName AS SYSNAME,
  @ObjNameQ AS SYSNAME OUTPUT
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @objDb AS SYSNAME,
			@objServer AS SYSNAME

	SELECT	@ObjNameQ = ISNULL(PARSENAME(@ObjName, 2), N'dbo') + N'.' + PARSENAME(@ObjName, 1),
			@objDb = PARSENAME(@ObjName, 3),
			@objServer = PARSENAME(@ObjName, 4);

	IF  @objDb IS NOT NULL
		OR	@objServer IS NOT NULL
		BEGIN
		;
		THROW 50000, N'Object name cannot include database or server qualifications', 1;
		END;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_check_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_check_constraint]
(  @p_tab_name AS SYSNAME,
   @p_con_text AS NVARCHAR(100),
   @p_con_name AS SYSNAME = NULL,
   @p_c_def AS NVARCHAR(100) = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.create_constraint @p_tab_name = @p_tab_name, @p_con_type = N'C', @p_con_text = @p_con_text, @p_con_name = @p_con_name, @p_c_def = @p_c_def, @p_no_check = @p_no_check, @p_quiet = @p_quiet, @p_test = @p_test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_constraint]
(  @p_tab_name AS SYSNAME,
   @p_con_type AS VARCHAR(2),
   @p_con_text AS NVARCHAR(100),
   @p_con_name AS SYSNAME = NULL,
   @p_r_tab_name AS SYSNAME = NULL,
   @p_c_def AS NVARCHAR(100) = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @tabName AS NVARCHAR(200),
			@conType AS NVARCHAR(2),
			@conTypeK AS NVARCHAR(12),
			@RTabName AS NVARCHAR(200),
			@retols AS NVARCHAR(100),
			@startTC AS INT,
			@msg NVARCHAR(500),
			@conName SYSNAME,	
			@sql NVARCHAR(MAX)

	BEGIN TRY
		EXEC dbadmin.check_obj_name_local @p_obj_name = @p_tab_name, @p_obj_name_q = @tabName OUTPUT;
		
		SELECT	@retols = ISNULL(@p_c_def, @p_con_text),
				@conType = UPPER(@p_con_type),
				@conTypeK = CASE UPPER(@p_con_type) WHEN N'FK' THEN N'FOREIGN KEY' WHEN N'PK' THEN N'PRIMARY KEY' WHEN N'UN' THEN N'UNIQUE' WHEN N'C' THEN N'CHECK' WHEN N'D' THEN N'DEFAULT' END,
				@startTC = @@TRANCOUNT;
		/*
		SELECT	@tabName AS [@tabName],
				@conType AS [@conType],
				@RtabName AS [@RtabName],
				@retols AS [@retols],
				@startTC AS [@startTC];
		*/

		IF  @conType NOT IN(N'PK', N'FK', N'UN', N'UQ', N'C', N'D')
		  BEGIN
		    SELECT	@msg = N'Constraint type can''t be ''' + @conType + '''';
			THROW 50000, @msg, 1;
		  END;

		IF @conType = N'FK'
		  BEGIN
			DECLARE	@FKsql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.foreign_keys AS FK
		WHERE	FK.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		FK.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeK] constraint [conName] on [tabName] ([FKCols])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					FOREIGN KEY ([FKCols])
					REFERENCES [RTabName] ([RCols]);
	  END;
	';
			EXEC dbadmin.check_obj_name_local @p_obj_name = @p_r_tab_name, @p_obj_name_q = @RTabName OUTPUT;

			SELECT	@conName = ISNULL(@p_con_name, N'FK_' + PARSENAME(@tabName, 1) + N'_' + PARSENAME(@RTabName, 1));

			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@FKsql, N'[tabName]', @tabName), N'[noCheck]', CASE WHEN @p_no_check = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @conName), N'[RTabName]', @RTabName)
								, N'[FKCols]', @p_con_text), N'[RCols]', @retols), N'[conTypeK]', @conTypeK), N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);

		  END;

		IF  @conType IN(N'PK', N'UN', N'UQ')
		  BEGIN
			DECLARE @PKUNsql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.key_constraints AS KC
		WHERE	KC.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		KC.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeK] constraint [conName] on [tabName] ([UNCols])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					[conTypeK] ([UNCols]);
	  END;
	';
			SELECT	@conName = ISNULL(@p_con_name, REPLACE(@conType, N'UQ', N'UN') + N'_' + PARSENAME(@tabName, 1) + CASE WHEN @conType IN(N'UN', N'UQ') THEN N'_' + REPLACE(REPLACE(@p_con_text, N',', N'_'), N' ', N'') ELSE N'' END);

			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@PKUNsql, N'[tabName]', @tabName), N'[noCheck]', CASE WHEN @p_no_check = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @conName)
								, N'[UNCols]', @p_con_text), N'[conTypeK]', @conTypeK), N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);
	  END;

		IF  @conType IN(N'C', N'D')
		  BEGIN
			DECLARE @Csql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.[conTypeC]_constraints AS C
		WHERE	C.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		C.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeC] constraint [conName] on [tabName] ([CColP])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					[conTypeK] [CCol][DFFor];
	  END;
	';
			SELECT	@conName = ISNULL(@p_con_name, CASE @conType WHEN N'C' THEN N'CK' WHEN N'D' THEN N'DF' END + N'_' + PARSENAME(@tabName, 1) + N'_' + REPLACE(REPLACE(ISNULL(@p_c_def, N''), N',', N'_'), N' ', N''));
			
			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@Csql, N'[tabName]', @tabName), N'[noCheck]', CASE WHEN @p_no_check = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @conName)
								, N'[CColP]', N'(' + REPLACE(@p_con_text, N'''', N'''''') + N')'), N'[CCol]', N'(' + @p_con_text + N')'), N'[conTypeC]', LOWER(@conTypeK)), N'[conTypeK]', @conTypeK), N'[DFFor]', CASE WHEN @conType = N'D' THEN N' FOR ' + @p_c_def ELSE '' END), N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);

		  END;

		IF  @p_test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'create_constraint: Generated SQL is NULL!', 1;
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @p_test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	END TRY
	BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW
	END CATCH;
	  
	RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_default_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_default_constraint]
(  @p_tab_name AS SYSNAME,
   @p_col_name AS NVARCHAR(100),
   @p_con_text AS NVARCHAR(100),
   @p_con_name AS SYSNAME = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.create_constraint @p_tab_name = @p_tab_name, @p_con_type = 'D', @p_c_def = @p_col_name, @p_con_text = @p_con_text, @p_con_name = @p_con_name, @p_no_check = @p_no_check, @p_quiet = @p_quiet, @p_test = @p_test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_foreign_key_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_foreign_key_constraint]
(  @p_tab_name AS SYSNAME,
   @p_col_names AS NVARCHAR(100),
   @p_r_tab_name AS NVARCHAR(100),
   @p_r_col_names AS NVARCHAR(100) = NULL,
   @p_con_name AS SYSNAME = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.create_constraint @p_tab_name = @p_tab_name, @p_con_type = 'FK', @p_con_text = @p_col_names, @p_r_tab_name = @p_r_tab_name, @p_c_def = @p_r_col_names, @p_con_name = @p_con_name, @p_no_check = @p_no_check, @p_quiet = @p_quiet, @p_test = @p_test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_primary_key_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_primary_key_constraint]
(  @p_tab_name AS SYSNAME,
   @p_col_names AS NVARCHAR(100),
   @p_con_name AS SYSNAME = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.create_constraint @p_tab_name = @p_tab_name, @p_con_type = 'PK', @p_con_text = @p_col_names, @p_con_name = @p_con_name, @p_no_check = @p_no_check, @p_quiet = @p_quiet, @p_test = @p_test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_remote_synonym]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_remote_synonym]
( @schema sysname,
  @obj_name sysname,
  @db_name sysname)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @syn_name sysname,
			@rem_obj_name sysname;

	SELECT @syn_name = @schema + N'.' + @obj_name,
		   @rem_obj_name = @db_name + N'.' + @schema + '.' + @obj_name;
	
	EXEC dbadmin.create_synonym @p_syn_name = @syn_name, @p_obj_name = @rem_obj_name;

  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_synonym]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_synonym]
(  @p_syn_name AS SYSNAME,
   @p_obj_name AS SYSNAME,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE	@sql NVARCHAR(MAX);

	DECLARE @synsql NVARCHAR(MAX) = '
[qc]PRINT ''Creating synonym [syn_name] for [obj_name]''
IF  EXISTS(
	SELECT	NULL
	FROM	sys.synonyms AS SY
	WHERE	SY.name = N''[syn_object]''
	AND		SY.schema_id = SCHEMA_ID(N''[syn_schema]''))
  BEGIN
	DROP SYNONYM [syn_name];
  END;

CREATE	SYNONYM [syn_name]
FOR		[obj_name];
';

	BEGIN TRY
		DECLARE @syn_name AS NVARCHAR(200),
				@syn_schema sysname,
				@syn_object sysname,
				@start_tc AS INT = @@TRANCOUNT;

		EXEC dbadmin.check_obj_name_local @p_obj_name = @p_syn_name, @p_obj_name_q = @syn_name OUTPUT;

		SELECT	@syn_schema = PARSENAME(@syn_name, 2),
				@syn_object = PARSENAME(@syn_name, 1);

		SELECT	@sql = REPLACE(
						REPLACE(
						  REPLACE(
							REPLACE(
							  REPLACE(@synsql, N'[syn_name]', @syn_name),
							  N'[syn_schema]', @syn_schema),
							N'[syn_object]', @syn_object),
						  N'[obj_name]', @p_obj_name),
						N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);

		IF  @p_test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'create_synonym: Generated SQL is NULL!', 1;
		  END;

		IF  @start_tc = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @start_tc
		  BEGIN
		    IF  @p_test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	END TRY
	BEGIN CATCH
	    IF  @@TRANCOUNT > @start_tc
			ROLLBACK;
		THROW
	END CATCH;
	  
	RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[create_unique_constraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[create_unique_constraint]
(  @p_tab_name AS SYSNAME,
   @p_col_names AS NVARCHAR(100),
   @p_con_name AS SYSNAME = NULL,
   @p_no_check AS BIT = 0,
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.create_constraint @p_tab_name = @p_tab_name, @p_con_type = 'UN', @p_con_text = @p_col_names, @p_con_name = @p_con_name, @p_no_check = @p_no_check, @p_quiet = @p_quiet, @p_test = @p_test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateCheckConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateCheckConstraint]
(  @TabName AS SYSNAME,
   @ConText AS NVARCHAR(100),
   @ConName AS SYSNAME = NULL,
   @CDef AS NVARCHAR(100) = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.CreateConstraint @TabName = @TabName, @ConType = N'C', @ConText = @ConText, @ConName = @ConName, @CDef = @CDef, @NoCheck = @NoCheck, @Quiet = @Quiet, @Test = @Test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateConstraint]
(  @TabName AS SYSNAME,
   @ConType AS VARCHAR(2),
   @ConText AS NVARCHAR(100),
   @ConName AS SYSNAME = NULL,
   @RTabName AS SYSNAME = NULL,
   @CDef AS NVARCHAR(100) = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @lTabName AS NVARCHAR(200),
			@lConType AS NVARCHAR(2),
			@lConTypeK AS NVARCHAR(12),
			@lRTabName AS NVARCHAR(200),
			@retols AS NVARCHAR(100),
			@startTC AS INT,
			@msg NVARCHAR(500),
			@lConName SYSNAME,	
			@sql NVARCHAR(MAX)

	BEGIN TRY
		EXEC dbadmin.CheckObjNameLocal @ObjName = @TabName, @ObjNameQ = @lTabName OUTPUT;
		
		SELECT	@retols = ISNULL(@CDef, @ConText),
				@lConType = UPPER(@ConType),
				@lConTypeK = CASE UPPER(@ConType) WHEN N'FK' THEN N'FOREIGN KEY' WHEN N'PK' THEN N'PRIMARY KEY' WHEN N'UN' THEN N'UNIQUE' WHEN N'C' THEN N'CHECK' WHEN N'D' THEN N'DEFAULT' END,
				@startTC = @@TRANCOUNT;
		/*
		SELECT	@lTabName AS [@lTabName],
				@lConType AS [@lConType],
				@RtabName AS [@RtabName],
				@retols AS [@retols],
				@startTC AS [@startTC];
		*/

		IF  @lConType NOT IN(N'PK', N'FK', N'UN', N'UQ', N'C', N'D')
		  BEGIN
		    SELECT	@msg = N'Constraint type can''t be ''' + @lConType + '''';
			THROW 50000, @msg, 1;
		  END;

		IF @lConType = N'FK'
		  BEGIN
			DECLARE	@FKsql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.foreign_keys AS FK
		WHERE	FK.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		FK.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeK] constraint [conName] on [tabName] ([FKCols])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					FOREIGN KEY ([FKCols])
					REFERENCES [RTabName] ([RCols]);
	  END;
	';
			EXEC dbadmin.CheckObjNameLocal @ObjName = @RTabName, @ObjNameQ = @lRTabName OUTPUT;

			SELECT	@lConName = ISNULL(@ConName, N'FK_' + PARSENAME(@lTabName, 1) + N'_' + PARSENAME(@lRTabName, 1));

			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@FKsql, N'[tabName]', @lTabName), N'[noCheck]', CASE WHEN @NoCheck = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @lConName), N'[RTabName]', @lRTabName)
								, N'[FKCols]', @ConText), N'[RCols]', @retols), N'[conTypeK]', @lConTypeK), N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);

		  END;

		IF  @lConType IN(N'PK', N'UN', N'UQ')
		  BEGIN
			DECLARE @PKUNsql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.key_constraints AS KC
		WHERE	KC.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		KC.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeK] constraint [conName] on [tabName] ([UNCols])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					[conTypeK] ([UNCols]);
	  END;
	';
			SELECT	@lConName = ISNULL(@ConName, REPLACE(@lConType, N'UQ', N'UN') + N'_' + PARSENAME(@lTabName, 1) + CASE WHEN @lConType IN(N'UN', N'UQ') THEN N'_' + REPLACE(REPLACE(@ConText, N',', N'_'), N' ', N'') ELSE N'' END);

			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@PKUNsql, N'[tabName]', @lTabName), N'[noCheck]', CASE WHEN @NoCheck = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @lConName)
								, N'[UNCols]', @ConText), N'[conTypeK]', @lConTypeK), N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);
	  END;

		IF  @lConType IN(N'C', N'D')
		  BEGIN
			DECLARE @Csql NVARCHAR(1000) = N'
	IF	NOT EXISTS(
		SELECT	NULL
		FROM	sys.[conTypeC]_constraints AS C
		WHERE	C.parent_object_id = OBJECT_ID(N''[tabName]'', N''U'')
		AND		C.name = N''[conName]'')
	  BEGIN
		[qc]PRINT ''Creating [conTypeC] constraint [conName] on [tabName] ([CColP])''
		ALTER	TABLE [tabName]
		ADD		CONSTRAINT [conName][noCheck]
					[conTypeK] [CCol][DFFor];
	  END;
	';
			SELECT	@lConName = ISNULL(@ConName, CASE @lConType WHEN N'C' THEN N'CK' WHEN N'D' THEN N'DF' END + N'_' + PARSENAME(@lTabName, 1) + N'_' + REPLACE(REPLACE(ISNULL(@CDef, N''), N',', N'_'), N' ', N''));
			
			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(@Csql, N'[tabName]', @lTabName), N'[noCheck]', CASE WHEN @NoCheck = 1 THEN ' NOCHECK' ELSE N'' END), N'[conName]', @lConName)
								, N'[CColP]', N'(' + REPLACE(@ConText, N'''', N'''''') + N')'), N'[CCol]', N'(' + @ConText + N')'), N'[conTypeC]', LOWER(@lConTypeK)), N'[conTypeK]', @lConTypeK), N'[DFFor]', CASE WHEN @lConType = N'D' THEN N' FOR ' + @CDef ELSE '' END), N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);

		  END;

		IF  @Test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'CreateConstraint: Generated SQL is NULL!', 1;
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @Test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	END TRY
	BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW
	END CATCH;
	  
	RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateDefaultConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateDefaultConstraint]
(  @TabName AS SYSNAME,
   @ColName AS NVARCHAR(100),
   @ConText AS NVARCHAR(100),
   @ConName AS SYSNAME = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.CreateConstraint @TabName = @TabName, @ConType = 'D', @CDef = @ColName, @ConText = @ConText, @ConName = @ConName, @NoCheck = @NoCheck, @Quiet = @Quiet, @Test = @Test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateForeignKeyConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateForeignKeyConstraint]
(  @TabName AS SYSNAME,
   @ColNames AS NVARCHAR(100),
   @RTabName AS NVARCHAR(100),
   @RColNames AS NVARCHAR(100) = NULL,
   @ConName AS SYSNAME = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.CreateConstraint @TabName = @TabName, @ConType = 'FK', @ConText = @ColNames, @RTabName = @RTabName, @CDef = @RColNames, @ConName = @ConName, @NoCheck = @NoCheck, @Quiet = @Quiet, @Test = @Test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreatePrimaryKeyConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreatePrimaryKeyConstraint]
(  @TabName AS SYSNAME,
   @ColNames AS NVARCHAR(100),
   @ConName AS SYSNAME = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.CreateConstraint @TabName = @TabName, @ConType = 'PK', @ConText = @ColNames, @ConName = @ConName, @NoCheck = @NoCheck, @Quiet = @Quiet, @Test = @Test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateRemoteSynonym]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateRemoteSynonym]
( @Schema sysname,
  @ObjName sysname,
  @DbName sysname)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @SynName sysname,
			@RemObjName sysname;

	SELECT @SynName = @Schema + N'.' + @ObjName,
		   @RemObjName = @DbName + N'.' + @Schema + '.' + @ObjName;
	
	EXEC dbadmin.CreateSynonym @SynName = @SynName, @ObjName = @RemObjName;

  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateSynonym]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateSynonym]
(  @SynName AS SYSNAME,
   @ObjName AS SYSNAME,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE	@sql NVARCHAR(MAX);

	DECLARE @synsql NVARCHAR(MAX) = '
[qc]PRINT ''Creating synonym [syn_name] for [obj_name]''
IF  EXISTS(
	SELECT	NULL
	FROM	sys.synonyms AS SY
	WHERE	SY.name = N''[syn_object]''
	AND		SY.schema_id = SCHEMA_ID(N''[syn_schema]''))
  BEGIN
	DROP SYNONYM [syn_name];
  END;

CREATE	SYNONYM [syn_name]
FOR		[obj_name];
';

	BEGIN TRY
		DECLARE @lSynName AS NVARCHAR(200),
				@SynSchema sysname,
				@SynObject sysname,
				@StartTC AS INT = @@TRANCOUNT;

		EXEC dbadmin.CheckObjNameLocal @ObjName = @SynName, @ObjNameQ = @lSynName OUTPUT;

		SELECT	@SynSchema = PARSENAME(@lSynName, 2),
				@SynObject = PARSENAME(@lSynName, 1);

		SELECT	@sql = REPLACE(
						REPLACE(
						  REPLACE(
							REPLACE(
							  REPLACE(@synsql, N'[syn_name]', @lSynName),
							  N'[syn_schema]', @SynSchema),
							N'[syn_object]', @SynObject),
						  N'[obj_name]', @ObjName),
						N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);

		IF  @Test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @sql IS NULL
		  BEGIN
			;
			THROW 50000, N'CreateSynonym: Generated SQL is NULL!', 1;
		  END;

		IF  @StartTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @StartTC
		  BEGIN
		    IF  @Test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	END TRY
	BEGIN CATCH
	    IF  @@TRANCOUNT > @StartTC
			ROLLBACK;
		THROW
	END CATCH;
	  
	RETURN 1;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[CreateUniqueConstraint]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[CreateUniqueConstraint]
(  @TabName AS SYSNAME,
   @ColNames AS NVARCHAR(100),
   @ConName AS SYSNAME = NULL,
   @NoCheck AS BIT = 0,
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	DECLARE @ret INT;
	EXEC @ret = dbadmin.CreateConstraint @TabName = @TabName, @ConType = 'UN', @ConText = @ColNames, @ConName = @ConName, @NoCheck = @NoCheck, @Quiet = @Quiet, @Test = @Test;
	RETURN @ret;
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[drop_object]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[drop_object]
(  @p_obj_name AS SYSNAME,
   @p_obj_type AS VARCHAR(2),
   @p_quiet AS BIT = 0,
   @p_test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @objName AS NVARCHAR(200),
			@objDb AS SYSNAME,
			@objServer AS SYSNAME,
			@objType AS VARCHAR(2),
			@startTC AS INT,
			@msg NVARCHAR(500),
			@sql NVARCHAR(MAX),
			@objChc NVARCHAR(200) = N'
IF OBJECT_ID(N''[objName]'', N''[objType]'') IS NOT NULL
  BEGIN
	[qc]PRINT ''Dropping [objTypeK] [objName]''
	DROP [objTypeK] [objName];
  END;
';

	  BEGIN TRY
		SELECT	@objName = ISNULL(PARSENAME(@p_obj_name, 2), N'dbo') + N'.' + PARSENAME(@p_obj_name, 1),
				@objDb = PARSENAME(@p_obj_name, 3),
				@objServer = PARSENAME(@p_obj_name, 4),
				@objType = UPPER(@p_obj_type),
				@startTC = @@TRANCOUNT;

		IF  @objDb IS NOT NULL
			OR	@objServer IS NOT NULL
		  BEGIN
			;
			THROW 50000, N'Object name cannot include database or server qualifications', 1;
		  END;

		IF  @objType NOT IN(N'P')
		  BEGIN
		    SELECT	@msg = N'Object type can''t be ''' + @objType + '''';
			THROW 50000, @msg, 1;
		  END;

		/*
		SELECT	@objName AS [@objName],
				@objType AS [@objType],
				@startTC AS [@startTC];
		*/
		IF  @objType = N'P'
		  BEGIN
			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(@objChc, N'[objName]', @objName), N'[objType]', @objType), N'[objTypeK]', 'PROCEDURE'), N'[qc]', CASE WHEN @p_quiet = 1 THEN N'-- ' ELSE '' END);
		  END;

		IF  @p_test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @p_test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	  END TRY
	  BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW;
	  END CATCH;	
  END;
GO
/****** Object:  StoredProcedure [dbadmin].[DropObject]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbadmin].[DropObject]
(  @ObjName AS SYSNAME,
   @ObjType AS VARCHAR(2),
   @Quiet AS BIT = 0,
   @Test AS BIT = 0
)
AS
  BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	DECLARE @lObjName AS NVARCHAR(200),
			@lObjType AS VARCHAR(2),
			@objDb AS SYSNAME,
			@objServer AS SYSNAME,
			@startTC AS INT,
			@msg NVARCHAR(500),
			@sql NVARCHAR(MAX),
			@objChc NVARCHAR(200) = N'
IF OBJECT_ID(N''[objName]'', N''[objType]'') IS NOT NULL
  BEGIN
	[qc]PRINT ''Dropping [objTypeK] [objName]''
	DROP [objTypeK] [objName];
  END;
';

	  BEGIN TRY
		SELECT	@lObjName = ISNULL(PARSENAME(@ObjName, 2), N'dbo') + N'.' + PARSENAME(@ObjName, 1),
				@objDb = PARSENAME(@ObjName, 3),
				@objServer = PARSENAME(@ObjName, 4),
				@lObjType = UPPER(@ObjType),
				@startTC = @@TRANCOUNT;

		IF  @objDb IS NOT NULL
			OR	@objServer IS NOT NULL
		  BEGIN
			;
			THROW 50000, N'Object name cannot include database or server qualifications', 1;
		  END;

		IF  @lobjType NOT IN('P', 'V', 'U', 'FN')
		  BEGIN
		    SELECT	@msg = N'Object type can''t be ''' + @objType + '''';
			THROW 50000, @msg, 1;
		  END;

		/*
		SELECT	@lObjName AS [@lObjName],
				@lObjType AS [@objType],
				@startTC AS [@startTC];
		*/
		IF  @lObjType IN(N'P', N'U', N'V', N'FN')
		  BEGIN
			SELECT @sql = REPLACE(REPLACE(REPLACE(REPLACE(@objChc, N'[objName]', @lObjName), N'[objType]', @objType), N'[objTypeK]',
							CASE @lObjType
								WHEN N'P' THEN N'PROCEDURE'
								WHEN N'U' THEN N'TABLE'
								WHEN N'V' THEN N'VIEW'
								WHEN N'FN' THEN N'FUNCTION'
						     END),
							N'[qc]', CASE WHEN @Quiet = 1 THEN N'-- ' ELSE '' END);
		  END;

		IF  @Test = 1
		  BEGIN
			SELECT @sql AS [-- SQL];
		  END;

		IF  @startTC = 0
		  BEGIN
			BEGIN TRAN;
		  END;

		EXEC sp_executesql @stmt=@sql;

	    IF  @@TRANCOUNT > @startTC
		  BEGIN
		    IF  @Test = 1
			  BEGIN
				PRINT 'TEST MODE: Rolling back!'
				ROLLBACK;
			  END;
			ELSE
			  BEGIN
				COMMIT;
			  END;
		END;
	  END TRY
	  BEGIN CATCH
	    IF  @@TRANCOUNT > @startTC
			ROLLBACK;
		THROW;
	  END CATCH;	
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pCreateOrUpdateClientConfig]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pCreateOrUpdateClientConfig]
( @pClientId INT = NULL,
  @pClientName NVARCHAR(50) = NULL,
  @pProcessId INT = NULL,
  @pProcessCode NVARCHAR(20) = NULL,
  @pClaimTypeId INT = NULL,
  @pClaimTypeCode NVARCHAR(20) = NULL,
  @pSchemaId INT = NULL,
  @pSchemaCode NVARCHAR(30) = NULL,
  @pFlowId INT = NULL,
  @pFlowCode NVARCHAR(30) = NULL
)
AS
  BEGIN
	DECLARE @ClientId INT,
			@ProcessId INT,
			@ProcessName NVARCHAR(20),
			@ClaimTypeId INT,
			@ClaimType NVARCHAR(20),
			@SchemaId INT,
			@FlowId INT;

	DECLARE	@msg NVARCHAR(1000),
			@Errors INT = 0;

	SET NOCOUNT ON;

	SELECT	TOP 1 @ClientId = CLI.ClientId
	FROM	KCG.vClients AS CLI
	WHERE	(CLI.ClientId = @pClientId
				OR (@pClientId IS NULL
					AND CLI.ClientName = @pClientName));

	IF  @ClientId IS NULL
	  BEGIN
		SELECT	@msg = N'Can''t find client from ' + CASE WHEN @pClientId IS NOT NULL
														 THEN N'ClientId = ' + CONVERT(NVARCHAR(10), @pClientId)
														 WHEN @pClientName IS NOT NULL
														 THEN N'ClientName = ' + @pClientName
														 ELSE 'NULL @ClientId and @ClientName parameters'
														 END,
				@Errors = @Errors + 1;
		PRINT @msg;
	  END;

	SELECT	TOP 1 @ProcessId = PRC.ProcessId,
			@ProcessName = PRC.ProcessName
	FROM	KLAiMFlex.Processes AS PRC
	WHERE	(PRC.ProcessId = @pProcessId
				OR (@pProcessId IS NULL
					AND PRC.ProcessCode = @pProcessCode));

	IF  @ProcessId IS NULL
	  BEGIN
		SELECT	@msg = N'Can''t find process from ' + CASE WHEN @pProcessId IS NOT NULL
														 THEN N'ProcessId = ' + CONVERT(NVARCHAR(10), @pProcessId)
														 WHEN @pProcessCode IS NOT NULL
														 THEN N'ProcessCode = ' + @pProcessCode
														 ELSE 'NULL @ProcessId and @ProcessCode parameters'
														 END,
				@Errors = @Errors + 1;
		PRINT @msg;
	  END;

	SELECT	TOP 1 @ClaimTypeId = CT.ClaimTypeId,
			@ClaimType = CT.ClaimType
	FROM	KLAiMFlex.ClaimTypes AS CT
	WHERE	(CT.ClaimTypeId = @pClaimTypeId
				OR (@pClaimTypeId IS NULL
					AND CT.ClaimTypeCode = @pClaimTypeCode));

	IF  @ClaimTypeId IS NULL
	  BEGIN
		SELECT	@msg = N'Can''t find claim type from ' + CASE WHEN @pClaimTypeId IS NOT NULL
														 THEN N'ClaimTypeId = ' + CONVERT(NVARCHAR(10), @pClaimTypeId)
														 WHEN @pClaimTypeCode IS NOT NULL
														 THEN N'ClaimType = ' + @pClaimTypeCode
														 ELSE 'NULL @ClaimTypeId and @ClaimTypeCode parameters'
														 END,
				@Errors = @Errors + 1;
		PRINT @msg;
	  END;

	SELECT	TOP 1 @SchemaId = SCH.SchemaId
	FROM	KLAiMFlex.Schemas AS SCH
	WHERE	(SCH.SchemaId = @pSchemaId
				OR (@pSchemaId IS NULL
					AND SCH.SchemaCode = @pSchemaCode));

	IF  @SchemaId IS NULL
	  BEGIN
		SELECT	@msg = N'Can''t find schema from ' + CASE WHEN @pSchemaId IS NOT NULL
														 THEN N'SchemaId = ' + CONVERT(NVARCHAR(10), @pSchemaId)
														 WHEN @pSchemaCode IS NOT NULL
														 THEN N'SchemaCode = ' + @pSchemaCode
														 ELSE 'NULL @SchemaId and @SchemaCode parameters'
														 END,
				@Errors = @Errors + 1;
		PRINT @msg;
	  END;

	SELECT	TOP 1 @FlowId = FLW.FlowId
	FROM	KLAiMFlex.Flows AS FLW
	WHERE	(FLW.FlowId = @pFlowId
				OR (@pFlowId IS NULL
					AND FLW.FlowCode = @pFlowCode));

	IF  @FlowId IS NULL
	  BEGIN
		SELECT	@msg = N'Can''t find flow from ' + CASE WHEN @pFlowId IS NOT NULL
														 THEN N'FlowId = ' + CONVERT(NVARCHAR(10), @pFlowId)
														 WHEN @pFlowCode IS NOT NULL
														 THEN N'FlowCode = ' + @pFlowCode
														 ELSE 'NULL @FlowId and @FlowCode parameters'
														 END,
				@Errors = @Errors + 1;
		PRINT @msg;
	  END;

	IF  @Errors = 0
	  BEGIN
		IF  NOT EXISTS(
			SELECT	NULL
			FROM	KLAiMFlex.ProcessClaimTypes AS PCT
			WHERE	PCT.ProcessId = @ProcessId
			AND		PCT.ClaimTypeId = @ClaimTypeId)
		  BEGIN
			SELECT	@msg = N'Process ' + CONVERT(NVARCHAR(10), @ProcessId) + N' - ' + @ProcessName + N' and ClaimType ' + CONVERT(NVARCHAR(10), @ClaimTypeId) + N' - ' + @ClaimType + N' is not a valid combination',
					@Errors = @Errors + 1;
			PRINT	@msg;
		  END;
	  END;

	IF  @Errors = 0
	  BEGIN
		SELECT	@ClientId AS ClientId,
				@ProcessId AS ProcessId,
				@ClaimTypeId AS ClaimTypeId,
				@SchemaId AS SchemaId,
				@FlowId AS FlowId;

		MERGE	KLAiMFlex.ClientConfig AS CC
		USING	(	SELECT	@ClientId AS ClientId,
							@ProcessId AS ProcessId,
							@ClaimTypeId AS ClaimTypeId,
							@SchemaId AS SchemaId,
							@FlowId AS FlowId
				) AS src
		ON	CC.ClientId = src.ClientId
			AND CC.ProcessId = src.ProcessId
			AND CC.ClaimTypeId = src.ClaimTypeId
		WHEN MATCHED
			AND CC.SchemaId <> src.SchemaId
			OR CC.FlowId <> src.FlowId
			THEN
				UPDATE	SET CC.SchemaId = src.SchemaId,
						CC.FlowId = src.FlowId,
						CC.UpdateDt = SYSDATETIME(),
						CC.UpdateUser = SYSTEM_USER
		WHEN NOT MATCHED
			THEN
				INSERT (ClientId,
						ProcessId,
						ClaimTypeId,
						SchemaId,
						FlowId)
				VALUES (src.ClientId,
						src.ProcessId,
						src.ClaimTypeId,
						src.SchemaId,
						src.FlowId)
		;

		SELECT	CC.ClientConfigId,
				CC.ClientId,
				CC.ClientName,
				CC.ProcessId,
				CC.ProcessName,
				CC.ClaimTypeId,
				CC.ClaimType,
				CC.SchemaId,
				CC.SchemaName,
				CC.FlowId,
				CC.FlowName,
				CC.CreateDt,
				CC.CreateUser,
				CC.UpdateDt,
				CC.UpdateUser
		FROM	KLAiMInfo.vClientConfig AS CC
		WHERE	CC.ClientId = @ClientId
		AND		CC.ProcessId = @ProcessId
		AND		CC.ClaimTypeId = @ClaimTypeId;
	  END;
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pLoadFlexActivities]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pLoadFlexActivities]
( @pActivities NVARCHAR(MAX),
  @pInitUser sysname = NULL,
  @pCheckDelSteps AS BIT = NULL,
  @pDebug BIT = NULL)
AS
  BEGIN
	SET XACT_ABORT ON;

	DECLARE @lInitUser sysname,
			@lCheckDelSteps BIT,
			@lDebug BIT;
	
	SELECT	@lInitUser = ISNULL(@pInitUser, N'INIT'),
			@lCheckDelSteps = ISNULL(@pCheckDelSteps, 1),
			@lDebug = ISNULL(@pDebug, 0);

	DECLARE	@Return INT = 0;

	DECLARE @LocalTran BIT = (SELECT CASE WHEN @@TRANCOUNT = 0 THEN 1 ELSE 0 END);

	IF  @LocalTran = 1
		BEGIN TRAN;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE	@acts TABLE
	(		ActivityCode		NVARCHAR(30)	NOT NULL,
			ActivityName		NVARCHAR(50)	NOT NULL,		
			ActivityDesc		NVARCHAR(250),
			Deleted				INT);

	INSERT	INTO @acts
	(	    ActivityName,
			ActivityCode,
			ActivityDesc,
			Deleted)
	SELECT	CONVERT(NVARCHAR(50), JSON_VALUE(A.Value, '$.name')) AS ActivityName,
			CONVERT(NVARCHAR(30), JSON_VALUE(A.Value, '$.code')) AS ActivityCode,
			CONVERT(NVARCHAR(250), JSON_VALUE(A.Value, '$.description')) AS ActivityDesc,
			ISNULL(CONVERT(BIT, JSON_VALUE(A.Value, '$.deleted')), 0) AS Deleted
	FROM	OPENJSON(@pActivities, N'$.activities') AS A;

	DECLARE	@steps TABLE
	(		ActivityCode		NVARCHAR(30)	NOT NULL,
			SequenceNo			INT				NOT NULL,
			StepType			NVARCHAR(20)	NOT NULL,
			StepLabel			NVARCHAR(30)	NOT NULL,
			StepName			NVARCHAR(50)	NOT NULL,
			StepDesc			NVARCHAR(250),
			StartActivityCode	NVARCHAR(30),
			WaitForActivity		INT,
			FlexStep			NVARCHAR(MAX));

	INSERT	INTO @steps
	(	    ActivityCode,
			SequenceNo,
			StepType,
			StepLabel,
			StepName,
			StepDesc,
			StartActivityCode,
			WaitForActivity,
			FlexStep)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(A.Value, '$.code')) AS ActivityCode,
			CONVERT(INT, JSON_VALUE(S.Value, '$.sequence')) AS SequenceNo,
			CONVERT(NVARCHAR(20), JSON_VALUE(S.Value, '$.type')) AS StepType,
			CONVERT(NVARCHAR(50), JSON_VALUE(S.Value, '$.label')) AS StepLabel,
			CONVERT(NVARCHAR(50), JSON_VALUE(S.Value, '$.name')) AS StepName,
			CONVERT(NVARCHAR(250), JSON_VALUE(S.Value, '$.description')) AS StepDesc,
			CONVERT(NVARCHAR(30), JSON_VALUE(S.Value, '$.startActivity')) AS StartActivityCode,
			ISNULL(CONVERT(BIT, JSON_VALUE(S.Value, '$.waitForActivity')), 0) AS WaitForActivity,
			CONVERT(NVARCHAR(MAX), JSON_QUERY(S.Value, '$.flexStep')) AS FlexStep
	FROM	OPENJSON(@pActivities, N'$.activities') AS A
			CROSS APPLY OPENJSON(A.Value, '$.steps') AS S;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	SET NOCOUNT OFF;

	IF  @pDebug = 1
		PRINT 'Activities';

	WITH cACT
	AS
	(	SELECT	A.ActivityId,
                A.ActivityName,
                A.ActivityCode,
                A.ActivityDesc,
                A.Deleted,
                A.CreateDt,
                A.CreateUser,
                A.UpdateDt,
                A.UpdateUser
		FROM	@acts AS SRCA
				INNER JOIN KLAiMFlex.Activities AS A ON A.ActivityCode = SRCA.ActivityCode
	)
	MERGE	INTO cACT AS tgt
	USING	(	SELECT	DISTINCT A.ActivityName,
						A.ActivityCode,
						A.ActivityDesc,
						ISNULL(A.Deleted, 0) AS Deleted
				FROM	@acts AS A
			) AS src
			ON src.ActivityCode = tgt.ActivityCode
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(ActivityName, ActivityCode, ActivityDesc, CreateDt, CreateUser)
			VALUES(	src.ActivityName, src.ActivityCode, src.ActivityDesc, SYSDATETIME(), @pInitUser)
	WHEN MATCHED
			AND (tgt.ActivityName COLLATE Latin1_General_CS_AS <> src.ActivityName COLLATE Latin1_General_CS_AS
				OR ISNULL(tgt.ActivityDesc, N'') COLLATE Latin1_General_CS_AS <> ISNULL(src.ActivityDesc, N'') COLLATE Latin1_General_CS_AS
				OR tgt.Deleted <> src.Deleted)
		THEN
			UPDATE	SET tgt.ActivityName = src.ActivityName,
					tgt.ActivityDesc = src.ActivityDesc,
					tgt.Deleted = src.Deleted,
					tgt.UpdateDt = SYSDATETIME(),
					tgt.UpdateUser = @pInitUser
	;

	IF	@@ERROR <> 0
		SET NOEXEC ON;
	
	IF  @pDebug = 1
		PRINT 'Steps'

	IF  @pCheckDelSteps = 1
	  BEGIN
		DECLARE @DelRefSteps INT;

		SELECT	@DelRefSteps = COUNT(STP.StepId)
		FROM	@acts AS A
				INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = A.ActivityCode
				INNER JOIN KLAiMFlex.Steps AS STP ON STP.ActivityId = ACT.ActivityId
		WHERE	EXISTS(
				SELECT	NULL	
				FROM	KLAiMFlex.Tasks AS TSK
				WHERE	TSK.StepId = STP.StepId)
		AND		NOT EXISTS(
				SELECT	NULL
				FROM	@steps AS S
				WHERE	S.ActivityCode = A.ActivityCode
				AND		S.StepLabel = STP.StepLabel);

		IF  @DelRefSteps > 0
		  BEGIN
			PRINT 'Deleted steps are referenced in Tasks!'
			SELECT	DISTINCT TSK.TaskId,
					TSK.ClaimId,
					STP.StepId,
					STP.ActivityId,
					STP.SequenceNo,
					STP.StepTypeId,
					STP.StepLabel,
					STP.StepName
			FROM	@acts AS A
					INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = A.ActivityCode
					INNER JOIN KLAiMFlex.Steps AS STP ON STP.ActivityId = ACT.ActivityId
					INNER JOIN KLAiMFlex.Tasks AS TSK ON TSK.StepId = STP.StepId
			WHERE	NOT EXISTS(
					SELECT	NULL
					FROM	@steps AS S
					WHERE	S.ActivityCode = ACT.ActivityCode
					AND		S.StepLabel = STP.StepLabel);
			SET NOEXEC ON;
		  END;
	  END;

	WITH cACT
	AS
	(	SELECT	ACT.ActivityId
		FROM	@acts AS A
				INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = A.ActivityCode
	), cSTP
	AS
	(	SELECT	STP.StepId,
                STP.ActivityId,
                STP.SequenceNo,
                STP.StepTypeId,
                STP.StepLabel,
                STP.StepName,
                STP.StepDesc,
                STP.StartActivityId,
                STP.WaitForActivity,
                STP.FlexStep,
                STP.RowVsn,
                STP.CreateDt,
                STP.CreateUser,
                STP.UpdateDt,
                STP.UpdateUser
		FROM	cACT AS ACT
				INNER JOIN KLAiMFlex.Steps AS STP ON STP.ActivityId = ACT.ActivityId
	)
	MERGE	INTO cSTP AS tgt
	USING	(	SELECT	ACT.ActivityId,
						S.SequenceNo,
						ST.StepTypeId,
						S.StepLabel,
						S.StepName,
						S.StepDesc,
						S.StartActivityCode,
						SACT.ActivityId AS StartActivityId,
						CASE WHEN SACT.ActivityId IS NOT NULL THEN ISNULL(S.WaitForActivity, 0) ELSE NULL END AS WaitForActivity,
						S.FlexStep
				FROM	@steps AS S
						INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = S.ActivityCode
						INNER JOIN KLAiMFlex.StepTypes AS ST ON ST.StepType = S.StepType
						LEFT JOIN KLAiMFlex.Activities AS SACT ON SACT.ActivityCode = S.StartActivityCode
			) AS src
			ON src.ActivityID = tgt.ActivityId
				AND src.StepLabel = tgt.StepLabel
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(ActivityId, SequenceNo, StepTypeId, StepLabel, StepName, StepDesc, StartActivityId, WaitForActivity, FlexStep, CreateDt, CreateUser)
			VALUES(	src.ActivityId, src.SequenceNo, src.StepTypeId, src.StepLabel, src.StepName, src.StepDesc, src.StartActivityId, src.WaitForActivity, src.FlexStep, SYSDATETIME(), @pInitUser)
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	WHEN MATCHED
			AND (tgt.SequenceNo <> src.SequenceNo
				OR tgt.StepTypeId <> src.StepTypeId
				OR tgt.StepName <> src.StepName
				OR ISNULL(tgt.StepDesc, N'') COLLATE Latin1_General_CS_AS <> ISNULL(src.StepDesc, N'') COLLATE Latin1_General_CS_AS
				OR ISNULL(tgt.StartActivityId, 0) <> ISNULL(src.StartActivityId, 0)
				OR ISNULL(CONVERT(INT, tgt.WaitForActivity), -1) <> ISNULL(CONVERT(INT, src.WaitForActivity), -1)
				OR ISNULL(tgt.FlexStep, N'') COLLATE Latin1_General_CS_AS <> ISNULL(src.FlexStep, N'') COLLATE Latin1_General_CS_AS
				)
		THEN
			UPDATE	SET tgt.SequenceNo = src.SequenceNo,
					tgt.StepTypeId = src.StepTypeId,
					tgt.StepName = src.StepName,
					tgt.StepDesc = src.StepDesc,
					tgt.StartActivityId = src.StartActivityId,
					tgt.WaitForActivity = src.WaitForActivity,
					tgt.FlexStep = src.FlexStep,
					tgt.UpdateDt = SYSDATETIME(),
					tgt.UpdateUser = @pInitUser
	;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE @Errors BIT = 0;

	DECLARE @errs TABLE
	(		ErrorDesc		NVARCHAR(250)	NOT NULL);

	INSERT	INTO @errs (ErrorDesc)
	SELECT	N'Activity ' + A.ActivityCode + N' not loaded' AS ErrorDesc
	FROM	@acts AS A
	WHERE	NOT EXISTS(
			SELECT	NULL
			FROM	KLAiMFlex.Activities AS ACT
			WHERE	ACT.ActivityCode = A.ActivityCode);

	INSERT	INTO @errs (ErrorDesc)
	SELECT	N'Step ' + S.ActivityCode + N'.' + S.StepLabel + N' not loaded'
	FROM	@steps AS S
			LEFT JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = S.ActivityCode
	WHERE	NOT EXISTS(
			SELECT	NULL
			FROM	KLAiMFlex.Steps AS STP
			WHERE	STP.ActivityId = ACT.ActivityId
			AND		STP.StepLabel = S.StepLabel);

	IF EXISTS(
		SELECT	NULL
		FROM	@errs)
	  BEGIN
		PRINT 'Errors in flow initialisation!!';
		SELECT	ErrorDesc
		FROM	@errs;
		SELECT	@Errors = 1;
	  END;

	IF  @Errors = 1
	  BEGIN
		SET NOEXEC ON;
	  END;

	DECLARE	@Commit BIT;

	SELECT	@Commit = 1;

	SET NOEXEC OFF;

	IF	@LocalTran = 1
	  BEGIN
		IF	ISNULL(@Commit, 0) = 1
			AND XACT_STATE() = 1
		  BEGIN
			COMMIT TRAN;
			SELECT @Return = 1;
		  END;
		ELSE
		  BEGIN
			PRINT 'Load activities procedure failed';
			IF XACT_STATE() = -1 OR @@TRANCOUNT > 0
			  BEGIN
				PRINT 'Rolling back';
				ROLLBACK TRAN;
			  END;
		  END;
	  END;
	ELSE
	  BEGIN
		SELECT @Return =  1;
	  END;

	IF  @Return = 1
	  BEGIN
		PRINT 'Flex Activities: update completed';
	  END;
	ELSE
	  BEGIN
		PRINT 'Flex Activities: update failed';
	  END;

	RETURN	@Return;
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pLoadFlexFlows]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pLoadFlexFlows]
( @pFlows NVARCHAR(MAX),
  @pActivities NVARCHAR(MAX) = NULL,
  @pInitUser sysname = NULL,
  @pCheckDelSteps BIT = NULL,
  @pDebug BIT = NULL)
AS
  BEGIN
	SET XACT_ABORT ON;

	DECLARE @lInitUser sysname,
			@lCheckDelSteps BIT,
			@lDebug BIT;
	
	SELECT	@lInitUser = ISNULL(@pInitUser, N'INIT'),
			@lCheckDelSteps = ISNULL(@pCheckDelSteps, 1),
			@lDebug = ISNULL(@pDebug, 0);

	DECLARE	@Return INT = 0;

	DECLARE @LocalTran BIT = (SELECT CASE WHEN @@TRANCOUNT = 0 THEN 1 ELSE 0 END);

	IF  @LocalTran = 1
		BEGIN TRAN;

	IF	@pActivities IS NOT NULL
	  BEGIN
	    DECLARE @ret INT;
		EXEC @ret = KLAiMAdmin.pLoadFlexActivities @pActivities = @pActivities,
												   @pInitUser = @lInitUser,
												   @pCheckDelSteps = @lCheckDelSteps,
												   @pDebug = @lDebug;
		IF  @ret <> 1
		  BEGIN
			PRINT 'Failed to load activities';
			GOTO EndUpdate;
		  END;
	  END;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE @flows TABLE
	(	    FlowId				INT				NOT NULL,
			FlowName			NVARCHAR(50)	NOT NULL,
			FlowCode			NVARCHAR(30)	NOT NULL,
			FlowVersion			INT				NOT NULL,
			FlowDesc			NVARCHAR(250),
			IsDisabled			BIT,
			FlexFlow			NVARCHAR(MAX));

	INSERT	INTO @flows
	(	    FlowId,
			FlowName,
			FlowCode,
			FlowVersion,
			FlowDesc,
			IsDisabled,
			FlexFlow)
	SELECT	CONVERT(INT, JSON_VALUE(F.Value, '$.id')) AS FlowId,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.name')) AS FlowName,
			CONVERT(NVARCHAR(30), JSON_VALUE(F.Value, '$.code')) AS FlowCode,
			CONVERT(INT, JSON_VALUE(F.Value, '$.version')) AS FlowVersion,
			CONVERT(NVARCHAR(250), JSON_VALUE(F.Value, '$.description')) AS FlowDesc,
			ISNULL(CONVERT(BIT, JSON_VALUE(F.Value, '$.disabled')), 0) AS IsDisabled,
			CONVERT(NVARCHAR(MAX), JSON_QUERY(F.Value, '$.flexFlow')) AS FlexFlow
	FROM	OPENJSON(@pFlows, N'$.flows') AS F;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE	@fas TABLE
	(	    FlowCode			NVARCHAR(50)	NOT NULL,
			FlowVersion			INT				NOT NULL,
			SequenceNo			INT				NOT NULL,
			ActivityCode		NVARCHAR(30)	NOT NULL,
			IsBootstrap			BIT,
			MilestoneValue		INT);

	INSERT	INTO @fas
	(		FlowCode,
			FlowVersion,
			SequenceNo,
			ActivityCode,
			IsBootstrap,
			MilestoneValue)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(F.Value, '$.code')) AS FlowCode,
			CONVERT(INT, JSON_VALUE(F.Value, '$.version')) AS FlowVersion,
			CONVERT(INT, JSON_VALUE(FA.Value, '$.sequence')) AS SequenceNo,
			CONVERT(NVARCHAR(30), JSON_VALUE(FA.Value, '$.code')) AS ActivityCode,
			ISNULL(CONVERT(BIT, JSON_VALUE(FA.Value, '$.bootstrap')), 0) AS IsBootstrap,
			CONVERT(INT, JSON_VALUE(FA.Value, '$.milestoneValue')) AS MilestoneValue
	FROM	OPENJSON(@pFlows, N'$.flows') AS F
			CROSS APPLY OPENJSON(F.Value, N'$.activities') AS FA;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	PRINT 'Flows';

	SET IDENTITY_INSERT KLAiMFlex.Flows ON;

	IF  @@ERROR <> 0
		SET NOEXEC ON;

	DECLARE @Err INT;

	MERGE	INTO KLAiMFlex.Flows AS FLW
	USING	(	SELECT	F.FlowId,
						F.FlowName,
						F.FlowCode,
						F.FlowVersion,
						F.FlowDesc,
						ISNULL(F.IsDisabled, 0) AS IsDisabled,
						F.FlexFlow
				FROM	@flows AS F
			) AS src
			ON src.FlowId = FLW.FlowId AND src.FlowVersion = FLW.FlowVersion
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(FlowId, FlowName, FlowCode, FlowVersion, FlowDesc, FlexFlow, CreateDt, CreateUser)
			VALUES(	src.FlowId, src.FlowName, src.FlowCode, src.FlowVersion, src.FlowDesc, src.FlexFlow, SYSDATETIME(), @lInitUser)
	WHEN MATCHED
			AND (FLW.FlowCode COLLATE Latin1_General_CS_AS <> src.FlowCode COLLATE Latin1_General_CS_AS
				OR FLW.FlowName COLLATE Latin1_General_CS_AS <> src.FlowName COLLATE Latin1_General_CS_AS
				OR ISNULL(FLW.FlowDesc, N'') COLLATE Latin1_General_CS_AS <> ISNULL(src.FlowDesc, N'') COLLATE Latin1_General_CS_AS
				OR FLW.IsDisabled <> src.IsDisabled
				OR ISNULL(FLW.FlexFlow, N'') COLLATE Latin1_General_CS_AS <> ISNULL(src.FlexFlow, N'') COLLATE Latin1_General_CS_AS)
		THEN
			UPDATE	SET	FLW.FlowCode = src.FlowCode,
						FLW.FlowName = src.FlowName,
						FLW.FlowDesc = src.FlowDesc,
						FLW.IsDisabled = src.IsDisabled,
						FLW.FlexFlow = src.FlexFlow
	;

	SELECT	@Err = @@ERROR;

	SET IDENTITY_INSERT KLAiMFlex.Flows OFF;

	IF @Err <> 0
	   SET NOEXEC ON;

	PRINT 'FlowActivities';

	WITH	cFA
	AS
	(	SELECT	FA.FlowActivityId,
                FA.FlowId,
                FA.ActivityId,
                FA.SequenceNo,
                FA.IsBootstrap,
                FA.MilestoneValue,
                FA.RowVsn,
                FA.CreateDt,
                FA.CreateUser,
                FA.UpdateDt,
                FA.UpdateUser
		FROM	@flows AS F
				INNER JOIN KLAiMFlex.FlowActivities AS FA ON FA.FlowId = F.FlowId
	)
	MERGE	INTO cFA AS FA
	USING	(	SELECT	DISTINCT FLW.FlowId,
						FA.SequenceNo,
						ISNULL(FA.IsBootstrap, 0) AS IsBootstrap,
						FA.MilestoneValue,
						ACT.ActivityId
				FROM	@fas AS FA
						INNER JOIN KLAiMFlex.Flows AS FLW ON FLW.FlowCode = FA.FlowCode AND FLW.FlowVersion = FA.FlowVersion
						INNER JOIN KLAiMFlex.Activities AS ACT ON ACT.ActivityCode = FA.ActivityCode
			) AS src
			ON src.FlowId = FA.FlowId
				AND src.SequenceNo = FA.SequenceNo
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(FlowId, SequenceNo, ActivityId, IsBootstrap, MilestoneValue, CreateDt, CreateUser)
			VALUES(	src.FlowId, src.SequenceNo, src.ActivityId, src.IsBootstrap, src.MilestoneValue, SYSDATETIME(), @lInitUser)
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	WHEN MATCHED
			AND (FA.ActivityId <> src.ActivityId
				OR FA.IsBootstrap <> src.IsBootstrap
				OR ISNULL(FA.MilestoneValue, 0) <> ISNULL(src.MilestoneValue, 0))
		THEN
			UPDATE	SET FA.ActivityId = src.ActivityId,
					FA.IsBootstrap = src.IsBootstrap,
					FA.MilestoneValue = src.MilestoneValue,
					FA.UpdateDt = SYSDATETIME(),
					FA.UpdateUser = @lInitUser
	;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	SET NOCOUNT ON;

	-- Error checking

	DECLARE @Errors BIT = 0;

	DECLARE @errs TABLE
	(		ErrorDesc		NVARCHAR(250)	NOT NULL);

	INSERT	INTO @errs (ErrorDesc)
	SELECT	N'Flow ' + F.FlowCode + N'not loaded' AS ErrorDesc
	FROM	@flows AS F
	WHERE	NOT EXISTS(
			SELECT	NULL
			FROM	KLAiMFlex.Flows AS FLW
			WHERE	FLW.FlowCode = F.FlowCode);

	IF EXISTS(
		SELECT	NULL
		FROM	@errs)
	  BEGIN
		PRINT 'Errors in flow initialisation!!';
		SELECT	ErrorDesc
		FROM	@errs;
		SELECT	@Errors = 1;
	  END;

	IF  @Errors = 1
	  BEGIN
		SET NOEXEC ON;
	  END;

	DECLARE	@Commit BIT;

	SELECT	@Commit = 1;

EndUpdate:

	SET NOEXEC OFF;

	IF	@LocalTran = 1
	  BEGIN
		IF	ISNULL(@Commit, 0) = 1
			AND XACT_STATE() = 1
		  BEGIN
			COMMIT TRAN;
			SELECT @Return = 1;
		  END;
		ELSE
		  BEGIN
			PRINT 'Load flows procedure failed';
			IF XACT_STATE() = -1 OR @@TRANCOUNT > 0
			  BEGIN
				PRINT 'Rolling back';
				ROLLBACK TRAN;
			  END;
		  END;
	  END;
	ELSE
	  BEGIN
		SELECT @Return =  1;
	  END;

	IF  @pDebug = 1
		AND @Return = 1
	  BEGIN
		SELECT	*
		FROM	@flows;

		SELECT	*
		FROM	@fas;

		WITH cAS
		AS
		(	SELECT	A.ActivityId,
					A.ActivityName,
					A.ActivityCode,
					A.Deleted AS ActivityDeleted,
					S.SequenceNo,
					S.StepId,
					S.StepName,
					ST.StepType,
					S.StartActivityId,
					S.WaitForActivity
			FROM	KLAiMFlex.Activities AS A
					LEFT JOIN KLAiMFlex.Steps AS S ON S.ActivityId = A.ActivityId
					LEFT JOIN KLAiMFlex.StepTypes AS ST ON ST.StepTypeId = S.StepTypeId),
		cASR
		AS
		(	SELECT	1 AS Level,
					A.ActivityId AS ParActivityId,
					A.ActivityId,
					A.ActivityName,
					A.ActivityCode,
					A.ActivityDeleted,
					A.SequenceNo,
					A.StepId,
					A.StepName,
					A.StepType,
					A.StartActivityId,
					A.WaitForActivity
			FROM	cAS AS A
			UNION ALL
			SELECT	C.Level + 1,
					C.ActivityId,
					C.StartActivityId AS ActivityId,
					A.ActivityName,
					A.ActivityCode,
					A.ActivityDeleted,
					A.SequenceNo,
					A.StepId,
					A.StepName,
					A.StepType,
					A.StartActivityId,
					A.WaitForActivity
			FROM	cASR AS C
					INNER JOIN cAS AS A ON A.ActivityId = C.StartActivityId
			WHERE	A.ActivityId = C.StartActivityId
		)
		SELECT	A.Level,
				F.FlowId,
				ISNULL(F.FlowName, N'! NO FLOW !') AS FlowName,
				FA.SequenceNo,
				FA.IsBootstrap,
				FA.MilestoneValue,
				A.ActivityId,
				A.ActivityCode,
				A.ActivityName,
				A.ActivityDeleted,
				A.SequenceNo,
				A.StepId,
				A.StepName,
				A.StepType,
				SA.ActivityCode AS StartActivityCode,
				A.WaitForActivity
		FROM	@flows AS SRCF
				INNER JOIN KLAiMFlex.Flows AS F ON F.FlowId = SRCF.FlowId
				LEFT JOIN KLAiMFlex.FlowActivities AS FA ON FA.FlowId = F.FlowId
				LEFT JOIN cASR AS A ON (A.ParActivityId = FA.ActivityId)
				LEFT JOIN KLAiMFlex.Activities AS SA ON SA.ActivityId = A.StartActivityId
		ORDER BY CASE WHEN F.FlowId IS NULL THEN 1 ELSE 0 END, F.FlowCode, FA.SequenceNo, A.ActivityCode, A.SequenceNo;
	  END;

	IF  @Return = 1
	  BEGIN
		PRINT 'Flex Flows: update completed';
	  END;
	ELSE
	  BEGIN
		PRINT 'Flex Flows: update failed';
	  END;

	RETURN @Return;
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pLoadFlexGroups]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pLoadFlexGroups]
( @pGroups NVARCHAR(MAX),
  @pInitUser sysname = NULL,
  @pDebug BIT = NULL)
AS
  BEGIN
	SET XACT_ABORT ON;

	DECLARE @lInitUser sysname,
			@lDebug BIT;
	
	SELECT	@lInitUser = ISNULL(@pInitUser, N'INIT'),
			@lDebug = ISNULL(@pDebug, 0);

	DECLARE	@Return INT = 0;

	DECLARE @LocalTran BIT = (SELECT CASE WHEN @@TRANCOUNT = 0 THEN 1 ELSE 0 END);

	IF  @LocalTran = 1
		BEGIN TRAN;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE	@fgs TABLE
	(		GroupCode			NVARCHAR(30)	NOT NULL,
			VersionNo			INT				NOT NULL,
			GroupName			NVARCHAR(50)	NOT NULL,
			GroupDesc			NVARCHAR(200),
			GroupHeading		NVARCHAR(50),
			ParentGroupCode		NVARCHAR(30),
			ParentVersionNo		INT,
			BaseGroupCode		NVARCHAR(30),
			BaseVersionNo		INT,
			IsVisible			BIT,
			KeepWithPrevious	BIT,
			MinRepeat			INT,
			MaxRepeat			INT,
			ComponentType		NVARCHAR(250),
			FlexGroup			NVARCHAR(30),
			IconImg				NVARCHAR(50),
			Deleted				INT);

	INSERT	INTO @fgs
	(	    GroupCode,
			VersionNo,
			GroupName,
			GroupDesc,
			GroupHeading,
			ParentGroupCode,
			ParentVersionNo,
			BaseGroupCode,
			BaseVersionNo,
			IsVisible,
			KeepWithPrevious,
			MinRepeat,
			MaxRepeat,
			ComponentType,
			FlexGroup,
			IconImg,
			Deleted)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.code')) AS GroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.version')) AS VersionNo,
			CONVERT(NVARCHAR(50), JSON_VALUE(G.Value, '$.name')) AS GroupName,
			CONVERT(NVARCHAR(200), JSON_VALUE(G.Value, '$.description')) AS GroupDesc,
			CONVERT(NVARCHAR(50), JSON_VALUE(G.Value, '$.heading')) AS GroupHeading,
			CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.parentCode')) AS ParentGroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.parentVersion')) AS ParentVersionNo,
			CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.baseCode')) AS BaseGroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.baseVersion')) AS BaseVersionNo,
			ISNULL(CONVERT(BIT, JSON_VALUE(G.Value, '$.visible')), 1) AS IsVisible,
			ISNULL(CONVERT(BIT, JSON_VALUE(G.Value, '$.keepWithPrevious')), 0) AS KeepWithPrevious,
			CONVERT(INT, JSON_VALUE(G.Value, '$.minRepeat')) AS MinRepeat,
			CONVERT(INT, JSON_VALUE(G.Value, '$.maxRepeat')) AS MaxRepeat,
			CONVERT(NVARCHAR(50), JSON_VALUE(G.Value, '$.component')) AS ComponentType,
			CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.flexGroup')) AS FlexGroup,
			CONVERT(NVARCHAR(50), JSON_VALUE(G.Value, '$.iconImg')) AS IconImg,
			ISNULL(CONVERT(BIT, JSON_VALUE(G.Value, '$.deleted')), 0) AS Deleted
	FROM	OPENJSON(@pGroups, '$.groups') AS G;
	;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	DECLARE	@flds TABLE
	(		GroupCode			NVARCHAR(30)	NOT NULL,
			GroupVersionNo		INT				NOT NULL,
			FieldName			NVARCHAR(50)	NOT NULL,
			FieldType			NVARCHAR(20),
			ActionType			INT,
			IsEnabled			BIT,
			IsVisible			BIT,
			IsMandatory			BIT,
			SequenceNo			INT,
			DefaultValue		NVARCHAR(50),
			ListCode			NVARCHAR(50),
			Label				NVARCHAR(50),
			HelpText			NVARCHAR(2000),
			ToolTipText			NVARCHAR(200));

	INSERT	INTO @flds
	(		GroupCode,
			GroupVersionNo,
			FieldName,
			FieldType,
			ActionType,
			SequenceNo,
			IsEnabled,
			IsVisible,
			IsMandatory,
			DefaultValue,
			ListCode,
			Label,
			HelpText,
			ToolTipText)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.code')) AS GroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.version')) AS GroupVersionNo,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.name')) AS FieldName,
			CONVERT(NVARCHAR(20), JSON_VALUE(F.Value, '$.type')) AS FieldType,
			CASE CONVERT(NVARCHAR(10), JSON_VALUE(F.Value, '$.action'))
				WHEN 'delete' THEN 1
				WHEN 'replace' THEN 2
				ELSE NULL
			  END AS ActionType,
			CONVERT(INT, JSON_VALUE(F.Value, '$.sequence')) AS SequenceNo,
			CASE WHEN CONVERT(NVARCHAR(10), JSON_VALUE(F.Value, '$.action')) IS NOT NULL
				 THEN CONVERT(BIT, JSON_VALUE(F.Value, '$.enabled'))
				 ELSE ISNULL(CONVERT(BIT, JSON_VALUE(F.Value, '$.enabled')), 1)
			  END AS IsEnabled,
			CASE WHEN CONVERT(NVARCHAR(10), JSON_VALUE(F.Value, '$.action')) IS NOT NULL
				 THEN CONVERT(BIT, JSON_VALUE(F.Value, '$.visible'))
				 ELSE ISNULL(CONVERT(BIT, JSON_VALUE(F.Value, '$.visible')), 1)
			  END AS IsVisible,
			CASE WHEN CONVERT(NVARCHAR(10), JSON_VALUE(F.Value, '$.action')) IS NOT NULL
				 THEN CONVERT(BIT, JSON_VALUE(F.Value, '$.mandatory'))
				 ELSE ISNULL(CONVERT(BIT, JSON_VALUE(F.Value, '$.mandatory')), 0)
			  END AS IsMandatory,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.default')) AS DefaultValue,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.listCode')) AS ListCode,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.label')) AS Label,
			CONVERT(NVARCHAR(2000), JSON_VALUE(F.Value, '$.help')) AS HelpText,
			CONVERT(NVARCHAR(200), JSON_VALUE(F.Value, '$.tooltip')) AS ToolTipText
	FROM	OPENJSON(@pGroups, '$.groups') AS G
			CROSS APPLY OPENJSON(G.Value, '$.fields') AS F;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	DECLARE @afs TABLE
	(		GroupCode			NVARCHAR(30)	NOT NULL,
			GroupVersionNo		INT				NOT NULL,
			TriggerFieldName	NVARCHAR(50)	NOT NULL,
			TargetFieldName		NVARCHAR(50)	NOT NULL,
			TriggerValue		NVARCHAR(50)	NOT NULL,
			MakeVisible			BIT,
			MakeMandatory		BIT);

	INSERT	INTO @afs
	(		GroupCode,
			GroupVersionNo,
			TriggerFieldName,
			TargetFieldName,
			TriggerValue,
			MakeVisible,
			MakeMandatory)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.code')) AS GroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.version')) AS GroupVersionNo,
			CONVERT(NVARCHAR(50), JSON_VALUE(F.Value, '$.name')) AS TriggerFieldName,
			CONVERT(NVARCHAR(50), JSON_VALUE(AF.Value, '$.targetName')) AS TargetFieldName,
			CONVERT(NVARCHAR(50), JSON_VALUE(AF.Value, '$.triggerValue')) AS TriggerValue,
			ISNULL(CONVERT(BIT, JSON_VALUE(AF.Value, '$.makeVisible')), 0) AS MakeVisible,
			ISNULL(CONVERT(BIT, JSON_VALUE(AF.Value, '$.makeMandatory')), 0) AS MakeMandatory
	FROM	OPENJSON(@pGroups, '$.groups') AS G
			CROSS APPLY OPENJSON(G.Value, '$.fields') AS F
			CROSS APPLY OPENJSON(F.Value, '$.associatedFields') AS AF

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	IF  @pDebug = 1
	  BEGIN
		PRINT 'Remove AssociatedFields, Fields for deleted/renamed Fields';
	  END;

	DELETE	AF
	FROM	@fgs AS SRCFG
			INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
			INNER JOIN KLAiMFlex.AssociatedFields AS AF ON AF.TriggerFieldId = FG.GroupId
			LEFT JOIN KLAiMFlex.Fields AS FTR ON FTR.FieldId = AF.TriggerFieldId
			LEFT JOIN KLAiMFlex.Fields AS FTG ON FTG.FieldId = AF.TargetFieldId
	WHERE	((FTR.FieldId IS NOT NULL
					AND NOT EXISTS(
						SELECT	NULL
						FROM	@flds AS TF1
						WHERE	TF1.GroupCode = FG.GroupCode
						AND		TF1.GroupVersionNo = FG.VersionNo
						AND		TF1.FieldName = FTR.FieldName))
				OR (FTG.FieldId IS NOT NULL
					AND NOT EXISTS(
						SELECT	NULL
						FROM	@flds AS TF2
						WHERE	TF2.GroupCode = FG.GroupCode
						AND		TF2.GroupVersionNo = FG.VersionNo
						AND		TF2.FieldName = FTG.FieldName))
			);

	DECLARE @Rows INT = 1;

	WHILE @Rows > 0
	  BEGIN
		WITH cFG
		AS
		(	SELECT	FG.GroupId,
					FG.GroupCode,
					FG.VersionNo,
					FG.GroupName,
					FG.GroupDesc,
					FG.GroupHeading,
					FG.ParentGroupId,
					FG.BaseGroupId,
					FG.IsVisible,
					FG.KeepWithPrevious,
					FG.MinRepeat,
					FG.MaxRepeat,
					FG.ComponentId,
					FG.IconImg,
					FG.Deleted,
					FG.RowVsn,
					FG.CreateDt,
					FG.CreateUser,
					FG.UpdateDt,
					FG.UpdateUser,
					FG.FlexGroup
			FROM	KLAiMFlex.FieldGroups AS FG
			WHERE	EXISTS(
					SELECT	NULL
					FROM	@fgs AS SRCFG
					WHERE	SRCFG.GroupCode = FG.GroupCode
					AND		SRCFG.VersionNo = FG.VersionNo)
		)
		MERGE	INTO cFG AS FG
		USING	(	SELECT	DISTINCT FG.GroupCode,
							FG.VersionNo,
							FG.GroupName,
							FG.GroupDesc,
							FG.GroupHeading,
							PFG.GroupId AS ParentGroupId,
							BFG.GroupId AS BaseGroupId,
							FG.IsVisible,
							FG.KeepWithPrevious,
							FG.MinRepeat,
							FG.MaxRepeat,
							FGC.ComponentId,
							FG.FlexGroup,
							FG.IconImg
					FROM	@fgs AS FG
							LEFT JOIN KLAiMFlex.FieldGroups AS PFG ON PFG.GroupCode = FG.ParentGroupCode AND PFG.VersionNo = FG.ParentVersionNo
							LEFT JOIN KLAiMFlex.FieldGroups AS BFG ON BFG.GroupCode = FG.BaseGroupCode AND BFG.VersionNo = FG.BaseVersionNo
							LEFT JOIN KLAiMFlex.FieldGroupComponents AS FGC ON FGC.ComponentType = FG.ComponentType
					WHERE	((FG.ParentGroupCode IS NULL
								OR (FG.ParentGroupCode IS NOT NULL
									AND PFG.GroupId IS NOT NULL)
								)
								OR (FG.BaseGroupCode IS NULL
									OR (FG.BaseGroupCode IS NOT NULL
										AND BFG.GroupId IS NOT NULL)
									)
							)
				) AS src
						ON src.GroupCode = FG.GroupCode AND src.VersionNo = FG.VersionNo
		WHEN NOT MATCHED BY TARGET
			THEN
				INSERT	(GroupCode, VersionNo, GroupName, GroupDesc, GroupHeading, ParentGroupId, BaseGroupId, IsVisible, KeepWithPrevious, MinRepeat, MaxRepeat, ComponentId, FlexGroup, IconImg, CreateDt, CreateUser)
				VALUES(	src.GroupCode, src.VersionNo, src.GroupName, src.GroupDesc, src.GroupHeading, src.ParentGroupId, src.BaseGroupId, src.IsVisible, src.KeepWithPrevious, src.MinRepeat, src.MaxRepeat, src.ComponentId, src.FlexGroup, src.IconImg, SYSDATETIME(), N'INIT')
		WHEN MATCHED
				AND( src.GroupName COLLATE Latin1_General_CS_AS <> FG.GroupName COLLATE Latin1_General_CS_AS
					OR ISNULL(src.GroupDesc, N'x') COLLATE Latin1_General_CS_AS <> ISNULL(FG.GroupDesc, N'x') COLLATE Latin1_General_CS_AS 
					OR ISNULL(src.GroupHeading, N'x') COLLATE Latin1_General_CS_AS <> ISNULL(FG.GroupHeading, N'x') COLLATE Latin1_General_CS_AS 
					OR ISNULL(src.ParentGroupId, 0) <> ISNULL(FG.ParentGroupId, 0)
					OR ISNULL(src.BaseGroupId, 0) <> ISNULL(FG.BaseGroupId, 0)
					OR ISNULL(CONVERT(INT, src.IsVisible), -1) <> ISNULL(CONVERT(INT, FG.IsVisible), -1)
					OR ISNULL(CONVERT(INT, src.KeepWithPrevious), -1) <> ISNULL(CONVERT(INT, FG.KeepWithPrevious), -1)
					OR ISNULL(src.MinRepeat, -1) <> ISNULL(FG.MinRepeat, -1)
					OR ISNULL(src.MaxRepeat, -1) <> ISNULL(FG.MaxRepeat, -1)
					OR ISNULL(src.ComponentId, 0) <> ISNULL(FG.ComponentId, 0)
					OR ISNULL(src.FlexGroup, N'x') <> ISNULL(FG.FlexGroup, N'x')
					OR ISNULL(src.IconImg, N'x') <> ISNULL(FG.IconImg, N'x'))
			THEN
				UPDATE	SET FG.GroupName = src.GroupName,
							FG.GroupDesc = src.GroupDesc,
							FG.GroupHeading = src.GroupHeading,
							FG.ParentGroupId = src.ParentGroupId,
							FG.BaseGroupId = src.BaseGroupId,
							FG.IsVisible = src.IsVisible,
							FG.KeepWithPrevious = src.KeepWithPrevious,
							FG.MinRepeat = src.MinRepeat,
							FG.MaxRepeat = src.MaxRepeat,
							FG.ComponentId = src.ComponentId,
							FG.FlexGroup = src.FlexGroup,
							FG.IconImg = src.IconImg,
							FG.UpdateDt = SYSDATETIME(),
							FG.UpdateUser = @lInitUser;

		IF @@ERROR <> 0
		  BEGIN
			SET @Rows = 0;
			SET NOEXEC ON;
		  END;

		SET @Rows = @@ROWCOUNT;

	  END;

	WITH cFLD
	AS
	(	SELECT	FLD.FieldId,
				FLD.GroupId,
				FLD.FieldName,
				FLD.FieldTypeId,
				FLD.ActionType,
				FLD.SequenceNo,
				FLD.IsEnabled,
				FLD.IsVisible,
				FLD.IsMandatory,
				FLD.DefaultValue,
				FLD.ListCode,
				FLD.Label,
				FLD.HelpText,
				FLD.ToolTipText,
				FLD.RowVsn,
				FLD.CreateDt,
				FLD.CreateUser,
				FLD.UpdateDt,
				FLD.UpdateUser	
		FROM	@fgs AS SRCFG
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
				INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId
	)
	MERGE	INTO cFLD AS FLD
	USING	(	SELECT	DISTINCT FG.GroupId,
						FLD.SequenceNo AS SequenceNo,
						FLD.FieldName,
						FT.FieldTypeId,
						FLD.ActionType,
						FLD.IsEnabled,
						FLD.IsVisible,
						FLD.IsMandatory,
						FLD.Label,
						FLD.ListCode,
						FLD.DefaultValue
				FROM	@fgs AS SRCFG
						INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
						INNER JOIN @flds AS FLD ON FLD.GroupCode = SRCFG.GroupCode AND FLD.GroupVersionNo = FG.VersionNo
						LEFT JOIN KLAiMFlex.FieldTypes AS FT ON FT.FieldType = FLD.FieldType
			) AS src
				ON src.GroupId = FLD.GroupId AND src.FieldName = FLD.FieldName
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(GroupId, SequenceNo, FieldName, FieldTypeId, ActionType, IsEnabled, IsVisible, IsMandatory, ListCode, DefaultValue, Label, CreateDt, CreateUser)
			VALUES	(src.GroupId, src.SequenceNo, src.FieldName, src.FieldTypeId, src.ActionType, src.IsEnabled, src.IsVisible, src.IsMandatory, src.ListCode, src.DefaultValue, src.Label, SYSDATETIME(), N'INIT')
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	WHEN MATCHED
			AND (FLD.SequenceNo <> src.SequenceNo
				OR ISNULL(FLD.FieldTypeId, 0) <> ISNULL(src.FieldTypeId, 0)
				OR ISNULL(FLD.ActionType, 0) <> ISNULL(src.ActionType, 0)
				OR ISNULL(CONVERT(INT, FLD.IsEnabled), -1) <> ISNULL(CONVERT(INT, src.IsEnabled), -1)
				OR ISNULL(CONVERT(INT, FLD.IsVisible), -1) <> ISNULL(CONVERT(INT, src.IsVisible), -1)
				OR ISNULL(CONVERT(INT, FLD.IsMandatory), -1) <> ISNULL(CONVERT(INT, src.IsMandatory), -1)
				OR ISNULL(FLD.DefaultValue, N'x') COLLATE Latin1_General_CS_AS <> ISNULL(src.DefaultValue, N'x') COLLATE Latin1_General_CS_AS 
				OR ISNULL(FLD.Label, N'x') COLLATE Latin1_General_CS_AS <> ISNULL(src.Label, N'x') COLLATE Latin1_General_CS_AS 
				OR ISNULL(FLD.ListCode, N'x') COLLATE Latin1_General_CS_AS <> ISNULL(src.ListCode, N'x') COLLATE Latin1_General_CS_AS 
				)
		THEN
			UPDATE	SET	FLD.SequenceNo = src.SequenceNo,
						FLD.FieldTypeId = src.FieldTypeId,
						FLD.ActionType = src.ActionType,
						FLD.IsEnabled = src.IsEnabled,
						FLD.IsVisible = src.IsVisible,
						FLD.IsMandatory = src.IsMandatory,
						FLD.ListCode = src.ListCode,
						FLD.DefaultValue = src.DefaultValue,
						FLD.Label = src.Label
	;

	IF  @lDebug = 1
	  BEGIN
		PRINT 'AssociatedFields';
	  END;

	SELECT *
	FROM @afs;

	WITH cFLD
	AS
	(	SELECT	FLD.FieldId
		FROM	@fgs AS SRCFG
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON SRCFG.GroupCode = FG.GroupCode AND SRCFG.VersionNo = FG.VersionNo
				INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId
	), cAF
	AS
	(	SELECT	AF.AssociatedFieldId,
                AF.TriggerFieldId,
                AF.TargetFieldId,
                AF.TriggerValue,
                AF.MakeVisible,
                AF.MakeMandatory,
                AF.RowVsn,
                AF.CreateDt,
                AF.CreateUser,
                AF.UpdateDt,
                AF.UpdateUser
		FROM	cFLD
				INNER JOIN KLAiMFlex.AssociatedFields AS AF ON AF.TriggerFieldId = cFLD.FieldId OR AF.TargetFieldId = cFLD.FieldId
	)
	MERGE	INTO cAF AS AF
	USING	(	SELECT	FG.GroupId,
						AFLD.FieldId AS TriggerFieldId,
						FLD.FieldId AS TargetFieldId,
						AF.MakeVisible,
						AF.MakeMandatory,
						AF.TriggerValue
				FROM	@afs AS AF
						INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = AF.GroupCode
						INNER JOIN KLAiMFlex.Fields AS AFLD ON AFLD.GroupId = FG.GroupId AND AFLD.FieldName = AF.TriggerFieldName
						INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId AND FLD.FieldName = AF.TargetFieldName
			) AS src
			ON src.TriggerFieldId = AF.TriggerFieldId AND src.TargetFieldId = AF.TargetFieldId
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(TriggerFieldId, TargetFieldId,  MakeVisible, MakeMandatory, TriggerValue, CreateDt, CreateUser)
			VALUES(	src.TriggerFieldId, src.TargetFieldId, src.MakeVisible, src.MakeMandatory, src.TriggerValue, SYSDATETIME(), N'INIT')
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	WHEN MATCHED
			AND (src.TriggerValue <> AF.TriggerValue
				OR src.MakeVisible <> AF.MakeVisible
				OR src.MakeMandatory <> AF.MakeMandatory)
		THEN
			UPDATE	SET AF.TriggerValue = src.TriggerValue,
						AF.MakeVisible = src.MakeVisible,
						AF.MakeMandatory = src.MakeMandatory
	;
	DECLARE	@Commit BIT;

	SELECT	@Commit = 1;

	SET NOEXEC OFF;

	IF	@LocalTran = 1
	  BEGIN
		IF	ISNULL(@Commit, 0) = 1
			AND XACT_STATE() = 1
		  BEGIN
			COMMIT TRAN;
			SELECT @Return = 1;
		  END;
		ELSE
		  BEGIN
			PRINT 'Update failed';
			IF XACT_STATE() = -1 OR @@TRANCOUNT > 0
			  BEGIN
				PRINT 'Rolling back';
				ROLLBACK TRAN;
			  END;
		  END;
	  END;
	ELSE
	  BEGIN
		SELECT @Return = 1;
	  END;

	IF  @pDebug = 1
		AND @Return = 1
	  BEGIN
		SELECT	FG.GroupId,
				FG.GroupCode,
				FG.VersionNo,
				FG.GroupName,
				FG.GroupDesc,
				FG.GroupHeading,
				BFG.GroupCode AS BaseGroupCode,
				BFG.VersionNo AS BaseGroupVersion,
				FG.IsVisible,
				FG.KeepWithPrevious,
				FG.ComponentId,
				FGC.ComponentType,
				FG.FlexGroup,
				FG.IconImg
		FROM	@fgs AS SRCFG
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
				LEFT JOIN KLAiMFlex.FieldGroups AS BFG ON BFG.GroupId = FG.BaseGroupId
				LEFT JOIN KLAiMFlex.FieldGroupComponents AS FGC ON FGC.ComponentId = FG.ComponentId;

		SELECT	FG.GroupCode,
				FLD.FieldName,
				FT.FieldType,
				CASE FLD.ActionType
				  WHEN 1 THEN 'delete'
				  WHEN 2 THEN 'replace'
				END AS ActionType,
				FLD.SequenceNo,
				FLD.IsEnabled,
				FLD.IsVisible,
				FLD.IsMandatory,
				FLD.DefaultValue,
				FLD.Label,
				FLD.HelpText,
				FLD.ToolTipText,
				FLD.ListCode
		FROM	@fgs AS SRCFG
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
				INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId
				INNER JOIN KLAiMFlex.FieldTypes AS FT ON FT.FieldTypeId = FLD.FieldTypeId
		ORDER BY FG.GroupCode, FLD.SequenceNo;

		SELECT	FG.GroupCode,
				FG.VersionNo,
				TRGFLD.FieldName AS TriggerFieldName,
				TGTFLD.FieldName AS TargetFieldName,
				AF.TriggerValue,
				AF.MakeVisible,
				AF.MakeMandatory
		FROM	@fgs AS SRCFG
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SRCFG.GroupCode AND FG.VersionNo = SRCFG.VersionNo
				INNER JOIN KLAiMFlex.Fields AS TRGFLD ON TRGFLD.GroupId = FG.GroupId
				LEFT JOIN KLAiMFlex.AssociatedFields AS AF ON AF.TriggerFieldId = TRGFLD.FieldId
				LEFT JOIN KLAiMFlex.Fields AS TGTFLD ON TGTFLD.FieldId = AF.TargetFieldId
		WHERE	AF.AssociatedFieldId IS NOT NULL;
	  END;

	IF  @Return = 1
	  BEGIN
		PRINT 'Flex Groups: update completed';
	  END;
	ELSE
	  BEGIN
		PRINT 'Flex Groups: update failed';
	  END;

	RETURN @Return;
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pLoadFlexSchemas]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pLoadFlexSchemas]
( @pSchemas NVARCHAR(MAX),
  @pGroups NVARCHAR(MAX) = NULL,
  @pInitUser sysname = NULL,
  @pDebug BIT = NULL)
AS
  BEGIN
	SET XACT_ABORT ON;

	DECLARE @lInitUser sysname,
			@lDebug BIT;
	
	SELECT	@lInitUser = ISNULL(@pInitUser, N'INIT'),
			@lDebug = ISNULL(@pDebug, 0);

	DECLARE	@Return INT = 0;

	DECLARE @LocalTran BIT = (SELECT CASE WHEN @@TRANCOUNT = 0 THEN 1 ELSE 0 END);

	IF  @LocalTran = 1
		BEGIN TRAN;

	IF	@pGroups IS NOT NULL
	  BEGIN
	    DECLARE @ret INT;
		EXEC @ret = KLAiMAdmin.pLoadFlexGroups @pGroups = @pGroups,
		                                       @pInitUser = @lInitUser,
		                                       @pDebug = @lDebug;
				
		IF  @ret <> 1
		  BEGIN
			PRINT 'Failed to load groups';
			GOTO EndUpdate;
		  END;
	  END;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE	@schs TABLE
	(		SchemaId			INT				NOT NULL,
			SchemaCode			NVARCHAR(30)	NOT NULL,
			SchemaName			NVARCHAR(50)	NOT NULL,
			VersionNo			INT				NOT NULL,
			ProcessName			NVARCHAR(20)	NOT NULL,
			ClaimType			NVARCHAR(20)	NOT NULL,
			IsDisabled			BIT,
			FlexSchema			NVARCHAR(MAX));

	INSERT	INTO @schs
	(		SchemaId,
			SchemaCode,
			SchemaName,
			VersionNo,
			ProcessName,
			ClaimType,
			IsDisabled,
			FlexSchema)
	SELECT	CONVERT(INT, JSON_VALUE(S.Value, '$.id')) AS SchemaId,
			CONVERT(NVARCHAR(30), JSON_VALUE(S.Value, '$.code')) AS SchemaCode,
			CONVERT(NVARCHAR(50), JSON_VALUE(S.Value, '$.name')) AS SchemaName,
			CONVERT(INT, JSON_VALUE(S.Value, '$.version')) AS VersionNo,
			CONVERT(NVARCHAR(20), JSON_VALUE(S.Value, '$.process')) AS ProcessName,
			CONVERT(NVARCHAR(20), JSON_VALUE(S.Value, '$.claimType')) AS ClaimType,
			CONVERT(BIT, JSON_VALUE(S.Value, '$.disabled')) AS IsDisabled,
			CONVERT(NVARCHAR(MAX), JSON_QUERY(S.Value, '$.flexSchema')) AS FlexSchema
	FROM	OPENJSON(@pSchemas, N'$.schemas') AS S;

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	DECLARE	@sfgs TABLE
	(		SchemaCode			NVARCHAR(30),
			SchemaVersionNo		INT,
			GroupCode			NVARCHAR(30),
			GroupVersionNo		INT,
			SequenceNo			INT);

	INSERT	INTO @sfgs
	(		SchemaCode,
			SchemaVersionNo,
			GroupCode,
			GroupVersionNo,
			SequenceNo)
	SELECT	CONVERT(NVARCHAR(30), JSON_VALUE(S.Value, '$.code')) AS SchemaCode,
			CONVERT(INT, JSON_VALUE(S.Value, '$.version')) AS SchemaVersionNo,
			CONVERT(NVARCHAR(30), JSON_VALUE(G.Value, '$.code')) AS GroupCode,
			CONVERT(INT, JSON_VALUE(G.Value, '$.version')) AS GroupVersionNo,
			CONVERT(INT, JSON_VALUE(G.Value, '$.sequence')) AS SequenceNo
	FROM	OPENJSON(@pSchemas, N'$.schemas') AS S
			CROSS APPLY OPENJSON(S.Value, N'$.groups') AS G

	IF	@@ERROR <> 0
		SET NOEXEC ON;

	IF  @pDebug = 1
	  BEGIN
		SELECT	*
		FROM	@schs;

		SELECT	*
		FROM	@sfgs;
	  END;

	SET IDENTITY_INSERT KLAiMFlex.Schemas ON;

	WITH cSCH
	AS
	(	SELECT	SCH.SchemaId,
				SCH.SchemaName,
				SCH.SchemaCode,
				SCH.VersionNo,
				SCH.ProcessId,
				SCH.ClaimTypeId,
				SCH.IsDisabled,
				SCH.FlexSchema,
				SCH.CreateDt,
				SCH.CreateUser,
				SCH.UpdateDt,
				SCH.UpdateUser
		FROM	@schs AS SRCSCH
				INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaId = SRCSCH.SchemaId
	)
	, cSRCSCH
	AS
	(	SELECT	SCH.SchemaId,
				SCH.SchemaName,
				SCH.SchemaCode,
				SCH.VersionNo,
				PRC.ProcessId,
				CT.ClaimTypeId,
				SCH.IsDisabled,
				SCH.FlexSchema
		FROM	@schs AS SCH
				INNER JOIN KLAiMFlex.ClaimTypes AS CT ON CT.ClaimType = SCH.ClaimType
				INNER JOIN KLAiMFlex.Processes AS PRC ON PRC.ProcessName = SCH.ProcessName
	)
	MERGE	INTO cSCH AS SCH
	USING	(	SELECT	DISTINCT cSRCSCH.SchemaId,
						cSRCSCH.SchemaName,
						cSRCSCH.SchemaCode,
						cSRCSCH.VersionNo,
						cSRCSCH.ProcessId,
						cSRCSCH.ClaimTypeId,
						cSRCSCH.IsDisabled,
						cSRCSCH.FlexSchema
				FROM	cSRCSCH) AS src
			ON src.SchemaCode = SCH.SchemaCode
				AND src.VersionNo = SCH.VersionNo
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(SchemaId, SchemaCode, SchemaName, VersionNo, ProcessId, ClaimTypeId, IsDisabled, FlexSchema, CreateDt, CreateUser)
			VALUES(	src.SchemaId, src.SchemaCode, src.SchemaName, src.VersionNo, src.ProcessId, src.ClaimTypeId, IsDisabled, src.FlexSchema, SYSDATETIME(), @lInitUser)
	WHEN MATCHED
			AND( src.SchemaName COLLATE Latin1_General_CS_AS <> SCH.SchemaName COLLATE Latin1_General_CS_AS 
			OR src.ProcessId <> SCH.ProcessId
			OR src.ClaimTypeId <> SCH.ClaimTypeId
			OR src.IsDisabled <> SCH.IsDisabled)
			OR ISNULL(src.FlexSchema, N'') COLLATE Latin1_General_CS_AS <> ISNULL(SCH.FlexSchema, N'') COLLATE Latin1_General_CS_AS 
		THEN
			UPDATE	SET SCH.SchemaName = src.SchemaName,
					SCH.ProcessId = src.ProcessId,
					SCH.ClaimTypeId = src.ClaimTypeId,
					SCH.IsDisabled = src.IsDisabled,
					SCH.FlexSchema = src.FlexSchema,
					SCH.UpdateDt = SYSDATETIME(),
					SCH.UpdateUser = @lInitUser
	;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	SET IDENTITY_INSERT KLAiMFlex.Schemas OFF;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	WITH cSCH
	AS
	(	SELECT	DISTINCT SCH.SchemaId
		FROM	@sfgs AS SRCSFG
				INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaCode = SRCSFG.SchemaCode AND SCH.VersionNo = SRCSFG.SchemaVersionNo
	)
	, cSFG
	AS
	(	SELECT	SFG.SchemaFieldGroupId,
				SFG.SchemaId,
				SFG.GroupId,
				SFG.SequenceNo,
				SFG.RowVsn,
				SFG.CreateDt,
				SFG.CreateUser,
				SFG.UpdateDt,
				SFG.UpdateUser
		FROM	KLAiMFlex.SchemaFieldGroups AS SFG
		WHERE	EXISTS(
				SELECT	NULL
				FROM	cSCH
				WHERE	cSCH.SchemaId = SFG.SchemaId)
	)
	MERGE	INTO cSFG AS SFG
	USING	(	SELECT	DISTINCT SCH.SchemaId,
						FG.GroupId,
						SFG.SequenceNo
				FROM	@sfgs AS SFG
						INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaCode LIKE SFG.SchemaCode
						INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupCode = SFG.GroupCode
			) AS src
			ON src.SchemaId = SFG.SchemaId AND src.GroupId = SFG.GroupId
	WHEN NOT MATCHED BY TARGET
		THEN
			INSERT	(SchemaId, GroupId, SequenceNo, CreateDt, CreateUser)
			VALUES(	src.SchemaId, src.GroupId, src.SequenceNo, SYSDATETIME(), @lInitUser)
	WHEN MATCHED
		AND src.SequenceNo <> SFG.SequenceNo
		THEN
			UPDATE SET SFG.SequenceNo = src.SequenceNo	
	WHEN NOT MATCHED BY SOURCE
		THEN
			DELETE
	;

	IF @@ERROR <> 0
	   SET NOEXEC ON;

	DECLARE	@Commit BIT;

	SELECT	@Commit = 1;

EndUpdate:

	SET NOEXEC OFF;

	SET IDENTITY_INSERT KLAiMFlex.Schemas OFF;

	IF	@LocalTran = 1
	  BEGIN
		IF	ISNULL(@Commit, 0) = 1
			AND XACT_STATE() = 1
		  BEGIN
			COMMIT TRAN;
			SELECT @Return = 1;
		  END;
		ELSE
		  BEGIN
			PRINT 'Update failed';
			IF XACT_STATE() = -1 OR @@TRANCOUNT > 0
			  BEGIN
				PRINT 'Rolling back';
				ROLLBACK TRAN;
			  END;
		  END;
	  END;
	ELSE
	  BEGIN
		SELECT @Return =  1;
	  END;

	IF  @Return = 1
	  BEGIN
		PRINT 'Flex Schemas: update completed';
	  END;
	ELSE
	  BEGIN
		PRINT 'Flex Schemas: update failed';
	  END;

	IF  @pDebug = 1
		AND @Return = 1
	  BEGIN
		SELECT	SCH.SchemaId,
				SCH.SchemaName,
				SCH.SchemaCode,
				SFG.SequenceNo,
				FG.GroupName,
				FG.GroupCode,
				FG.IconImg,
				FGC.ComponentType,
				FLD.SequenceNo,
				FLD.FieldName,
				FT.FieldType,
				FLD.IsEnabled,
				FLD.IsVisible,
				FLD.IsMandatory,
				FLD.Label,
				FLD.HelpText,
				FLD.ToolTipText,
				FLD.ListCode,
				FLD.DefaultValue,
				AFLD.FieldName AS AssociatedFieldName
		FROM	@schs AS SRCSCH
				INNER JOIN KLAiMFlex.Schemas AS SCH ON SCH.SchemaCode = SRCSCH.SchemaCode AND SCH.VersionNo = SRCSCH.VersionNo
				INNER JOIN KLAiMFlex.SchemaFieldGroups AS SFG ON SFG.SchemaId = SCH.SchemaId
				INNER JOIN KLAiMFlex.FieldGroups AS FG ON FG.GroupId = SFG.GroupId
				INNER JOIN KLAiMFlex.Fields AS FLD ON FLD.GroupId = FG.GroupId
				INNER JOIN KLAiMFlex.FieldTypes AS FT ON FT.FieldTypeId = FLD.FieldTypeId
				LEFT JOIN KLAiMFlex.FieldGroupComponents AS FGC ON FGC.ComponentId = FG.ComponentId
				LEFT JOIN KLAiMFlex.AssociatedFields AS AF ON AF.TriggerFieldId = FLD.FieldId
				LEFT JOIN KLAiMFlex.Fields AS AFLD ON AFLD.FieldId = AF.TargetFieldId
		ORDER	BY SCH.SchemaName, SFG.SequenceNo, FG.GroupName, FLD.SequenceNo, FLD.FieldName
		;
	  END;

	RETURN @Return;
  END;
GO
/****** Object:  StoredProcedure [KLAiMAdmin].[pRenameFlexDataProperty]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMAdmin].[pRenameFlexDataProperty]
( @pGroupName NVARCHAR(50),
  @pOldFieldName NVARCHAR(50),
  @pNewFieldName NVARCHAR(50),
  @pClaimId INT = NULL
)
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE	@OldPath NVARCHAR(103),
			@NewPath NVARCHAR(103);

	SELECT	@OldPath = N'$.' + ISNULL(@pGroupName + N'.', N'') + @pOldFieldName,
			@NewPath = N'$.' + ISNULL(@pGroupName + N'.', N'') + @pNewFieldName;

	DECLARE	@CFSQL NVARCHAR(MAX) = N'
	UPDATE	CF
	SET		CF.FlexData = JSON_MODIFY(JSON_MODIFY(CF.FlexData, N''[NewPath]'', JSON_VALUE(CF.FlexData, N''[OldPath]'')), N''[OldPath]'', NULL)
	FROM	KLAiMFlex.ClaimsFlex AS CF
	WHERE	(CF.ClaimId = [ClaimId]
				OR [ClaimId] IS NULL)
	AND		JSON_VALUE(CF.FlexData, N''[OldPath]'') IS NOT NULL;'
	;

	DECLARE	@SQL NVARCHAR(MAX);

	SELECT	@SQL = REPLACE(REPLACE(REPLACE(@CFSQL, N'[OldPath]', @OldPath), N'[NewPath]', @NewPath), N'[ClaimId]', ISNULL(CONVERT(VARCHAR(10), @pClaimId), N'NULL'));

	SET NOCOUNT OFF;

	EXEC sp_executesql @stmt = @SQL;
  END;
GO
/****** Object:  StoredProcedure [KLAiMDoc].[GetDocByClmIdGuid]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [KLAiMDoc].[GetDocByClmIdGuid]
( @clm_id INT,
 @uid UNIQUEIDENTIFIER )
AS
	SET NOCOUNT ON;

	SELECT d.*
  FROM [KLAiMDoc].[Docs] d
  inner join ( select ClaimId,TypeId,MAX([CreateDt]) as CreateDt from [KLAiMDoc].[Docs] group by  ClaimId,TypeId) dd
  on d.ClaimId = dd.ClaimId and d.TypeId = dd.TypeId and d.CreateDt = dd.CreateDt
  where  d.ClaimId = @clm_id
GO
/****** Object:  StoredProcedure [KLAiMDoc].[GetDocsByClmId]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [KLAiMDoc].[GetDocsByClmId]
( @clm_id INT)
AS
	SET NOCOUNT ON;

	SELECT d.*
  FROM [KLAiMDoc].[Docs] d
  inner join ( select ClaimId,TypeId,MAX([CreateDt]) as CreateDt from [KLAiMDoc].[Docs] group by  ClaimId,TypeId) dd
  on d.ClaimId = dd.ClaimId and d.TypeId = dd.TypeId and d.CreateDt = dd.CreateDt
  where  d.ClaimId = @clm_id
GO
/****** Object:  StoredProcedure [KLAiMDoc].[GetTemplateForDoc]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [KLAiMDoc].[GetTemplateForDoc]
( 
  @typeId INT,
  @clientId INT,
  @bsuId INT)
AS
	
	DECLARE @familyId INT 
	DECLARE @classId INT
	SELECT @familyId = dcc.FamilyId ,@classId =dcc.ClassId FROM KLAiMDoc.DocTypes ddt INNER JOIN KLAiMDoc.DocClasses dcc ON ddt.ClassId =dcc.ClassId  WHERE TypeId = @typeId
    SELECT TOP 1 dt.* FROM KLAiMDoc.DocTemplates dt		 
		 WHERE  (dt.FamilyId =@familyId or dt.FamilyId IS NULL)
		 AND  (dt.ClassId =@classId  or dt.ClassId IS NULL)	
		 AND  (dt.TypeId =@typeId  or dt.TypeId IS NULL) 	
		 AND  (dt.ClientId = @clientId OR dt.ClientId IS NULL)	
     ORDER BY ClientId DESC,TypeId DESC, ClassId DESC ,familyId DESC,CreateDt DESC
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pFlexGetClaimSummariesByBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pFlexGetClaimSummariesByBusUnitIds]
( @pBusUnitIds AS KLAiM.IdsTable READONLY,
  @pShowCompleted AS INT = -1
)
AS
  BEGIN
	SET NOCOUNT ON;

	SELECT	vCS.ClaimId,
			vCS.ClientId,
			vCS.BusUnitId,
			vCS.UserId,
            vCS.OurRef,
            vCS.ClaimHandlerName,
            vCS.ClaimHandlerId,
            vCS.DefendantName,
            vCS.PolicyholderName,
            vCS.ClaimantName,
            vCS.SolicitorName,
            vCS.CreatedDate,
            vCS.Process,
            vCS.ClaimType,
            vCS.Progress
	FROM	KLAiMFlex.vClaimSummaries AS vCS
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pBusUnitIds AS UID
			WHERE	UID.Id = vCS.BusUnitId)
	AND(	vCS.ClaimStatusId = 1
			OR	(vCS.ClaimStatusId BETWEEN 2 AND 5
				 AND (@pShowCompleted < 0
					OR	DATEDIFF(DAY, vCS.ClosedDate, CONVERT(DATE, SYSDATETIME())) <= @pShowCompleted)
			)
		)
	ORDER	BY vCS.ClaimId;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pGetClaimSummariesByUserBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pGetClaimSummariesByUserBusUnitIds]
( @pReqUserId INT,
  @pUserBUInd NCHAR(1),
  @pIds AS KLAiM.IdsTable READONLY,
  @pShowCompleted AS INT = NULL
)
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE	@showCompleted INT = ISNULL(@pShowCompleted, -1);

	SELECT	vCS.ClaimId,
			vCS.ClientId,
			vCS.BusUnitId,
			vCS.UserId,
            vCS.OurRef,
            vCS.ClaimHandlerName,
            vCS.ClaimHandlerId,
            vCS.ClaimantName,
            vCS.DefendantName,
            vCS.SolicitorName,
            vCS.PolicyholderName,
			vCS.SummaryValues,
            vCS.CreatedDate,
            vCS.Process,
            vCS.ClaimType,
            vCS.Progress,
			vCS.ClaimStatusId,
			vCS.ClaimStatus
	FROM	KLAiMFlex.vClaimSummaries AS vCS
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pIds AS I
			WHERE	(	(@pUserBUInd = N'B'
							AND I.Id = vCS.BusUnitId)
						OR	(@pUserBUInd = N'U'
							AND I.Id = vCS.UserId)
					)
				)
	AND(	vCS.ClaimStatusId = 1
			OR	(vCS.ClaimStatusId BETWEEN 2 AND 6
				 AND (@showCompleted < 0
					OR	DATEDIFF(DAY, vCS.ClosedDate, CONVERT(DATE, SYSDATETIME())) <= @showCompleted)
			)
		)
	ORDER	BY ISNULL(vCs.UpdateDt, vCS.CreateDt) DESC, vCS.ClaimId DESC;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pGetClaimSummaryById]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pGetClaimSummaryById]
( @pClaimId AS INT
)
AS
  BEGIN
	SET NOCOUNT ON;

	SELECT	TOP (1)
			vCS.ClaimId,
			vCS.ClientId,
			vCS.BusUnitId,
			vCS.UserId,
            vCS.OurRef,
			vCS.SummaryValues,
            vCS.ClaimHandlerName,
            vCS.ClaimHandlerId,
            vCS.ClaimantName,
            vCS.DefendantName,
            vCS.SolicitorName,
            vCS.PolicyholderName,
			vCS.SummaryValues,
            vCS.CreatedDate,
            vCS.Process,
            vCS.ClaimType,
            vCS.Progress,
			vCS.ClaimStatusId,
			vCS.ClaimStatus
	FROM	KLAiMFlex.vClaimSummaries AS vCS
	WHERE	vCS.ClaimId = @pClaimId;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pGetTaskSummariesByUserBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pGetTaskSummariesByUserBusUnitIds]
( @pReqUserId INT,
  @pUserBUInd NCHAR(1),
  @pIds AS KLAiM.IdsTable READONLY,
  @pClaimId AS INT = NULL,
  @pShowCompleted AS INT = NULL
)
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE	@showCompleted INT = ISNULL(@pShowCompleted, -1);

	IF  @pUserBUInd NOT IN(N'B', N'U')
	  BEGIN
	    DECLARE @err NVARCHAR(100) = N'Invalid value ' + ISNULL(N'"' + @pUserBUInd + N'"', N'NULL') + N' for @pUserBUInd parameter';
		;THROW 50000, @err, 1;
	  END;

	SELECT	vTS.TaskId,
            vTS.ClaimId,
            vTS.ClaimRef,
            vTS.ClaimHandlerId,
            vTS.ClaimHandlerName,
			vTS.ClaimStatusId,
            vTS.TaskTypeId,
            vTS.TaskName,
            vTS.TaskDesc,
            vTS.StatusId,
            vTS.DueDate,
			vTS.TaskUrgency,
			vTS.TaskVisibility,
			vTS.TaskFlags,
            vTS.FlexTask,
            vTS.CompletedDate,
            vTS.CompletedClaimHandlerId,
            vTS.CompletedClaimHandlerName
	FROM	KLAiMFlex.vTaskSummaries AS vTS
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pIds AS I
			WHERE	(	(@pUserBUInd = N'B'
							AND I.Id = vTS.BusUnitId)
						OR	(@pUserBUInd = N'U'
							AND I.Id = vTS.UserId)
					)
				)
	AND(	vTS.ClaimId = @pClaimId
			OR @pClaimId IS NULL)
	AND(	vTS.StatusId IN(1, 2)
			OR	(@showCompleted < 0
				OR	DATEDIFF(DAY, CONVERT(DATE, vTS.CompletedDate), CONVERT(DATE, SYSDATETIME())) <= @showCompleted)
			)
	AND(	(@pClaimId IS NOT NULL
				AND vTS.TaskVisibility & 0x100 > 0)
			OR (@pClaimId IS NULL
				AND vTS.TaskVisibility & 0x200 > 0)
			)
			-- Not requested in user context, so all tasks should be visible
	AND(	@pReqUserId IS NULL
			-- Request is for a specific claim, so all tasks should be visible
			OR @pClaimId IS NOT NULL
			-- Requesting user is owner and task is visible to owner
			OR	(vTS.UserId = @pReqUserId
				AND vTS.TaskVisibility & 1 > 0)
			-- Requesting user is owner's manager and task is visible to owner
			OR	(vTS.MgrUserId = @pReqUserId
				AND vTS.TaskVisibility & 2 > 0)
			-- Task is visible to BU
			OR	(vTS.UserId <> @pReqUserId
				AND ISNULL(vTS.MgrUserId, -1) <> @pReqUserId
				AND vTS.TaskVisibility & 4 > 0)
		)
	ORDER	BY vTS.ClaimId, vTS.TaskId;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pGetUserClaimsInfoByUserBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pGetUserClaimsInfoByUserBusUnitIds]
( @pReqUserId INT,
  @pUserBUInd NCHAR(1),
  @pIds AS KLAiM.IdsTable READONLY
)
AS
  BEGIN
	SET NOCOUNT ON;

	IF  @pUserBUInd NOT IN(N'B', N'U')
	  BEGIN
	    DECLARE @err NVARCHAR(100) = N'Invalid value ' + ISNULL(N'"' + @pUserBUInd + N'"', N'NULL') + N' for @pUserBUInd parameter';
		;THROW 50000, @err, 1;
	  END;

	SELECT	vUD.BusUnitId,
			vUD.UserId,
			SUM(CASE WHEN CLM.ClaimStatusId <> 6 THEN 1 ELSE 0 END) AS ClaimsCount,
			SUM(CASE WHEN CLM.ClaimStatusId IN(1, 3) THEN 1 ELSE 0 END) AS IncompleteCount,
			SUM(CASE WHEN CLM.ClaimStatusId IN(2, 3, 4, 5) THEN 1 ELSE 0 END) AS CompleteCount,
			(	SELECT	COUNT(CLM.ClaimId)
				FROM	KLAiMFlex.Claims AS CLM
				WHERE	CLM.UserId = vUD.UserId
				AND		CLM.ClaimStatusId IN(1, 3)
				AND		EXISTS(
						SELECT	NULL
						FROM	KLAiMFlex.Tasks AS TSK
						WHERE	TSK.ClaimId = CLM.ClaimId
						AND		TSK.StatusId IN(1, 2, 3)
						AND		DATEDIFF(DAY, TSK.DueDate, CONVERT(DATE, SYSDATETIME())) < 1)
			) AS UrgentCount
	FROM	KCG.vUserDetails AS vUD
			LEFT JOIN KLAiMFlex.Claims AS CLM ON CLM.UserId = vUD.UserId
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pIds AS I
			WHERE	(	(@pUserBUInd = N'B'
							AND I.Id = vUD.BusUnitId)
						OR	(@pUserBUInd = N'U'
							AND I.Id = vUD.UserId)
					)
				)
	GROUP	BY vUD.BusUnitId, vUD.UserId;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pGetUserTasksInfoByUserBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pGetUserTasksInfoByUserBusUnitIds]
( @pReqUserId INT,
  @pUserBUInd NCHAR(1),
  @pIds AS KLAiM.IdsTable READONLY
)
AS
  BEGIN
	SET NOCOUNT ON;

	IF  @pUserBUInd NOT IN(N'B', N'U')
	  BEGIN
	    DECLARE @err NVARCHAR(100) = N'Invalid value ' + ISNULL(N'"' + @pUserBUInd + N'"', N'NULL') + N' for @pUserBUInd parameter';
		;THROW 50000, @err, 1;
	  END;

	WITH cTSK
	AS
	(	SELECT	vTS.UserId,
				vTS.TaskId,
				vTS.ClaimId,
				CASE WHEN vTS.StatusId IN(1, 2, 3) THEN 1 ELSE 0 END IsIncomplete,
				CASE WHEN vTS.StatusId >= 90 THEN 1 ELSE 0 END IsComplete,
				CASE WHEN vTS.StatusId IN(1, 2, 3) AND vTS.TaskUrgency = 2 THEN 1 ELSE 0 END AS IsDueSoon,
				CASE WHEN vTS.StatusId IN(1, 2, 3) AND vTS.TaskUrgency = 1 THEN 1 ELSE 0 END AS IsUrgent
		FROM	KLAiMFlex.vTaskSummaries AS vTS
		WHERE	vTS.ClaimStatusId IN(1, 4) -- Open or Instruct Solicitor
	)
	SELECT	vUD.BusUnitId,
			vUD.UserId,
			COUNT(cTSK.TaskId) AS TasksCount,
			SUM(cTSK.IsIncomplete) AS IncompleteCount,
			SUM(cTSK.IsComplete) AS CompleteCount,
			SUM(cTSK.IsDueSoon) AS DueSoonCount,
			CONCAT(N'[',
				ISNULL(
					STUFF((
							SELECT	DISTINCT N',' + CAST(cTSK.ClaimId AS NVARCHAR(10)) 
							FROM	cTSK
							WHERE	cTSK.UserId = vUD.UserId
							AND		cTSK.IsDueSoon = 1
							-- Ensure that claims only appear in DueSoon or Urgent list, not both
							AND		NOT EXISTS(
									SELECT	NULL
									FROM	cTSK AS cTU
									WHERE	cTU.ClaimId = cTSK.ClaimId
									AND		cTU.IsUrgent = 1)
							FOR XML PATH(''))
						, 1, 1, N'')
					, N'')
				, N']') AS DueSoonClaimIds,
			SUM(cTSK.IsUrgent) AS UrgentCount,
			CONCAT(N'[',
				ISNULL(
					STUFF((
							SELECT	DISTINCT N',' + CAST(cTSK.ClaimId AS NVARCHAR(10)) 
							FROM	cTSK
							WHERE	cTSK.UserId = vUD.UserId
							AND		cTSK.IsUrgent = 1
							FOR XML PATH(''))
						, 1, 1, N'')
					, N'')
				, N']') AS UrgentClaimIds
	FROM	KCG.vUserDetails AS vUD
			INNER JOIN cTSK ON cTSK.UserId = vUD.UserId
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pIds AS I
			WHERE	(	(@pUserBUInd = N'B'
							AND I.Id = vUD.BusUnitId)
						OR	(@pUserBUInd = N'U'
							AND I.Id = vUD.UserId)
					)
				)
	GROUP BY vUD.BusUnitId, vUD.UserId, vUD.ClientId;

  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pLockClaim]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pLockClaim]
( @pClaimId INT,
  @pLockUser NVARCHAR(100),
  @pLockType INT,
  @pLockLifetime INT,
  @pLockUid UNIQUEIDENTIFIER = NULL
)
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE @Result TABLE 
			(	Result		INT					NOT NULL,
				ResMsg		NVARCHAR(200),
				LockUid		UNIQUEIDENTIFIER);

	DECLARE	@IULock TABLE
			(	MergeAction	NVARCHAR(10)		NOT NULL,
				ClaimId		INT					NOT NULL,
				LockUid		UNIQUEIDENTIFIER	NOT NULL,
				LockType	INT					NOT NULL,
				LockUser	NVARCHAR(100)		NOT NULL,
				ExpiryDt	DATETIMEOFFSET		NOT NULL);

	BEGIN TRAN;

	BEGIN TRY
		MERGE	KLAiMFlex.ClaimLocks AS tgt
		USING(	SELECT	@pClaimId AS ClaimId,
						ISNULL(@pLockUid, NEWID()) AS LockUid,
						@pLockType AS LockType,
						SYSDATETIMEOFFSET() AS LockDt,
						@pLockUser AS LockUser,
						DATEADD(SECOND, @pLockLifetime, SYSDATETIMEOFFSET()) AS ExpiryDt) AS src
				ON tgt.ClaimId = src.ClaimId
		WHEN MATCHED
			AND tgt.ExpiryDt < SYSDATETIMEOFFSET()
			THEN	UPDATE	SET tgt.LockUid = src.LockUid,
							tgt.LockType = @pLockType,
							tgt.LockDt = src.LockDt,
							tgt.LockUser = @pLockUser,
							tgt.ExpiryDt = src.ExpiryDt
		WHEN NOT MATCHED
			THEN	INSERT(	ClaimId,
							LockUid,
							LockType,
							LockDt,
							LockUser,
							ExpiryDt)
					VALUES(	src.ClaimId,
							src.LockUid,
							src.LockType,
							src.LockDt,
							src.LockUser,
							src.ExpiryDt)
		OUTPUT	$action,
				Inserted.ClaimId,
				Inserted.LockUid,
                Inserted.LockType,
                ISNULL(Deleted.LockUser, Inserted.LockUser),
                Inserted.ExpiryDt
		INTO	@IULock
				(	MergeAction,
					ClaimId,
					LockUid,
					LockType,
					LockUser,
					ExpiryDt);

		DECLARE @iur INT = (
				SELECT	COUNT(L.MergeAction)
				FROM	@IULock AS L);

		IF	@iur = 1
		  BEGIN
			INSERT	INTO @Result
			(		Result,
					ResMsg,
					LockUid)
			SELECT	CASE WHEN L.LockUser = @pLockUser THEN 1 ELSE -1 END,					
					LEFT(N'Claim lock ' + CASE WHEN L.MergeAction = N'INSERT' THEN N'created' ELSE N'updated' END + N' for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N', uid ' + CONVERT(NVARCHAR(36), L.LockUid) + N', user ' + @pLockUser + N', expires ' + FORMAT(L.ExpiryDt, N'yyyy-MM-dd HH:mm:ssK')
								+ CASE WHEN L.LockUser = @pLockUser THEN N'' ELSE N'; original lock held by ' + L.LockUser END, 200),
					L.LockUid
			FROM	@IULock AS L;
		  END
		ELSE
		  BEGIN
			IF  @iur = 0
				INSERT	INTO @Result
				(		Result,
						ResMsg,
						LockUid)
				SELECT	0,
						N'Lock already exists for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N', uid ' + CONVERT(NVARCHAR(36), CL.LockUid) + CONVERT(NVARCHAR(10), CL.ClaimId) + N', user ' + CL.LockUser + N'; expires ' + FORMAT(CL.ExpiryDt, N'yyyy-MM-dd HH:mm:ssK'),
						CL.LockUid
				FROM	KLAiMFlex.ClaimLocks AS CL
				WHERE	CL.ClaimId = @pClaimId;
			ELSE
				INSERT	INTO @Result
				(		Result,
						ResMsg)
				SELECT	-3,
						N'Cannot create lock for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N'; too many rows (' + CONVERT(NVARCHAR(10), @iur) + N') affected!';
		  END;
	END TRY
	BEGIN CATCH
		INSERT	INTO @Result
		(		Result,
				ResMsg)
		SELECT	-2,
				LEFT(N'Lock cannot be created for ClaimId; ' + ERROR_MESSAGE(), 200)
		FROM	KLAiMFlex.ClaimLocks AS CL
		WHERE	CL.ClaimId = @pClaimId;	

		IF  @@TRANCOUNT > 0
		  BEGIN
			BEGIN TRY
			  ROLLBACK TRAN;
			END TRY
			BEGIN CATCH
			END CATCH;
		  END;
	END CATCH;

	IF  @@TRANCOUNT > 0
	  BEGIN
		COMMIT TRAN;
	  END;

	SELECT	R.Result,
            R.LockUid,
            R.ResMsg
	FROM	@Result AS R;

  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pSearchClaimsByUserBusUnitIds]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pSearchClaimsByUserBusUnitIds]
( @pReqUserId INT,
  @pUserBUInd NCHAR(1),
  @pIds AS KLAiM.IdsTable READONLY,
  @pShowCompleted AS INT = -1,
  @pBusUnitId AS INT = NULL,
  @pUserId AS INT = NULL,
  @pSearchFor AS NVARCHAR(100) = NULL
)
AS
  BEGIN
	SET NOCOUNT ON;

	SELECT	vCS.ClaimId,
			vCS.ClientId,
			vCS.BusUnitId,
			vCS.UserId,
            vCS.OurRef,
            vCS.ClaimHandlerName,
            vCS.ClaimHandlerId,
            vCS.ClaimantName,
            vCS.DefendantName,
            vCS.SolicitorName,
            vCS.PolicyholderName,
            vCS.CreatedDate,
            vCS.Process,
            vCS.ClaimType,
			vCS.ClaimStatusId,
			vCS.ClaimStatus
	FROM	KLAiMFlex.vClaimSummaries AS vCS
	WHERE	EXISTS(
			SELECT	NULL
			FROM	@pIds AS I
			WHERE	(	(@pUserBUInd = N'B'
							AND I.Id = vCS.BusUnitId)
						OR	(@pUserBUInd = N'U'
							AND I.Id = vCS.UserId)
					)
				)
	AND(	vCS.ClaimStatusId = 1
			OR	(vCS.ClaimStatusId BETWEEN 2 AND 6
				 AND (@pShowCompleted < 0
					OR	DATEDIFF(DAY, vCS.ClosedDate, CONVERT(DATE, SYSDATETIME())) <= @pShowCompleted)
			)
		)
	AND(	@pBusUnitId IS NULL
			OR vCS.BusUnitId = @pBusUnitId)
	AND(	@pUserId IS NULL
			OR vCS.UserId = @pUserId)
	AND(	@pSearchFor IS NULL
			OR vCS.OurRef LIKE N'%' + @pSearchFor + N'%')
	ORDER	BY ISNULL(vCs.UpdateDt, vCS.CreateDt) DESC, vCS.ClaimId DESC;
  END;
GO
/****** Object:  StoredProcedure [KLAiMFlex].[pUnlockClaim]    Script Date: 01/03/2019 14:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [KLAiMFlex].[pUnlockClaim]
( @pClaimId INT,
  @pLockUser NVARCHAR(100),
  @pLockUid UNIQUEIDENTIFIER
)
AS
  BEGIN
	SET NOCOUNT ON;

	DECLARE @Result TABLE 
			(	Result		INT					NOT NULL,
				ResMsg		NVARCHAR(200),
				LockUid		UNIQUEIDENTIFIER);

	DECLARE	@DelLock TABLE
			(	ClaimId		INT					NOT NULL,
				LockUid		UNIQUEIDENTIFIER	NOT NULL,
				LockUser	NVARCHAR(100));

	BEGIN TRAN;

	BEGIN TRY
		DELETE	CL
		OUTPUT	Deleted.ClaimId,
				Deleted.LockUid,
                Deleted.LockUser
		INTO	@DelLock
				(	ClaimId,
					LockUid,
					LockUser)
		FROM	KLAiMFlex.ClaimLocks AS CL
		WHERE	CL.ClaimId = @pClaimId
		AND		CL.LockUid = @pLockUid;

		DECLARE @iur INT = (
				SELECT	COUNT(L.ClaimId)
				FROM	@DelLock AS L);

		IF	@iur = 1
		  BEGIN
			INSERT	INTO @Result
			(		Result,
					ResMsg,
					LockUid)
			SELECT	CASE WHEN L.LockUser = @pLockUser THEN 1 ELSE -1 END,
					LEFT(N'Claim lock for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N', uid ' + CONVERT(NVARCHAR(36), L.LockUid)  + N', user ' + L.LockUser + N' deleted'
						+ CASE WHEN L.LockUser = @pLockUser THEN N'' ELSE N'. Lock was held by ' + L.LockUser END, 200),
					L.LockUid
			FROM	@DelLock AS L;
		  END
		ELSE
		  BEGIN
			IF  @iur = 0
				INSERT	INTO @Result
				(		Result,
						ResMsg)
				SELECT	0,
						N'Lock does not exist for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N', uid ' + CONVERT(NVARCHAR(36), @pLockUid);
			ELSE
				INSERT	INTO @Result
				(		Result,
						ResMsg)
				SELECT	0,
						N'Cannot delete lock for ClaimId ' + CONVERT(NVARCHAR(10), @pClaimId) + N'; Too many rows affected!';
		  END;
	END TRY
	BEGIN CATCH
		IF  @@TRANCOUNT > 0
		  BEGIN
			BEGIN TRY
			  ROLLBACK TRAN;
			END TRY
			BEGIN CATCH
			END CATCH;
		  END;
	END CATCH;

	IF  @@TRANCOUNT > 0
	  BEGIN
		COMMIT TRAN;
	  END;

	SELECT	R.Result,
            R.ResMsg,
            R.LockUid
	FROM	@Result AS R;

  END;
GO
