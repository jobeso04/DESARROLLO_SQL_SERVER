/* revisar dastos del medico en atencion c */

declare @lcmedico varchar(3) = 'PCJ'
DECLARE @lcfecha VARCHAR(10) = '04/10/2017'
/*
update archivo_mov set EST_PAC = '2' where MEDICO = @lcmedico and FECHA =  @lcfecha
update CITA set estado = '3' where MEDICO = @lcmedico  and FECHA = @lcfecha and FECHA_OTORGA is not null and ESTADO = 4
DELETE FROM ATENCIOND where id_cita in (select id_cita from ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha) 
DELETE FROM ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha 
*/


select * from V_ATENCIONES where MEDICO = @lcmedico and FECHA =  @lcfecha



/*
select * from ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha ORDER BY ID_CITA DESC
select * from ATENCIOND where id_cita in (select id_cita from ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha) ORDER BY ID_CITA DESC
select ESTADO, * from CITA where MEDICO = @lcmedico  and FECHA = @lcfecha and FECHA_OTORGA is not null
*/




/*
update archivo_mov set EST_PAC = '2' where MEDICO = @lcmedico and FECHA =  @lcfecha
update CITA set estado = '3' where MEDICO = @lcmedico  and FECHA = @lcfecha and FECHA_OTORGA is not null and ESTADO = 4
DELETE FROM ATENCIOND where id_cita in (select id_cita from ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha) 
DELETE FROM ATENCIONC where MEDICO = @lcmedico and FECHA = @lcfecha 
*/