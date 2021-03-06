/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT TOP 5000 [EMERGENCIA_ID]
      ,[FECHA]
      ,[HORA]
      ,[ORDEN]
      ,[PATERNO]
      ,[MATERNO]
      ,[NOMBRE]
      ,[NOMBRES]
      ,[PACIENTE]
      ,[FECHA_NACIMIENTO]
      ,[EDAD]
      ,[SEXO]
      ,[ESTADO_CIVIL]
      ,[DIRECCION]
      ,[DISTRITO]
      ,[TELEFONO1]
      ,[TELEFONO2]
      ,[TIPO_DOCUMENTO]
      ,[DOCUMENTO]
      ,[ACOMPANANTE]
      ,[TIPO_DOCUMENTOA]
      ,[DOCUMENTOA]
      ,[CONSULTORIO]
      ,[MOTIVO_EMERGENCIA]
      ,[SEGURO]
      ,[OBSERVACION1]
      ,[TIPO_CIEX1]
      ,[CIEX1]
      ,[TIPO_CIEX2]
      ,[CIEX2]
      ,[TIPO_CIEX3]
      ,[CIEX3]
      ,[DESTINO]
      ,[OBSERVACION2]
      ,[MEDICO]
      ,[SINTOMAS]
      ,[TIEMPO_ENFERMEDAD]
      ,[FI]
      ,[CURSO]
      ,[ANT_FAMILIARES]
      ,[ANT_PERSONALES]
      ,[ANT_MEDICOS]
      ,[ANT_CIRUGIAS]
      ,[ANT_ALERGIAS]
      ,[ANT_MEDICAMENTOS]
      ,[NUTRICIONAL]
      ,[HIDRATACION]
      ,[SENSORIO]
      ,[PESO]
      ,[TALLA]
      ,[TEMPERATURA]
      ,[PRESION]
      ,[PULSO]
      ,[FR]
      ,[ESTADO]
      ,[TRATAMIENTO]
      ,[MED_OBSERVACION]
      ,[LAB_OBSERVACION]
      ,[RAY_OBSERVACION]
      ,[ECO_OBSERVACION]
      ,[OTR_OBSERVACION]
      ,[OBSERVACION3]
      ,[CUENTAID]
      ,[USUARIO]
      ,[PRE_AFILIACION]
      ,[LOCALIDAD]
      ,[ESTABLECIMIENTO]
      ,[HORA_ATEN]
      ,[CONDICION_EGRESO]
      ,[ENTIDAD]
      ,[MEDICO1]
      ,[CIEX4]
      ,[CONSULTORIO1]
      ,[FECHA_ING]
      ,[FECHA_SAL]
      ,[NUMCAMA]
      ,[HORA_ING]
      ,[HORA_SAL]
      ,[HORA_EST]
      ,[ESTANCIA]
      ,[CODGRUPO]
      ,[HISTORIA]
      ,[TIPOEDAD]
      ,[TIPOATENCION]
      ,[PRIORIDAD]
      ,[MEDICO2]
      ,[CIEX5]
      ,[FECHA_ING1]
      ,[FECHA_SAL1]
      ,[NUMCAMA1]
      ,[HORA_ING1]
      ,[HORA_SAL1]
      ,[HORA_EST1]
      ,[CIEX6]
      ,[CIEX7]
      ,[CIEX8]
      ,[CIEX9]
      ,[RELIGION]
      ,[FC]
      ,[SAT_OX]
      ,[USUARIO_FN_VITALES]
      ,[EXAMEN_FISICO]
      ,[RELATO]
      ,[EVOLUCION]
      ,[FECHA_ATENCION]
      ,[TIPO_CIEX4]
      ,[TIPO_CIEX5]
      ,[TIPO_CIEX6]
      ,[USUARIO_ALTA_ENF]
      ,[FECHA_HORA_ALTA_ENF]
      ,[PRESIOND]
      ,[ESTADO_PACIENTE]
      ,[QUIEN_ATIENDE]
      ,[id_emergencia_ubicacion]
      ,[fecha_salida]
      ,[observacion_egreso]
      ,[PROCE_MED_1]
      ,[PROCE_MED_2]
      ,[PROCE_MED_3]
      ,[CONSULTORIO_SERVICIO]
  FROM [SIGSALUD].[dbo].[EMERGENCIA] where 
     convert(int, substring(edad,1,3)) < 8 and 
  
  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) order by fecha asc
  
  
  select *, substring(edad,1,3) as edad1 from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) < 1  
    
    
    order by EDAD asc
  
  select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) and 
                                         between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
                                           and substring(edad,2,1) < convert(char, 8) order by EDAD asc
  
  
    select *  from EMERGENCIA where fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) and
               
     case when SUBSTRING(edad,1
                                   
    
    
      order by EDAD asc
    
    
    
    
    
    
    select * from EMERGENCIA where  fecha between CONVERT(intdatetime, ed'2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
                                           and substring(edad,2,1) < convert(char, 8) order by EDAD asc
  
    
    
    registro : 1842  año : 0a
    
    
    
    SELECT * FROM EMERGENCIA
    
      select quien_atiende, COUNT(quien_atiende) as  atenciones from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) < 1  group by QUIEN_ATIENDE 
    
    0006
    
    
    3050  
    
    select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) < 1 AND CONSULTORIO = '3050' 
    
    
    quien_atiende, COUNT(quien_atiende) as  atenciones
    
    
    SELECT * FROM MEDICO
    
    select quien_atiende, COUNT(quien_atiende) as  atenciones from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050' group by QUIEN_ATIENDE 
    
    SELECT MEDICO.NOMBRE FROM MEDICO WHERE 
    select quien_atiende from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050' group by QUIEN_ATIENDE 
    
    
    select * from CONSULTORIO where  CONSULTORIO = '3050' 
    
    select * from CONSULTORIO where  nombre like '%EMER%'
    
    3050  
    
    select * from medico
    select * from ESPECIALIDAD order by NOMBRE asc
    
    
    select * from ESPECIALIDAD where ESPECIALIDAD = '0006'
    select * from CONSULTORIO where  CONSULTORIO = '3050' 
      select * from CONSULTORIO where  CONSULTORIO = '3050' 
    select * from medico where ESPECIALIDAD = '0006' order by NOMBRE asc
    select * from EMERGENCIA where QUIEN_ATIENDE = 'bvj' order by CONSULTORIO asc
    select * from medico where MEDICO = 'pcj' order by NOMBRE asc
    CTF 
    
    '2051
    
    0006 '
    
    
   select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-06-01', 101) and CONVERT(datetime, '2015-06-30', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050'
    
    
    /** TIPO_PROCESO = 'P10' AND */
  SELECT AHORA_PROFESIONAL, COUNT(AHORA_PROFESIONAL) as  atenciones  FROM EMERGENCIA_DET_WEB WHERE   EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050')  group by AHORA_PROFESIONAL
    
  
  SELECT * FROM EMERGENCIA_DET_WEB WHERE EMERGENCIA_ID = '15027505'
    
    15027505
    
    
    SELECT * FROM EMERGENCIA_DET_WEB  WHERE TIPO_PROCESO = 'P10'
    
    
    
    
