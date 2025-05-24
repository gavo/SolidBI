CREATE TABLE dbo.clientes
(
	id bigint IDENTITY(1,1) NOT NULL,
	code varchar(255) NOT NULL,
	documento varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	nombre_cliente varchar(255) NOT NULL,
	tipo_documento varchar(255) NOT NULL,
	id_grupo_clientes bigint NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_clientes PRIMARY KEY (id),
	CONSTRAINT FK_clientes_grupo_cliente FOREIGN KEY (id_grupo_clientes) REFERENCES dbo.grupo_cliente(id)
)

GO;

ALTER TABLE dbo.clientes WITH NOCHECK ADD CONSTRAINT CK_clientes_tipo_documento
CHECK (([tipo_documento]='NIT' OR [tipo_documento]='CI'))

GO;