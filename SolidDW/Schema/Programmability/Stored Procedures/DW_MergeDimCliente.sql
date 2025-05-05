CREATE PROCEDURE [dbo].[DW_MergeDimCliente]
AS
BEGIN
	UPDATE dc
	SET code = dc.code,
		documento = dc.documento,
		email = dc.email,
		nombre_cliente = dc.nombre_cliente,
		tipo_documento = dc.tipo_documento,
		descuento_grupo_cliente = dc.descuento_grupo_cliente,
		nombre_grupo_cliente = dc.nombre_grupo_cliente
	FROM [dbo].[DimCliente]        dc
	INNER JOIN [staging].[cliente] sc ON (dc.[ClienteSK]=sc.[ClienteSK])
END
GO