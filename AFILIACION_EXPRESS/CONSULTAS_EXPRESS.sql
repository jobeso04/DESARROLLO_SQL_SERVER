/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT [PACIENTE]
      ,[HISTORIA]
      ,[PATERNO]
      ,[MATERNO]
      ,[NOMBRE]
      ,[NOMBRES]
      ,[SEXO]
      ,[FECHA_APERTURA]
      ,[HORA_APERTURA]
      ,[EDAD]
      ,[DOCUMENTO]
      ,[CONSULTORIO]
      ,[FECHA_NACIMIENTO]
      ,[ESTADO_CIVIL]
      ,[DIRECCION]
      ,[DISTRITO]
  FROM [SIGSALUD].[dbo].[V_PACIENTE_EXPRESS]
  
  select SYSINSERT  FROM [SIGSALUD].[dbo].[PACIENTE]
  
  declare @lnombusca varchar(200) = 'OLANO C'
      select PACIENTE, HISTORIA, PATERNO, MATERNO, nombre, nombres, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, CONSULTORIO, documento, ESTADO_CIVIL, FECHA_NACIMIENTO, direccion, distrito 
         from V_PACIENTE_EXPRESS where nombres like '' + @lnombusca + '%' ORDER BY  nombres DESC   
         
         
    
    
    exec dbo.EXPRESS_BUSCAR_APELLIDO 'OLANO C'
    