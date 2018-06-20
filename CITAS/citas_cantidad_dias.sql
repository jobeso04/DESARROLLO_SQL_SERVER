use SIGSALUD
 select CONSULTORIO, NOMBRE from CONSULTORIO WHERE TIPO = 'C' AND LEN(CONSULTORIO) >=3 order by NOMBRE asc 

declare @fecha1 datetime = CONVERT(DATETIME, '2017-03-01', 101)
declare @mes int = 3
declare @anio int = 2017
declare @fecha2 datetime
declare @ndias varchar(10)
declare @numero_dias int 
declare @lnumeros_turnos int  = 8
set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')
SET @numero_dias = day(@fecha2)

select * from cita where consultorio = '2027' and FECHA = @fecha1 and TURNO_CONSULTA = 'M' and CONVERT(int, NUMERO) > @lnumeros_turnos
select * from cita where consultorio = '2027' and FECHA = @fecha1 and TURNO_CONSULTA = 'T'  and CONVERT(int, NUMERO) > @lnumeros_turnos



select * from cita where consultorio = '2027' and FECHA = @fecha1 and TURNO_CONSULTA = 'M' and CONVERT(int, NUMERO) > @lnumeros_turnos
select * from cita where consultorio = '2027' and FECHA = @fecha1 and TURNO_CONSULTA = 'T'  and CONVERT(int, NUMERO) > @lnumeros_turnos



delete from cita where consultorio = '2027' and FECHA = @fecha1 and TURNO_CONSULTA = 'T'  and CONVERT(int, NUMERO) > @lnumeros_turnos





select * from cita where consultorio = '2027' and FECHA between  CONVERT(DATETIME, '2017-03-01', 101) and  CONVERT(DATETIME, '2017-03-31', 101) and TURNO_CONSULTA = 'M' and CONVERT(int, NUMERO) > @lnumeros_turnos

select fecha, COUNT(fecha) as citas from cita where consultorio = '2027' and FECHA between  CONVERT(DATETIME, '2017-03-01', 101) and  CONVERT(DATETIME, '2017-03-31', 101) and TURNO_CONSULTA = 'T'
 group by FECHA order by FECHA asc
 
 select * from CITA where CONSULTORIO = '2027' and FECHA = CONVERT(datetime, '2017-03-06', 101) and TURNO_CONSULTA = 'T' AND CONVERT(int, NUMERO) > 8
 
 
 




