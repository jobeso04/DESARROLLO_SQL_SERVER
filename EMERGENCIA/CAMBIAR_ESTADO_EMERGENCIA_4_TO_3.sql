/* CAMBIAR ESTADO DE PACIENTE EN EMERGENCIA */

USE SIGSALUD
GO

/* 1 - Ubicar al paciente e indentificar su ID en la columna emergencia_id  */
/* ejemplo : paciente , MENDOZA AVALOS */

select * from emergencia where nombreS like '%BOHO%' order by fecha desc

/* 2- Una Vez identificado su ID */
/* usar la instruccion siguiente */
/* UPDATE EMERGENCIA SET ESTADO = '3' WHERE EMERGENCIA_ID = '15039287' */



