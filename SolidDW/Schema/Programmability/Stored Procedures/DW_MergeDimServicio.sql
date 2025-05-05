CREATE PROCEDURE [dbo].[DW_MergeDimServicio]
AS
BEGIN
	UPDATE dc
	SET 
		codigo = sc.codigo,
		nombre_servicio = sc.nombre_servicio,
		precio = sc.precio
	FROM [dbo].[DimServicio]        dc
	INNER JOIN [staging].[servicio] sc ON (dc.[ServicioSK]=sc.[ServicioSK])
END
GO