CREATE TABLE [dbo].[servicios_realizados]
(
	id bigint IDENTITY(1,1) NOT NULL,
	descuento numeric(38,2) NOT NULL,
	observaciones varchar(255) NULL,
	precio numeric(38,2) NOT NULL,
	id_servicio bigint NOT NULL,
	id_venta bigint NOT NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_servicios_realizados PRIMARY KEY (id),
	CONSTRAINT FK_servicios_realizados_servicio FOREIGN KEY (id_servicio) REFERENCES dbo.servicios(id),
	CONSTRAINT FK_servicios_realizados_venta FOREIGN KEY (id_venta) REFERENCES dbo.ventas(id)
)

GO;