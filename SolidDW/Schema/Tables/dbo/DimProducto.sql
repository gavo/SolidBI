CREATE TABLE [dbo].[DimProducto]
(
	[ProductoSK] BIGINT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProducto PRIMARY KEY,
	[ProductoID] [bigint] NOT NULL,
	[cod_barra] [varchar](255) NOT NULL,
	[nombre_producto] [varchar](255) NOT NULL,
	[nombre_producto_extranjero] [varchar](255) NOT NULL,
	[peso] [int] NOT NULL,
	[precio] [numeric](38, 2) NOT NULL,
	[um] [varchar](255) NOT NULL,
	[id_producto] [bigint] NULL,
	[nombre_fabricante] [varchar](255) NULL,
	[nombre_grupo_producto] [varchar](255) NULL,
	[nombre_proveedor] [varchar](255) NULL,

)
