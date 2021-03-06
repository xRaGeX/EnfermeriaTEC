USE [master]
GO
/****** Object:  Database [EnfermeriaTEC]    Script Date: 24/12/2017 14:40:55 ******/
CREATE DATABASE [EnfermeriaTEC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnfermeriaTEC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EnfermeriaTEC.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EnfermeriaTEC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\EnfermeriaTEC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EnfermeriaTEC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnfermeriaTEC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnfermeriaTEC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnfermeriaTEC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnfermeriaTEC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EnfermeriaTEC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnfermeriaTEC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EnfermeriaTEC] SET  MULTI_USER 
GO
ALTER DATABASE [EnfermeriaTEC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnfermeriaTEC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnfermeriaTEC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnfermeriaTEC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EnfermeriaTEC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [EnfermeriaTEC]
GO
/****** Object:  Table [dbo].[clients_table]    Script Date: 24/12/2017 14:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clients_table](
	[ID_Register] [int] IDENTITY(1,1) NOT NULL,
	[edad] [int] NOT NULL,
	[primera_vez] [bit] NOT NULL,
	[subsecuente] [bit] NOT NULL,
	[estudiante] [bit] NOT NULL,
	[funcionario] [bit] NOT NULL,
	[familiar] [bit] NOT NULL,
	[pensionado] [bit] NOT NULL,
	[referencia] [bit] NOT NULL,
	[sexo] [bit] NOT NULL,
	[fecha_hora] [smalldatetime] NULL,
	[hora] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users_table]    Script Date: 24/12/2017 14:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_table](
	[id_user] [int] NOT NULL,
	[password_user] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[clients_table] ON 

INSERT [dbo].[clients_table] ([ID_Register], [edad], [primera_vez], [subsecuente], [estudiante], [funcionario], [familiar], [pensionado], [referencia], [sexo], [fecha_hora], [hora]) VALUES (14, 21, 1, 0, 1, 0, 1, 0, 0, 1, CAST(N'2017-12-15 15:13:00' AS SmallDateTime), N'7:00')
SET IDENTITY_INSERT [dbo].[clients_table] OFF
INSERT [dbo].[users_table] ([id_user], [password_user]) VALUES (2015118888, 12345)
INSERT [dbo].[users_table] ([id_user], [password_user]) VALUES (2015123456, 54321)
USE [master]
GO
ALTER DATABASE [EnfermeriaTEC] SET  READ_WRITE 
GO
