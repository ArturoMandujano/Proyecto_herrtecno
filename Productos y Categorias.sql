USE [Dulces_Regionales_Los_Robles]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 10/10/2023 10:30:37 a. m. ******/
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
/****** Object:  Table [dbo].[Productos]    Script Date: 14/10/2023 10:30:37 a. m. ******/
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
SET IDENTITY_INSERT [dbo].[Categoria] ON 
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (1, N'Tradicionales', N'Dulces de leche: cajeta, leche condensada; Ate de frutas; Dulces de tamarindo; Dulces de cacahuate;')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (2, N'Dulces de coco', N'Cocadas, Dulce de coco rayado, Rollos de coco')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (3, N'Dulces de Caramelos', N'Cajeta de celaya, Caramelos suaves o duros')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (4, N'Dulces picantes', N'Mango enchilado, Gomitas enchiladas, Papas enchiladas, Chamoy, Tamarindos enchilados')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (5, N'Dulces de chocolate', N'De mesa, Cacao, Chocoretas')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (6, N'Dulces de frutas', N'De pepita, Frutas cristalizadas, Higos de almibar')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (7, N'Dulces de masa', N'Tamales de elote, Empanadas de cajeta, calabaza y piña, Galletas')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (8, N'Dulces de ajonjolí', N'Alegrías, Mazapanes')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (9, N'Dulces regionales ', N'Jamoncillos, Lechuguillas')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (10, N'Dulces de sabores exóticos', N'Tejocote, Nopal, Jamaica')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (11, N'Aperitivos o Botanas', N'Papas, chicharrón, Tostadas, Snacks')
GO
INSERT [dbo].[Categoria] ([CategoriaID], [NombreCategoria], [Descripción]) VALUES (12, N'Objetos', N'Accesorios, juguetes, decoraciones')
GO
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (1, N'Palenqueta', N'barra de cacahuate pelado', CAST(15.50 AS Decimal(10, 2)), 175, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (2, N'Glorias', N'dulce de leche con nuez', CAST(10.50 AS Decimal(10, 2)), 92, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (3, N'Borrachitos', N'Dulce de leche con licor', CAST(18.00 AS Decimal(10, 2)), 44, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (4, N'Cajeta Envinada', N'Cajeta con licor', CAST(25.00 AS Decimal(10, 2)), 45, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (5, N'Besos de Novia', N'Dulces rellenos de nuez y chocolate', CAST(10.00 AS Decimal(10, 2)), 93, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (6, N'Canasta surtida dulces tradicionales', N'Canasta surtida dulces tradicionales', CAST(45.00 AS Decimal(10, 2)), 22, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (7, N'Taza surtida dulces tradicionales', N'Taza surtida dulces tradicionales', CAST(35.00 AS Decimal(10, 2)), 37, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (8, N'Cocada', N'coco rayado, azúcar y leche', CAST(22.75 AS Decimal(10, 2)), 176, 2)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (9, N'Besos de Coco', N'Dulces de coco rellenos de cajeta', CAST(13.00 AS Decimal(10, 2)), 86, 2)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (10, N'Rollos de coco', N'Rollos de coco', CAST(12.00 AS Decimal(10, 2)), 35, 2)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (11, N'Caramelos de Menta', N'tasty', CAST(68.00 AS Decimal(10, 2)), 111, 3)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (12, N'Dulce de caramelo', N'Caramel suave', CAST(1.50 AS Decimal(10, 2)), 67, 3)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (13, N'Gomitas de frutas picantes -vaso', N'vaso grande de gomitas de piña con polvo picante', CAST(42.75 AS Decimal(10, 2)), 175, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (14, N'Chamoyadas', N'Bolsa de chamoy líquido', CAST(11.50 AS Decimal(10, 2)), 54, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (15, N'Mango Enchilado', N'Mango verde con chile y sal', CAST(14.00 AS Decimal(10, 2)), 73, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (16, N'Chiles Enchilados', N'Chiles secos enchilados', CAST(6.50 AS Decimal(10, 2)), 96, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (17, N'Barra de Chocolate', N'bocadin', CAST(4.00 AS Decimal(10, 2)), 251, 5)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (18, N'Bombom con chocolate -bolsa', N'Bolsa de bombones con chocolate 100g', CAST(26.00 AS Decimal(10, 2)), 55, 5)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (19, N'Ositos de Goma', N'panditas', CAST(20.00 AS Decimal(10, 2)), 197, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (20, N'Chicles de Frutas', N'bubbalo', CAST(2.00 AS Decimal(10, 2)), 333, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (21, N'Dulce de Calabaza', N'Dulce típico de calabaza cristalizada', CAST(15.00 AS Decimal(10, 2)), 87, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (22, N'Ate de Guayaba', N'Ate de guayaba en tableta', CAST(9.50 AS Decimal(10, 2)), 43, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (23, N'Empanadas de cajeta -paquete de 3', N'3 empanadas grandes de cajeta', CAST(13.00 AS Decimal(10, 2)), 63, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (24, N'Empanadas de cajeta -paquete de 10', N'10 empanadas pequeñas de cajeta', CAST(17.00 AS Decimal(10, 2)), 45, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (25, N'Empanadas de piña -paquete de 3', N'3 empanadas grandes de piña', CAST(13.00 AS Decimal(10, 2)), 63, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (26, N'Empanadas de piña -paquete de 10', N'10 empanadas pequeñas de piña', CAST(17.00 AS Decimal(10, 2)), 28, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (27, N'Empanadas de calabaza -paquete de 3', N'3 empanadas grandes de calabaza', CAST(13.00 AS Decimal(10, 2)), 14, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (28, N'Empanadas de calabaza -paquete de 10', N'10 empanadas pequeñas de calabaza', CAST(17.00 AS Decimal(10, 2)), 16, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (29, N'Tamales dulces', N'Tamales dulces de chocolate, nutela, cajeta', CAST(20.00 AS Decimal(10, 2)), 24, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (30, N'Mazapanes', N'De la Rosa', CAST(3.50 AS Decimal(10, 2)), 403, 8)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (31, N'Jamoncillo -300g', N'300g surtido', CAST(38.00 AS Decimal(10, 2)), 84, 9)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (32, N'Jamaica', N'Flor de jamaica', CAST(36.50 AS Decimal(10, 2)), 53, 10)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (33, N'Chicharrón seco bolsa', N'Chiharrón seco bolsa 70g ', CAST(32.00 AS Decimal(10, 2)), 67, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (34, N'Carne seca', N'Carne seca bolsa 250g ', CAST(330.00 AS Decimal(10, 2)), 31, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (35, N'Tamales de tamarindo', N'bolsa 15 tamalitos', CAST(29.00 AS Decimal(10, 2)), 18, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (36, N'Hojarascas', N'50g', CAST(50.00 AS Decimal(10, 2)), 13, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (37, N'Obleas', N'12 Piezas', CAST(55.00 AS Decimal(10, 2)), 18, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (38, N'Ovnis de tamarindo', N'Una pieza', CAST(3.00 AS Decimal(10, 2)), 79, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (39, N'Papas surtidas', N'botana, mix de papitas para fiesta', CAST(70.00 AS Decimal(10, 2)), 34, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (40, N'Conos de dulce leche', N'individual', CAST(8.50 AS Decimal(10, 2)), 13, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (41, N'Chamoy paquete', N'paquete de bolsitas de chamoy 12pz', CAST(65.00 AS Decimal(10, 2)), 12, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (42, N'Bolsa de gomitas grande', N'1kg dulces lucky gummys', CAST(165.00 AS Decimal(10, 2)), 15, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (43, N'Paletas de bombon', N'individual', CAST(15.00 AS Decimal(10, 2)), 18, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (44, N'papas takis', N'papas takis', CAST(11.00 AS Decimal(10, 2)), 20, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (45, N'bola de tamarindo', N'individual', CAST(3.00 AS Decimal(10, 2)), 34, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (46, N'Caja de nueces', N'225gr', CAST(64.00 AS Decimal(10, 2)), 7, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (47, N'Caja de galletas dulce sutidas', N'40 galletas', CAST(60.00 AS Decimal(10, 2)), 8, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (48, N'Paleta de caramelo', N'individual', CAST(15.00 AS Decimal(10, 2)), 18, 3)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (49, N'Bolsa de nuez garapiñada', N'225g', CAST(101.50 AS Decimal(10, 2)), 6, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (50, N'Botella de cacahuates', N'botella de coronita llena de cacahuates', CAST(13.00 AS Decimal(10, 2)), 29, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (51, N'Combo botella de cacahuates y carne seca', N'botella de cacahuates y bolsita de carne seca', CAST(23.00 AS Decimal(10, 2)), 18, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (52, N'Papas naturales', N'bolsa de papas naturales', CAST(12.00 AS Decimal(10, 2)), 12, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (53, N'Caja galletas dulces', N'10 piezas', CAST(15.00 AS Decimal(10, 2)), 12, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (54, N'Reglazos de frutas', N'Dulces de fresa, mango, piña, guayaba', CAST(8.00 AS Decimal(10, 2)), 27, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (55, N'Pulparindo', N'individual', CAST(6.00 AS Decimal(10, 2)), 60, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (56, N'Minipays', N'mango, limón, piña', CAST(85.00 AS Decimal(10, 2)), 21, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (57, N'Campechanas', N'individual', CAST(4.50 AS Decimal(10, 2)), 14, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (58, N'Gorditas de azucar', N'individual', CAST(8.00 AS Decimal(10, 2)), 13, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (59, N'Bisquet integral', N'individual', CAST(9.00 AS Decimal(10, 2)), 18, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (60, N'Polvoron integral', N'individual', CAST(10.00 AS Decimal(10, 2)), 24, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (61, N'Empanadas de cajeta con nuez', N'individual grande', CAST(6.00 AS Decimal(10, 2)), 16, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (62, N'Pan de pulque', N'individual', CAST(10.00 AS Decimal(10, 2)), 9, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (63, N'Galletas finas', N'caja de 280g', CAST(80.00 AS Decimal(10, 2)), 12, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (64, N'Galletas con gragea', N'bolsa 100g', CAST(15.00 AS Decimal(10, 2)), 46, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (65, N'Besos de ángel', N'bolsa 60g', CAST(15.00 AS Decimal(10, 2)), 38, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (66, N'Orejitas', N'galletas de mantequilla 190g', CAST(70.00 AS Decimal(10, 2)), 58, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (67, N'Cochinito integral', N'individual', CAST(16.50 AS Decimal(10, 2)), 26, 7)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (68, N'Semitas caseras con nuez y pasas', N'individual', CAST(16.00 AS Decimal(10, 2)), 14, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (69, N'Miel pura chica', N'vaso chico', CAST(40.00 AS Decimal(10, 2)), 56, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (70, N'Miel pura grande', N'vaso grande', CAST(80.00 AS Decimal(10, 2)), 43, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (71, N'Piquin', N'vaso mediano', CAST(50.00 AS Decimal(10, 2)), 13, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (72, N'Salsa', N'bote pequeño', CAST(9.00 AS Decimal(10, 2)), 46, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (73, N'Habanero', N'bote mediano', CAST(16.00 AS Decimal(10, 2)), 34, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (74, N'Chile del monte', N'bote grande', CAST(40.00 AS Decimal(10, 2)), 57, 4)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (75, N'Mosaicos', N'caja de 4 piezas', CAST(15.00 AS Decimal(10, 2)), 26, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (76, N'Luneta bolsita', N'bolsita de 48g', CAST(15.00 AS Decimal(10, 2)), 23, 11)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (77, N'Nuez bolsita', N'bolsita de 112g', CAST(35.00 AS Decimal(10, 2)), 21, 1)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (78, N'Fruta cristalizada', N'Dulce tipico de fruta cristalizada 315g', CAST(50.00 AS Decimal(10, 2)), 29, 6)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (79, N'Bolitas de leche con azucar', N'dulce regional bolsa 9 piezas', CAST(90.00 AS Decimal(10, 2)), 18, 9)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (80, N'Monedero', N'monedero artesanal', CAST(35.00 AS Decimal(10, 2)), 65, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (81, N'Imanes', N'imanes para pegar en tu refrigerador', CAST(30.00 AS Decimal(10, 2)), 76, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (82, N'Juguetes mexicanos', N'variedad de juguetes mexicanos', CAST(20.00 AS Decimal(10, 2)), 33, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (83, N'Delantales', N'delantal estilo la loteria', CAST(100.00 AS Decimal(10, 2)), 59, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (84, N'Alcancias', N'alcancias estilo mexicano regional', CAST(60.00 AS Decimal(10, 2)), 67, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (85, N'Molcajete', N'molcajte  de piedra', CAST(70.00 AS Decimal(10, 2)), 45, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (86, N'Quinqué', N'Quinqué antiguo', CAST(180.00 AS Decimal(10, 2)), 36, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (87, N'Juego de loteria', N'juego lotería', CAST(140.00 AS Decimal(10, 2)), 53, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (88, N'Muñecas marías', N'muñeca de trapo maría artesanal', CAST(85.00 AS Decimal(10, 2)), 66, 12)
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [Stock], [CategoriaID]) VALUES (89, N'Bolsas y sombreros mexicanos', N'sombrero de palma y bolsa artesanal', CAST(110.00 AS Decimal(10, 2)), 98, 12)
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK__Productos__Categ__38996AB5] FOREIGN KEY([CategoriaID])
REFERENCES [dbo].[Categoria] ([CategoriaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK__Productos__Categ__38996AB5]
GO
