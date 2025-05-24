CREATE TABLE [dbo].[ventas]
(
	id bigint IDENTITY(1,1) NOT NULL,
	descuento numeric(38,2) NOT NULL,
	fecha datetime2(6) NOT NULL,
	sub_total numeric(38,2) NOT NULL,
	total numeric(38,2) NOT NULL,
	id_cliente bigint NOT NULL,
	id_vendedor bigint NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_ventas PRIMARY KEY (id),
	CONSTRAINT FK_ventas_cliente FOREIGN KEY (id_cliente) REFERENCES dbo.clientes(id),
	CONSTRAINT FK_ventas_vendedor FOREIGN KEY (id_vendedor) REFERENCES dbo.vendedores(id)
)

GO;