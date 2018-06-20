
declare @lid_cita int = (select convert(int, MAX(CITA_ID)) + 1  as id_cita from CITA )
DECLARE @ldfecha datetime = convert(datetime, '2017-01-30', 101)
declare @lchora char(6) = '14:00'
declare @lcnumero varchar(3) = '25'
declare @lcturno char(2) = 'M'
declare @lcnombre varchar(60) = '                                                              '
INSERT INTO [SIGSALUD].[dbo].[CITA]([CITA_ID],[CONSULTORIO],[MEDICO],[FECHA_PROGRAMACION],[FECHA_OTORGA],[FECHA_PAGO],[FECHA_LIBRE],[FECHA],[HORA],[TURNO_CONSULTA],[TIPO_PACIENTE],[TIPO_CITA],[PACIENTE],[NOMBRE],[OBSERVACION],
    [PAGOID],[SEGURO],[ESTADO],[NUMERO],[HORA_OTORGA],[TIPO_SOLICITUD],[SITUACION],[USUARIO],[NUMATENCION],[USER_ELIMINACION],[FECHA_HORA_ELIMINACION])
      VALUES (convert(char(9), @lid_cita), '1028', 'WHW', GETDATE() - 8.85, NULL, NULL, NULL, @ldfecha, @lchora, @lcturno, 'N', 'C', ' ', ' ', ' ', ' ','0','1', @lcnumero, @lcnombre, 'P', null, null, '0', null, null)
      
      
      
select * from v_CITA where CONSULTORIO = '1028' and FECHA = CONVERT(datetime, '2017-01-30', 101) and MEDICO = 'WHW' and TURNO_CONSULTA = 'M' order by hora asc



select FECHA, COUNT(fecha) from CITA where CONSULTORIO = '1028' and FECHA > CONVERT(datetime, '2017-01-01', 101) and MEDICO = 'WHW' group by fecha
order by FECHA desc



/*
declare @lcnombre varchar(60) = '                                                            '
update CITA set NOMBRE = @lcnombre where CITA_ID in ('170016721', '170016722', '170016723', '170016724', '170016725', '170016726', '170016727')


*/


