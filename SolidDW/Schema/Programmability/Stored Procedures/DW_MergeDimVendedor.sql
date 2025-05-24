CREATE PROCEDURE [dbo].[DW_MergeDimVendedor]
AS
BEGIN
	UPDATE dc
	SET 
		nombre = sc.nombre,
		apellido = sc.apellido,
		email = sc.email,
		telefono = sc.telefono
	FROM [dbo].[DimVendedor]        dc
	INNER JOIN [staging].[vendedor] sc 
	ON (dc.[VendedorSK]=sc.[VendedorSK])
END
GO