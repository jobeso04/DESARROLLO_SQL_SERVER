use sigsalud
select * from CONSULTORIO ORDER BY NOMBRE ASC
select * from CONSULTORIO where CONSULTORIO in ('1016', '2027', '5050', '5010')

select * from CITA where FECHA between CONVERT(datetime, '2016-12-01', 101) and  CONVERT(datetime, '2016-12-31', 101) ORDER BY FECHA ASC


update CONSULTORIO_PARAMETRO  set CITADOS_N = '18',  CITADOS_C = '18', CITADOS_O = '30', TIEMPO_N = 15, TIEMPO_C = '15'
 where TURNO_CONSULTA in ('M', 'T')
 
 select * 
 
select CONSULTORIO from CITA  where FECHA_PROGRAMACION between CONVERT(datetime, '2016-12-01', 101) and  CONVERT(datetime, '2016-12-31 12:59:00', 101)
    group by CONSULTORIO 
    


select CONSULTORIO  from CITA where FECHA between CONVERT(datetime, '2016-12-01', 101) and  CONVERT(datetime, '2016-12-31', 101)group by consultorio

SELECT MAX(CITA_ID) + 1 AS IDCITA_NUEVO FROM CITA 

SELECT * FROM CITA ORDER BY FECHA DESC
SELECT * FROM CITA WHERE CITA_ID = '160180610'

160162124

DECLARE @lidcita varchar(13) = (SELECT MAX(CITA_ID) + 1 AS IDCITA_NUEVO FROM CITA) 
DECLARE @ldfechaprogramacion datetime = (select MAX(fecha_programacion) + 0.001 as fecha from CITA where consultorio = '5010' and turno_consulta = 'M' and FECHA = CONVERT(datetime, '2016-12-02', 101))
DECLARE @ldfecha datetime =  CONVERT(datetime, '2016-12-02', 101)

select * from CITA where consultorio = '5010' and turno_consulta = 'M' and FECHA = CONVERT(datetime, '2016-12-02', 101) order by FECHA, TURNO_CONSULTA  asc

INSERT INTO [SIGSALUD].[dbo].[CITA]([CITA_ID],[CONSULTORIO],[MEDICO],[FECHA_PROGRAMACION],[FECHA_OTORGA],[FECHA_PAGO],[FECHA_LIBRE],[FECHA],[HORA],[TURNO_CONSULTA],[TIPO_PACIENTE],[TIPO_CITA],[PACIENTE],[NOMBRE],[OBSERVACION],
  [PAGOID],[SEGURO],[ESTADO],[NUMERO],[HORA_OTORGA],[TIPO_SOLICITUD],[SITUACION],[USUARIO],[NUMATENCION],[USER_ELIMINACION],[FECHA_HORA_ELIMINACION])
       VALUES (@lidcita, '5010', 'CVM', @ldfechaprogramacion, null, null, null, @ldfecha, '', 
           ,<FECHA, datetime,>
           ,<HORA, char(5),>
           ,<TURNO_CONSULTA, char(2),>
           ,<TIPO_PACIENTE, char(1),>
           ,<TIPO_CITA, char(1),>
           ,<PACIENTE, char(10),>
           ,<NOMBRE, varchar(60),>
           ,<OBSERVACION, varchar(50),>
           ,<PAGOID, char(8),>
           ,<SEGURO, char(3),>
           ,<ESTADO, char(1),>
           ,<NUMERO, char(2),>
           ,<HORA_OTORGA, char(5),>
           ,<TIPO_SOLICITUD, char(1),>
           ,<SITUACION, char(8),>
           ,<USUARIO, char(15),>
           ,<NUMATENCION, varchar(13),>
           ,<USER_ELIMINACION, char(15),>
           ,<FECHA_HORA_ELIMINACION, datetime,>)
           
           
select * from CONSULTORIO where CONSULTORIO in ('1028', '1031', '1032', '1029', '1025')





