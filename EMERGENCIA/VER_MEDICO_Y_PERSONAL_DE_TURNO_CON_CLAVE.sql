/* VER : MEDICO, ENFERMERA DE TURNO */

USE SIGSALUD
DECLARE @LCFECHA1 VARCHAR(12) = '2016-12-06'
DECLARE @LCFECHA2 VARCHAR(12) = '2016-12-06'

IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'turno_medico')
	BEGIN
		DROP TABLE turno_medico   
	END
select medico into turno_medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) group by MEDICO
ALTER TABLE turno_medico alter column medico varchar(10);
ALTER TABLE turno_medico add fecha_expiracion varchar(50);
INSERT INTO [SIGSALUD].[dbo].[turno_medico]
           ([medico])
(select MEDICO1 as medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and medico1 is not null group by MEDICO1 
union all
select QUIEN_ATIENDE as medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and QUIEN_ATIENDE is not null  group by QUIEN_ATIENDE)
union all
select PROFESIONAL as medico from  dbo.EMERGENCIA_DET_WEB where FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101)
union all
select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA,  B.FECHA_EXPIRACION from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') and A.ABREVIATURA = 'MED'
union all        
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
union all
select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA,  B.FECHA_EXPIRACION from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'ENF'         
union all        
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
union all        
select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA,  B.FECHA_EXPIRACION from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'TEC'         
union all        
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA, B.FECHA_EXPIRACION from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'OBS'         
union all        
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select '-ROL--' medico, '--------------ROL DE  GUARDIAS---ROL DE PERSONAL----------------------' nombre, '---ROL------' abreviatura, '-----ROL-------' DNI, '--ROL----------' CLAVE, '----ROL---------' as ESPECIALIDAD,  '--ROL---------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select 'ROL' AS MEDICO, NOMBRES AS NOMBRE, CARGO AS ABREVIATURA, DNI, CLAVE, CARGO AS ESPECIALIDAD, '' TIENE_FIRMA, FECHA_EXPIRACION  from USUARIO_WEB
 where DNI in (select dni from acceso_modulo where id_am = '11020212552901091031')  
UNION ALL
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  'ESTADO' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL
select 'SEG' AS MEDICO, NOMBRES AS NOMBRE, CARGO AS ABREVIATURA, DNI, CLAVE, CARGO AS ESPECIALIDAD, CONVERT(VARCHAR(1), ESTADO) TIENE_FIRMA, FECHA_EXPIRACION  from USUARIO_WEB
 where DNI in (select dni from acceso_modulo where NOMBRE = 'SEGUROS')  
UNION ALL
select '------' medico, '---------------------ADMISION------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, getdate() FECHA_EXPIRACION
UNION ALL     
select SUBSTRING(MODULO,1,3)  AS MEDICO, NOMBRE, CARGO AS ABREVIATURA, USUARIO AS DNI, CONTRASENA AS CLAVE, CARGO AS ESPECIALIDAD, CONVERT(VARCHAR(1), ESTADO) TIENE_FIRMA, FECHA_EXPIRACION  from USUARIO 
     
DROP TABLE turno_medico

/*
select MODULO AS MEDICO, NOMBRE, CARGO AS ABREVIATURA, USUARIO AS DNI, CONTRASENA AS CLAVE, CARGO AS ESPECIALIDAD, ESTADO, FECHA_EXPIRACION  from USUARIO ORDER BY MODULO, NOMBRE ASC 
*/



 