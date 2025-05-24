CREATE TABLE [dbo].[grupos_productos]
(
	id bigint IDENTITY(1,1) NOT NULL,
	nombre_grupo_producto varchar(255) NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_grupos_productos PRIMARY KEY (id)
)

GO;