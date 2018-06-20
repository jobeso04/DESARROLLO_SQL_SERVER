declare @lc_consultorio varchar(5) = '5070'
declare @lc_medico varchar(4) = 'QOM'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 5
declare @nnumero int = 13
declare @lc_turno_consulta varchar(1) = 'M'

/*
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '02'  WHERE CITA_ID = '170248207' 
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '03'  WHERE CITA_ID = '170248208' 
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '04'  WHERE CITA_ID = '170255540'  
  UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '05'  WHERE CITA_ID = '170255541'
  UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '06'  WHERE CITA_ID = '170255539'
  UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '07'  WHERE CITA_ID = '170248210'
 UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '08'  WHERE CITA_ID = '170255545'  
  
  
*/

SELECT CITA_ID, NUMERO, TIPO_CITA   from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio  and day(FECHA) = @lndia  
   and TURNO_CONSULTA = @lc_turno_consulta   ORDER BY NUMERO 
   
   
   
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '02'  WHERE CITA_ID = '170248291' 
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '03'  WHERE CITA_ID = '170255563' 
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '04'  WHERE CITA_ID = '170255564'  
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '05'  WHERE CITA_ID = '170255565'
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '06'  WHERE CITA_ID = '170255566'
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '07'  WHERE CITA_ID = '170255567'
UPDATE [SIGSALUD].[dbo].[CITA] SET NUMERO = '08'  WHERE CITA_ID = '170255568'
   