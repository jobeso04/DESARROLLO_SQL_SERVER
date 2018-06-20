USE SIGSALUD
GO

SELECT * FROM PACIENTE where nombres like '%obeso camones%'
SELECT * FROM EMERGENCIA where nombres like '%obeso%' order by fecharegistro desc
SELECT * FROM EMERGENCIA 
 
 
 SELECT * FROM PACIENTE where nombres like '%obeso camones%'
 select EMERGENCIA_ID, FECHA, HORA, ORDEN, PATERNO, MATERNO, NOMBRE, NOMBRES, PACIENTE, SEXO, edad, documento, estado, consultorio, FECHAREGISTRO, ESTADO_CIVIL, TIPO_DOCUMENTOA, OBSERVACION1
   FROM EMERGENCIA where nombres like '%obeso camones%' order by fecharegistro desc
       
       
 select PACIENTE, HISTORIA, PATERNO, MATERNO, nombre, nombres, SEXO, FECHA_APERTURA, HORA_APERTURA, EDAD, CONSULTORIO, documento, estado_civil, fecha_nacimiento 
         from V_PACIENTE_EXPRESS where nombres like '%obeso camones%'
         
         
         
         
SELECT * FROM PACIENTE order by fecharegistro asc
SELECT * FROM EMERGENCIA where nombres like '%heredia%' order by fecharegistro desc         