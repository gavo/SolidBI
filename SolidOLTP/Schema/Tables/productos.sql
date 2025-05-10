CREATE TABLE [dbo].[productos]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[cod_barra] [varchar](255) NOT NULL,
	[nombre_producto] [varchar](255) NOT NULL,
	[nombre_producto_extranjero] [varchar](255) NOT NULL,
	[peso] [int] NOT NULL,
	[precio] [numeric](38, 2) NOT NULL,
	[um] [varchar](255) NOT NULL,
	[id_producto] [bigint] NULL,
	[id_fabricante] [bigint] NULL,
	[id_grupo_producto] [bigint] NULL,
	[id_proveedor] [bigint] NULL,
	[rowversion] [timestamp] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (
	PAD_INDEX = OFF,
	STATISTICS_NORECOMPUTE = OFF,
	IGNORE_DUP_KEY = OFF,
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON,
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[productos]  
ADD CONSTRAINT [FK_Proveedor_Productos] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedores] ([id])
GO

ALTER TABLE [dbo].[productos] CHECK
CONSTRAINT [FK_Proveedor_Productos]
GO

ALTER TABLE [dbo].[productos]
ADD CONSTRAINT [FK_Fabricante_Productos] FOREIGN KEY([id_fabricante])
REFERENCES [dbo].[fabricantes] ([id])
GO

ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_Fabricante_Productos]
GO

ALTER TABLE [dbo].[productos]
ADD CONSTRAINT [FK_Producto_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id])
GO

ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_Producto_Producto]
GO

ALTER TABLE [dbo].[productos]
ADD CONSTRAINT [FK_Grupo_Producto_Productos] FOREIGN KEY([id_grupo_producto])
REFERENCES [dbo].[grupos_productos] ([id])
GO

ALTER TABLE [dbo].[productos] CHECK 
CONSTRAINT [FK_Grupo_Producto_Productos]
GO
