﻿CREATE TABLE [dbo].[DimServicio]
(
	[ServicioSK] BIGINT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimServicio PRIMARY KEY,
	[ServicioID] BIGINT NOT NULL,
	[codigo] VARCHAR(255) NOT NULL,
	[nombre_servicio] VARCHAR(255) NOT NULL,
	[precio] NUMERIC(38, 2) NOT NULL
);
GO