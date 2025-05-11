CREATE PROCEDURE [dbo].[DW_MergeFactVentas]
AS
BEGIN
	UPDATE fv
	SET 
		TipoItemString = sv.TipoItemString,
		desc_Venta = sv.desc_Venta,
		FechaVentaKey = sv.FechaVentaKey,
		sub_total = sv.sub_total,
		total_Venta = sv.total_Venta,
		ClienteKey = sv.ClienteKey,
		ServicioKey = sv.ServicioKey,
		ProductoKey = sv.ProductoKey,
		cant_item = sv.cant_item,
		desc_item = sv.desc_item,
		precio_item = sv.precio_item,
		subtotal_item = sv.subtotal_item,
		credito_fiscal = sv.credito_fiscal,
		FechaFacturaKey = sv.FechaFacturaKey,
		nit = sv.nit,
		nro = sv.nro,
		razon_social = sv.razon_social,
		total_Factura = sv.total_Factura
	FROM dbo.FactVentas AS fv
	INNER JOIN staging.ventas AS sv 
	ON (fv.[VentaID] = sv.[VentaID]
	AND (fv.[TipoItem] = sv.[TipoItem])
	AND (fv.[ItemID] = sv.[ItemID]))
END
GO
