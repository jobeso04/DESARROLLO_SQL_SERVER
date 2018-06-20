/* Para agregar en usop de notas de enfermeria */

use SIGSALUD
ALTER TABLE [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento]   ADD AGREGAR_UCI varchar(2)
ALTER TABLE [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  ADD AGREGAR_UCI varchar(2)
update [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento]  set AGREGAR_UCI = 0
update [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB]  set AGREGAR_UCI = 0
DROP PROCEDURE  SP_SET_EMERGENCIA_17;


/* crear procedimiento  SP_SET_EMERGENCIA_17*/
/* crear procedimiento dbo.SP_GET_EMERGENCIA_PROC_WEB_8_2_FECHAS */
/* crear procedimiento dbo.SP_GET_EMERGENCIA_PROC_WEB_8_2_FECHAS_UCI */



INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Alimentaci�n de Sonda Nasog�strica / Sonda Nasoyeyunal', 1, '00000060')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Asistencia y manejo de la ventilaci�n mec�nica, dia inicial', 1,'00000061')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Apoyo Ventilatorio no Invasivo', 1,'00000062')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Atenci�n del paciente dia - UCI', 1,'00000063')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Espirometr�a', 1,'00000064')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('E.K.G - (Tomarlo)', 1,'00000065')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Fisioterapia Respiratoria', 1,'00000066')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Infusi�n Intravenosa', 1,'00000067')
  INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Intubaci�n G�strica y Aspiraci�n o Lavado para Tratamiento', 1,'00000068')
 UPDATE [SIGSALUD].[dbo].[ProcedimientoEnfermeria]  SET [Descripcion] = 'Medici�n de presi�n venosa central (PVC)' where IdProcedimientoEnfermeria = 11
 UPDATE [SIGSALUD].[dbo].[ProcedimientoEnfermeria]  SET [Descripcion] = 'Monitorizaci�n Hemodin�mica (BH)' where IdProcedimientoEnfermeria = 20
 INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Oximetr�a de Pulso no Invasiva', 1,'00000069')
INSERT INTO [SIGSALUD].[dbo].[ProcedimientoEnfermeria]([Descripcion],[Activo],[Idh])
       VALUES ('Oximetr�a de Pulso no Invasiva', 1,'00000069')
UPDATE [SIGSALUD].[dbo].[ProcedimientoEnfermeria]  SET [Descripcion] = 'Preparaci�n y conecci�n de infusi�n en Bomba de infusi�n' where IdProcedimientoEnfermeria = 36

 
 
 

select * from [SIGSALUD].[dbo].[EmergenciaDetalleProcedimiento] order by IdEmergenciaDetalleProcedimiento desc
select * from [SIGSALUD].[dbo].[EMERGENCIA_DET_WEB] order by FECHA_HORA_REG desc






