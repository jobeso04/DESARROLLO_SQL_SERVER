USE SIGSALUD
DECLARE @lcturno VARCHAR(1) = 'M'
DECLARE @lcturno2 VARCHAR(1) = 'T'
declare @lcfecha varchar(10) = '2016-12-31'
declare @lconsultorio varchar(13) = '5050'  /* 5010, 5011, 5050 */
SELECT  * FROM CITA WHERE CONSULTORIO = @lconsultorio AND FECHA = CONVERT(DATETIME, @lcfecha, 101) and TURNO_CONSULTA = @lcturno  ORDER BY TURNO_CONSULTA, NUMERO ASC
SELECT  * FROM CITA WHERE CONSULTORIO = @lconsultorio AND FECHA = CONVERT(DATETIME, @lcfecha, 101) and TURNO_CONSULTA = @lcturno2  ORDER BY TURNO_CONSULTA, NUMERO ASC
 /* delete FROM CITA WHERE numero > '08' and CONSULTORIO = @lconsultorio AND FECHA = CONVERT(DATETIME, @lcfecha, 101) and TURNO_CONSULTA = @lcturno             
 delete FROM CITA WHERE numero RIO = @lconsultorio AND FECHA = CONVERT(DATETIME, @lcfecha, 101) and TURNO_CONSULTA = @lcturno       */