
declare @lfecha1 datetime = convert(datetime, '2015-10-24', 101)
declare @lfecha2 datetime = convert(datetime, '2015-10-24', 101)

/* select nombre_consultorio, count(nombre_consultorio) as cuenta 
FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where FECHA between  @lfecha1 and @lfecha2 and turno_consulta = 'M' group by nombre_consultorio order by cuenta desc
*/

select *
FROM [SIGSALUD].[dbo].[TMP_CITASLIBERADAS] where FECHA between  @lfecha1 and @lfecha2 and turno_consulta = 'M' order by FECHA, HORA_OTORGA ASC
