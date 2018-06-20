use BDPERSONAL
SELECT  *
    FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] ORDER BY NOMBRE ASC   
   
   
   SELECT  dni, nombre, LTRIM(RTRIM(SUBSTRING(programa_pptal,1,4))) + '.' + substring(activ_obra_accinv,1,8) + rtrim(secuencia) + '.' + rtrim(substring(finalidad,1,110)) AS CADENA
    FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] ORDER BY NOMBRE ASC   
    
select CADENA, DNI, nombre from maestro where dni = '44212682'
select CadenaFun, * from [BDPERSONAL].[dbo].[GUARDIA_EFE] where plaza = '09301543' AND CODMES >= 5 AND Año = 2016
select CadenaFun, * from [BDPERSONAL].[dbo].[GUARDIA_prg] where plaza = '09301543' AND CODMES >= 5 AND Año = 2016


update MAESTRO set CADENA = (SELECT LTRIM(RTRIM(SUBSTRING(programa_pptal,1,4))) + '.' + substring(activ_obra_accinv,1,8) + rtrim(secuencia) + '.' + rtrim(substring(finalidad,1,110)) AS CADENA
    FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] where dni = '09301543') where dni = '09301543'
    
update [BDPERSONAL].[dbo].[GUARDIA_EFE] set CadenaFun = (SELECT LTRIM(RTRIM(SUBSTRING(programa_pptal,1,4))) + '.' + substring(activ_obra_accinv,1,8) + rtrim(secuencia) + '.' + rtrim(substring(finalidad,1,110)) AS CADENA
    FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] where dni = '09301543') where PLAZA = '09301543' AND CODMES >= 5 AND Año = 2016
    
   
update [BDPERSONAL].[dbo].[GUARDIA_PRG] set CadenaFun = (SELECT LTRIM(RTRIM(SUBSTRING(programa_pptal,1,4))) + '.' + substring(activ_obra_accinv,1,8) + rtrim(secuencia) + '.' + rtrim(substring(finalidad,1,110)) AS CADENA
    FROM [BDPERSONAL].[dbo].[CADENA_NOMBRADO] where dni = '09301543') where PLAZA = '09301543' AND CODMES >= 5 AND Año = 2016


    
   

