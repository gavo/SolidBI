CREATE TABLE [staging].[ventas]
(
    [VentaID] BIGINT NOT NULL,
    [TipoItem] INT NOT NULL,
    [ItemID] BIGINT NOT NULL,
    [TipoItemString] VARCHAR(10),
    [des_Venta] NUMERIC(38, 2) NOT NULL,
    [FechaVentaKey] BIGINT NOT NULL,
    [sub_total] NUMERIC(38, 2) NOT NULL,
    [total_Venta] NUMERIC(38, 2) NOT NULL,
    [ClienteKey] BIGINT NOT NULL,
    [ProductoKey] BIGINT NOT NULL,
    [ServicioKey] BIGINT NOT NULL,
	[cant_item] INT NOT NULL,
    [desc_item] NUMERIC(38, 2) NOT NULL,
    [precio_item] NUMERIC(38,2) NOT NULL,
    [subtotal_item] NUMERIC(38,2) NOT NULL,
    [credito_fiscal] NUMERIC(38, 2) NULL,
    [FechaFacturaKey] BIGINT NOT NULL,
	[nit] VARCHAR(255) NOT NULL,
	[nro] VARCHAR(255) NULL,
	[razon_social] VARCHAR(255) NOT NULL,
	[total_Factura] NUMERIC(38, 2) NULL
);
GO
