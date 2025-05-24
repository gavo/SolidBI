CREATE TABLE [dbo].[servicios]
(
	id bigint IDENTITY(1,1) NOT NULL,
	codigo varchar(255) NULL,
	nombre_servicio varchar(255) NULL,
	precio numeric(38,2) NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_servicios PRIMARY KEY (id)
)

GO;