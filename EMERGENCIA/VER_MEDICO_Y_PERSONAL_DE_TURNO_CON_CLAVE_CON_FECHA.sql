/* VER : MEDICO, ENFERMERA DE TURNO */

USE SIGSALUD
DECLARE @LCFECHA1 VARCHAR(12) = '2016-04-01'
DECLARE @LCFECHA2 VARCHAR(12) = '2016-06-30'

IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'turno_medico')
	BEGIN
		DROP TABLE turno_medico   
	END
select medico, fecha  into turno_medico from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) group by MEDICO, fecha


ALTER TABLE turno_medico alter column medico varchar(10);
INSERT INTO [SIGSALUD].[dbo].[turno_medico]
           ([medico], FECHA)
(select MEDICO1 as medico, fecha from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and medico1 is not null group by MEDICO1, fecha 
union all
select QUIEN_ATIENDE as medico, fecha from EMERGENCIA WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) and QUIEN_ATIENDE is not null  group by QUIEN_ATIENDE, fecha)
union all
select PROFESIONAL as medico, FECHA from  dbo.EMERGENCIA_DET_WEB where FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101)

select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA, C.FECHA from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI  LEFT JOIN turno_medico C ON C.MEDICO = A.MEDICO where A.MEDICO  in (select distinct MEDICO from [SIGSALUD].[dbo].[turno_medico] where MEDICO <> '0') and A.ABREVIATURA = 'MED'
union all        
/*
select '------' medico, '----------------------------------------------------------------------' nombre, '------------' abreviatura, '---------------' DNI, '---------------' CLAVE, '---------------' as ESPECIALIDAD,  '---------------' TIENE_FIRMA, '----------' FECHA
*/

select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA, C.FECHA from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI LEFT JOIN turno_medico C ON C.MEDICO = A.MEDICO  where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'ENF'         
        
union all        

select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA, C.FECHA from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI LEFT JOIN turno_medico C ON C.MEDICO = A.MEDICO   where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'TEC'         
union all 
       

select A.MEDICO, A.NOMBRE, A.ABREVIATURA, A.DNI, B.CLAVE, UPPER(A.NOMBRE_ESPECIALIDAD) AS ESPECIALIDAD, A.TIENE_FIRMA, C.FECHA from V_MEDICO A 
LEFT JOIN USUARIO_WEB B ON B.DNI = A.DNI LEFT JOIN turno_medico C ON C.MEDICO = A.MEDICO   where A.MEDICO  in (SELECT PROFESIONAL FROM [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] 
        WHERE FECHA between CONVERT(DATETIME, @lcfecha1, 101) and CONVERT(DATETIME, @lcfecha2, 101) GROUP BY PROFESIONAL) and A.ABREVIATURA = 'OBS'         
        
DROP TABLE turno_medico



