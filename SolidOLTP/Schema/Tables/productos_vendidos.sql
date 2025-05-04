CREATE TABLE [dbo].[productos_vendidos](
	[id] [bigint] IDENTITY(1,1)		NOT NULL,
	[cantidad] [int]				NOT NULL,
	[descuento] [numeric](38, 2)	NOT NULL,
	[precio] [numeric](38, 2)		NOT NULL,
	[id_producto] [bigint]			NOT NULL,
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

ALTER TABLE [dbo].[productos_vendidos]  WITH CHECK ADD  CONSTRAINT [FKi0ibbh5c4xq5fql96123yktii] FOREIGN KEY([id_venta])
REFERENCES [dbo].[ventas] ([id])
GO

ALTER TABLE [dbo].[productos_vendidos] CHECK CONSTRAINT [FKi0ibbh5c4xq5fql96123yktii]
GO

ALTER TABLE [dbo].[productos_vendidos]  WITH CHECK ADD  CONSTRAINT [FKnb22b7krhcc5rrxunyh402icu] FOREIGN KEY([id_producto])
REFERENCES [dbo].[productos] ([id])
GO

ALTER TABLE [dbo].[productos_vendidos] CHECK CONSTRAINT [FKnb22b7krhcc5rrxunyh402icu]
GO
