
/* caso de intermedio y tarde */


SELECT * FROM CITA  WHERE month(FECHA) = 4 and YEAR(fecha) = 2018  and   CONSULTORIO = '4044'

update CITA  set turno_consulta = 'I' WHERE month(FECHA) = 4 and YEAR(fecha) = 2018  and   CONSULTORIO = '4044'

SELECT * FROM CITA  WHERE FECHA >= CONVERT(datetime, '2018-04-02', 101) and   CONSULTORIO = '4044'
update CITA  set E FECHA >= CONVERT(datetime, '2018-04-02', 101) and   CONSULTORIO = '4044'


use sigsalud

SELECT * FROM consultorio_parametro WHERE CONSULTORIO='4044'

SELECT * FROM CITA  WHERE FECHA >= CONVERT(datetime, '2018-04-02', 101) and   CONSULTORIO = '4044'

SELECT * FROM CITA  WHERE  CONSULTORIO = '4044' order by FECHA desc



INSERT INTO [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO]
           ([CONSULTORIO]
           ,[TURNO_CONSULTA]
           ,[OLD]
           ,[HORARIO_DE]
           ,[HORARIO_A]
           ,[ATENCIONES_DIA]
           ,[CITADOS_N]
           ,[CITADOS_C]
           ,[CITADOS_P]
           ,[CITADOS_O]
           ,[TIEMPO_N]
           ,[TIEMPO_C]
           ,[TIEMPO_P]
           ,[TIEMPO_O]
           ,[HORAS]
           ,[PRECIO_C]
           ,[PRECIO_N]
           ,[TIPO_PAGO]
           ,[ITEM_C]
           ,[ITEM_N]
           ,[PRINT_HORA]
           ,[CUPO_WEB]
           ,[NO_MOSTRAR_HORA_NUMERO])
           

SELECT '4044' AS CONSULTORIO, TURNO_CONSULTA, OLD, HORARIO_DE, HORARIO_A, ATENCIONES_DIA, CITADOS_N, CITADOS_C, CITADOS_P, CITADOS_O, TIEMPO_N, 
TIEMPO_C, TIEMPO_P, TIEMPO_O, HORAS, PRECIO_C, PRECIO_N,TIPO_PAGO, ITEM_C, ITEM_N, PRINT_HORA, CUPO_WEB, NO_MOSTRAR_HORA_NUMERO FROM consultorio_parametro WHERE CONSULTORIO='6081' AND TURNO_CONSULTA IN ('M', 'T')




SELECT * FROM consultorio_parametro WHERE CONSULTORIO='4044'



update consultorio_parametro set citados_n = '29' WHERE CONSULTORIO='4044'
