USE SIGSALUD
declare @lid_cita int = (select convert(int, MAX(CITA_ID)) + 1  as id_cita from CITA)
DECLARE @ldfecha datetime = convert(datetime, '2017-05-17', 101)
declare @lchora char(6) = ''
declare @lcnumero varchar(3) = '33'
declare @lcturno char(2) = 'T'
declare @lcnombre varchar(60) = '                                                              '
DECLARE @lcconsultorio varchar(8) = '1034'
declare @lcmedico varchar(4) = 'CMP'
INSERT INTO [SIGSALUD].[dbo].[CITA]([CITA_ID],[CONSULTORIO],[MEDICO],[FECHA_PROGRAMACION],[FECHA_OTORGA],[FECHA_PAGO],[FECHA_LIBRE],[FECHA],[HORA],[TURNO_CONSULTA],[TIPO_PACIENTE],[TIPO_CITA],[PACIENTE],[NOMBRE],[OBSERVACION],
    [PAGOID],[SEGURO],[ESTADO],[NUMERO],[HORA_OTORGA],[TIPO_SOLICITUD],[SITUACION],[USUARIO],[NUMATENCION],[USER_ELIMINACION],[FECHA_HORA_ELIMINACION])
      VALUES (convert(char(9), @lid_cita), @lcconsultorio, @lcmedico, GETDATE() - 0.15, NULL, NULL, NULL, @ldfecha, @lchora, @lcturno, 'N', 'C', ' ', ' ', ' ', ' ','0','1', @lcnumero, @lcnombre, 'P', null, null, '0', null, null)
      

select FECHA, COUNT(FECHA) AS CITAS from CITA where MEDICO = 'CMP' GROUP BY FECHA ORDER BY FECHA DESC
SELECT * FROM CITA WHERE MEDICO = 'CMP' AND FECHA = CONVERT(DATETIME, '2017-05-31', 101) AND TURNO_CONSULTA = 'T' ORDER BY CITA_ID ASC

 