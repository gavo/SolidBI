CREATE TABLE [staging].[ventaProducto]
(
    [VentaID] BIGINT NOT NULL,
    [ProductoID] BIGINT NOT NULL,
    [des_Venta] NUMERIC(38, 2) NOT NULL,
    [FechaVentaKey] BIGINT NOT NULL,
    [sub_total] NUMERIC(38, 2) NOT NULL,
    [total_Venta] NUMERIC(38, 2) NOT NULL,
    [ClienteKey] BIGINT NOT NULL,
    [ProductoKey] BIGINT NOT NULL,
	[cant_Producto] INT NOT NULL,
    [desc_Producto] NUMERIC(38, 2) NOT NULL,
    [precio_Producto] NUMERIC(38,2) NOT NULL,
    [credito_fiscal] NUMERIC(38, 2) NULL,
    [FechaFacturaKey] BIGINT NOT NULL,
	[nit] VARCHAR(255) NOT NULL,
	[nro] VARCHAR(255) NULL,
	[razon_social] VARCHAR(255) NOT NULL,
	[total_Factura] NUMERIC(38, 2) NULL
);
GO
