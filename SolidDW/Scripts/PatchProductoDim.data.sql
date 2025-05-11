IF NOT EXISTS(SELECT TOP(1) 1  FROM [dbo].[DimProducto]  WHERE [ProductoID] = 0)
BEGIN
	INSERT INTO [dbo].[DimProducto](
        [ProductoID],
        [cod_barra],
        [nombre_producto],
        [nombre_producto_extranjero],
        [peso],
        [precio],
        [um],
        [id_producto],
        [nombre_fabricante],
        [nombre_grupo_producto],
        [nombre_proveedor])
     VALUES (0,'','Sin Producto','Without Product',0, 0, '',0,'','','')
END
GO