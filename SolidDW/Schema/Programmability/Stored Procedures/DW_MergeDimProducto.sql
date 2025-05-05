CREATE PROCEDURE [dbo].[DW_MergeDimProducto]
AS
BEGIN
	UPDATE dc
	SET 
		cod_barra = sc.cod_barra,
		nombre_producto = sc.nombre_producto,
		nombre_producto_extranjero = sc.nombre_producto_extranjero,
		peso = sc.peso,
		precio = sc.precio,
		um = sc.um,
		id_producto = sc.id_producto,
		nombre_fabricante = sc.nombre_fabricante,
		nombre_grupo_producto = sc.nombre_grupo_producto,
		nombre_proveedor = sc.nombre_proveedor
	FROM [dbo].[DimProducto]        dc
	INNER JOIN [staging].[producto] sc ON (dc.[ProductoSK]=sc.[ProductoSK])
END
GO