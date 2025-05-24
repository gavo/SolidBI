CREATE TABLE [dbo].[vendedores] (
	id bigint IDENTITY(1,1) NOT NULL,
	apellido varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	nombre varchar(255) NOT NULL,
	telefono varchar(255) NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_vendedores PRIMARY KEY (id)
)

GO;