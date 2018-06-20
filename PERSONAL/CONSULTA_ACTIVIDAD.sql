/* para el ANEXO 1 : FORMULARIO REFERENCIAL TURNOS TRABAJO MEDICO */
DECLARE @lnanio INT = 2017
declare @lnmes int = 10
declare @lcactividad varchar(1) = '4'
/* OBTENER TODOS LOS MEDICOS QUE FUERON INGRESADOS */
/*
SELECT CODIGO FROM [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] WHERE MES = @lnmes AND ANIO = @lnanio
GROUP BY CODIGO
*/



/* consultorio */
DECLARE @lccodigo VARCHAR(13) = '084226'
select A.ID_ACTIVIDAD, A.CODIGO, A.DIA, A.MES, A.ANIO, A.ESTADO, A.TURNO, A.HORAS, B.NOMBRE, B.ABREVIATURA, C.NOMBRE
 from [BDPERSONAL].[dbo].[ACTIVIDAD_DETALLE] A LEFT JOIN [BDPERSONAL].[dbo].[ACTIVIDADES] B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
LEFT JOIN [BDPERSONAL].[dbo].[MAESTRO] C  ON A.CODIGO = C.CODIGO
 where MES = @lnmes and anio = @lnanio AND A.ESTADO = 1 and A.CODIGO = @lccodigo and a.ID_ACTIVIDAD = @lcactividad  order by DIA 
 




select SUM(HORAS) as tt from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 AND B.ID_ACTIVIDAD  = 4

use sigsalud
select medico, TURNO_CONSULTA, COUNT(TURNO_CONSULTA) from cita where FECHA between  CONVERT(datetime, '2017-09-01', 101) and CONVERT(datetime, '2017-09-30', 101) 
and TURNO_CONSULTA in ('M', 'T') group by medico, TURNO_CONSULTA order by MEDICO 




select * from cita where FECHA between  CONVERT(datetime, '2017-09-01', 101) and CONVERT(datetime, '2017-09-30', 101) 
and TURNO_CONSULTA in ('M', 'T') order by FECHA asc




select SUM(HORAS) from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 and CODIGO = '084376' and a.ID_ACTIVIDAD = '4'  


select * from dbo.ACTIVIDAD_DETALLE A LEFT JOIN ACTIVIDADES B ON A.ID_ACTIVIDAD = B.ID_ACTIVIDAD
 where MES = 10 and anio = 2017 AND A.ESTADO = 1 and CODIGO = '084376' 
 
 
  and a.ID_ACTIVIDAD = '4'  
  
  
  
