USE [master]
GO
/****** Object:  Database [ShermanGym]    Script Date: 24/01/2023 7:23:25 a. m. ******/
CREATE DATABASE [ShermanGym]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShermanGym', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShermanGym.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShermanGym_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ShermanGym_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShermanGym] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShermanGym].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShermanGym] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShermanGym] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShermanGym] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShermanGym] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShermanGym] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShermanGym] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShermanGym] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShermanGym] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShermanGym] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShermanGym] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShermanGym] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShermanGym] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShermanGym] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShermanGym] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShermanGym] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShermanGym] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShermanGym] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShermanGym] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShermanGym] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShermanGym] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShermanGym] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShermanGym] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShermanGym] SET RECOVERY FULL 
GO
ALTER DATABASE [ShermanGym] SET  MULTI_USER 
GO
ALTER DATABASE [ShermanGym] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShermanGym] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShermanGym] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShermanGym] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShermanGym] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShermanGym] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShermanGym', N'ON'
GO
ALTER DATABASE [ShermanGym] SET QUERY_STORE = OFF
GO
USE [ShermanGym]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdDepartamento] [int] NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IdPais] [int] NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformacionCorporal]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformacionCorporal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Peso_Kg] [float] NOT NULL,
	[Altura_cm] [float] NOT NULL,
	[MedidaBrazoDer] [float] NOT NULL,
	[MedidaBrazoIzq] [float] NOT NULL,
	[MedidaPiernaDer] [float] NOT NULL,
	[MedidaPiernaIzq] [float] NOT NULL,
	[Estado] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [varchar](255) NOT NULL,
	[SegundoNombre] [varchar](255) NULL,
	[PrimerApellido] [varchar](255) NOT NULL,
	[SegundoApellido] [varchar](255) NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[NumeroDocumento] [varchar](255) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Celular] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[IdGenero] [int] NULL,
	[IdTipoSangre] [int] NULL,
	[Edad] [int] NULL,
	[DireccionVivienda] [varchar](255) NULL,
	[IdCiudadNacimiento] [int] NULL,
	[IdInformacionCorporal] [int] NULL,
	[FechaRegistro] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoSangre]    Script Date: 24/01/2023 7:23:25 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSangre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[IpRegistro] [varchar](255) NULL,
	[Estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ShermanGym] SET  READ_WRITE 
GO
