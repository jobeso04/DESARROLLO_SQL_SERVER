/* GRABAR EN ROL DE MEDICOS A PARTIR DE LAS CITAS   */
 declare @fecha_actual datetime = CONVERT(DATETIME, '2018-01-01', 101)
 declare @cperiodo varchar(6) = convert(varchar(4), year(@fecha_actual)) + RIGHT('00' + Ltrim(Rtrim(convert(varchar(2), month(@fecha_actual)))),2)
 declare @lconsultorio varchar(4) = '2027'
 declare @lc_medico varchar(4) = 'MUR'
 declare @lt_turnos_consultorio table (TURNO_CONSULTA varchar(1))
 insert @lt_turnos_consultorio select TURNO_CONSULTA from  [SIGSALUD].[dbo].[CITA]  where CONSULTORIO = @lconsultorio AND CONSULTORIO = @lconsultorio 
   and MONTH(fecha) = MONTH(@fecha_actual) and YEAR(fecha) = YEAR(@fecha_actual) and medico = @lc_medico GROUP BY TURNO_CONSULTA
declare @lc_turno_grabar_m  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'M')
declare @lc_turno_grabar_t  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'T')
declare @lc_turno_grabar_i  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'I')
declare @lc_turno_grabar_n  varchar(1) = (select turno_consulta  from @lt_turnos_consultorio  where turno_consulta = 'N')
declare @lc_servicio varchar(2) = (SELECT TOP 1 SERVICIO FROM [SIGSALUD].[dbo].[ROLACTIVIDAD]  WHERE CONSULTORIO = @lconsultorio)
DECLARE @lindicador_actividadc int = (SELECT  COUNT(*)  FROM [SIGSALUD].[dbo].[ROLACTIVIDADC] where PERIODO = @cperiodo and SERVICIO = @lc_servicio)
if @lindicador_actividadc = 0
  INSERT INTO [SIGSALUD].[dbo].[ROLACTIVIDADC] ([PERIODO],[SERVICIO],[OBSERVACION],[FECHA_INICIALIZACION],[FECHA_CIERRE],[ESTADO])
       VALUES (@cperiodo, @lc_servicio, ' ', CONVERT(DATETIME, '2017-12-29', 101), CONVERT(DATETIME, '2017-12-29', 101), '0')
       

 
 /* TURNO : MAÑANA */
 declare @lc_turno_m varchar(1) = 'M'
 DECLARE @lcdia1m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m  AND DAY(FECHA) = 1)
 
 DECLARE @lcdia2m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 2)
 
 DECLARE @lcdia3m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 3)
 
 DECLARE @lcdia4m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 4)
 
 DECLARE @lcdia5m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 5)
 
 DECLARE @lcdia6m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 6)
 
 DECLARE @lcdia7m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 7)
         
DECLARE @lcdia8m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 8)
 
DECLARE @lcdia9m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 9)

DECLARE @lcdia10m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 10)

DECLARE @lcdia11m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 11)

DECLARE @lcdia12m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 12)

DECLARE @lcdia13m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 13)

DECLARE @lcdia14m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 14)

DECLARE @lcdia15m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 15)

DECLARE @lcdia16m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 16)

DECLARE @lcdia17m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 17)

DECLARE @lcdia18m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 18)

DECLARE @lcdia19m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 19)

DECLARE @lcdia20m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 20)

DECLARE @lcdia21m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 21)

DECLARE @lcdia22m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 22)

DECLARE @lcdia23m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 23)

DECLARE @lcdia24m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 24)

DECLARE @lcdia25m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 25)

DECLARE @lcdia26m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 26)

DECLARE @lcdia27m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 27)

DECLARE @lcdia28m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 28)

DECLARE @lcdia29m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 29)

DECLARE @lcdia30m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 30)
        
DECLARE @lcdia31m varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_m AND DAY(FECHA) = 31)


/** TARDE */
declare @lc_turno_t varchar(1) = 'T'

DECLARE @lcdia1t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 1)
 
 DECLARE @lcdia2t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 2)
 
 DECLARE @lcdia3t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 3)
 
 DECLARE @lcdia4t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 4)
 
 DECLARE @lcdia5t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 5)
 
 DECLARE @lcdia6t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 6)
 
 DECLARE @lcdia7t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 7)
         
DECLARE @lcdia8t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 8)
 
DECLARE @lcdia9t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 9)

DECLARE @lcdia10t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 10)

DECLARE @lcdia11t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 11)

DECLARE @lcdia12t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 12)

