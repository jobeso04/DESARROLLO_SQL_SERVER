/* UTILIDAD PARA CMBIAR EL IP A LOCAL PARA EL SISTEMA DE EMERGENCIA  */
 
use SIGSALUD
declare @lcip_server varchar(12) = '192.168.0.9'
declare @lip_local varchar(12) = 'localhost'

update ACCESO_MODULO set URL = REPLACE(url,@lcip_server,@lip_local) 
update plantilla_MODULO set URL = REPLACE(url,@lcip_server,@lip_local) 
update ACCESO_MODULO set URL = REPLACE(url,@lcip_server,@lip_local)  

