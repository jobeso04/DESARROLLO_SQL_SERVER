/* Consulta de Epidemiologia */

/* Tabla de Emergencia */
USE SIGSALUD
GO
DECLARE @lcfechainicio datetime = convert(datetime, '2015-08-01', 101)
DECLARE @lcfechafin datetime = convert(datetime, '2015-08-30', 101)
declare @lciex1 varchar(6) = 'R50'
declare @lciex2 varchar(6) = 'R50.1'
declare @lciex3 varchar(6) = 'R50.9'
declare @ledad varchar(4) = '000a'
declare @ltipodiagnostico varchar(1) = 'd'
declare @ltipoedad_anios varchar(1)= 'A'
declare @ltipoedad_mes varchar(1)= 'M'
declare @ltipoedad_dias varchar(1)= 'D'

/*** PARA EMERGENCIA  *** PARA 1 AÑO *****/

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX1 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX1 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
 UNION ALL
 
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX2 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX2 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
 UNION ALL
 
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX3 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX3 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX4 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX5 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad

UNION ALL
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX6 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX7 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX7 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX8 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX8 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX9 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX9 IN (@lciex1, @lciex2, @lciex3) and SUBSTRING(edad,1,4) = @ledad
UNION ALL

/*** Inicia Hospitalizacion ***/

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
   
SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL 

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)

UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (@lciex1, @lciex2, @lciex3) and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

/* hospitalizacion */
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX2 AS CIEXTOTAL from HOSPITALIZACION 
    where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX2 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)    
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX3 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX3 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX4 AS CIEXTOTAL from HOSPITALIZACION 
    where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX4 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX5 AS CIEXTOTAL from HOSPITALIZACION 
     where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX5 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
  UNION ALL    
  
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX6 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX6 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX8 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX8 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
    
UNION ALL
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX9 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX9 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)

UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX10 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX10 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
  
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX11 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX11 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)

 UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX12 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX12 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
 UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX13 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX13 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)

 UNION ALL
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX14 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX14 IN (@lciex1, @lciex2, @lciex3) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
  
  
  
  
  /* SELECT Localidad,Nombre FROM Localidad where localidad = 'L05' order by Nombre */
  
  SELECT Ubigeo,Distrito,Provincia,Departamento FROM Ubigeo WHERE ACTIVO='1' ORDER BY Distrito
  
  SELECT Ubigeo,Distrito,Provincia,Departamento FROM Ubigeo where UBIGEO = '150118' 
  
  
  /** 150118
  /** L05
  