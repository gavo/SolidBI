CREATE TABLE [dbo].[DimClientes](
	[ClientesSK] [int] IDENTITY(1,1)			NOT NULL CONSTRAINT PK_DimClientes PRIMARY KEY,
	[id] [bigint]								NOT NULL,
	[code] [varchar](255)						NOT NULL,
	[documento] [varchar](255)					NOT NULL,
	[email] [varchar](255)						NOT NULL,
	[nombre_cliente] [varchar](255)				NOT NULL,
	[tipo_documento] [varchar](255)				NOT NULL,
	[descuento_grupo_cliente] [numeric](38, 2)	NULL,
	[nombre_grupo_cliente] [varchar](255)		NULL,
)
