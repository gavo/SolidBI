CREATE TABLE [dbo].[clientes](
	[id] [bigint] IDENTITY(1,1)		NOT NULL,
	[code] [varchar](255)			NOT NULL,
	[documento] [varchar](255)		NOT NULL,
	[email] [varchar](255)			NOT NULL,
	[nombre_cliente] [varchar](255) NOT NULL,
	[tipo_documento] [varchar](255) NOT NULL,
	[id_grupo_clientes] [bigint]	NULL,
	[rowversion] [timestamp]		NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (
	PAD_INDEX = OFF, 
	STATISTICS_NORECOMPUTE = OFF, 
	IGNORE_DUP_KEY = OFF, 
	ALLOW_ROW_LOCKS = ON, 
	ALLOW_PAGE_LOCKS = ON,
	OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FKi9l4jekcr994wk9byusnoaxqq] FOREIGN KEY([id_grupo_clientes])
REFERENCES [dbo].[grupo_cliente] ([id])
GO

ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FKi9l4jekcr994wk9byusnoaxqq]
GO

ALTER TABLE [dbo].[clientes]  WITH CHECK ADD CHECK  (([tipo_documento]='NIT' OR [tipo_documento]='CI'))
GO
