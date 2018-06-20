declare @lc_consultorio varchar(5) = '5060'
declare @lc_medico varchar(4) = 'TSR'
declare @lnmes int = 12
declare @lnanio int = 2017
DECLARE @lndia int = 14
declare @nnumero int = 19

DELETE FROM [SIGSALUD].[dbo].[CITA]  where CONSULTORIO = @lc_consultorio  and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes
 AND YEAR(FECHA) = @lnanio AND day(fecha) = @lndia AND TIPO_CITA = 'D' 
 
 



SELECT * FROM [SIGSALUD].[dbo].[CITA]  where CONSULTORIO = @lc_consultorio  and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes
 AND YEAR(FECHA) = @lnanio AND day(fecha) = @lndia AND TIPO_CITA <> 'D' 
 
 
 
 
 
   
   


UPDATE [SIGSALUD].[dbo].[CITA] SET CONSULTORIO = '5060'  where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio 
   

SELECT * FROM ARCHIVO_MOV WHERE  CONSULTORIO = '5080'  AND MEDICO  = 'TSR' AND FECHA BETWEEN  CONVERT(DATETIME, '2017-12-06', 101)
AND  CONVERT(DATETIME, '2017-12-30', 101)



UPDATE  ARCHIVO_MOV SET CONSULTORIO = '5060' WHERE  CONSULTORIO = '5080'  AND MEDICO  = 'TSR' AND FECHA BETWEEN  CONVERT(DATETIME, '2017-12-06', 101)
AND  CONVERT(DATETIME, '2017-12-31', 101)



SELECT CONVERT(DATETIME, '2017-12-06', 101)


UPDATE ARCHIVO_MOV SET CONSULTORIO = '5060' WHERE ID_CITA = '170252420' 

UPDATE [SIGSALUD].[dbo].[ARCHIVO_MOV] SET CONSULTORIO = '5060'  WHERE 
CONSULTORIO = '5080' AND TURNO = 'M' AND MEDICO  = 'TSR' AND FECHA = CONVERT(DATETIME, '2017-12-06', 103)




select * from [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) = @lndia 
      ORDER BY FECHA 



UPDATE [SIGSALUD].[dbo].[CITA] SET CONSULTORIO = '5060'  where CONSULTORIO = @lc_consultorio
   and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio and day(fecha) = @lndia 
   
   

    
delete from  [SIGSALUD].[dbo].[CITA] where CONSULTORIO = @lc_consultorio and MEDICO = @lc_medico AND MONTH(FECHA) = @lnmes AND YEAR(FECHA) = @lnanio
  and day(fecha) >= @lndia  AND CONVERT(INT, NUMERO) >= @nnumero  and estado = 1