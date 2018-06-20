/* para consolidado */

declare @lnanio int = 2017
declare @lnmes int = 11

declare @lt_actividad table (id_actividad int, nhoras int, presentacion varchar(10))
insert @lt_actividad
select ID_ACTIVIDAD, sum(horas) as Nhoras, convert(varchar(10), sum(horas)) AS PRESENTACION  from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
where MES = @lnmes and ANIO = @lnanio and horas <> 0  group by id_actividad order by ID_ACTIVIDAD
select 'X' AS indicador,  a.id_actividad, CASE WHEN b.activo = '1' THEN 'MEDICO'
     WHEN b.activo = '2' THEN 'OBSTETRA'
     WHEN b.activo = '3' THEN 'NUTRICION'
     WHEN b.activo = '4' THEN 'PEDIATRIA'
     ELSE 'NO DEFINIDO'  END AS PROFESIONAL, b.NOMBRE, a.nhoras, 
 b.activo, presentacion  from @lt_actividad a left join [BDPERSONAL].[dbo].[ACTIVIDADES] b
on a.id_actividad = b.ID_ACTIVIDAD ORDER BY PROFESIONAL, NOMBRE  






/*** ACTIVIDADES 
- ACTIVO = 1 - MEDICO
- ACTIVO = 2- OBSTETRA
- ACTIVO = 3 - NUTRICION 
 ACTIVO = 4 - PEDIATRIA
*****************/

