USE SIGSALUD	
declare @lcfechainicio datetime = convert(datetime, '2016-07-01', 101)
declare @lcfechafin datetime = convert(datetime, '2016-10-31', 101)

SELECT ESTADO, CITA_ID, NOMBRE_CONSULTORIO, TURNO_CONSULTA  
FROM V_CITA WHERE FECHA between @lcfechainicio and @lcfechafin and estado <> '0'  order by FECHA, CONSULTORIO  asc


SELECT NOMBRE_CONSULTORIO, COUNT(NOMBRE_CONSULTORIO) AS TOTAL_CONSULTORIO, TURNO_CONSULTA, COUNT(TURNO_CONSULTA)   AS TTURNO
FROM V_CITA WHERE FECHA between @lcfechainicio and @lcfechafin and estado <> '0'  GROUP BY NOMBRE_CONSULTORIO, TURNO_CONSULTA  ORDER BY NOMBRE_CONSULTORIO, TURNO_CONSULTA ASC
