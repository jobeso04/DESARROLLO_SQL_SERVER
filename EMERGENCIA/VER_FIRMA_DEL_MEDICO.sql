/* Permite ver si el medico tiene firma */

use SIGSALUD
select MEDICO, NOMBRE,COLEGIO, ABREVIATURA, DNI, id_medico, firma, tiene_firma from medico where abreviatura = 'MED' ORDER BY tiene_firma ASC

/* Cantidad de medicos que tienen firma */
select MEDICO, NOMBRE,COLEGIO, ABREVIATURA, DNI, id_medico, firma, tiene_firma from medico where abreviatura = 'MED' AND tiene_firma = '1' ORDER BY NOMBRE ASC 
select COUNT(*) CANTIDAD_CON_FIRMAS from medico where tiene_firma = '1' 

/* Cantidad de medicos que no tienen firmas */
select MEDICO, NOMBRE,COLEGIO, ABREVIATURA, DNI, id_medico, firma, tiene_firma from medico where abreviatura = 'MED' AND tiene_firma = '0' ORDER BY NOMBRE ASC 
select MEDICO, NOMBRE,COLEGIO, ABREVIATURA, DNI, id_medico, firma, tiene_firma from medico where abreviatura = 'MED' ORDER BY NOMBRE ASC 
select COUNT(*) CANTIDAD_CON_FIRMAS  from medico where tiene_firma = '0' ORDER BY NOMBRE ASC 

/* UPDATE MEDICO SET tiene_firma = '0' WHERE tiene_firma IS NULL */


/* AGREGAR FIRMAS */
/* UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'ZLJ'
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'CMT'
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'BSA'
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'VNC' 
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'RCB' 
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'ZTB'
   UPDATE MEDICO SET tiene_firma = '1' WHERE MEDICO = 'SGA'      */
   


