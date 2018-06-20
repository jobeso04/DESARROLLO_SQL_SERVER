use sigsalud
 declare @fecha_actual datetime = CONVERT(DATETIME, '2017-07-01', 101)
 
 declare @fecha1 datetime =  CONVERT(datetime, DATEADD(dd,-(DAY(@fecha_actual)-1),@fecha_actual),101) 
 declare @fecha2 datetime
 declare @ndias varchar(10)
 declare @lt_tmp_consul table (CONSULTORIO char(6), NOMBRE_CONSULTORIO varchar(50))
 set @ndias = convert(varchar(8),dateadd(month,1, @fecha1),112)
 set @fecha2 = dateadd(day,-1,left(@ndias,6)+'01')
 insert into @lt_tmp_consul
 select consultorio, NOMBRE_CONSULTORIO from V_CITA where fecha BETWEEN @fecha1 and @fecha2 group by CONSULTORIO, NOMBRE_CONSULTORIO  
 order by NOMBRE_CONSULTORIO 
 select * from @lt_tmp_consul order by nombre_consultorio asc
 
 
 
 
  SELECT nombre_medico, medico
  FROM V_CITA WHERE CONSULTORIO = '4041' 
  AND MONTH(FECHA) = 7 AND YEAR(FECHA) = 2017 group by NOMBRE_MEDICO, medico order by NOMBRE_MEDICO asc
  
SELECT CONVERT(VARCHAR(10),FECHA, 103) AS FECHA  
 FROM V_CITA WHERE CONSULTORIO = '4041' AND MONTH(FECHA) = 7
  AND YEAR(FECHA) = 2017 and medico = 'CPD' GROUP BY FECHA ORDER BY FECHA
  
  
    SELECT TURNO_CONSULTA, COUNT(TURNO_CONSULTA) as cantidad_turnos 
     FROM V_CITA WHERE CONSULTORIO = '4041' AND MONTH(FECHA) = 7 AND YEAR(FECHA) = 2017 and DAY(fecha) = 4 and medico = 'CPD'
      group by TURNO_CONSULTA 
      
      
 SELECT fecha_programacion, CITA_ID, estado, nombre, NOMBRE_SEGURO, NOMBRE_TIPO_CITA, TURNO_CONSULTA , HORA, NUMERO, CASE WHEN USUARIO IS NULL THEN '' ELSE USUARIO END AS USUARIO
       FROM V_CITA WHERE CONSULTORIO = '4041' AND MONTH(FECHA) = 7 AND YEAR(FECHA) = 2017 and DAY(fecha) = 4 and turno_consulta = 'T'
       and medico = 'CPD' order by turno_consulta, NUMERO asc      


SELECT * FROM V_CITA



 
 
 