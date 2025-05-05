CREATE TABLE [dbo].[servicios]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NOT NULL,
	[nombre_servicio] [varchar](255) NOT NULL,
	[precio] [numeric](38, 2) NOT NULL,
	[rowversion] [timestamp] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[id] ASC
) WITH (
	PAD_INDEX = OFF, 
	STATISTICS_NORECOMPUTE = OFF, 
	IGNORE_DUP_KEY = OFF,
	ALLOW_ROW_LOCKS = ON, 
	ALLOW_PAGE_LOCKS = ON, 
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
) ON [PRIMARY]
) ON [PRIMARY]
GO
