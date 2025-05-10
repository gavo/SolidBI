CREATE PROCEDURE [dbo].[DW_MergeFactVentaServicio]
AS
BEGIN
	UPDATE dc
	SET 
		des_Venta = sc.des_Venta,
		FechaVentaKey = sc.FechaVentaKey,
		sub_total = sc.sub_total,
		total_Venta = sc.total_Venta,
		ClienteKey = sc.ClienteKey,
		ServicioKey = sc.ServicioKey,
		desc_Servicio = sc.desc_Servicio,
		precio_servicio = sc.precio_servicio,
		observaciones = sc.observaciones,
		credito_fiscal = sc.credito_fiscal,
		FechaFacturaKey = sc.FechaFacturaKey,
		nit = sc.nit,
		nro = sc.nro,
		razon_social = sc.razon_social,
		total_Factura = sc.total_Factura
	FROM [dbo].[FactVentaServicio]        dc
	INNER JOIN [staging].[ventaServicio] sc ON (dc.[VentaID]=sc.[VentaID] AND (dc.[ServicioID] = sc.[ServicioID]))
END
GO