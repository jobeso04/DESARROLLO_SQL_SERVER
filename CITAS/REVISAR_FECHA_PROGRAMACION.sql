/****** Script para el comando SelectTopNRows de SSMS  ******/
SELECT *
  FROM [V_CITA] WHERE CONSULTORIO = '5070' ORDER BY FECHA DESC
  

SELECT * FROM CITA WHERE CONSULTORIO = '5070' AND MEDICO = 'QOM' ORDER BY FECHA DESC

  
  USE SIGSALUD
  SELECT * FROM CONSULTORIO WHERE NOMBRE LIKE 'NUTRICI%'
  
  SELECT * FROM MEDICO WHERE NOMBRE LIKE 'QUISPE%'