CREATE TABLE dbo.facturas
(
	id bigint IDENTITY(1,1) NOT NULL,
	credito_fiscal numeric(38,2) NOT NULL,
	fecha datetime2(6) NOT NULL,
	nit varchar(255) NOT NULL,
	nro varchar(255) NOT NULL,
	razon_social varchar(255) NOT NULL,
	total numeric(38,2) NOT NULL,
	id_venta bigint NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_facturas PRIMARY KEY (id),
	CONSTRAINT FK_facturas_ventas FOREIGN KEY (id_venta) REFERENCES dbo.ventas(id)
)

GO;