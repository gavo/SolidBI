CREATE PROCEDURE [dbo].[GetVentasChangesByRowVersion]
(@startRow BIGINT, @endRow BIGINT) AS 
BEGIN
	SELECT
		v.id AS VentaID,
		0 AS TipoItem,
		pv.id AS ItemID,
		v.descuento AS desc_Venta,
		'PRODUCTO' AS TipoItemString,
		CONVERT(INT, FORMAT(v.fecha, 'yyyyMMdd')) AS FechaVentaKey,
		v.sub_total,
		v.total AS total_Venta,
		v.id_cliente AS ClienteKey,
		pv.id_producto AS ProductoKey,
		null AS ServicioKey,
		pv.cantidad AS cant_item,
		pv.descuento AS desc_item,
		(pv.cantidad * pv.precio) AS subtotal_item,
		pv.precio AS precio_item,
		ISNULL(f.credito_fiscal, 0) AS credito_fiscal,
		CONVERT(INT, FORMAT(ISNULL(f.fecha, v.fecha), 'yyyyMMdd')) AS FechaFacturaKey,
		ISNULL(f.nit, 0) AS nit,
		ISNULL(f.nro, 0) AS nro,
		ISNULL(f.razon_social,'SIN NOMBRE') as razon_social,
		ISNULL(f.total, 0) AS total_Factura
	FROM ventas v
	LEFT JOIN productos_vendidos pv ON pv.id_venta = v.id
	LEFT JOIN facturas f ON f.id_venta = v.id
	WHERE pv.id IS NOT NULL AND
	v.rowversion > CONVERT(ROWVERSION, @startRow) AND
	v.rowversion <= CONVERT(ROWVERSION, @endRow)
	UNION ALL
	SELECT
		v.id AS VentaID,
		1 AS TipoItem,
		sr.id AS ItemID,
		v.descuento AS desc_Venta,
		'SERVICIO' AS TipoItemString,
		CONVERT(INT, FORMAT(v.fecha, 'yyyyMMdd')) AS FechaVentaKey,
		v.sub_total,
		v.total AS total_Venta,
		v.id_cliente AS ClienteKey,
		null AS ProductoKey,
		sr.id_servicio AS ServicioKey,
		1 AS cant_item,
		sr.descuento AS desc_item,
		sr.precio AS precio_item,
		sr.precio AS subtotal_item,
		ISNULL(f.credito_fiscal, 0) AS credito_fiscal,
		CONVERT(INT, FORMAT(ISNULL(f.fecha, v.fecha), 'yyyyMMdd')) AS FechaFacturaKey,
		ISNULL(f.nit, 0) AS nit,
		ISNULL(f.nro, 0) AS nro,
		ISNULL(f.razon_social,'SIN NOMBRE') as razon_social,
		ISNULL(f.total, 0) AS total_Factura
	FROM ventas v
	LEFT JOIN servicios_realizados sr ON sr.id_venta = v.id
	LEFT JOIN facturas f ON f.id_venta = v.id
	WHERE sr.id IS NOT NULL AND
	v.rowversion > CONVERT(ROWVERSION, @startRow) AND
	v.rowversion <= CONVERT(ROWVERSION, @endRow)
END 
GO