
DECLARE @lcfechainicio datetime = convert(datetime, '2015-01-04', 101)
DECLARE @lcfechafin datetime = convert(datetime, '2015-01-10', 101)
    declare @lciex1 varchar(6) = 'A0'
    declare @lciex2 varchar(6) = 'R50.1'
    declare @lciex3 varchar(6) = 'R50.9'
    declare @ledad varchar(4) = '001'
    declare @ledad2 varchar(4) = '004'
    declare @ltipodiagnostico varchar(1) = 'd'
    declare @ltipoedad_anios varchar(1)= 'A'
    declare @ltipoedad_mes varchar(1)= 'M'
    declare @ltipoedad_dias varchar(1)= 'D'
    

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX1 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX1 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
 UNION ALL
 
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX2 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX2 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
 UNION ALL
 
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX3 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX3 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
 from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX4 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX5 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2

UNION ALL
select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX6 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX7 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX7 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX8 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX8 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

select EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX9 as CIEXTOTAL
from EMERGENCIA where fecha between @lcfechainicio and @lcfechafin  and CIEX9 LIKE  @lciex1 + '%'  and SUBSTRING(edad,1,3) BETWEEN @ledad AND @ledad2
UNION ALL

 

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL
   
SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
      AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL 

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
      AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
      AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4

UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
      AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

SELECT ID_PACIENTE AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
  NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
WHERE FECHA BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 LIKE  @lciex1 + '%'  and DIAGNOST1 = @ltipodiagnostico
      AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL


select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 LIKE  @lciex1 + '%'  and TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX2 AS CIEXTOTAL from HOSPITALIZACION 
    where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX2 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX3 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX3 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX4 AS CIEXTOTAL from HOSPITALIZACION 
    where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX4 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX5 AS CIEXTOTAL from HOSPITALIZACION 
     where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX5 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
  UNION ALL    
  
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX6 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX6 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX8 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX8 LIKE  @lciex1 + '%'    AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
    
UNION ALL
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX9 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX9 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4

UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX10 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX10 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
  
UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX11 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX11 LIKE  @lciex1 + '%'    AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4

 UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX12 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX12 LIKE  @lciex1 + '%'   AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4
 UNION ALL

select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX13 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX13 IN (@lciex1, @lciex2, @lciex3)    AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4

 UNION ALL
select HOSPITALIZACION_ID AS ID_EMERGENCIA, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX14 AS CIEXTOTAL from HOSPITALIZACION 
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX14 LIKE  @lciex1 + '%'  AND TIPOEDAD = @ltipoedad_anios AND EDAD BETWEEN 1 AND 4