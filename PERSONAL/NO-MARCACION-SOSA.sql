use BDPERSONAL
DECLARE @lcodigo varchar(20) = '084123'
declare @lfechainicio datetime = convert(datetime, '2016-01-01', 101)
declare @lfechafin datetime  = convert(datetime, '2016-01-27', 101)
/* declare @ldnirelog int = 7675049    correcto */
declare @ldnirelog int = 775049  /* incorrecto */

/* declare @ldnirelogcorrecto int = 7675049 /* correcto */
declare @ldnincorrecto int = 775049  /* Incorrecto */ */

select * from MAESTRO where CODIGO = @lcodigo
SELECT IdRelog, Codigo, Fecha, Hora, Relog from [BDPERSONAL].[dbo].[RELOGDIGI]  where Codigo = @ldnirelog and Fecha between @lfechainicio and @lfechafin  order by Fecha desc

