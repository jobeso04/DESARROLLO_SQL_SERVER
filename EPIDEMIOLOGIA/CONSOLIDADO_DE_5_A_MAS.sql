/* inicio de conteo : Notificacion consolidada ciex A0 */

DECLARE @lcfechainicio datetime = CONVERT(DATETIME, '2017-09-03', 101)
DECLARE @lcfechafin datetime =  CONVERT(DATETIME, '2017-09-09', 101)
declare @lcedad int = 1
declare @lcedad2 int = 5
DECLARE @lctipoedad_anios varchar(1) = 'A'
declare @ltipoedad_mes varchar(1)= 'M'
declare @ltipoedad_dias varchar(1)= 'D'
declare @ltipodiagnostico varchar(1) = 'D'
declare @lcietabla table (diag varchar(7))
  insert @lcietabla values('A0'),('R50.1'), ('R50.9')
 declare @lctablenoti table (emergencia_id varchar(20), fecha datetime, hora time, nombres varchar(250), paciente varchar(13), fecha_nacimiento datetime, 
edad varchar(13), sexo varchar(1), direccion varchar(200), distrito varchar(20), localidad varchar(20), ciextotal varchar(20))
insert into  @lctablenoti
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX1 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX1 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX2 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX2 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX3 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX3 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX4 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX5 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, HORA, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX6 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico   AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico   AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico   AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, HORAI_ATENCION AS  HORA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 = @ltipodiagnostico   AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedad and @lcedad2

UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX2 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX2 IN (SELECT DIAG FROM @lcietabla) and  TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX3 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX3 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX4 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX4 IN (SELECT DIAG FROM @lcietabla) AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX5 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX5 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2

UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX6 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX6 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX8 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX8 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX9 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX9 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX10 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX10 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX11 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX11 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2

UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX12 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX12 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX13 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX13 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, HORA1 AS HORA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX14 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX14 IN (SELECT DIAG FROM @lcietabla)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2


/* inicio de conteo */  
select (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.edad) as menor1 
from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC




/***  fin para conteo */



--select * from @lctablenoti
--- Para obtener el detalle de los pacientes

/*
 select 'x' AS INDICADOR, emergencia_id as SERVICIO, convert(varchar(10), a.fecha, 101) as Fecha, convert(varchar(10), hora) hora, a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.edad, a.sexo, a.direccion, a.distrito, 
(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente
*/