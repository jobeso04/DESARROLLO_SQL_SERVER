use sigsalud 
DECLARE @lfecha1 varchar(10) = '2016-01-01'
DECLARE @lfecha2 varchar(10) = '2016-01-31'

  /* SELECT * from emergencia where fecha  between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) and CIEX1 <> '0' order by fecha asc   */

   select CODGRUPO from emergencia where fecha  between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) and CIEX1 <> '0' 

 /* select EMERGENCIA_ID, fecha_salida, NOMBRES, ciex1, codgrupo  from emergencia where fecha  between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) and CIEX1 <> '0' and codgrupo is null    */

/* update emergencia set codgrupo = substring(CIEX1,1,3)  where fecha  between CONVERT(datetime, @lfecha1,101) and CONVERT(datetime, @lfecha2,101) and CIEX1 <> '0' and codgrupo is null   */

/* update emergencia set codgrupo = substring(CIEX1,1,3)  where emergencia_id = '16000499' */


/* select EMERGENCIA_ID, fecha_salida, NOMBRES, ciex1, codgrupo from emergencia where emergencia_id = '16000499' */
