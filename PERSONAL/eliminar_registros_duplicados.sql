use bdpersonal
-- miranda

-- select count(*) from asistencia where CODIGO = '084262' and MES = 11 and AÑO = 2017 and DIA = '1'
-- delete from asistencia where CODIGO = '084262' and MES = 11 and AÑO = 2017 and DIA = '1'

select  * from asistencia where CODIGO = '084262' and MES = 11 and AÑO = 2017   order by DIA asc


select  * from asistencia where CODIGO = '084262' and MES = 11 and AÑO = 2017  and dia = 2 order by DIA asc

declare @lndia int = 2
declare @lnmes int = 11
declare @lnanio int = 2017
declare @lccodigo varchar(15) = '084262'
declare @lccodact varchar(4) = 'D'
declare @lnregistros int = (select  COUNT(*) from asistencia where CODIGO = @lccodigo and MES = @lnmes and AÑO = @lnanio and DIA = @lndia and CODACT = @lccodact) - 1
if @lnregistros = 0
 begin
  DELETE  FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = @lccodigo and MES = @lnmes and AÑO = @lnanio and DIA = @lndia and CODACT = @lccodact
 end
if @lnregistros > 0
 begin
  DELETE  top (@lnregistros) FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = @lccodigo and MES = @lnmes and AÑO = @lnanio and DIA = @lndia and CODACT = @lccodact
 end



 
else 
 DELETE TOP(@lnregistros) FROM [BDPERSONAL].[dbo].[ASISTENCIA] WHERE CODIGO = @lccodigo and MES = @lnmes and AÑO = @lnanio and DIA = @lndia and CODACT = @lccodact

end




-- Goya
-- select * from asistencia where CODIGO = '084404' and MES = 11 and AÑO = 2017


