USE BDPERSONAL
/* select * from maestro where codigo = '084112' nombre like 'nava%' */

DECLARE @ldia int = 1
declare @lmes int = 5
declare @lanio int = 2016
declare @lcodigo varchar(10) = '084083'
select CODIGO, COUNT(codigo) totaldias from ASISTENCIA where MES = @lmes and AÑO = @lanio group by CODIGO having COUNT(codigo)  > 31

select  * from ASISTENCIA where MES = 5 and AÑO = 2016 and CODIGO IN ('084049', '084009', '084081', '084031') order by DIA asc
select  * from ASISTENCIA where MES = 5 and AÑO = 2016 and CODIGO IN ('084049') order by DIA asc


