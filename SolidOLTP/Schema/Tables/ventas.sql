CREATE TABLE [dbo].[ventas]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[descuento] [numeric](38, 2) NOT NULL,
	[fecha] [datetime2](6) NOT NULL,
	[sub_total] [numeric](38, 2) NOT NULL,
	[total] [numeric](38, 2) NOT NULL,
	[id_cliente] [bigint] NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
) WITH (
	PAD_INDEX = OFF, 
	STATISTICS_NORECOMPUTE = OFF, 
	IGNORE_DUP_KEY = OFF, 
	ALLOW_ROW_LOCKS = ON,
	ALLOW_PAGE_LOCKS = ON, 
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  
CONSTRAINT [FK_Clientes_Venta] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[clientes] ([id])
GO

ALTER TABLE [dbo].[ventas] CHECK 
CONSTRAINT [FK_Clientes_Venta]
GO