    /*
    DECLARE @lcfechainicio datetime = ?lfechainicio
    DECLARE @lcfechafin datetime = ?lfechafin 
    */
    
    DECLARE @lcfechainicio datetime = CONVERT(DATETIME, '2017-09-03', 101)
    DECLARE @lcfechafin datetime =  CONVERT(DATETIME, '2017-09-09', 101)    
	declare @lcedad int = 2
	declare @lcedad2 int = 11 
	DECLARE @lctipoedad_anios varchar(1) = 'A'
	declare @ltipoedad_mes varchar(1)= 'M'
	declare @ltipoedad_dias varchar(1)= 'D'
	DECLARE @lctipoedad_anios_hospitalizacion varchar(1) = '1'
	declare @ltipoedad_mes_hospitalizacion varchar(1)= '2'
	declare @ltipoedad_dias_hospitalizacion varchar(1)= '3'
	declare @ltipodiagnostico table (TD varchar(1))
	insert @ltipodiagnostico values('D'), ('P'), ('R')
	declare @lcietabla table (diag varchar(7))
	insert @lcietabla 
	select ciex10 from [SIGSALUD].[dbo].[EPIDEMIOLOGIACIEX] where tipo_reporte = 2
	declare @lctablenoti table (emergencia_id varchar(20), fecha datetime, nombres varchar(250), paciente varchar(13), fecha_nacimiento datetime, 
	edad varchar(13), sexo varchar(1), direccion varchar(200), distrito varchar(20), localidad varchar(20), ciextotal varchar(20))
	declare @lctablenoti_final table (servicio varchar(20), nombres varchar(250), paciente varchar(13), historia varchar(13), fecha_nacimiento datetime, 
	 sexo varchar(1), direccion varchar(200), distrito varchar(20), descripcion_distrito varchar(200), localidad varchar(20), descripcion_localidad varchar(200), ciextotal varchar(20))
	insert into  @lctablenoti
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX4 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX4 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a',''))  = 0  and convert(int, REPLACE(SUBSTRING(EDAD,5,2),'m','')) between @lcedad and @lcedad2
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO,  EDAD, SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX5 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX5 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a',''))  = 0  and convert(int, REPLACE(SUBSTRING(EDAD,5,2),'m','')) between @lcedad and @lcedad2
	union all
	SELECT  'EMERGENCIA' EMERGENCIA_ID, fecha, NOMBRES, PACIENTE, FECHA_NACIMIENTO, EDAD,  SEXO, DIRECCION, DISTRITO, LOCALIDAD, CIEX6 as CIEXTOTAL
	 FROM [SIGSALUD].[dbo].[EMERGENCIA] WHERE fecha between @lcfechainicio and @lcfechafin AND CIEX6 IN (SELECT DIAG FROM @lcietabla ) AND convert(int, REPLACE(SUBSTRING(EDAD,1,4),'a',''))  = 0  and convert(int, REPLACE(SUBSTRING(EDAD,5,2),'m','')) between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA,  PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO1 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO1 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST1 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO2 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO2 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST2 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO3 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO3 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST3 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO4 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO4 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST4 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO5 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO5 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST5 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	SELECT 'CONSULTORIO' AS EMERGENCIA_ID, FECHA, PACIENTE AS  NOMBRES, FICHAFAM AS  PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO, 
	       NOMDIST_CITA AS DIRECCION, COD_DIST AS DISTRITO,  LOCALIDAD = '', CODIGO6 AS CIEXTOTAL   FROM [SIGSALUD].[dbo].[HIS]
	       WHERE CONVERT(datetime, fecha, 103) BETWEEN @lcfechainicio AND @lcfechafin AND CODIGO6 IN (SELECT DIAG FROM @lcietabla)  and DIAGNOST6 in (select td from @ltipodiagnostico)  AND TIPOEDAD in (@ltipoedad_mes) and EDAD between @lcedad and @lcedad2
	UNION ALL
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TipoEdad = @ltipoedad_mes_hospitalizacion and Edad between @lcedad and @lcedad2
	insert into  @lctablenoti_final
	select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	select  'X' AS indicador, emergencia_id as SERVICIO, convert(varchar(10), a.fecha, 103) as Fecha, a.nombres, a.edad, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente order by a.nombres asc 
