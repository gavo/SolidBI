CREATE TABLE [staging].[servicio]
(
	[ServicioSK] [bigint] NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[nombre_servicio] [varchar](255) NOT NULL,
	[precio] [numeric](38, 2) NOT NULL
);
GO