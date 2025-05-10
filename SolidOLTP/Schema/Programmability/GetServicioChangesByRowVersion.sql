CREATE PROCEDURE [dbo].[GetServicioChangesByRowVersion]
(@startRow BIGINT, @endRow BIGINT) AS 
BEGIN
	SELECT 
		s.id AS ServicioID,
		s.codigo,
		s.nombre_servicio,
		s.precio
	FROM servicios AS s
	WHERE s.rowversion > CONVERT(ROWVERSION, @startRow)
	AND s.rowversion <= CONVERT(ROWVERSION, @endRow)
END 
GO