USE [master]
GO
/****** Object:  Database [GameDB]    Script Date: 11/30/2017 1:35:46 PM ******/
CREATE DATABASE [GameDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Game', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.ALENKA\MSSQL\DATA\Game.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Game_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.ALENKA\MSSQL\DATA\Game_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GameDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GameDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GameDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GameDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GameDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GameDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GameDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GameDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GameDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GameDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GameDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GameDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GameDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GameDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GameDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GameDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GameDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GameDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GameDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GameDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GameDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GameDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GameDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GameDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GameDB] SET RECOVERY FULL 
GO
ALTER DATABASE [GameDB] SET  MULTI_USER 
GO
ALTER DATABASE [GameDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GameDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GameDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GameDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GameDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GameDB', N'ON'
GO
USE [GameDB]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 11/30/2017 1:35:46 PM ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dbadmin]    Script Date: 11/30/2017 1:35:46 PM ******/
CREATE USER [dbadmin] FOR LOGIN [dbadmin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_owner] ADD MEMBER [dbadmin]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [dbadmin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [dbadmin]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [dbadmin]
GO
/****** Object:  Table [dbo].[Heat]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heat](
	[TabId_ID] [int] IDENTITY(1,1) NOT NULL,
	[AC_status] [bit] NULL,
	[Window_status] [bit] NULL,
	[Room_temp_Page4] [int] NULL,
 CONSTRAINT [PK_Heat] PRIMARY KEY CLUSTERED 
(
	[TabId_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[TabId_ID] [int] NOT NULL,
	[AC_status] [bit] NULL,
	[Window_status] [bit] NULL,
	[Room_temp_Page4] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[TabId_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_2](
	[Tab2_ID] [int] NOT NULL,
	[Room_temp_Heat] [int] IDENTITY(1,1) NOT NULL,
	[AC_status_heat] [binary](50) NULL,
	[Window_status_heat] [binary](50) NULL,
	[Blinds_status_heat] [binary](50) NULL,
	[Fan_status_heat] [binary](50) NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[Tab2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_3](
	[Tab2_ID] [int] NOT NULL,
	[Room_temp_Heat] [int] NOT NULL,
	[AC_status_heat] [bit] NULL,
	[Window_status_heat] [bit] NULL,
	[Blinds_status_heat] [bit] NULL,
	[Fan_status_heat] [bit] NULL,
 CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED 
(
	[Tab2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_5]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_5](
	[Tab2_ID] [int] IDENTITY(1,1) NOT NULL,
	[Room_temp_Heat] [int] NOT NULL,
	[AC_status_heat] [bit] NULL,
	[Window_status_heat] [bit] NULL,
	[Blinds_status_heat] [bit] NULL,
	[Fan_status_heat] [bit] NULL,
 CONSTRAINT [PK_Table_5] PRIMARY KEY CLUSTERED 
(
	[Tab2_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_7]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_7](
	[tab7_ID] [int] IDENTITY(1,1) NOT NULL,
	[room_temp_7] [int] NOT NULL,
 CONSTRAINT [PK_Table_7] PRIMARY KEY CLUSTERED 
(
	[tab7_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_9]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_9](
	[Tab9_ID] [int] IDENTITY(1,1) NOT NULL,
	[Room_temp_bill] [int] NOT NULL,
	[heat_status_bill] [bit] NULL,
	[Window_status_bill] [bit] NULL,
	[ducts_status_bill] [bit] NULL,
	[caulking_status_bill] [bit] NULL,
 CONSTRAINT [PK_Table_9] PRIMARY KEY CLUSTERED 
(
	[Tab9_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Cold]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Cold](
	[Tab8_ID] [int] IDENTITY(1,1) NOT NULL,
	[Heat_status_cold] [bit] NULL,
	[Win_ins_status_cold] [bit] NULL,
	[Room_temp_cold] [int] NOT NULL,
	[duct_status_cold] [bit] NULL,
	[caulk_status_cold] [bit] NULL,
 CONSTRAINT [PK_Table_Cold] PRIMARY KEY CLUSTERED 
(
	[Tab8_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_Housing]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_Housing](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_name] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[House_type] [varchar](50) NULL,
 CONSTRAINT [PK_Table_Housing] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_September]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_September](
	[TabSep_ID] [int] IDENTITY(1,1) NOT NULL,
	[Heat_status_sep] [bit] NULL,
	[Win_ins_status_sep] [bit] NULL,
	[Room_temp_cold] [int] NOT NULL,
	[duct_status_sep] [bit] NULL,
	[caulk_status_sep] [bit] NULL,
 CONSTRAINT [PK_Table_September] PRIMARY KEY CLUSTERED 
(
	[TabSep_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_wisdom]    Script Date: 11/30/2017 1:35:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_wisdom](
	[Tab_wisdom_ID] [int] IDENTITY(1,1) NOT NULL,
	[time] [int] NOT NULL,
	[hint_counter] [int] NULL,
	[object_counter] [int] NULL,
	[score] [int] NOT NULL,
 CONSTRAINT [PK_Table_wisdom] PRIMARY KEY CLUSTERED 
(
	[Tab_wisdom_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [GameDB] SET  READ_WRITE 
GO
