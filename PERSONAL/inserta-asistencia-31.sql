/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 1000 [CODIGO]
      ,[CODACT]
      ,[DIA]
      ,[MES]
      ,[AÑO]
      ,[TIPO]
      ,[HORAI]
      ,[HORAS]
      ,[HORAI_REG]
      ,[HORAS_REG]
      ,[HORA_PRG]
      ,[MIN_ADIC]
      ,[OBSERVACION]
      ,[FALTA]
      ,[TARDANZA]
      ,[PERMISO]
      ,[PRODUCTIVA]
      ,[INDICADOR]
      ,[SITUACION]
      ,[HORAI_REG1]
      ,[HORAS_REG1]
      ,[IdServDepartUnid]
  FROM [BDPERSONAL].[dbo].[asistenciadici] where codigo = '084382'
  
  
  select distinct codigo  FROM [BDPERSONAL].[dbo].[asistenciadici]
  
  
  insert into (CODIGO, CODACT	DIA	MES	AÑO	TIPO	HORAI	HORAS	HORAI_REG	HORAS_REG	HORA_PRG	MIN_ADIC	OBSERVACION	FALTA	TARDANZA	PERMISO	PRODUCTIVA	INDICADOR	SITUACION	HORAI_REG1	HORAS_REG1	IdServDepartUnid
084382	LM	1	12	2015	V	00:00:00	00:00:00	NULL	NULL	D	NULL	NULL	0	0	0	NULL	4	  	NULL	NULL	NULL

)
    insert into [BDPERSONAL].[dbo].[asistenciadici] (CODIGO, CODACT, DIA, MES, AÑO, INDICADOR)
       values ('084382', '', '31', '12', '2015', '4') 
 