/* UTILIDAD PARA CAMBIAR EL IP A LOCAL PARA EL SISTEMA DE EMERGENCIA  */


declare @lcip_server varchar(12) = '192.168.0.9'
declare @lip_local varchar(12) = 'localhost'

update [SIGSALUD].[dbo].[ACCESO_MODULO] set URL = REPLACE(url,@lcip_server,@lip_local) 
update [SIGSALUD].[dbo].[PLANTILLA_MODULO] set URL = REPLACE(url,@lcip_server,@lip_local) 
update [SIGSALUD].[dbo].[ACCESO_MODULO] set URL = REPLACE(url,@lcip_server,@lip_local)  

