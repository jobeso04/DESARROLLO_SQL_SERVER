
/* revisar los DNI de los Medicos y personal Asistencial */

declare @lnmes int = 4
declare @lnanio int = 2018
-- 66

/*
SELECT codigo  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where MES = @lnmes and ANIO = @lnanio GROUP BY CODIGO 
*/


select CODIGO, NOMBRE, DNI from [BDPERSONAL].[dbo].[MAESTRO] WHERE CODIGO in 
(SELECT codigo  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where MES = @lnmes and ANIO = @lnanio GROUP BY CODIGO) ORDER BY NOMBRE  

 
-- 66
SELECT MEDICO, NOMBRE, DNI FROM [SIGSALUD].[dbo].[MEDICO] WHERE DNI IN (
select DNI from [BDPERSONAL].[dbo].[MAESTRO] WHERE CODIGO in (SELECT codigo  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] where MES = @lnmes and ANIO = @lnanio GROUP BY CODIGO)) ORDER BY NOMBRE 
 


-- 61

DECLARE @lc_apellidos_y_nombres varchar(200) = 'PINTADO CABALLERO JOSE'
  SELECT 'TABLA MEDICO' AS TABLA_MEDICO, MEDICO AS CODIGO, NOMBRE, DNI FROM [SIGSALUD].[dbo].[MEDICO] WHERE NOMBRE COLLATE SQL_LATIN1_GENERAL_CP1_CI_AI LIKE @lc_apellidos_y_nombres + '%'
  UNION ALL
 SELECT 'TABLA MAESTRO' AS TABLA_MEDICO, CODIGO, NOMBRE, DNI FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE NOMBRE COLLATE SQL_LATIN1_GENERAL_CP1_CI_AI LIKE @lc_apellidos_y_nombres + '%'
  UNION ALL
 SELECT 'TABLA USUARIO_WEB' AS TABLA_MEDICO,  CARGO AS CODIGO, NOMBRES AS NOMBRE, DNI FROM [SIGSALUD].[dbo].[USUARIO_WEB] WHERE NOMBRES COLLATE SQL_LATIN1_GENERAL_CP1_CI_AI LIKE @lc_apellidos_y_nombres + '%' 
 
 SELECT * FROM [BDPERSONAL].[dbo].[MAESTRO] WHERE CODIGO = '084836'
 SELECT * FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = '084835' 
 

UPDATE [SIGSALUD].[dbo].[MEDICO] SET  DNI = '76818441' WHERE MEDICO = 'CSM'
UPDATE [BDPERSONAL].[dbo].[MAESTRO] SET  DNI = '06563556' WHERE CODIGO = '054038'


UPDATE [SIGSALUD].[dbo].[USUARIO_WEB] SET DNI = '29461431' WHERE  DNI = '94614310'




SELECT CONSULTORIO, NOMBRE, ABREVIATURA FROM [SIGSALUD].[dbo].[CONSULTORIO] WHERE  TIPO = 'C'
      AND NOMBRE IN (SELECT  NOMBRE_CONSULTORIO FROM [SIGSALUD].[dbo].[V_CITA] 
      WHERE MEDICO = 'QAI' AND FECHA > CONVERT(DATETIME, '2017-01-01', 101) GROUP BY NOMBRE_CONSULTORIO)        ORDER BY NOMBRE


SELECT  * FROM [SIGSALUD].[dbo].[V_CITA] WHERE FECHA > CONVERT(DATETIME, '2015-01-01', 101)

SELECT CONSULTORIO, NOMBRE, ABREVIATURA FROM [SIGSALUD].[dbo].[CONSULTORIO] WHERE  TIPO = 'C'
      AND NOMBRE IN (SELECT  NOMBRE_CONSULTORIO FROM [SIGSALUD].[dbo].[V_CITA] 
      WHERE MEDICO = 'RCJ' GROUP BY NOMBRE_CONSULTORIO )        ORDER BY NOMBRE
      
SELECT  NOMBRE_CONSULTORIO FROM [SIGSALUD].[dbo].[V_CITA] 
      WHERE MEDICO = 'RCJ'      



SELECT  * FROM [SIGSALUD].[dbo].[V_CITA] 
      WHERE MEDICO = 'QAI'   AND NOMBRE_CONSULTORIO = 'NEUMOLOGIA 1'   
      
      

SELECT  * FROM [SIGSALUD].[dbo].[V_CITA] 
      WHERE MEDICO = 'CCV'   AND CONSULTORIO = '1015'
      
      
      SELECT  * FROM [SIGSALUD].[dbo].[CITA] 
      WHERE MEDICO = 'RCJ' AND CONSULTORIO = '1012'
      
      
      
      DELETE FROM [SIGSALUD].[dbo].[CITA]   WHERE MEDICO = 'RCJ' AND CONSULTORIO = '1012'
      DELETE FROM [SIGSALUD].[dbo].[CITA]   WHERE MEDICO = 'RCJ' AND CONSULTORIO = '1015'
      DELETE FROM [SIGSALUD].[dbo].[CITA]   WHERE MEDICO = 'QAI' AND CONSULTORIO = '1013'
      
      1013  
      



SELECT * FROM [SIGSALUD].[dbo].[MEDICO]  WHERE NOMBRE LIKE 'RUIZ CUBA%'

SELECT * FROM [SIGSALUD].[dbo].[CONSULTORIO]  WHERE NOMBRE LIKE 'NEUMOLO%'


SELECT * FROM [SIGSALUD].[dbo].[CONSULTORIO]  WHERE NOMBRE LIKE 'OBSTETRI%'
SELECT * FROM [SIGSALUD].[dbo].[CONSULTORIO]  WHERE NOMBRE LIKE 'DISPLA%'
SELECT * FROM [SIGSALUD].[dbo].[CONSULTORIO]  WHERE NOMBRE LIKE 'PLANIF%'
SELECT * FROM [SIGSALUD].[dbo].[CONSULTORIO]  WHERE NOMBRE LIKE 'GINECO%'




select * from [BDPERSONAL].[dbo].[MAESTRO] where codigo = '084475'
select * from [SIGSALUD].[dbo].[medico] where NOMBRE LIKE 'MEJIA POL%'
update [BDPERSONAL].[dbo].[MAESTRO] SET NOMBRE = 'MEJIA POLANCO SOCORRO PERFECTA' WHERE codigo = '084475'



0008

