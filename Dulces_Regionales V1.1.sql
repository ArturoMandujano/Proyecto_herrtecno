USE [master]
GO
/****** Object:  Database [Dulces_Regionales_Los_Robles]    Script Date: 30/11/2023 06:54:51 p. m. ******/
CREATE DATABASE [Dulces_Regionales_Los_Robles]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dulces_Regionales_Los_Robles', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dulces_Regionales_Los_Robles.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dulces_Regionales_Los_Robles_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dulces_Regionales_Los_Robles_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dulces_Regionales_Los_Robles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET RECOVERY FULL 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET  MULTI_USER 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dulces_Regionales_Los_Robles', N'ON'
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET QUERY_STORE = OFF
GO
USE [Dulces_Regionales_Los_Robles]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = OFF;
GO
USE [Dulces_Regionales_Los_Robles]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[CategoriaID] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NOT NULL,
	[Descripción] [varchar](200) NOT NULL,
 CONSTRAINT [PK__Categori__F353C1C51DC10B6F] PRIMARY KEY CLUSTERED 
(
	[CategoriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[NombreCliente] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Telefono] [varchar](15) NULL,
 CONSTRAINT [PK__Clientes__71ABD0A70E012BD9] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallesVenta]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallesVenta](
	[DetalleID] [int] IDENTITY(1,1) NOT NULL,
	[VentaID] [int] NULL,
	[ProductoID] [int] NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](10, 2) NOT NULL,
	[PrecioTotal]  AS ([Cantidad]*[PrecioUnitario]),
PRIMARY KEY CLUSTERED 
(
	[DetalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](100) NOT NULL,
	[DescripcionProducto] [varchar](200) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[CategoriaID] [int] NULL,
 CONSTRAINT [PK__Producto__A430AE83B64B50CE] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaID] [int] IDENTITY(1,1) NOT NULL,
	[FechaVenta] [datetime] NOT NULL,
	[ClienteID] [int] NOT NULL,
 CONSTRAINT [PK__Ventas__5B41514CFF635268] PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetallesVenta]  WITH CHECK ADD  CONSTRAINT [FK__DetallesV__Produ__412EB0B6] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[DetallesVenta] CHECK CONSTRAINT [FK__DetallesV__Produ__412EB0B6]
GO
ALTER TABLE [dbo].[DetallesVenta]  WITH CHECK ADD  CONSTRAINT [FK__DetallesV__Venta__403A8C7D] FOREIGN KEY([VentaID])
REFERENCES [dbo].[Ventas] ([VentaID])
GO
ALTER TABLE [dbo].[DetallesVenta] CHECK CONSTRAINT [FK__DetallesV__Venta__403A8C7D]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK__Productos__Categ__38996AB5] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([CategoriaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK__Productos__Categ__38996AB5]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK__Ventas__ClienteI__3D5E1FD2] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK__Ventas__ClienteI__3D5E1FD2]
GO
/****** Object:  StoredProcedure [dbo].[General]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[General]
AS
SELECT
    V.DetalleID,
    V.FechaVenta,
    V.NombreCliente,
    V.NombreCategoria,
    V.NombreProducto,
    V.PrecioUnitario,
    V.Cantidad,
    V.PrecioUnitario * V.Cantidad AS PrecioTotal,
    S.PrecioTotalPorFecha
FROM (
    SELECT DetalleID, FechaVenta, NombreCliente, NombreCategoria, NombreProducto, PrecioUnitario, Cantidad, PrecioUnitario * Cantidad AS PrecioTotal
    FROM Ventas
    INNER JOIN DetallesVenta ON DetallesVenta.VentaID = Ventas.VentaID
    INNER JOIN Clientes ON Clientes.ClienteID = Ventas.ClienteID
    INNER JOIN Productos ON Productos.ProductoID = DetallesVenta.ProductoID
    INNER JOIN Categoria ON Categoria.CategoriaID = Productos.CategoriaID
) AS V
LEFT JOIN (
    SELECT Fechaventa, SUM(preciototal) AS PrecioTotalPorFecha
    FROM Ventas
    INNER JOIN DetallesVenta ON DetallesVenta.VentaID = Ventas.VentaID
    GROUP BY Fechaventa
) AS S ON V.FechaVenta = S.Fechaventa;
GO
/****** Object:  StoredProcedure [dbo].[Producto_Caro_y_Barato]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Producto más Caro y Barato
CREATE PROC [dbo].[Producto_Caro_y_Barato]
AS
-- Caro
SELECT TOP 1 Precio, NombreProducto
FROM Productos
ORDER BY PRECIO DESC;
-- Barato
SELECT TOP 1 Precio, NombreProducto
FROM Productos
ORDER BY PRECIO ASC;
GO
/****** Object:  StoredProcedure [dbo].[Producto_Más_Vendido]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Producto_Más_Vendido]
AS
SELECT TOP 1 D.ProductoID, P.NombreProducto, COUNT(*) AS CantidadVentas
FROM DetallesVenta D
JOIN Productos P ON D.ProductoID = P.ProductoID
GROUP BY D.ProductoID, P.NombreProducto
ORDER BY CantidadVentas DESC;
GO
/****** Object:  StoredProcedure [dbo].[ProductoPorID]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductoPorID]
    @ProductoID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Productos
    WHERE ProductoID = @ProductoID;
END;
GO
/****** Object:  StoredProcedure [dbo].[Tablas]    Script Date: 30/11/2023 06:54:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Tablas]
AS
SELECT * FROM Categoria
SELECT * FROM Productos
SELECT * FROM Clientes
SELECT * FROM Ventas 
SELECT * FROM DetallesVenta
GO
USE [master]
GO
ALTER DATABASE [Dulces_Regionales_Los_Robles] SET  READ_WRITE 
GO
