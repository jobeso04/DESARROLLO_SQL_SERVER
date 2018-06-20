USE BDPERSONAL

SELECT * FROM MAESTRO WHERE CODIGO = '054073'

SELECT * FROM MAESTRO WHERE CODIGO = '084654'
SELECT * FROM dbo.ServicioDepartUnidad ORDER BY Nombre ASC
SELECT * FROM dbo.ServicioMaestro WHERE IDSERVDEPARTUNID = '11'

ROCHA = '054073'


/* UPDATE dbo.ServicioMaestro SET CODIGO = '084654' WHERE IDSERVDEPARTUNID = '11' AND Codigo = '054073' */


SELECT * FROM dbo.ServicioMaestro WHERE IDSERVDEPARTUNID = '11' AND Codigo = '054073'

SELECT * FROM dbo.ServicioMaestro WHERE  Codigo = '054089'


EMEREGENCIA = 59


/* Enfermeria - Emergencia */
SELECT * FROM dbo.ServicioDepartUnidad WHERE IdServDepartUnid = 59 and IdDepartUnid = '19'
/* ref y contrareferencia - enfermera */
SELECT * FROM dbo.ServicioDepartUnidad WHERE IdServDepartUnid = 61 and IdDepartUnid = '13'

/* mayeya picon patricia */
/* 054089 */

/* Ubicar en referencia contrareferencia */
SELECT * FROM dbo.ServicioDepartUnidad  where IdServDepartUnid = 61 /* referencia y contrareferencia */
SELECT * FROM dbo.ServicioDepartUnidad  where IdServDepartUnid = 59 /* enfermeria emergencia  */

SELECT * FROM dbo.ServicioMaestro where Codigo = '054089'

SELECT * FROM dbo.ServicioMaestro where Codigo = '084369'

select * from ASISTENCIA where AÑO = 2016 and MES = 4 and Codigo = '054089' 


select * from ASISTENCIA where AÑO = 2016 and MES = 4 and Codigo = '084369'

/* cambio de referncia a servcio de enfermera  - emergencia */


select * from ASISTENCIA where AÑO = 2016 and MES = 4 and Codigo = '054089' 
/* update ASISTENCIA set IdServDepartUnid = 59 where AÑO = 2016 and MES = 4 and Codigo = '054089'  */



/**** pediatria ***//
16

SELECT * FROM dbo.ServicioDepartUnidad  where idservdepartunid = 69 and IdDepartUnid = 19




//* canchaya quispe katy */

refere