DECLARE @lcdia13t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 13)

DECLARE @lcdia14t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 14)

DECLARE @lcdia15t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 15)

DECLARE @lcdia16t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 16)

DECLARE @lcdia17t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 17)

DECLARE @lcdia18t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 18)

DECLARE @lcdia19t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 19)

DECLARE @lcdia20t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 20)

DECLARE @lcdia21t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 21)

DECLARE @lcdia22t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 22)

DECLARE @lcdia23t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 23)

DECLARE @lcdia24t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 24)

DECLARE @lcdia25t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 25)

DECLARE @lcdia26t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 26)

DECLARE @lcdia27t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 27)

DECLARE @lcdia28t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 28)

DECLARE @lcdia29t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 29)

DECLARE @lcdia30t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 30)
        
DECLARE @lcdia31t varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_t AND DAY(FECHA) = 31)


/* FIN DE TARDE */

/* INICIO TURNO INTERMEDIO I */

declare @lc_turno_i varchar(1) = 'I'

DECLARE @lcdia1i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 1)
 
 DECLARE @lcdia2i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 2)
 
 DECLARE @lcdia3i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 3)
 
 DECLARE @lcdia4i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 4)
 
 DECLARE @lcdia5i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 5)
 
 DECLARE @lcdia6i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 6)
 
 DECLARE @lcdia7i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 7)
         
DECLARE @lcdia8i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 8)
 
DECLARE @lcdia9i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 9)

DECLARE @lcdia10i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 10)

DECLARE @lcdia11i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 11)

DECLARE @lcdia12i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 12)

DECLARE @lcdia13i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 13)

DECLARE @lcdia14i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 14)

DECLARE @lcdia15i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 15)

DECLARE @lcdia16i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 16)

DECLARE @lcdia17i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 17)

DECLARE @lcdia18i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 18)

DECLARE @lcdia19i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 19)

DECLARE @lcdia20i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 20)

DECLARE @lcdia21i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 21)

DECLARE @lcdia22i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 22)

DECLARE @lcdia23i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 23)

DECLARE @lcdia24i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 24)

DECLARE @lcdia25i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 25)

DECLARE @lcdia26i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 26)

DECLARE @lcdia27i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 27)

DECLARE @lcdia28i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 28)

DECLARE @lcdia29i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 29)

DECLARE @lcdia30i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 30)
        
DECLARE @lcdia31i varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_i AND DAY(FECHA) = 31)


/* FIN DE TURNO INTERMEDIO I */

/* INICO DE TURNO NOCHE : N */

declare @lc_turno_n varchar(1) = 'N'

DECLARE @lcdia1n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 1)
 
 DECLARE @lcdia2n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 2)
 
 DECLARE @lcdia3n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 3)
 
 DECLARE @lcdia4n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 4)
 
 DECLARE @lcdia5n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 5)
 
 DECLARE @lcdia6n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 6)
 
 DECLARE @lcdia7n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 7)
         
DECLARE @lcdia8n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 8)
 
DECLARE @lcdia9n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 9)

DECLARE @lcdia10n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 10)

DECLARE @lcdia11n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 11)

DECLARE @lcdia12n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 12)

DECLARE @lcdia13n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 13)

DECLARE @lcdia14n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 14)

DECLARE @lcdia15n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 15)

DECLARE @lcdia16n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 16)

DECLARE @lcdia17n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 17)

DECLARE @lcdia18n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 18)

DECLARE @lcdia19n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 19)

DECLARE @lcdia20n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 20)

DECLARE @lcdia21n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 21)

DECLARE @lcdia22n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 22)

DECLARE @lcdia23n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 23)

DECLARE @lcdia24n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 24)

DECLARE @lcdia25n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 25)

DECLARE @lcdia26n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 26)

DECLARE @lcdia27n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 27)

DECLARE @lcdia28n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 28)

DECLARE @lcdia29n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 29)

DECLARE @lcdia30n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 30)
        
DECLARE @lcdia31n varchar(3) =  (select CASE WHEN COUNT(*) > 0 THEN @lc_medico ELSE ' ' END  from [SIGSALUD].[dbo].[CITA] 
 where  CONSULTORIO = @lconsultorio  and MONTH(fecha) = MONTH(@FECHA_ACTUAL) and YEAR(fecha) = year(@FECHA_ACTUAL)
        and medico = @lc_medico  AND TURNO_CONSULTA  = @lc_turno_n AND DAY(FECHA) = 31)

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
 
 