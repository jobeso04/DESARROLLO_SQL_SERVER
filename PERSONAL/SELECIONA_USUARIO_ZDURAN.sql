/* SELECCIONA LOS USUARIOS PARA VER LOS PERMISOS */
use SIGSALUD
declare @ldniuser varchar(13) = '07654933'
/* select * from ACCESO_MODULO where DNI = @ldniuser
select * from ACCESO_MENU where DNI = @ldniuser and ID_MENU = '24467405895125778366'
select * from ACCESO_submenu where DNI = @ldniuser and ID_MENU = '24467405895125778366'  */

INSERT INTO [SIGSALUD].[dbo].[ACCESO_SUBMENU]([ID_SUBMENU],[NOMBRE],[ICONO],[URL],[ORDEN],[ESTADO],[ID_MENU],[ID_AM],[DNI])
     VALUES ('97991822490401135253', 'Abrir Mes por Servicios', '<i class="menu-icon fa fa-sitemap"></i>', '../abrir_mes_unidades/index.jsp', 12,1, '24467405895125778366', '11020212552901091031',    @ldniuser)
     

/* delete from [SIGSALUD].[dbo].[ACCESO_SUBMENU] where ID_SUBMENU = '97991822490401135252' and NOMBRE = 'Cerrar mes por Unidades' */


USE BDPERSONAL 
select * from dbo.ServicioDepartUnidad  order by NOMBRE asc 


select  mes, 
   CASE MES  
     WHEN datepart(month,getdate())THEN 'Actual' 
      ELSE ' '   END SEL_MES, nombre
 from  mes order by sel_mes desc;