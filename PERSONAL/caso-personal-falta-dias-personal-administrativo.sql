use BDPERSONAL
select DNI_RELOG, * from MAESTRO where NOMBRE like 'calderon%'

select * from relogdigi where Codigo = 7653180 order by Fecha desc

select * from ASISTENCIA where CODIGO = '084652' and MES = 3 and AÑO = 2017 order by DIA  asc

select * from ASISTENCIA where MES = 3 and AÑO = 2017 and dia <> 4

select CODIGO from ASISTENCIA where MES = 3 and AÑO = 2017 and dia <> 4 group by codigo 

select * from MAESTRO where CODIGO in (select CODIGO from ASISTENCIA where MES = 3 and AÑO = 2017 and dia <> 4 group by codigo)


select CODIGO, COUNT(codigo) as cuenta from ASISTENCIA where MES = 3 and AÑO = 2017 group by CODIGO having COUNT(codigo) < 31



select * from MAESTRO where CODIGO in (select CODIGO from ASISTENCIA where MES = 3 and AÑO = 2017 group by CODIGO having COUNT(codigo) < 31)
order by NOMBRE asc


select CODIGO from ASISTENCIA where MES = 3 and AÑO = 2017 group by CODIGO having COUNT(codigo) < 31


select * from asistencia where CODIGO = '054068' and MES = 3 and AÑO = 2017 order by DIA  asc

select * from asistencia where CODIGO = '084045' and MES = 3 and AÑO = 2017 order by DIA  asc

drop table tmp_falta_personal

select * into tmp_falta_personal_total from asistencia where CODIGO = '084045' and MES = 3 and AÑO = 2017 and dia in (22,24,26,28,30) order by DIA  asc

select * from tmp_falta_personal_total
truncate table tmp_falta_personal_total

INSERT INTO [BDPERSONAL].[dbo].[tmp_falta_personal_total]([CODIGO],[CODACT],[DIA],[MES],[AÑO],[TIPO],[HORAI],[HORAS],[HORAI_REG],[HORAS_REG],[HORA_PRG],[MIN_ADIC],[OBSERVACION],[FALTA],[TARDANZA],[PERMISO],[PRODUCTIVA],[INDICADOR],
                  [SITUACION],[HORAI_REG1],[HORAS_REG1],[IdServDepartUnid])
select * from tmp_falta_personal14

use bdpersonal
select * from tmp_falta_personal_total


update tmp_falta_personal set CODIGO = '084025'


select * from ASISTENCIA where CODIGO = '054095'  and  mes = 3 and año = 2017 order by dia asc
drop table tmp_falta_personal4
select * into tmp_falta_personal14 from asistencia where CODIGO = '084045' and MES = 3 and AÑO = 2017 and dia in (22,24,26,28,30) order by DIA  asc

select CODIGO, COUNT(codigo) as cuenta from ASISTENCIA where MES = 3 and AÑO = 2017 group by CODIGO having COUNT(codigo) < 31

select *  from  tmp_falta_personal14
update tmp_falta_personal14 set CODIGO = '084652'




