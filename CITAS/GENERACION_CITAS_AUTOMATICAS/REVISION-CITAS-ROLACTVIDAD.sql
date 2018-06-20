/* GRABAR EN ROL DE MEDICOS A PARTIR DE LAS CITAS   */
 declare @fecha_actual datetime = CONVERT(DATETIME, '2018-01-01', 101)
 declare @cperiodo varchar(6) = convert(varchar(4), year(@fecha_actual)) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@fecha_actual)))),2)
 declare @lconsultorio varchar(4) = '2027'
 -- declare @lc_medico varchar(4) = 'MUR'
 declare @lt_turnos_consultorio table (TURNO_CONSULTA varchar(1))
  insert @lt_turnos_consultorio select TURNO_CONSULTA from  [SIGSALUD].[dbo].[CITA]  where CONSULTORIO = @lconsultorio AND CONSULTORIO = @lconsultorio 
   and MONTH(fecha) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual)  GROUP BY TURNO_CONSULTA
declare @lt_fechas_medicos_m table (dia int, medico varchar(3)) 
 insert  @lt_fechas_medicos_m
 SELECT DAY(fecha) AS DIA, MEDICO  FROM  [SIGSALUD].[dbo].[CITA] WHERE 
 MONTH(FECHA) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual) and CONSULTORIO =  @lconsultorio
 and TURNO_CONSULTA = 'M' GROUP BY FECHA, MEDICO  ORDER BY FECHA 
 
declare @lt_fechas_medicos_t table (dia int, medico varchar(3)) 
 insert  @lt_fechas_medicos_t
 SELECT DAY(fecha) AS DIA, MEDICO  FROM  [SIGSALUD].[dbo].[CITA] WHERE 
 MONTH(FECHA) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual) and CONSULTORIO =  @lconsultorio
 and TURNO_CONSULTA = 'T' GROUP BY FECHA, MEDICO ORDER BY FECHA 

declare @lt_fechas_medicos_i table (dia int, medico varchar(3)) 
 insert  @lt_fechas_medicos_i
 SELECT DAY(fecha) AS DIA , MEDICO  FROM  [SIGSALUD].[dbo].[CITA] WHERE 
 MONTH(FECHA) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual) and CONSULTORIO =  @lconsultorio
 and TURNO_CONSULTA = 'I' GROUP BY FECHA, MEDICO ORDER BY FECHA 

declare @lt_fechas_medicos_n table (dia int, medico varchar(3)) 
 insert  @lt_fechas_medicos_n
 SELECT DAY(fecha) AS DIA , MEDICO  FROM  [SIGSALUD].[dbo].[CITA] WHERE 
 MONTH(FECHA) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual) and CONSULTORIO =  @lconsultorio
 and TURNO_CONSULTA = 'N' GROUP BY FECHA, MEDICO ORDER BY FECHA 


