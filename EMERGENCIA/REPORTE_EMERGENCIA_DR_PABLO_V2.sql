use sigsalud 
  DECLARE @lfecha1 varchar(10) = '2016-01-01'
  DECLARE @lfecha2 varchar(10) = '2016-06-30'
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'TMPMEDICOS_SEMESTRE')
	BEGIN
		DROP TABLE TMPMEDICOS_SEMESTRE   
	END
 SELECT MEDICO, NOMBRE_CONSULTORIO, upper(NOMBRE_ESPECIALIDAD) ESPECIALIDAD, NOMBRE, 0 AS ATENCIONES  into TMPMEDICOS_SEMESTRE 
   FROM V_MEDICO 
    WHERE MEDICO IN  (SELECT QUIEN_ATIENDE FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) GROUP BY QUIEN_ATIENDE) ORDER BY NOMBRE_CONSULTORIO ASC 
SELECT * FROM TMPMEDICOS_SEMESTRE 
 
/*  
 SELECT QUIEN_ATIENDE, COUNT(QUIEN_ATIENDE) ATENCIONES  FROM EMERGENCIA WHERE FECHA between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) GROUP BY QUIEN_ATIENDE ORDER BY QUIEN_ATIENDE ASC   
*/
  
  /*
  SELECT * FROM TMPMEDICOS_SEMESTRE 
  
  DROP TABLE TMPMEDICOS_SEMESTRE  */