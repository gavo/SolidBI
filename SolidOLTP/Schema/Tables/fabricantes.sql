CREATE TABLE dbo.fabricantes(
	id bigint IDENTITY(1,1) NOT NULL,
	nombre_fabricante varchar(255) NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_fabricantes PRIMARY KEY (id)
)

GO;