declare @lc_turno_grabar_m  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'M')
declare @lc_turno_grabar_t  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'T')
declare @lc_turno_grabar_i  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'I')
declare @lc_turno_grabar_n  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'N')
declare @lc_servicio varchar(2) = (SELECT TOP 1 SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]  WHERE CONSULTORIO = @lconsultorio)
DECLARE @lindicador_actividadc int = (SELECT  COUNT(*)  FROM [SIGSALUD].[dbo].[ROLACTIVIDADC] where PERIODO = @cperiodo and SERVICIO = @lc_servicio)
/*
if @lindicador_actividadc = 0
  INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDADC] ([PERIODO],[SERVICIO],[OBSERVACION],[FECHA_INICIALIZACION],[FECHA_CIERRE],[ESTADO])
       VALUES (@cperiodo, @lc_servicio, ' ', CONVERT(DATETIME, '2017-12-29', 101), CONVERT(DATETIME, '2017-12-29', 101), '0')
  */     
 
 /* TURNO : MAÑANA */
 DECLARE @lcdia1m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 1) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 1) end
 DECLARE @lcdia2m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 2) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 2) end
 DECLARE @lcdia3m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 3) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 3) end
 DECLARE @lcdia4m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 4) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 4) end
 DECLARE @lcdia5m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 5) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 5) end
 DECLARE @lcdia6m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 6) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 6) end
 DECLARE @lcdia7m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 7) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 7) end
 DECLARE @lcdia8m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 8) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 8) end
 DECLARE @lcdia9m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 9) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 9) end
 DECLARE @lcdia10m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 10) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 10) end
 DECLARE @lcdia11m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 11) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 11) end
 DECLARE @lcdia12m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 12) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 12) end
 DECLARE @lcdia13m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 13) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 13) end
 DECLARE @lcdia14m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 14) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 14) end
 DECLARE @lcdia15m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 15) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 15) end
 DECLARE @lcdia16m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 16) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 16) end
 DECLARE @lcdia17m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 17) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 17) end
 DECLARE @lcdia18m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 18) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 18) end
 DECLARE @lcdia19m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 19) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 19) end
 DECLARE @lcdia20m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 20) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 20) end
 DECLARE @lcdia21m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 21) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 21) end
 DECLARE @lcdia22m varchar(3) = case when (select medico   from @lt_fechas_medicos_m  where dia = 22) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 22) end
 DECLARE @lcdia23m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 23) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 23) end
 DECLARE @lcdia24m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 24) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 24) end
 DECLARE @lcdia25m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 25) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 25) end
 DECLARE @lcdia26m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 26) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 26) end
 DECLARE @lcdia27m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 27) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 27) end
 DECLARE @lcdia28m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 28) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 28) end
 DECLARE @lcdia29m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 29) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 29) end
 DECLARE @lcdia30m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 30) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 30) end
 DECLARE @lcdia31m varchar(3) =  case when (select medico   from @lt_fechas_medicos_m  where dia = 31) is null then '' else (select medico   from @lt_fechas_medicos_m  where dia = 31) end
 
 
 
/** TARDE */
 DECLARE @lcdia1t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 1) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 1) end
 DECLARE @lcdia2t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 2) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 2) end
 DECLARE @lcdia3t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 3) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 3) end
 DECLARE @lcdia4t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 4) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 4) end
 DECLARE @lcdia5t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 5) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 5) end
 DECLARE @lcdia6t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 6) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 6) end
 DECLARE @lcdia7t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 7) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 7) end
 DECLARE @lcdia8t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 8) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 8) end
 DECLARE @lcdia9t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 9) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 9) end
 DECLARE @lcdia10t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 10) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 10) end
 DECLARE @lcdia11t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 11) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 11) end
 DECLARE @lcdia12t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 12) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 12) end
 DECLARE @lcdia13t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 13) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 13) end
 DECLARE @lcdia14t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 14) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 14) end
 DECLARE @lcdia15t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 15) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 15) end
 DECLARE @lcdia16t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 16) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 16) end
 DECLARE @lcdia17t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 17) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 17) end
 DECLARE @lcdia18t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 18) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 18) end
 DECLARE @lcdia19t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 19) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 19) end
 DECLARE @lcdia20t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 20) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 20) end
 DECLARE @lcdia21t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 21) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 21) end
 DECLARE @lcdia22t varchar(3) = case when (select medico  from @lt_fechas_medicos_t  where dia = 22) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 22) end
 DECLARE @lcdia23t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 23) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 23) end
 DECLARE @lcdia24t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 24) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 24) end
 DECLARE @lcdia25t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 25) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 25) end
 DECLARE @lcdia26t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 26) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 26) end
 DECLARE @lcdia27t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 27) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 27) end
 DECLARE @lcdia28t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 28) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 28) end
 DECLARE @lcdia29t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 29) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 29) end
 DECLARE @lcdia30t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 30) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 30) end
 DECLARE @lcdia31t varchar(3) =  case when (select medico  from @lt_fechas_medicos_t  where dia = 31) is null then '' else (select medico  from @lt_fechas_medicos_t  where dia = 31) end

/* FIN DE TARDE */

