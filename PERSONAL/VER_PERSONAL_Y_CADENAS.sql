/* ver si las cadenas estan ok */


use BDPERSONAL
DECLARE @LDNI VARCHAR(13)= '07682623'
select DNI, CADENA,  * from MAESTRO where DNI = @LDNI
select PLAZA, CadenaFun, * from dbo.GUARDIA_EFE where plaza = @LDNI and CodMes >= 5 and Año = 2016
union all
select PLAZA, CadenaFun, * from dbo.GUARDIA_PRG where plaza = @LDNI and CodMes >= 5 and Año = 2016



/*
  use BDPERSONAL
   SELECT dni, nombre, LTRIM(RTRIM(SUBSTRING(programa_pptal,1,4))) + '.' + substring(activ_obra_accinv,1,8) + rtrim(secuencia) + '.' +  rtrim(substring(finalidad,1,110)) AS CADENA
       FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] ORDER BY NOMBRE ASC   */
