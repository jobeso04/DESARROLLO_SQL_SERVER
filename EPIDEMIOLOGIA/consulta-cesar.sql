
declare @lcfecha1 datetime = convert(datetime, '2018-01-01', 101)
declare @lcfecha2 datetime = convert(datetime, '2018-01-31', 101)


SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX4 IN ('B68', 'B68.0') 
union all	 
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX5 IN ('B68', 'B68.0') 
union all	 

SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX6 IN ('B68', 'B68.0') 
union all	 	 
	 
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX1 IN ('B68', 'B68.0') 
union all	 	 

SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX2 IN ('B68', 'B68.0') 
union all	 	 


SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] 
	 WHERE fecha between @lcfecha1 and @lcfecha2 AND CIEX3 IN ('B68', 'B68.0') 
union all	 	 

SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfecha1 AND @lcfecha2 AND CODIGO1 IN ('B68', 'B68.0')  and DIAGNOST1 in ('P', 'D')
union all
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfecha1 AND @lcfecha2 AND CODIGO2 IN ('B68', 'B68.0')  and DIAGNOST2 in ('P', 'D')

union all
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfecha1 AND @lcfecha2 AND CODIGO3 IN ('B68', 'B68.0')  and DIAGNOST3 in ('P', 'D')

union all
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfecha1 AND @lcfecha2 AND CODIGO3 IN ('B68', 'B68.0')  and DIAGNOST3 in ('P', 'D')