/* INICIO TURNO INTERMEDIO I */

 DECLARE @lcdia1i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 1) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 1) end
 DECLARE @lcdia2i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 2) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 2) end
 DECLARE @lcdia3i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 3) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 3) end
 DECLARE @lcdia4i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 4) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 4) end
 DECLARE @lcdia5i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 5) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 5) end
 DECLARE @lcdia6i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 6) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 6) end
 DECLARE @lcdia7i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 7) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 7) end
 DECLARE @lcdia8i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 8) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 8) end
 DECLARE @lcdia9i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 9) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 9) end
 DECLARE @lcdia10i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 10) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 10) end
 DECLARE @lcdia11i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 11) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 11) end
 DECLARE @lcdia12i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 12) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 12) end
 DECLARE @lcdia13i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 13) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 13) end
 DECLARE @lcdia14i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 14) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 14) end
 DECLARE @lcdia15i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 15) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 15) end
 DECLARE @lcdia16i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 16) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 16) end
 DECLARE @lcdia17i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 17) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 17) end
 DECLARE @lcdia18i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 18) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 18) end
 DECLARE @lcdia19i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 19) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 19) end
 DECLARE @lcdia20i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 20) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 20) end
 DECLARE @lcdia21i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 21) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 21) end
 DECLARE @lcdia22i varchar(3) = case when (select medico  from @lt_fechas_medicos_i  where dia = 22) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 22) end
 DECLARE @lcdia23i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 23) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 23) end
 DECLARE @lcdia24i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 24) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 24) end
 DECLARE @lcdia25i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 25) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 25) end
 DECLARE @lcdia26i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 26) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 26) end
 DECLARE @lcdia27i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 27) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 27) end
 DECLARE @lcdia28i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 28) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 28) end
 DECLARE @lcdia29i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 29) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 29) end
 DECLARE @lcdia30i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 30) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 30) end
 DECLARE @lcdia31i varchar(3) =  case when (select medico  from @lt_fechas_medicos_i  where dia = 31) is null then '' else (select medico  from @lt_fechas_medicos_i  where dia = 31) end



/* FIN DE TURNO INTERMEDIO I */

/* INICO DE TURNO NOCHE : N */

DECLARE @lcdia1n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 1) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 1) end
 DECLARE @lcdia2n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 2) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 2) end
 DECLARE @lcdia3n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 3) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 3) end
 DECLARE @lcdia4n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 4) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 4) end
 DECLARE @lcdia5n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 5) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 5) end
 DECLARE @lcdia6n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 6) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 6) end
 DECLARE @lcdia7n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 7) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 7) end
 DECLARE @lcdia8n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 8) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 8) end
 DECLARE @lcdia9n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 9) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 9) end
 DECLARE @lcdia10n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 10) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 10) end
 DECLARE @lcdia11n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 11) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 11) end
 DECLARE @lcdia12n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 12) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 12) end
 DECLARE @lcdia13n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 13) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 13) end
 DECLARE @lcdia14n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 14) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 14) end
 DECLARE @lcdia15n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 15) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 15) end
 DECLARE @lcdia16n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 16) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 16) end
 DECLARE @lcdia17n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 17) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 17) end
 DECLARE @lcdia18n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 18) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 18) end
 DECLARE @lcdia19n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 19) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 19) end
 DECLARE @lcdia20n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 20) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 20) end
 DECLARE @lcdia21n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 21) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 21) end
 DECLARE @lcdia22n varchar(3) = case when (select medico  from @lt_fechas_medicos_n  where dia = 22) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 22) end
 DECLARE @lcdia23n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 23) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 23) end
 DECLARE @lcdia24n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 24) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 24) end
 DECLARE @lcdia25n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 25) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 25) end
 DECLARE @lcdia26n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 26) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 26) end
 DECLARE @lcdia27n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 27) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 27) end
 DECLARE @lcdia28n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 28) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 28) end
 DECLARE @lcdia29n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 29) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 29) end
 DECLARE @lcdia30n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 30) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 30) end
 DECLARE @lcdia31n varchar(3) =  case when (select medico  from @lt_fechas_medicos_n  where dia = 31) is null then '' else (select medico  from @lt_fechas_medicos_n  where dia = 31) end


