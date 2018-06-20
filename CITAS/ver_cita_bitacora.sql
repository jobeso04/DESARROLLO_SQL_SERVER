use sigsalud
select * from BITACORA where TRANSACCION =  'DELETE' AND MODULO = 'ADMISION'  and month(fecha) >= 1 and year(fecha) = 2017 and USUARIORED = 'jlozano' order by FECHA desc


select * from Cita WHERE Cita_id='170103060'

select * from Cita WHERE Cita_id='170105717'

1016  

mps

select * from MEDICO where medico = 'mps'


select * from Cita WHERE Cita_id in ('170105720'

select * from v_Cita WHERE Cita_id in ('170103050', '170103051')

select * from v_Cita WHERE Cita_id in ('170105721')


select * from v_Cita WHERE Cita_id in ('170113162')

select * from v_Cita WHERE Cita_id in ('170113353')


select * from v_Cita WHERE Cita_id in ('170105727', '170105730', '170105732', 170105735)


use SIGSALUD
select * from CITA where consultorio = '1011' and MEDICO = 'MTA'  and month(fecha) = 6 and year(fecha) = 2017 and day(fecha) = 1 order by TURNO_CONSULTA asc


use SIGSALUD
select * from CITA where consultorio = '1011' and MEDICO = 'MTA'  and month(fecha) = 6 and year(fecha) = 2017 and day(fecha) = 1 order by FECHA_PROGRAMACION asc



1011  
