CREATE DATABASE azurefunction1;
USE azurefunction1;

CREATE TABLE [dbo].[logs](
	[ID] [uniqueidentifier] NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [nvarchar](max) NULL
) ON [PRIMARY]


CREATE TABLE [dbo].[datos](
	[AGENTE] [varchar](4) NULL,
	[DEMANDA] [numeric](18, 2) NULL
) ON [PRIMARY]

INSERT INTO datos ( AGENTE, DEMANDA )
VALUES
('ABCD', 123.45),
('PPPP', 6789.26),
('PEPE', 1567.45)


SELECT * FROM datos

SELECT * FROM logs



















































