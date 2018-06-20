use sigsalud	
declare @lfechainicial varchar(13) = '2016-05-01'
declare @lfechafinal varchar(13) = '2016-05-31'
TRUNCATE TABLE [SIGSALUD].[dbo].[TMP_REJEPRO]
INSERT INTO [SIGSALUD].[dbo].[TMP_REJEPRO]([NOMBRECONSULTORIO],[MEDICO],[NOMBRE_MEDICO])
SELECT  NOMCONSULTORIO AS NOMBRECONSULTORIO, MEDICO, NOMBRE_MEDICO FROM V_ATENCIONC
         WHERE fecha between convert(datetime, @lfechainicial, 101) and convert(datetime, @lfechafinal, 101)   GROUP BY MEDICO, NOMCONSULTORIO, NOMBRE_MEDICO
UPDATE  [SIGSALUD].[dbo].[TMP_REJEPRO] SET NOMBRECONSULTORIO =  REPLACE(NOMBRECONSULTORIO, '1', '')
UPDATE  [SIGSALUD].[dbo].[TMP_REJEPRO] SET NOMBRECONSULTORIO =  REPLACE(NOMBRECONSULTORIO, '2', '')
UPDATE  [SIGSALUD].[dbo].[TMP_REJEPRO] SET NOMBRECONSULTORIO =  REPLACE(NOMBRECONSULTORIO, '3', '')
UPDATE  [SIGSALUD].[dbo].[TMP_REJEPRO] SET NOMBRECONSULTORIO =  REPLACE(NOMBRECONSULTORIO, '4', '')
UPDATE  [SIGSALUD].[dbo].[TMP_REJEPRO] SET NOMBRECONSULTORIO =  REPLACE(NOMBRECONSULTORIO, '5', '')
TRUNCATE TABLE dbo.TMP_REJEPRO2
INSERT INTO [SIGSALUD].[dbo].[TMP_REJEPRO2]([NOMBRECONSULTORIO],[MEDICO],[NOMBRE_MEDICO])
SELECT NOMBRECONSULTORIO, MEDICO, NOMBRE_MEDICO   FROM dbo.TMP_REJEPRO GROUP BY NOMBRECONSULTORIO, MEDICO, NOMBRE_MEDICO ORDER BY NOMBRECONSULTORIO ASC 
SELECT * FROM dbo.TMP_REJEPRO2 order by nombre_medico asc



declare @medico varchar(4) = 'SEM'
declare @codigomedico varchar(10) = '084357'
declare @lfechainicial varchar(13) = '2016-05-01'
declare @lfechafinal varchar(13) = '2016-05-31'

use SIGSALUD
select COUNT(*) ATENCIONES   from ATENCIONC where fecha between convert(datetime, @lfechainicial, 101) and convert(datetime, @lfechafinal, 101) and MEDICO = @medico
   and MEDICO = @medico AND ID_CITA IN (
SELECT CITA_ID FROM V_CITA  WHERE fecha between convert(datetime, @lfechainicial, 101) and convert(datetime, @lfechafinal, 101) and MEDICO = @medico AND ESTADO = '4')

SELECT NOMBRECONSULTORIO, NOMBRE_MEDICO, EJECUTADO, ATENCIONES, PROGRAMADO FROM dbo.TMP_REJEPRO2 order by nombreconsultorio, nombre_medico asc


select FECHA, TURNO   from ATENCIONC where fecha between convert(datetime, @lfechainicial, 101) and convert(datetime, @lfechafinal, 101) and MEDICO = @medico
 group by fecha, TURNO 
  


 

use SIGSALUD
select FECHA, TURNO   from ATENCIONC where MONTH(FECHA) = @lmes AND YEAR(FECHA)= @lanio AND MONTH(FECHA) = @lmes2 AND YEAR(FECHA)= @lanio2 and MEDICO = @medico
 group by fecha, TURNO */

use SIGSALUD
select COUNT(*) ATENCIONES   from ATENCIONC where MONTH(fecha) between @lmes and @lmes2 and year(fecha) = @lanio and MEDICO = @medico AND ID_CITA IN (
SELECT CITA_ID FROM V_CITA  WHERE MONTH(FECHA) = 5 AND YEAR(FECHA)= 2016 AND MEDICO = 'SEM' AND ESTADO = '4')

