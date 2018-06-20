


select A.consultorio, b.nombre, a.TURNO_CONSULTA, a.FECHA_PROGRAMACION from [SIGSALUD].[dbo].[CITA] a left join [SIGSALUD].[dbo].[CONSULTORIO] B
ON A.CONSULTORIO = B.CONSULTORIO
 where MONTH(a.fecha) = 12 and year(a.fecha) = 2017 order by FECHA_PROGRAMACION desc

