USE SIGSALUD
GO

select * from MEDICO
/* Agregar Columna de Firma */
Alter Table MEDICO add firma varchar(50) NULL

/* Eliminar Columna de Firma */
Alter Table MEDICO  Drop Column firma

select * from MEDICO

/* EN EL PROCEDIMIENTO ALMACENADO */
EXEC dbo.SP_GET_EMERGENCIA_20

/* AGREGAR EN LA SELECCION:  T10.FIRMA */
 
 /* EJEMPLO : */
 
 EXEC SP_GET_EMERGENCIA_20 '20150901','20150901'
 
 /* WINI CAMPOS : fwcr.jpg */
 
 SELECT * FROM MEDICO WHERE NOMBRE LIKE '%calderon%'
 
 SELECT * FROM MEDICO WHERE ESPECIALIDAD = '0006' ORDER BY NOMBRE ASC
 
/*  UPDATE MEDICO SET FIRMA = 'fwcr.jpg' WHERE MEDICO = 'WCR' */
/*  UPDATE MEDICO SET FIRMA = 'vvs.JPG' WHERE MEDICO = 'SVV' */
/*  UPDATE MEDICO SET FIRMA = 'jcrr.jpg' WHERE MEDICO = 'JRR' */
/*  UPDATE MEDICO SET FIRMA = 'fjcl.jpg' WHERE MEDICO = 'CLJ' */
/*  UPDATE MEDICO SET FIRMA = 'vc.jpg' WHERE MEDICO = 'CLO' */
                              



 