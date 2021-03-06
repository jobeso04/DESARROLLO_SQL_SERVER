SELECT HISTORIA, NOMBRES, SEXO, FECHA_APERTURA, DIRECCION, FECHA_NACIMIENTO, EDAD, DOCUMENTO, MODULO FROM PACIENTE WHERE HISTORIA = ''
ORDER BY NOMBRES ASC


USE SIGSALUD
declare @lcnombre varchar(200) = 'GARCIA MACHU'
SELECT 'EN ADMISION, TABLA PACIENTE' AS UBICACION, PACIENTE, HISTORIA, NOMBRES FROM PACIENTE  WHERE NOMBRES LIKE  '%' + @lcnombre + '%' 
UNION ALL
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN CITAS, TABLA CITA' AS UBICACION, PACIENTE, '' as HISTORIA, NOMBRE FROM CITA WHERE NOMBRE LIKE  '%' + @lcnombre + '%' 
UNION ALL
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN EMERGENCIA, TABLA EMERGENCIA' AS UBICACION, PACIENTE, HISTORIA, NOMBRES FROM EMERGENCIA  WHERE NOMBRES LIKE '%' + @lcnombre + '%'   
UNION ALL
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN ATENCION SIS,  TABLA ATENCION_SEGURO' AS UBICACION, PACIENTE, HISTORIA, NOMBRES  FROM ATENCION_SEGURO   WHERE NOMBRES LIKE  '%' + RTRIM(@lcnombre) + '%' 
UNION ALL
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN ATENCION ARCHIVOS, TABLA ARCHIVO_MOV' AS UBICACION, PACIENTE, HISTORIA, NOMBRES  FROM ARCHIVO_MOV   WHERE NOMBRES LIKE  '%' + @lcnombre + '%' 
UNION ALL 
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN ATENCION CAJA, TABLA PAGOC' AS UBICACION, PACIENTE, '' AS HISTORIA, NOMBRE FROM PAGOC   WHERE NOMBRE LIKE  '%' + @lcnombre + '%' 
UNION ALL 
SELECT '-----------------------------' AS UBICACION, '---------------' PACIENTE, '------------------------' as HISTORIA, '---------------------' AS NOMBRE 
UNION ALL
SELECT 'EN CONSULTORIO, TABLA ATENCIONC' AS UBICACION, PACIENTE, '' AS HISTORIA, NOMBRES AS NOMBRE  FROM ATENCIONC   WHERE NOMBRES LIKE  '%' + @lcnombre + '%' 


declare @lpaciente varchar(100) = '2008080199'
SELECT HISTORIA, nombres FROM EMERGENCIA where paciente = @lpaciente
UNION ALL
SELECT HISTORIA, nombres FROM PACIENTE where paciente = @lpaciente
UNION ALL
select HISTORIA, NOMBRES from atencionc where paciente = @lpaciente
UNION ALL
select HISTORIA, NOMBRES from atencion_seguro where paciente = @lpaciente
UNION ALL
select HISTORIA, NOMBRES from ARCHIVO_MOV where paciente = @lpaciente


select * from PAGOC where paciente = @lpaciente


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  WHERE HISTORIA <> '' ORDER BY HISTORIA  ASC


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE   ORDER BY PACIENTE ASC


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE   ORDER BY PACIENTE desc


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(historia,1,5) = '00001' order by HISTORIA asc


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(historia,1,5) between '00001' and '00009' order by HISTORIA asc


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(historia,1,5) between '00000' and '00009' order by historia asc
 

SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(historia,1,4) between '0001' and '0009' order by historia asc
 
SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(historia,1,3) between '001' and '009' order by historia asc


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(paciente, 1,4) = '2008'  order by historia asc
 

SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(paciente, 1,4) = '2009'  order by historia asc

SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(paciente, 1,4) = '2010'  order by historia asc


SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(paciente, 1,4) = '2011'  order by historia asc

SELECT PACIENTE, HISTORIA, NOMBRES, FECHA_APERTURA, FECHA_NACIMIENTO, EDAD, SYSINSERT, SYSUPDATE, SYSDELETE, USUARIO
 FROM PACIENTE  where substring(paciente, 1,4) = '2012'  order by paciente asc


 


SELECT 'EN ATENCION SIS,  TABLA ATENCION_SEGURO' AS UBICACION, PACIENTE, HISTORIA, NOMBRES  FROM ATENCION_SEGURO
   WHERE NOMBRES LIKE  '%' + 'GARCIA MACHU' + '%' 

