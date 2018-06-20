/* APARECE MENSAJE DE DNI YA EXISTE, PERO NO SE VISUALIZA */
Select * from Maestro where DNI = '08873560'
Select * from v_Maestro where DNI = '08873560'




Select * from Maestro where codigo = '084812'
union all
Select * from Maestro where codigo = '084462'

update Maestro set codfuncion = '0024', CODUNIDADORG = '0260', DNI_RELOG = 8873560  where codigo = '084812'
update Maestro set codhora = 'R'   where codigo = '084462'

Select * from Maestro where DNI = '08873560'


Select * from v_Maestro where codigo = '084812'
union all
Select * from v_Maestro where codigo = '084462'




update Maestro set situacion = '20' where DNI = '00511161'