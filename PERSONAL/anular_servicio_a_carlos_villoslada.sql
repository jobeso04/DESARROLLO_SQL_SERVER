use BDPERSONAL
/* Añadiendo otro servidor */
/* exec sp_addlinkedserver 'sqlproduccion' */
declare @lcodigo varchar(12) = '084389'
select * from  [sqlproduccion].bdpersonal.dbo.asistencia where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo
/* update [sqlproduccion].bdpersonal.dbo.asistencia set codact = 'D' where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo */

/* INSERT INTO [sqlproduccion].bdpersonal.dbo.asistencia 
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
      ,[IdServDepartUnid] from  [desarrollo-12].bdpersonal.dbo.asistencia where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo */



select * from [desarrollo-12].bdpersonal.dbo.maestro where CODIGO = @lcodigo
select * from  [desarrollo-12].bdpersonal.dbo.asistencia where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo
select * from  [sqlproduccion].bdpersonal.dbo.asistencia where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo



/* select * from ASISTENCIA where AÑO = 2016 and MES = 3 and CODIGO = @lcodigo */
/* update ASISTENCIA set IdServDepartUnid = '' where AÑO = 2016 and MES = 3 and CODIGO = '084389' */
/* delete from ASISTENCIA where AÑO = 2016 and MES = 3 and CODIGO = '084389' */
