CREATE PROCEDURE [dbo].[DW_MergeFactVentaProducto]
AS
BEGIN
	UPDATE dc
	SET 
		des_Venta = sc.des_Venta,
		FechaVentaKey = sc.FechaVentaKey,
		sub_total = sc.sub_total,
		total_Venta = sc.total_Venta,
		ClienteKey = sc.ClienteKey,
		ProductoKey = sc.ProductoKey,
		cant_Producto = sc.cant_Producto,
		desc_Producto = sc.desc_Producto,
		precio_Producto = sc.precio_Producto,
		credito_fiscal = sc.credito_fiscal,
		FechaFacturaKey = sc.FechaFacturaKey,
		nit = sc.nit,
		nro = sc.nro,
		razon_social = sc.razon_social,
		total_Factura = sc.total_Factura
	FROM [dbo].[FactVentaProducto]        dc
	INNER JOIN [staging].[ventaProducto] sc ON (dc.[VentaID]=sc.[VentaID] AND (dc.[ProductoID] = sc.[ProductoID]))
END
GO