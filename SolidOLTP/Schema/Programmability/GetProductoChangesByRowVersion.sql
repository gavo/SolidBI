CREATE PROCEDURE [dbo].[GetProductoChangesByRowVersion]
(@startRow BIGINT, @endRow BIGINT) AS 
BEGIN
	SELECT 
		p.id AS ProductoID,
		p.cod_barra,
		p.nombre_producto,
		p.nombre_producto_extranjero,
		p.peso,
		p.precio,
		p.um,
		p.id_producto,
		f.nombre_fabricante,
		g.nombre_grupo_producto,
		prov.nombre_proveedor
	FROM productos AS p
	LEFT JOIN fabricantes AS f
	ON p.id_fabricante = f.id
	LEFT JOIN grupos_productos AS g
	ON p.id_grupo_producto = g.id
	LEFT JOIN proveedores AS prov
	ON p.id_proveedor = prov.id
	WHERE p.rowversion > CONVERT(ROWVERSION, @startRow)
	AND p.rowversion <= CONVERT(ROWVERSION, @endRow)
END 
GO