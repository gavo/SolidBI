CREATE TABLE [dbo].[productos]
(
	id bigint IDENTITY(1,1) NOT NULL,
	cod_barra varchar(255) NOT NULL,
	nombre_producto varchar(255) NOT NULL,
	nombre_producto_extranjero varchar(255) NOT NULL,
	peso int NOT NULL,
	precio numeric(38,2) NOT NULL,
	um varchar(255) NOT NULL,
	id_producto bigint NULL,
	id_fabricante bigint NULL,
	id_grupo_producto bigint NULL,
	id_proveedor bigint NULL,
	rowversion timestamp NOT NULL,
	CONSTRAINT PK_productos PRIMARY KEY (id),
	CONSTRAINT FK_productos_fabricantes FOREIGN KEY (id_fabricante) REFERENCES dbo.fabricantes(id),
	CONSTRAINT FK_productos_grupo_productos FOREIGN KEY (id_grupo_producto) REFERENCES dbo.grupos_productos(id),
	CONSTRAINT FK_productos_productos FOREIGN KEY (id_producto) REFERENCES dbo.productos(id),
	CONSTRAINT FK_productos_proveedores FOREIGN KEY (id_proveedor) REFERENCES dbo.proveedores(id)
)

GO;