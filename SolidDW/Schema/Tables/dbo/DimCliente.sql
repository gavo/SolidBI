CREATE TABLE [dbo].[DimCliente]
(
	ClienteSK BIGINT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimCliente PRIMARY KEY,
	ClienteID BIGINT NOT NULL,
	code VARCHAR(255) NOT NULL,
	documento VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	nombre_cliente VARCHAR(255) NOT NULL,
	tipo_documento VARCHAR(255) NOT NULL,
	descuento_grupo_cliente NUMERIC(38, 2) NULL,
	nombre_grupo_cliente VARCHAR(255) NULL,
)
