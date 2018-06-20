
use BDPERSONAL
declare @lunidad VARCHAR(3) = '47'
declare @lmes int = 2
declare @lanio int = 2016
declare @lcodigo varchar(15) = '084004'
select top 1 * into asistemp from ASISTENCIA where AÑO = @lanio and MES = @lmes and CODIGO =  @lcodigo and IdServDepartUnid =  @lunidad  order by  DIA desc



084644
084544
084643
084639
054174