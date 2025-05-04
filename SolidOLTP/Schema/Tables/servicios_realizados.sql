CREATE TABLE [dbo].[servicios_realizados](
	[id] [bigint] IDENTITY(1,1)		NOT NULL,
	[descuento] [numeric](38, 2)	NOT NULL,
	[observaciones] [varchar](255)	NULL,
	[precio] [numeric](38, 2)		NOT NULL,
	[id_servicio] [bigint]			NOT NULL,
	[id_venta] [bigint]				NOT NULL,
	[rowversion] [timestamp]		NOT NULL,
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

ALTER TABLE [dbo].[servicios_realizados]  WITH CHECK ADD  CONSTRAINT [FK8rp76jpvx27ucd1cbx4e7hgo6] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[servicios] ([id])
GO

ALTER TABLE [dbo].[servicios_realizados] CHECK CONSTRAINT [FK8rp76jpvx27ucd1cbx4e7hgo6]
GO

ALTER TABLE [dbo].[servicios_realizados]  WITH CHECK ADD  CONSTRAINT [FKnbt59nftmr75jx2b59d16lw1x] FOREIGN KEY([id_venta])
REFERENCES [dbo].[ventas] ([id])
GO

ALTER TABLE [dbo].[servicios_realizados] CHECK CONSTRAINT [FKnbt59nftmr75jx2b59d16lw1x]
GO