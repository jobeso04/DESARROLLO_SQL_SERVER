/* dado el codigo del personal, nos permiet ver en que unidad esta  */

declare @lccodigo varchar(13) = '054071'
/* para obtener servicio */
select IdServDepartUnid, NOMBRE from [BDPERSONAL].[dbo].[ServicioDepartUnidad] where  IdServDepartUnid in (select IdServDepartUnid from [BDPERSONAL].[dbo].[ServicioMaestro]
 where codigo = @lccodigo)
 
 /* para obtener deprtamento */
SELECT IdDepartUnid, nombre FROM [BDPERSONAL].[dbo].[DepartamentoUnidad]
where IdDepartUnid in (select IdDepartUnid from [BDPERSONAL].[dbo].[ServicioMaestro] where codigo = @lccodigo)

/* para obtener usuario */
select dni, dni + ' -- ' + clave as dni_clave, nombres  from [SIGSALUD].[dbo].[USUARIO_WEB] where DNI in (select DniAcceso from [BDPERSONAL].[dbo].[ServicioDepartUnidad]where  IdDepartUnid in 
(select IdDepartUnid from [BDPERSONAL].[dbo].[ServicioMaestro]where codigo = @lccodigo))





SELECT IdDepartUnid, Codigo, Nombre, Tipo, ACTIVO FROM [BDPERSONAL].[dbo].[DepartamentoUnidad]
SELECT IdServDepartUnid, IdDepartUnid, Codigo, Nombre, DniAcceso FROM [BDPERSONAL].[dbo].[ServicioDepartUnidad] WHERE IdDepartUnid = 19



select * from [BDPERSONAL].[dbo].[ServicioMaestro] order by Codigo asc

select Codigo, COUNT(codigo) as cnt from [BDPERSONAL].[dbo].[ServicioMaestro] group by Codigo order by COUNT(codigo) desc


select * from [BDPERSONAL].[dbo].[ServicioMaestro] where Codigo = '084175'


update [BDPERSONAL].[dbo].[ServicioMaestro] set IdDepartUnid = ?, IdServDepartUnid = ? where Codigo = '084175'


use BDPERSONAL
select * from maestro where codigo in ('084175', '084052', '084612', '084658', '084722')


select * from [BDPERSONAL].[dbo].[ServicioDepartUnidad]



select DniAcceso from [BDPERSONAL].[dbo].[ServicioDepartUnidad]where  IdDepartUnid in 
(select IdDepartUnid from [BDPERSONAL].[dbo].[ServicioMaestro]where codigo = '054071')



select * from [BDPERSONAL].[dbo].[ServicioDepartUnidad]where  IdServDepartUnid in 
(select IdServDepartUnid from [BDPERSONAL].[dbo].[ServicioMaestro]where codigo = '054071')

select * from [BDPERSONAL].[dbo].[ServicioDepartUnidad]
