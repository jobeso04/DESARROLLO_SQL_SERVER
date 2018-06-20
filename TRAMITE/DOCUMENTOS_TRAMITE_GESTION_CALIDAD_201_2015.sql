use tramite
select EXPEDIENTE, nombre, CONVERT(varchar(10), fecha, 103) as FECHA, HORA, ASUNTO, b.DESCRIPCION as DESTINO, c.DESCRIPCION as documento from expediente a left join actor b 
on a.actor_atencion = b.actor left join TIPO_DOCUMENTO c on a.TIPO_DOCUMENTO = c.tipo_documento  where FECHA between CONVERT(datetime, '2014-01-01', 101) and CONVERT(datetime, '2017-07-12', 101) and
a.ACTOR in ('040305', '05') order by A.FECHA asc

