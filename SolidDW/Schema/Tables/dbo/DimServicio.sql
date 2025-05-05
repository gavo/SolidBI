CREATE TABLE [dbo].[DimServicio]
(
	[ServicioSK] BIGINT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimServicio PRIMARY KEY,
	[ServicioID] [bigint] NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[nombre_servicio] [varchar](255) NOT NULL,
	[precio] [numeric](38, 2) NOT NULL
)