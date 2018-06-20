use BDPERSONAL 
/* agregar trabajador a la respectiva unidad */
/* 1 - priemro identificar al trabajador */
/* 2 - identificar la unidad */

/* declare @lcodigo varchar(13) = '084685'
declare @idservdeparunid int = 13
declare @iddepartunid int = 13
INSERT INTO [BDPERSONAL].[dbo].[ServicioMaestro]([IdServDepartUnid],[IdDepartUnid],[Codigo],[Activo])
     VALUES (@idservdeparunid, @iddepartunid, @lcodigo, 1)
*/

/* cambiar el trabajador de una unidad a otra */

/* 1: identificar al trabajador y su Unidad */
/* 2: */
declare @lcodigo varchar(13) = '084639'
declare @idservdeparunid int = 13
declare @iddepartunid int = 13
update dbo.ServicioMaestro set idservdepartunid = @idservdeparunid, iddepartunid = @iddepartunid where Codigo = @lcodigo



select * from MAESTRO where NOMBRE like '%calderon %'

select * from dbo.ServicioMaestro where Codigo = '084544'


select * from dbo.ServicioDepartUnidad order by IdDepartUnid asc



update dbo.ServicioMaestro set idservdepartunid = 40, iddepartunid = 18where Codigo = '084544'


