/* HOSPITALIZACION 1 Y 4 DE EDAS */

DECLARE @lcfechainicio datetime = CONVERT(DATETIME, '2017-09-03', 101)
DECLARE @lcfechafin datetime =  CONVERT(DATETIME, '2017-09-09', 101)
    declare @lcedad int = 1
    declare @lcedad2 int = 4
	DECLARE @lctipoedad_anios varchar(1) = 'A'
	declare @ltipoedad_mes varchar(1)= 'M'
	declare @ltipoedad_dias varchar(1)= 'D'
	declare @ltipodiagnostico table (TD varchar(1))
	insert @ltipodiagnostico values('D'), ('P'), ('R')
	declare @lcietabla table (diag varchar(7))
	insert @lcietabla 
	select ciex10 from [SIGSALUD].[dbo].[EPIDEMIOLOGIACIEX] where tipo_reporte = 1
	declare @lctablenoti table (emergencia_id varchar(20), fecha datetime, nombres varchar(250), paciente varchar(13), fecha_nacimiento datetime, 
	edad varchar(13), sexo varchar(1), direccion varchar(200), distrito varchar(20), localidad varchar(20), ciextotal varchar(20))
	declare @lctablenoti_final table (servicio varchar(20), nombres varchar(250), paciente varchar(13), historia varchar(13), fecha_nacimiento datetime, 
	 sexo varchar(1), direccion varchar(200), distrito varchar(20), descripcion_distrito varchar(200), localidad varchar(20), descripcion_localidad varchar(200), ciextotal varchar(20))
	insert into  @lctablenoti
	 select 'HOSPITALIZACION' AS EMERGENCIA_ID, FECHA1 AS FECHA, NOMBRES  = '', PACIENTE, FECHA_NACIMIENTO = '', CONVERT(VARCHAR(4), EDAD) AS EDAD, SEXO = '',
	   DIRECCION = '', DISTRITO = '', LOCALIDAD = '', DX1 AS CIEXTOTAL from  [SIGSALUD].[dbo].[HOSPITALIZACION]
	  where FECHA1 BETWEEN @lcfechainicio AND @lcfechafin and DX1 IN (SELECT DIAG FROM @lcietabla) and TIPOEDAD = @lctipoedad_anios AND EDAD between @lcedad and @lcedad2
	  insert into  @lctablenoti_final
	  select  DISTINCT  emergencia_id as SERVICIO,  a.nombres, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
	  (case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
	  from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
	  left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente  
	  select  'X' AS INDICADOR, emergencia_id as SERVICIO, convert(varchar(10), a.fecha, 101) as Fecha, a.nombres, a.edad, a.paciente, d.historia, a.fecha_nacimiento, a.sexo, a.direccion, a.distrito, 
(case when b.distrito = 'LURIGANCHO' THEN 'CHOSICA' ELSE b.distrito  END) as descripcion_distrito, a.localidad, c.nombre as descripcion_localidad, ciextotal
from @lctablenoti a left join [SIGSALUD].[dbo].[UBIGEO] b on a.distrito = b.ubigeo left join [SIGSALUD].[dbo].[LOCALIDAD] c on a.localidad = c.localidad
left join [SIGSALUD].[dbo].[PACIENTE] d on a.paciente = d.paciente order by a.nombres asc 
