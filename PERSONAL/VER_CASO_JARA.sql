USE BDPERSONAL

DECLARE @lcodigo varchar(10) = '084316' /* codigo del perosnal que no tiene horario */
DECLARE @lcodigo2 varchar(10) = '084253' /* codigo del perosnal que si tiene horario */
DECLARE @lanio varchar(4) = '2016'
DECLARE @lmes varchar(2) = '1'


select * into TMPASISUNICA from ASISTENCIA where CODIGO = @lcodigo2  and AÑO = @lanio and MES = @lmes order by DIA asc
update TMPASISUNICA set CODIGO = @lcodigo
INSERT INTO [BDPERSONAL].[dbo].[ASISTENCIA]
           ([CODIGO]
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
           ,[IdServDepartUnid])
SELECT [CODIGO]
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
  FROM [BDPERSONAL].[dbo].[TMPASISUNICA]
drop table [BDPERSONAL].[dbo].[TMPASISUNICA]
select * from ASISTENCIA where CODIGO = @lcodigo  and AÑO = @lanio and MES = @lmes order by DIA asc
