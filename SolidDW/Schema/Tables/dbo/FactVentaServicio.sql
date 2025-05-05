CREATE TABLE [dbo].[FactVentaServicio]
(
    [VentaID] BIGINT NOT NULL,
    [ServicioID] BIGINT NOT NULL,
    [des_Venta] NUMERIC(38, 2) NOT NULL,
    [FechaVentaKey] BIGINT NOT NULL,
    [sub_total] NUMERIC(38, 2) NOT NULL,
    [total] NUMERIC(38, 2) NOT NULL,
    [ClienteKey] BIGINT NOT NULL,
    [ServicioKey] BIGINT NOT NULL,
    [desc_Servicio] NUMERIC(38, 2) NOT NULL,
    [precio_servicio] NUMERIC(38,2) NOT NULL,
    [obvservaciones] VARCHAR(255) NULL,
    [FechaFacturaKey] BIGINT NOT NULL,
    [credito_fiscal] NUMERIC(38, 2) NULL,
	[nit] VARCHAR(255) NOT NULL,
	[nro] VARCHAR(255) NULL,
	[razon_social] VARCHAR(255) NOT NULL,
	[total_Factura] NUMERIC(38, 2) NULL
);
GO

ALTER TABLE [dbo].[FactVentaServicio] 
ADD CONSTRAINT PK_FactVentaServicios PRIMARY KEY(VentaId, ServicioId);
GO

ALTER TABLE [dbo].[FactVentaServicio] 
ADD CONSTRAINT [FK_DimDate_VentaServicios] FOREIGN KEY(FechaVentaKey) 
REFERENCES [dbo].[DimDate] ([DateSK]);
GO

ALTER TABLE [dbo].[FactVentaServicio] 
ADD CONSTRAINT [FK_DimDate_VentaServicioFactura] FOREIGN KEY(FechaFacturaKey) 
REFERENCES [dbo].[DimDate] ([DateSK]);
GO


ALTER TABLE [dbo].[FactVentaServicio] 
ADD CONSTRAINT [FK_DimCliente_VentaServicios] FOREIGN KEY(ClienteKey)
REFERENCES [dbo].[DimCliente] ([ClienteSK]);
GO

ALTER TABLE [dbo].[FactVentaServicio]
ADD CONSTRAINT [FK_DimServicios_VentaServicios]
FOREIGN KEY(ServicioKey) REFERENCES [dbo].[DimServicio] ([ServicioSK]);
GO