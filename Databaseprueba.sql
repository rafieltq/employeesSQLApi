USE [master]
GO
/****** Object:  Database [prueba]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE DATABASE [prueba] ON  PRIMARY 
( NAME = N'empleados', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\empleados.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'empleados_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\empleados_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [prueba] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prueba].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prueba] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prueba] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prueba] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prueba] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prueba] SET ARITHABORT OFF 
GO
ALTER DATABASE [prueba] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prueba] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prueba] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prueba] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prueba] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prueba] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prueba] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prueba] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prueba] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prueba] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prueba] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prueba] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prueba] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prueba] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prueba] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prueba] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prueba] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prueba] SET  MULTI_USER 
GO
ALTER DATABASE [prueba] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prueba] SET DB_CHAINING OFF 
GO
USE [prueba]
GO
/****** Object:  User [usuario1]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE USER [usuario1] FOR LOGIN [usuario1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [root]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE USER [root] FOR LOGIN [root] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rafiel]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE USER [rafiel] FOR LOGIN [rafiel] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rafael]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE USER [rafael] FOR LOGIN [rafael] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 20/06/2021 01:11:49 p. m. ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'rafael'
GO
sys.sp_addrolemember @rolename = N'db_denydatareader', @membername = N'rafael'
GO
sys.sp_addrolemember @rolename = N'db_denydatawriter', @membername = N'rafael'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_accessadmin', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_securityadmin', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_ddladmin', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_backupoperator', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_denydatareader', @membername = N'admin'
GO
sys.sp_addrolemember @rolename = N'db_denydatawriter', @membername = N'admin'
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 20/06/2021 01:11:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](10) NULL,
	[apellido] [varchar](20) NULL,
	[telefono] [varchar](10) NULL,
	[direccion] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[comentario] [varchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [prueba] SET  READ_WRITE 
GO
