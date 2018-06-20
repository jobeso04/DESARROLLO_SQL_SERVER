use  sigsalud
select * from CONSULTORIO order by CONSULTORIO asc
/* update CONSULTORIO set NOMBRE = 'PROG. DIABETES 1', ABREVIATURA = 'PRGDIA' where CONSULTORIO = '6088' */


INSERT INTO [SIGSALUD].[dbo].[CONSULTORIO]([CONSULTORIO],[NOMBRE],[ABREVIATURA],[ESPECIALIDAD],[TIPO],[ROL],[MUESTRAROL],[CC1],[CC2],[CC3],[ACTIVO],
   [ORDEN],[NUMERO],[CUPO],[CODESPE],[NOMESPE],[HIS_ESPECIALIDAD],[ACTIVO_WEB],[COD_RENAES],[DESC_RENAES],[HIS_CODSERVICIO],[HIS_NOMSERVICIO],
   [SCONSULTORIO],[SCCONSULTORIO],[ECONSULTORIO],[ECCONSULTORIO],[DEPARTAMENTO],[TIPOSERVICIO],[CODUPSSEEM],[upstrama])
   
select '6091' AS consultorio, 'PROG. DIABETES 2' as nombre, 'PRGDIA2' AS ABREVIATURA, '0041' AS ESPECIALIDAD, TIPO, ROL, MUESTRAROL,
CC1, CC2, CC3, ACTIVO, ORDEN, NUMERO, CUPO, CODESPE, NOMESPE, HIS_ESPECIALIDAD, ACTIVO_WEB, COD_RENAES, DESC_RENAES, HIS_CODSERVICIO, HIS_NOMSERVICIO,
SCONSULTORIO, SCCONSULTORIO, ECONSULTORIO, ECCONSULTORIO, DEPARTAMENTO, TIPOSERVICIO, CODUPSSEEM, upstrama FROM CONSULTORIO where CONSULTORIO = '6088'


INSERT INTO [SIGSALUD].[dbo].[CONSULTORIO_PARAMETRO] ([CONSULTORIO],[TURNO_CONSULTA],[OLD],[HORARIO_DE],[HORARIO_A],[ATENCIONES_DIA],[CITADOS_N],
   [CITADOS_C],[CITADOS_P],[CITADOS_O],[TIEMPO_N],[TIEMPO_C],[TIEMPO_P],[TIEMPO_O],[HORAS],[PRECIO_C],[PRECIO_N],[TIPO_PAGO],[ITEM_C],[ITEM_N],[PRINT_HORA],
    [CUPO_WEB],[NO_MOSTRAR_HORA_NUMERO])
    
SELECT '6091' AS CONSULTORIO, [TURNO_CONSULTA],[OLD],[HORARIO_DE],[HORARIO_A],[ATENCIONES_DIA],[CITADOS_N],
   [CITADOS_C],[CITADOS_P],[CITADOS_O],[TIEMPO_N],[TIEMPO_C],[TIEMPO_P],[TIEMPO_O],[HORAS],[PRECIO_C],[PRECIO_N],[TIPO_PAGO],[ITEM_C],[ITEM_N],[PRINT_HORA],
    [CUPO_WEB],[NO_MOSTRAR_HORA_NUMERO] FROM CONSULTORIO_PARAMETRO WHERE CONSULTORIO = '6088'

