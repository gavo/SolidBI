CREATE PROCEDURE [dbo].[GetVendedorChangesByRowVersion]
(
	@startRow BIGINT
	,@endRow BIGINT
)
AS
BEGIN
	SELECT 
		c.id, c.nombre, c.apellido, c.email, c.telefono
	FROM vendedores c 
	WHERE c.rowversion > CONVERT(ROWVERSION, @startRow)
	AND c.rowversion <= CONVERT(ROWVERSION, @endRow)
END
GO