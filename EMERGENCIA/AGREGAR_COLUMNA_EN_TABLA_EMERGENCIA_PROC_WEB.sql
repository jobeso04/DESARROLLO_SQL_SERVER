use SIGSALUD
go

/* ** Agregar Nuevas Columnas a : EMERGENCIA_PROC_WEB */
ALTER TABLE dbo.EMERGENCIA_PROC_WEB ADD APELLIDOS varchar(200) NULL, NOMBRE varchar(200) NULL, 
SEXO varchar(1) NULL, TIPO_DE_EDAD varchar(1) NULL, NEDAD varchar(3) NULL, DNI varchar(8) NULL

/* Agregar Nuevas Columnas a : dbo.EmergenciaDetalleProcedimiento */
alter table dbo.EmergenciaDetalleProcedimiento add TRATAMIENTO varchar(250) NULL, ZONA_APLICACION varchar(2) NULL, cnombreprocedimiento varchar(200) NULL

/********************************************************************************************************************/
ALTER TABLE EMERGENCIA ADD fecharegistro datetime null
ALTER TABLE PACIENTE ADD fecharegistro datetime null
	