/* FIN DE TURNO NOCHE : N */

/* GRABAR EN EL PRINCIPAL */

if @lc_turno_grabar_m = 'M'
  INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD] ([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],
     [D09],[D10],[D11],[D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
  SELECT @cperiodo, @lc_servicio, @lconsultorio, 'M', @lcdia1m, @lcdia2m, @lcdia3m, @lcdia4m, @lcdia5m, @lcdia6m, @lcdia7m, @lcdia8m, @lcdia9m,
   @lcdia10m, @lcdia11m, @lcdia12m, @lcdia13m, @lcdia14m, @lcdia15m, @lcdia16m, @lcdia17m, @lcdia18m, @lcdia19m, @lcdia20m, @lcdia21m, 
    @lcdia22m, @lcdia23m, @lcdia24m, @lcdia25m, @lcdia26m, @lcdia27m, @lcdia28m, @lcdia29m, @lcdia30m, @lcdia31m
    
 

if @lc_turno_grabar_t = 'T'
   INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD] ([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],
     [D09],[D10],[D11],[D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
      SELECT @cperiodo, @lc_servicio, @lconsultorio, 'T', @lcdia1t, @lcdia2t, @lcdia3t, @lcdia4t, @lcdia5t, @lcdia6t, @lcdia7t, @lcdia8t, @lcdia9t,
   @lcdia10t, @lcdia11t, @lcdia12t, @lcdia13t, @lcdia14t, @lcdia15t, @lcdia16t, @lcdia17t, @lcdia18t, @lcdia19t, @lcdia20t, @lcdia21t, 
    @lcdia22t, @lcdia23t, @lcdia24t, @lcdia25t, @lcdia26t, @lcdia27t, @lcdia28t, @lcdia29t, @lcdia30t, @lcdia31t
 
   
if @lc_turno_grabar_i = 'I'
  INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD] ([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],
     [D09],[D10],[D11],[D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
 SELECT @cperiodo, @lc_servicio, @lconsultorio, 'I', @lcdia1i, @lcdia2i, @lcdia3i, @lcdia4i, @lcdia5i, @lcdia6i, @lcdia7i, @lcdia8i, @lcdia9i,
   @lcdia10i, @lcdia11i, @lcdia12i, @lcdia13i, @lcdia14i, @lcdia15i, @lcdia16i, @lcdia17i, @lcdia18i, @lcdia19i, @lcdia20i, @lcdia21i, 
    @lcdia22i, @lcdia23i, @lcdia24i, @lcdia25i, @lcdia26i, @lcdia27i, @lcdia28i, @lcdia29i, @lcdia30i, @lcdia31i
     
 if @lc_turno_grabar_i = 'N'
   INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDAD] ([PERIODO],[SERVICIO],[CONSULTORIO],[TURNO_CONSULTA],[D01],[D02],[D03],[D04],[D05],[D06],[D07],[D08],
     [D09],[D10],[D11],[D12],[D13],[D14],[D15],[D16],[D17],[D18],[D19],[D20],[D21],[D22],[D23],[D24],[D25],[D26],[D27],[D28],[D29],[D30],[D31])
 SELECT @cperiodo, @lc_servicio, @lconsultorio, 'N', @lcdia1n, @lcdia2n, @lcdia3n, @lcdia4n, @lcdia5n, @lcdia6n, @lcdia7n, @lcdia8n, @lcdia9n,
   @lcdia10n, @lcdia11n, @lcdia12n, @lcdia13n, @lcdia14n, @lcdia15n, @lcdia16n, @lcdia17n, @lcdia18n, @lcdia19n, @lcdia20n, @lcdia21n, 
    @lcdia22n, @lcdia23n, @lcdia24n, @lcdia25n, @lcdia26n, @lcdia27n, @lcdia28n, @lcdia29n, @lcdia30n, @lcdia31n
 
 