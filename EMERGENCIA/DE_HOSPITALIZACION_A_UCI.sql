/* agregar paciente de hospitalizacion a UCI */

DECLARE @lid_emergencia char(8) 
set @lid_emergencia = (Select CONVERT(INT, (Max(Emergencia_Id)) + 1)  as Max From Emergencia Where Left(Emergencia_ID,2)= RIGHT(CONVERT(VARCHAR(4), YEAR(GETDATE())),2))
set @lid_emergencia = (select case when @lid_emergencia IS null then RIGHT(CONVERT(VARCHAR(4), YEAR(GETDATE())),2) + '000001' else @lid_emergencia end) 
DECLARE @lc_orden varchar(4) 
set @lc_orden = (Select right('000' + convert(varchar(3), (convert(int, max(orden)) + 1)),3)   from emergencia where fecha = CONVERT(date, getdate(), 102))
set @lc_orden = (select case when @lc_orden IS null then '001' else @lc_orden end) 
select @lid_emergencia, @lc_orden



select CONVERT(date, getdate(), 102) 

select * from PACIENTE where paciente = '2008049250'
select * from EMERGENCIA where  emergencia_id = '17025463'

select * from EMERGENCIA where  fecha = convert(datetime, '2017-06-22', 101)  order by ORDEN asc


select PACIENTE, HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES, SEXO, FECHA_NACIMIENTO, EDAD, DOCUMENTO, SEGURO, consultorio from PACIENTE where NOMBRES like 'obeso%'

select PACIENTE, HISTORIA, PATERNO, MATERNO, NOMBRE, NOMBRES, SEXO, FECHA_NACIMIENTO, EDAD, DOCUMENTO, SEGURO, consultorio 
from PACIENTE where NOMBRES like '%obeso%' order by NOMBRES asc

select * from PACIENTE where PACIENTE = '2008064422'

select PACIENTE, NOMBRES as nombre from PACIENTE where NOMBRES LIKE '%obeso%' order by NOMBRES asc


select PACIENTE as MEDICO, NOMBRES as NOMBRE, DOCUMENTO as DNI from [SIGSALUD].[dbo].[PACIENTE] where NOMBRES LIKE '%OBESO%'

select PACIENTE, NOMBRES from [SIGSALUD].[dbo].[PACIENTE] where NOMBRES LIKE '%garcia%' order by nombres asc

select PACIENTE, NOMBRES from [SIGSALUD].[dbo].[PACIENTE] where NOMBRES LIKE '%garcia%'


paciente=2010187705&nombre_paciente=OBESO+CAMONES+JOSE+CARLOS

select PACIENTE, NOMBRES from [SIGSALUD].[dbo].[PACIENTE] where PACIENTE = '2010187705'

