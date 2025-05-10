CREATE PROCEDURE [dbo].[GetClienteChangesByRowVersion]
(
	@startRow BIGINT
	,@endRow BIGINT
)
AS
BEGIN
	SELECT 
		c.id, code, documento, email, nombre_cliente, tipo_documento,
		gc.nombre_grupo_cliente, gc.descuento
	FROM clientes c LEFT JOIN grupo_cliente gc
	ON c.id_grupo_clientes = gc.id
	WHERE c.rowversion > CONVERT(ROWVERSION, @startRow)
	AND c.rowversion <= CONVERT(ROWVERSION, @endRow)
END
GO