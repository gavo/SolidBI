CREATE TABLE [dbo].[proveedores]
(
	id bigint IDENTITY(1,1) NOT NULL,
	nombre_proveedor varchar(255) NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_proveedores PRIMARY KEY (id)
)

GO;

