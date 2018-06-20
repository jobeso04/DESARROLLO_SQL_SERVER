/* Duplicar las tablas para pruebas */
use BDPERSONAL
select * into ASISTENCIA2 from asistencia 

select * into TMPHISTORICOPERSONALCAS_backup from TMPHISTORICOPERSONALCAS

select * into TMPASISTENCIACAS_backup from TMPASISTENCIACAS

select * into TMPPERSONALCAS_backup from TMPPERSONALCAS