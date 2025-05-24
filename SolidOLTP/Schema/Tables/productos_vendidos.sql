CREATE TABLE [dbo].[productos_vendidos]
(
	id bigint IDENTITY(1,1) NOT NULL,
	cantidad int NOT NULL,
	descuento numeric(38,2) NOT NULL,
	precio numeric(38,2) NOT NULL,
	id_producto bigint NOT NULL,
	id_venta bigint NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_producto_vendidos PRIMARY KEY (id),
	CONSTRAINT FK_producto_vendidos_producto FOREIGN KEY (id_producto) REFERENCES dbo.productos(id),
	CONSTRAINT FK_producto_vendidos_ventas FOREIGN KEY (id_venta) REFERENCES dbo.ventas(id)
)

GO;