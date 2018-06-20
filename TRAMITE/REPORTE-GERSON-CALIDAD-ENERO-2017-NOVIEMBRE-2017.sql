/* reporte de tramite */

declare @lcfecha1 datetime = CONVERT(datetime, '2017-01-01', 101)
declare @lcfecha2 datetime = CONVERT(datetime, '2017-11-29', 101)
select EXPEDIENTE, a.nombre, CONVERT(varchar(10), fecha, 103) as FECHA, HORA, ASUNTO, b.DESCRIPCION as DESTINO, b.DESCRIPCION as documento
 from [TRAMITE].[dbo].[EXPEDIENTE] a left join [TRAMITE].[dbo].[actor] b on a.actor_atencion = b.actor left join TIPO_DOCUMENTO c on a.TIPO_DOCUMENTO = c.tipo_documento
   where FECHA between @lcfecha1 and @lcfecha2  and  a.ACTOR in ('040305', '05') order by A.FECHA asc
   
   


select * from [TRAMITE].[dbo].[actor] 
where ACTOR in ('040305', '05')


