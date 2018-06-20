USE SIGSALUD 
declare @cdni varchar(8) = '10224641'
delete from ACCESO_MODULO where DNI =  @cdni and PLANTILLA is null 