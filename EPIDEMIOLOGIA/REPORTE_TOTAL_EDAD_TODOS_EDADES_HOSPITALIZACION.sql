/* inicio de conteo : Notificacion consolidada ciex A0 */

DECLARE @lcfechainicio datetime = CONVERT(DATETIME, '2017-09-03', 101)
DECLARE @lcfechafin datetime =  CONVERT(DATETIME, '2017-09-09', 101)
declare @lcedad int = 1
DECLARE @lctipoedad_anios varchar(1) = 'A'
declare @ltipoedad_mes varchar(1)= 'M'
declare @ltipoedad_dias varchar(1)= 'D'
declare @ltipodiagnostico table (TD varchar(1))
declare @lcietabla_reporte table (titulo varchar(50), cdistrito varchar(30), clocalidad varchar(50), menor1 int)
declare @lcietabla_reporte_hospi table (titulo varchar(50), cdistrito varchar(30), clocalidad varchar(50), menor1 int)
insert @ltipodiagnostico values('D'), ('P'), ('R')
declare @lcietabla table (diag varchar(7))
declare @lctablenoti_hospi table (emergencia_id varchar(20), fecha datetime, nombres varchar(250), paciente varchar(13), fecha_nacimiento datetime, 
edad varchar(13), sexo varchar(1), direccion varchar(200), distrito varchar(20), localidad varchar(20), ciextotal varchar(20))
insert @lcietabla 
select ciex10 from [SIGSALUD].[dbo].[EPIDEMIOLOGIACIEX] where tipo_reporte = 1
declare @lctablenoti table (emergencia_id varchar(20), fecha datetime, nombres varchar(250), paciente varchar(13), fecha_nacimiento datetime, 
edad varchar(13), sexo varchar(1), direccion varchar(200), distrito varchar(20), localidad varchar(20), ciextotal varchar(20))
declare @lctablenoti_final table (servicio varchar(20), nombres varchar(250), paciente varchar(13), historia varchar(13), fecha_nacimiento datetime, 
 sexo varchar(1), direccion varchar(200), distrito varchar(20), descripcion_distrito varchar(200), localidad varchar(20), descripcion_localidad varchar(200), ciextotal varchar(20))
declare @lctablenoti_final_hospi table (servicio varchar(20), nombres varchar(250), paciente varchar(13), historia varchar(13), fecha_nacimiento datetime, 
 sexo varchar(1), direccion varchar(200), distrito varchar(20), descripcion_distrito varchar(200), localidad varchar(20), descripcion_localidad varchar(200), ciextotal varchar(20))
insert into  @lctablenoti
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX4 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < @lcedad
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX5 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < @lcedad
union all
SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX6 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) < @lcedad
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA,  PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST2 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST3 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST4 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST5 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST6 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes, @ltipoedad_dias)
UNION ALL
 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
insert into  @lctablenoti_final
select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
insert into @lcietabla_reporte
select 'EMERGENCIA - CONS - HOSP - EDAS - MENOR QUE 1 AÑO ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
from @lctablenoti_final a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC

declare @lcedadr2 int = 1
declare @lcedad2r2 int = 4
	insert @lcietabla 
	select ciex10 from [SIGSALUD].[dbo].[EPIDEMIOLOGIACIEX] where tipo_reporte = 1
	insert into  @lctablenoti
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX4 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) between @lcedadr2 and @lcedad2r2
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX5 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) between @lcedadr2 and @lcedad2r2
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX6 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA,  PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST2 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST3 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST4 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST5 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST6 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	UNION ALL
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadr2 and @lcedad2r2
	insert into  @lctablenoti_final
	select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	
	insert into @lcietabla_reporte
	select 'EMERGENCIA - CONS - HOSP - EDAS - ENTRE 1 Y 4 AÑOS ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
	from @lctablenoti_final a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC
	
    declare @lcedadr3 int = 1
    declare @lcedad2r3 int = 5
	insert @lcietabla 
	select ciex10 from [SIGSALUD].[dbo].[EPIDEMIOLOGIACIEX] where tipo_reporte = 1
	insert into  @lctablenoti
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX4 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2r3
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX5 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2r3
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX6 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a','')) >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA,  PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST2 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST3 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST4 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST5 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST6 in (select td from @ltipodiagnostico)  AND TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	UNION ALL
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad2r3
	insert into  @lctablenoti_final
	select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	
    insert into @lcietabla_reporte
	select 'EMERGENCIA - CONS - HOSP - EDAS - MAYOR QUE 5 AÑOS ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
	from @lctablenoti_final a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC

 	insert into  @lctablenoti_hospi
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TipoEdad IN (@ltipoedad_mes, @ltipoedad_dias)
	  insert into  @lctablenoti_final_hospi
	  select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	  (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	  from @lctablenoti_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	  left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	  insert into @lcietabla_reporte_hospi
	  select 'HOSPITALIZACION MENOR QUE 1 AÑO ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
	  from @lctablenoti_final_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	  left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC
	  
	  
declare @lcedadH14 int = 1
    declare @lcedadH142 int = 4
	insert into  @lctablenoti_hospi
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedadH14 and @lcedadH142
	  insert into  @lctablenoti_final_hospi
	  select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	  (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	  from @lctablenoti_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	  left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
    insert into @lcietabla_reporte_hospi
	select 'HOSPITALIZACION ENTRE 1 Y 4 AÑOS ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
	from @lctablenoti_final_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC
	


declare @lcedad5 int = 1
    declare @lcedad52 int = 5
	insert into  @lctablenoti_hospi
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD >= @lcedad52
	  insert into  @lctablenoti_final_hospi
	  select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	  (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	  from @lctablenoti_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	  left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	  
	 insert into @lcietabla_reporte_hospi
	select 'HOSPITALIZACION MAYOR QUE 5  AÑOS ' AS TITULO, (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as cdistrito, upper(c.nombre) as clocalidad, count(a.paciente) as menor1 
	from @lctablenoti_final_hospi a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente GROUP BY  b.distrito , c.nombre ORDER BY b.distrito , c.nombre  ASC
	
select * from @lcietabla_reporte
union all 
select * from @lcietabla_reporte_hospi

