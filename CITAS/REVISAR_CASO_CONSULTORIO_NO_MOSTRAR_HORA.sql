USE SIGSALUD
USE SIGSALUD
SELECT * FROM CONSULTORIO_PARAMETRO WHERE CONSULTORIO  IN ('2022', '2029')
UPDATE CONSULTORIO_PARAMETRO SET NO_MOSTRAR_HORA_NUMERO = atenciones_dia
UPDATE CONSULTORIO_PARAMETRO SET NO_MOSTRAR_HORA_NUMERO = '16'  WHERE CONSULTORIO  IN ('2022', '2029')
UPDATE CONSULTORIO_PARAMETRO SET NO_MOSTRAR_HORA_NUMERO = '13'  WHERE CONSULTORIO  IN ('1015', '1098', '2021')
UPDATE CONSULTORIO_PARAMETRO SET NO_MOSTRAR_HORA_NUMERO = '13'  WHERE CONSULTORIO  IN ('1016', '1021')
UPDATE CONSULTORIO_PARAMETRO SET NO_MOSTRAR_HORA_NUMERO = '13'  WHERE CONSULTORIO  IN ('1019')


Select * from consultorio_parametro where consultorio = '2021' and  turno_consulta = 'M' and print_hora='1' AND  NO_MOSTRAR_HORA_NUMERO >= 14