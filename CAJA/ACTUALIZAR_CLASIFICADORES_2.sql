/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [SIGSALUD].[dbo].[CLASIFICADOR] where clasificador in ('1.3.24.14', '1.3.24.16', '1.3.32.1', '1.3.34.11',
  '1.3.34.12', '1.3.34.13', '1.3.34.14', '1.3.34.15', '1.3.34.16', '1.3.34.17', '1.3.34.21', '1.3.34.23', '1.3.34.24',
  '1.3.34.3')

  SELECT *
  FROM [SIGSALUD].[dbo].[CLASIFICADOR] where clasificador in ('1.3.24.14', '1.3.24.16', '1.3.32.1', '1.3.34.11',
  '1.3.34.12', '1.3.34.13', '1.3.34.14', '1.3.34.15', '1.3.34.16', '1.3.34.17', '1.3.34.21', '1.3.34.23', '1.3.34.24',
  '1.3.34.3') order by clasificador 


  USE [SIGSALUD]
GO

INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
     VALUES ('1.3.24.14', 'CERTIFICADOS', '101', '125', '',1)

INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
     VALUES ('1.3.24.16', 'CARNET Y/O TARJETA DE ATENCION', '101', '125', '',1)

INSERT INTO [SIGSALUD].[dbo].[CLASIFICADOR]([CLASIFICADOR],[NOMBRE],[CONTABLEC],[CONTABLEA],[ABREVIATURA],[ACTIVO])
     VALUES ('1.3.32.1', 'SERVICIO DE TRANSPORTE', '101', '125', '',1)
	  



 

1.3.32.1
