/* actualizar los atenciones de martinez - Infectologia */

DECLARE @lfechainicial varchar(10) = '2016-07-01'
DECLARE @lfechafinal varchar(10) = '2016-07-31'
UPDATE ATENCIONC SET CONSULTORIO = '1030' WHERE FECHA BETWEEN CONVERT(DATETIME, @lfechainicial, 101) AND CONVERT(DATETIME, @lfechafinal, 101)  AND MEDICO = 'MHT'


SELECT * 
  FROM [SIGSALUD].[dbo].[HIS]
  where PERIODO='072016'  AND PROF_CITA LIKE 'MARTINEZ HER%'
  
