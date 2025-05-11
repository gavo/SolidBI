IF NOT EXISTS(SELECT TOP(1) 1  FROM [dbo].[DimServicio]  WHERE [ServicioID] = 0)
BEGIN
	INSERT INTO [dbo].[DimServicio]([ServicioID], [codigo], [nombre_servicio], [precio])
	VALUES( 0,	'', 'Sin Servicio', 0)
END
GO