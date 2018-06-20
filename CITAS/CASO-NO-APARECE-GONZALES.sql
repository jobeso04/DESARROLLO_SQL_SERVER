use SIGSALUD
select * from CONSULTORIO where NOMBRE like 'reha%'
select * from CONSULTORIO_PARAMETRO where consultorio = '1028'
select * from ROLACTIVIDAD where PERIODO = '201605' and CONSULTORIO = '1028'