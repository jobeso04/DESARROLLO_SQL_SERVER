use bdpersonal
declare @fecha datetime
declare @ndias as int 
set @fecha = '2017-07-01'
declare @fecha_dia_uno date = DATEADD(day, -datepart(day, @fecha) +1, @fecha)
set @ndias = (select DATEDIFF(dd, @fecha_dia_uno, DATEADD(mm, 1, @fecha_dia_uno))) 
select CODIGO, COUNT(codigo) as cnt from [BDPERSONAL].[dbo].[ASISTENCIA]
 where MES = 7 and AÑO = 2017  group by CODIGO having  COUNT(codigo) > @ndias order by COUNT(codigo) desc
 



select distinct * into asistencia_x1 from ASISTENCIA where CODIGO =  '084132' and MES = 7 and AÑO = 2017 order by DIA asc
delete from ASISTENCIA where CODIGO =  '084132' and MES = 7 and AÑO = 2017

insert into ASISTENCIA
select * from asistencia_x1


 declare @fecha_actual datetime = CONVERT(DATETIME, '2017-07-01', 101)
 declare @fecha1 datetime =  CONVERT(datetime, DATEADD(dd,-(DAY(@fecha_actual)-1),@fecha_actual),101) 
 declare @fecha2 datetime
 declare @ndias varchar(10)
 declare @lt_tmp_consul table (CONSULTORIO char(6), NOMBRE_CONSULTORIO varchar(50))
 set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
 set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')

select @ndias

declare @fecha datetime
set @fecha = '2017-07-01'
-- Obtenemos el primer dia del mes de interés
declare @fecha_dia_uno date = DATEADD(day, -datepart(day, @fecha) +1, @fecha)
select DATEDIFF(dd, @fecha_dia_uno, DATEADD(mm, 1, @fecha_dia_uno))