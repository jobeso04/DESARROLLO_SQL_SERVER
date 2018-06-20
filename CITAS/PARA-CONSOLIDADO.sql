/* para consolidado */

declare @lnanio int = 2017
declare @lnmes int = 11
declare @lt_actividad table (id_actividad int, nhoras int)
insert @lt_actividad
select ID_ACTIVIDAD, sum(horas) as Nhoras from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
where MES = @lnmes and ANIO = @lnanio and horas <> 0  group by id_actividad order by ID_ACTIVIDAD

select a.id_actividad, b.NOMBRE, a.nhoras, b.activo from @lt_actividad a left join [BDPERSONAL].[dbo].[ACTIVIDADES] b
on a.id_actividad = b.ID_ACTIVIDAD


select * from [BDPERSONAL].[dbo].[ACTIVIDADES]









SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDADES] WHERE ACTIVO = '1'



SELECT * FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
WHERE ANIO = 2017 AND MES = 11 AND ID_ACTIVIDAD = 4



SELECT SUM(HORAS) AS TOTAL  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
WHERE ANIO = 2017 AND MES = 11 AND ID_ACTIVIDAD = 4


SELECT SUM(HORAS) AS TOTAL  FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE]
WHERE ANIO = 2017 AND MES = 10 AND ID_ACTIVIDAD = 4


SELECT 
