use BDPERSONAL
declare @ldni varchar(13) = '44212682'
select CADENA, DNI, nombre from maestro where dni = @ldni
select CadenaFun, * from [BDPERSONAL].[dbo].[GUARDIA_EFE] where plaza = @ldni AND CODMES >= 5 AND Año = 2016
select CadenaFun, * from [BDPERSONAL].[dbo].[GUARDIA_prg] where plaza = @ldni  AND CODMES >= 5 AND Año = 2016