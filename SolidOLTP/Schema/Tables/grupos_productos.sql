﻿CREATE TABLE [dbo].[grupos_productos]
(
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre_grupo_producto] [varchar](255) NOT NULL,
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
