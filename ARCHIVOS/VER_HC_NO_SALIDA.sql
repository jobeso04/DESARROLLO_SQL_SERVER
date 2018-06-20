use SIGSALUD
declare @lfecha varchar(10) = '2016-06-13'

select * from ARCHIVO_MOV where FECHA = CONVERT(datetime, @lfecha, 101) and CONSULTORIO 