/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *   FROM [SIGSALUD].[dbo].[SEEM_EMERGENCIA_PROCESADO]
--4254

select *  from [SIGSALUD].[dbo].[v_emergencia] where 
month(convert(date, fecha_sal)) = 2 and year(convert(date, fecha_sal)) = 2018   and CIEX1 <> '0' and
FECHA_SAL <> '' order by convert(date, fecha_sal)

 and fecha_sal not in ('__/__/__  ', ' _/__/__  ') and fecha_sal is not null and FECHA_SAL <> ''
 order by convert(date, fecha_sal)
 
--4254

3817
