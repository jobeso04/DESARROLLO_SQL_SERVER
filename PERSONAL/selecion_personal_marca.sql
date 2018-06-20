USE BDPERSONAL
/*
SELECT * FROM dbo.ServicioMaestro
SELECT * FROM dbo.ServicioDepartUnidad
SELECT IdDepartUnid FROM dbo.ServicioDepartUnidad WHERE DNIACCESO = '73351268'
SELECT * FROM dbo.ServicioMaestro WHERE IdDepartUnid IN (SELECT IdDepartUnid FROM dbo.ServicioDepartUnidad WHERE DNIACCESO = '73351268')
SELECT * FROM dbo.ServicioMaestro WHERE IdDepartUnid IN (SELECT IdDepartUnid FROM dbo.ServicioDepartUnidad WHERE DNIACCESO = '73351268')
*/

/* selecciona */
declare @lcdni varchar(13) = '73351268'
SELECT DNI, CODIGO, NOMBRE, dni_relog FROM V_MAESTRO WHERE CODIGO IN 
  (SELECT CODIGO FROM dbo.ServicioMaestro WHERE IdDepartUnid IN (SELECT IdDepartUnid FROM dbo.ServicioDepartUnidad WHERE DNIACCESO = @lcdni))
and DNI_RELOG is not null  
UNION ALL   
SELECT DNI, CODIGO, NOMBRE, dni_relog FROM V_MAESTRO WHERE CODUNIDADORG IN (SELECT CODIGO FROM [BDPERSONAL].[dbo].[DepartamentoUnidad] WHERE IdDepartUnid = (SELECT DISTINCT  IdDepartUnid FROM dbo.ServicioDepartUnidad WHERE DNIACCESO = @lcdni))
and DNI_RELOG is not null
