CREATE TABLE [dbo].[grupo_cliente]
(
	id bigint IDENTITY(1,1) NOT NULL,
	descuento numeric(38,2) NOT NULL,
	nombre_grupo_cliente varchar(255) NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_grupo_cliente PRIMARY KEY (id)
)

GO;