/* CASO EN DONDE LAS ATENCINES DEL DIA 30/03/2015, 2503/2015, 27/03/2015, NO APARECEN EN EL KARDEX DE HISTORIA CLINICA */
/* La solucion es identifcar las columnas de fecha y hora de salida de la h.c., porque estan vacias con esas fechas */
/* Tenemos que ingresar las fecha y hora de salida, la fecha de salida es igual a la fecha de de la atencion, lo mismo que con la hora */

use SIGSALUD
select * from PACIENTE where NOMBREs like 'manco alejandro%'
select * from PACIENTE where paciente = '2015245138'
/* obtiene las citas */
select * from CITA where paciente = '2015245138' order by FECHA_PROGRAMACION desc
select * from V_CITA where paciente = '2015245138' order by FECHA_PROGRAMACION desc

/* revisa las atenciones */
select * from atencionc where paciente = '2015245138' order by FECHA desc
select * from atencionc where ID_CITA in ('150028985', '150028968', '150028954')
select * from atenciond where ID_CITA in ('150028985', '150028968', '150028954')
select * from atencionc where ID_CITA in ('150028985', '150028968', '150028954')

/* revisa los archivos de H.C. */
select * from ARCHIVO_MOV where ID_CITA in ('150028985', '150028968', '150028954')

/* Obtiene Reporte  de kardex de historias salientes */
SELECT FECHA,HORA,TURNO,HISTORIA,NOMBRES,CONSULTORIO,NOMBRE_CONSULTORIO,NOMBRE_MEDICO,FECHA_SALIDA,HORA_SALIDA,FECHA_RETORNO,HORA_RETORNO,ESTADO,NUMERO,OBSERVA1
 FROM v_Archivomov  WHERE Historia='0219937' AND FECHA BETWEEN CONVERT(DATETIME, '2000-03-15', 101) AND  CONVERT(DATETIME, '2016-03-15', 101)
  ORDER BY Nombre_Consultorio,Turno,Nombre_Medico,Numero ASC

/* ahy se podra ver que los campos de esas fechas estan vacios, la solucion consiste en llebar esos campos con datos coincidentes... */
/* Ahora lo ingresamos en el archivo_mov,  identificando la cita */
/*    
UPDATE  ARCHIVO_MOV SET  FECHA_SAL = CONVERT(DATETIME, '2015-03-27', 101), HORA_SAL = '08:15 AM'   WHERE ID_CITA = '150028968'
UPDATE  ARCHIVO_MOV SET  FECHA_SAL = CONVERT(DATETIME, '2015-03-25', 101), HORA_SAL = '10:15 AM'   WHERE ID_CITA = '150028954'
UPDATE  ARCHIVO_MOV SET  FECHA_SAL = CONVERT(DATETIME, '2015-03-30', 101), HORA_SAL = '08:21 AM'   WHERE ID_CITA = '150028985'
*/

 
