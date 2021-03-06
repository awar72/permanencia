USE [master]
GO
/****** Object:  Database [Permanencia]    Script Date: 27/07/2017 1:28:39 ******/
CREATE DATABASE [Permanencia] ON  PRIMARY 
( NAME = N'Permanencia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER_AGC\MSSQL\DATA\Permanencia.mdf' , SIZE = 112640KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Permanencia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER_AGC\MSSQL\DATA\Permanencia_log.ldf' , SIZE = 84416KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Permanencia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Permanencia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Permanencia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Permanencia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Permanencia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Permanencia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Permanencia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Permanencia] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Permanencia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Permanencia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Permanencia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Permanencia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Permanencia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Permanencia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Permanencia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Permanencia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Permanencia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Permanencia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Permanencia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Permanencia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Permanencia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Permanencia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Permanencia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Permanencia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Permanencia] SET RECOVERY FULL 
GO
ALTER DATABASE [Permanencia] SET  MULTI_USER 
GO
ALTER DATABASE [Permanencia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Permanencia] SET DB_CHAINING OFF 
GO
USE [Permanencia]
GO
/****** Object:  Table [dbo].[AsitenciaSTG]    Script Date: 27/07/2017 1:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsitenciaSTG](
	[RUT Alumno] [nvarchar](15) NULL,
	[Nombre Alumno] [nvarchar](255) NULL,
	[Apellido Alumno] [nvarchar](255) NULL,
	[Carrera] [nvarchar](255) NULL,
	[Asignatura] [nvarchar](255) NULL,
	[Nombre Asignatura] [nvarchar](255) NULL,
	[Asistencia] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Curso_STG]    Script Date: 27/07/2017 1:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curso_STG](
	[SEDE] [nvarchar](255) NULL,
	[CARRERA] [nvarchar](255) NULL,
	[JORNADA] [nvarchar](255) NULL,
	[CODIGO ASIGNATURA] [nvarchar](255) NULL,
	[DESC ASIGNATURA] [nvarchar](255) NULL,
	[SECCION] [float] NULL,
	[AÑO] [float] NULL,
	[SEMESTRE] [float] NULL,
	[RUT ALUMNO] [nvarchar](255) NULL,
	[NOMBRE ALUMNO] [nvarchar](255) NULL,
	[ESTADO ASIGNATURA] [nvarchar](255) NULL,
	[DESC ESTADO ASIGNATURA] [nvarchar](255) NULL,
	[Nº NOTAS PARCIALES] [float] NULL,
	[Nº NOTAS EXAMEN] [float] NULL,
	[C1] [float] NULL,
	[C2] [float] NULL,
	[C3] [float] NULL,
	[C4] [float] NULL,
	[C5] [float] NULL,
	[C6] [float] NULL,
	[C7] [float] NULL,
	[C8] [float] NULL,
	[C9] [float] NULL,
	[C10] [float] NULL,
	[C11] [float] NULL,
	[C12] [float] NULL,
	[C13] [float] NULL,
	[C14] [float] NULL,
	[C15] [float] NULL,
	[C16] [float] NULL,
	[C17] [float] NULL,
	[C18] [float] NULL,
	[C19] [float] NULL,
	[C20] [float] NULL,
	[E1] [float] NULL,
	[E2] [float] NULL,
	[E3] [float] NULL,
	[PROMEDIO CATEDRA] [float] NULL,
	[PROMEDIO EXAMEN] [float] NULL,
	[NOTA FINAL] [float] NULL,
	[CODIGO ASIGNATURA MALLA] [nvarchar](255) NULL,
	[DESC CODIGO ASIGNATURA MALLA] [nvarchar](255) NULL,
	[ER] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Morosos_STG]    Script Date: 27/07/2017 1:28:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Morosos_STG](
	[Nº documento] [float] NULL,
	[Pos] [float] NULL,
	[Soc] [nvarchar](255) NULL,
	[Div] [float] NULL,
	[Rut] [nvarchar](50) NULL,
	[Sostenedor] [nvarchar](255) NULL,
	[StatCompen] [nvarchar](255) NULL,
	[Ctacontrato] [float] NULL,
	[Ctamayor] [float] NULL,
	[CtaMayorComp] [float] NULL,
	[Fecha doc] [nvarchar](255) NULL,
	[Fecontab] [nvarchar](255) NULL,
	[Mon] [nvarchar](255) NULL,
	[Venc-neto] [datetime] NULL,
	[VencDPP] [nvarchar](255) NULL,
	[Texto] [nvarchar](255) NULL,
	[ClvP] [float] NULL,
	[Imptemoneda local] [float] NULL,
	[FeCompens] [nvarchar](255) NULL,
	[Doccompens] [float] NULL,
	[MCn] [nvarchar](255) NULL,
	[FeContComp] [nvarchar](255) NULL,
	[Mc] [nvarchar](255) NULL,
	[CD] [nvarchar](255) NULL,
	[Referencia] [float] NULL,
	[ClOb] [nvarchar](255) NULL,
	[Posición presupuestaria] [float] NULL,
	[Centro gestor] [float] NULL,
	[CeBe] [float] NULL,
	[Orden] [nvarchar](255) NULL,
	[Clvrecon] [nvarchar](255) NULL,
	[ClaveReconComp] [nvarchar](255) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Permanencia] SET  READ_WRITE 
GO
