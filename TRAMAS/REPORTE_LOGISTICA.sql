USE SIGSALUD
declare @lc_medico varchar(3) = 'YPJ'
/* abril */
declare @lcfecha1_a datetime = convert(datetime, '2017-04-01', 101)
declare @lcfecha2_a datetime = convert(datetime, '2017-04-30', 101)
declare @lc_mes varchar(20) = 'ABRIL'
/* mayo */
declare @lcfecha1_m datetime = convert(datetime, '2017-05-01', 101)
declare @lcfecha2_m datetime = convert(datetime, '2017-05-31', 101)
declare @lc_mes_m varchar(20) = 'MAYO'

/* JUNIO */
declare @lcfecha1_j datetime = convert(datetime, '2017-06-01', 101)
declare @lcfecha2_j datetime = convert(datetime, '2017-06-30', 101)
declare @lc_mes_j varchar(20) = 'JUNIO'

/* JULIO */
declare @lcfecha1_jl datetime = convert(datetime, '2017-07-01', 101)
declare @lcfecha2_jl datetime = convert(datetime, '2017-07-31', 101)
declare @lc_mes_jl varchar(20) = 'JULIO'

/* AGOSTO */
declare @lcfecha1_ag datetime = convert(datetime, '2017-08-01', 101)
declare @lcfecha2_ag datetime = convert(datetime, '2017-08-31', 101)
declare @lc_mes_ag varchar(20) = 'AGOSTO'

SELECT @lc_mes AS MES, NOMCONSULTORIO AS SERVICIO, COUNT(NOMCONSULTORIO) AS ATENCIONES FROM V_ATENCIONC WHERE fecha between @lcfecha1_a and @lcfecha2_a and MEDICO = @lc_medico GROUP BY NOMCONSULTORIO
UNION ALL
SELECT @lc_mes AS MES,  'EMERGENCIA' AS SERVICIO, COUNT(*) AS ATENCIONES from EMERGENCIA where fecha between @lcfecha1_a and @lcfecha2_a and MEDICO = @lc_medico AND ESTADO > '2'
UNION ALL
SELECT @lc_mes AS MES,  'HOSPITALIZACION' AS SERVICIO,COUNT(*) AS ATENCIONES FROM HOSPITALIZACION WHERE FECHA1 BETWEEN  @lcfecha1_a and @lcfecha2_a and RESPONSABLE1 = @lc_medico
union all
select '----' as MES, '---------' AS SERVICIO, 0 AS ATENCIONES
UNION ALL
SELECT @lc_mes_m AS MES, NOMCONSULTORIO AS SERVICIO, COUNT(NOMCONSULTORIO) AS ATENCIONES FROM V_ATENCIONC WHERE fecha between @lcfecha1_m and @lcfecha2_m and MEDICO = @lc_medico GROUP BY NOMCONSULTORIO
UNION ALL
SELECT @lc_mes_m AS MES,  'EMERGENCIA' AS SERVICIO, COUNT(*) AS ATENCIONES from EMERGENCIA where fecha between @lcfecha1_m and @lcfecha2_m and MEDICO = @lc_medico AND ESTADO > '2'
UNION ALL
SELECT @lc_mes_m AS MES,  'HOSPITALIZACION' AS SERVICIO,COUNT(*) AS ATENCIONES FROM HOSPITALIZACION WHERE FECHA1 BETWEEN  @lcfecha1_m and @lcfecha2_m and RESPONSABLE1 = @lc_medico
union all
select '----' as MES, '---------' AS SERVICIO, 0 AS ATENCIONES
UNION ALL
SELECT @lc_mes_j AS MES, NOMCONSULTORIO AS SERVICIO, COUNT(NOMCONSULTORIO) AS ATENCIONES FROM V_ATENCIONC WHERE fecha between @lcfecha1_j and @lcfecha2_j and MEDICO = @lc_medico GROUP BY NOMCONSULTORIO
UNION ALL
SELECT @lc_mes_j AS MES,  'EMERGENCIA' AS SERVICIO, COUNT(*) AS ATENCIONES from EMERGENCIA where fecha between @lcfecha1_j and @lcfecha2_j and MEDICO = @lc_medico AND ESTADO > '2'
UNION ALL
SELECT @lc_mes_j AS MES,  'HOSPITALIZACION' AS SERVICIO,COUNT(*) AS ATENCIONES FROM HOSPITALIZACION WHERE FECHA1 BETWEEN  @lcfecha1_j and @lcfecha2_j and RESPONSABLE1 = @lc_medico
UNION ALL
select '----' as MES, '---------' AS SERVICIO, 0 AS ATENCIONES
UNION ALL
SELECT @lc_mes_jl AS MES, NOMCONSULTORIO AS SERVICIO, COUNT(NOMCONSULTORIO) AS ATENCIONES FROM V_ATENCIONC WHERE fecha between @lcfecha1_jl and @lcfecha2_jl and MEDICO = @lc_medico GROUP BY NOMCONSULTORIO
UNION ALL
SELECT @lc_mes_jl AS MES,  'EMERGENCIA' AS SERVICIO, COUNT(*) AS ATENCIONES from EMERGENCIA where fecha between @lcfecha1_jl and @lcfecha2_jl and MEDICO = @lc_medico AND ESTADO > '2'
UNION ALL
SELECT @lc_mes_jl AS MES,  'HOSPITALIZACION' AS SERVICIO,COUNT(*) AS ATENCIONES FROM HOSPITALIZACION WHERE FECHA1 BETWEEN  @lcfecha1_jl and @lcfecha2_jl and RESPONSABLE1 = @lc_medico
union all
select '----' as MES, '---------' AS SERVICIO, 0 AS ATENCIONES
UNION ALL
SELECT @lc_mes_ag AS MES, NOMCONSULTORIO AS SERVICIO, COUNT(NOMCONSULTORIO) AS ATENCIONES FROM V_ATENCIONC WHERE fecha between @lcfecha1_ag and @lcfecha2_ag and MEDICO = @lc_medico GROUP BY NOMCONSULTORIO
UNION ALL
SELECT @lc_mes_ag AS MES,  'EMERGENCIA' AS SERVICIO, COUNT(*) AS ATENCIONES from EMERGENCIA where fecha between @lcfecha1_ag and @lcfecha2_ag and MEDICO = @lc_medico AND ESTADO > '2'
UNION ALL
SELECT @lc_mes_ag AS MES,  'HOSPITALIZACION' AS SERVICIO,COUNT(*) AS ATENCIONES FROM HOSPITALIZACION WHERE FECHA1 BETWEEN  @lcfecha1_ag and @lcfecha2_ag and RESPONSABLE1 = @lc_medico


