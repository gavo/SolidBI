CREATE TABLE [dbo].[facturas]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[credito_fiscal] [numeric](38, 2) NOT NULL,
	[fecha] [datetime2](6) NOT NULL,
	[nit] [varchar](255) NOT NULL,
	[nro] [varchar](255) NOT NULL,
	[razon_social] [varchar](255) NOT NULL,
	[total] [numeric](38, 2) NOT NULL,
	[id_venta] [bigint] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
) WITH (
	PAD_INDEX = OFF, 
	STATISTICS_NORECOMPUTE = OFF, 
	IGNORE_DUP_KEY = OFF, 
	ALLOW_ROW_LOCKS = 
	ON, ALLOW_PAGE_LOCKS = ON, 
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[facturas]  WITH CHECK ADD 
CONSTRAINT [FK_Ventas_Facturas] FOREIGN KEY([id_venta])
REFERENCES [dbo].[ventas] ([id])
GO

ALTER TABLE [dbo].[facturas] CHECK 
CONSTRAINT [FK_Ventas_Facturas]
GO