DECLARE @p_fecha_inicial varchar(10) = '01/07/2015' 
DECLARE @p_fecha_fin varchar(10) = '31/07/2015'

SET LANGUAGE Spanish

SELECT
AHORA_PROFESIONAL,
COUNT(AHORA_PROFESIONAL)
FROM EMERGENCIA_DET_WEB
WHERE FECHA BETWEEN @p_fecha_inicial AND @p_fecha_fin
GROUP BY AHORA_PROFESIONAL
ORDER BY AHORA_PROFESIONAL ASC


DECLARE @p_fecha_inicial varchar(10) = '01/06/2015' 
DECLARE @p_fecha_fin varchar(10) = '30/06/2015'

SET LANGUAGE Spanish

SELECT
AHORA_PROFESIONAL,
COUNT(AHORA_PROFESIONAL)
FROM EMERGENCIA_DET_WEB
WHERE FECHA BETWEEN @p_fecha_inicial AND @p_fecha_fin
GROUP BY AHORA_PROFESIONAL
ORDER BY AHORA_PROFESIONAL ASC

select * from EMERGENCIA_DET_WEB 

DECLARE @p_fecha_inicial varchar(10) = '01/06/2015' 
DECLARE @p_fecha_fin varchar(10) = '30/06/2015'

SET LANGUAGE Spanish


SELECT
*
FROM EMERGENCIA
WHERE FECHA BETWEEN @p_fecha_inicial AND @p_fecha_fin


 select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050'
    
    
    
    SELECT AHORA_PROFESIONAL, COUNT(AHORA_PROFESIONAL) as  atenciones  FROM EMERGENCIA_DET_WEB WHERE TIPO_PROCESO = 'P10' AND  EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050')  group by AHORA_PROFESIONAL
    
  /* ********** */
  
  SELECT AHORA_PROFESIONAL, COUNT(AHORA_PROFESIONAL) as  atenciones  FROM EMERGENCIA_DET_WEB WHERE   EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050')  and ahora_profesional is not null and 
    ahora_profesional not in ('') group by AHORA_PROFESIONAL
  
  
  SELECT AHORA_PROFESIONAL, COUNT(AHORA_PROFESIONAL) as  atenciones  FROM EMERGENCIA_DET_WEB WHERE   EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050')   group by AHORA_PROFESIONAL
  
  SELECT *  FROM EMERGENCIA_DET_WEB WHERE   EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050') order by FECHA asc
  
  
  SELECT *  FROM EMERGENCIA_DET_WEB WHERE   EMERGENCIA_ID IN (select EMERGENCIA_ID from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050') order by FECHA asc
  
  
  select AHORA_PROFESIONAL, COUNT(AHORA_PROFESIONAL) as  atenciones  from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050' group by AHORA_PROFESIONAL
 
 
 
 select quien_atiende, COUNT(quien_atiende) as  atenciones from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050' and quien_atiende is not null group by QUIEN_ATIENDE 
    
    
select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050' and quien_atiende is not null group by QUIEN_ATIENDE 
    
select * from EMERGENCIA where  fecha between CONVERT(datetime, '2015-07-01', 101) and CONVERT(datetime, '2015-07-31', 101) 
    and edad not in ('00a00m00d') and substring(edad,2,2) < 15  and substring(edad,6,1) > 1 AND CONSULTORIO = '3050'    order by fecha
      
      
      
      SELECT * FROM MEDICO ORDER BY MEDICO 