use SIGSALUD
DECLARE @lfechainicial varchar(10) = '2017-03-01'
DECLARE @lfechafinal varchar(10) = '2017-03-30'
UPDATE ATENCIONC SET CONSULTORIO = '1030' WHERE FECHA BETWEEN CONVERT(DATETIME, @lfechainicial, 101) AND CONVERT(DATETIME, @lfechafinal, 101)  AND MEDICO = 'MHT' 
update dbo.ATENCIONC set turno_consulta = 'M' where  fecha BETWEEN CONVERT(DATETIME, @lfechainicial, 101) AND CONVERT(DATETIME, @lfechafinal, 101) and TURNO_CONSULTA = ''
update dbo.ATENCIONC set turno_consulta = 'M' where fecha BETWEEN CONVERT(DATETIME, @lfechainicial, 101) AND CONVERT(DATETIME, @lfechafinal, 101) and TURNO_CONSULTA = 'I'




 