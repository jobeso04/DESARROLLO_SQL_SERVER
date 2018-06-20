/* generacion de prioridad */

declare @lnanio int = 2018
declare @lnmes  int = 2
select PRIORIDAD, COUNT(PRIORIDAD) as cnt   from [SIGSALUD].[dbo].[EMERGENCIA] where  year(fecha) = @lnanio and month(fecha) = @lnmes 
group by PRIORIDAD

declare @lnanio int = 2018
declare @lnmes  int = 2
select PRIORIDAD, COUNT(PRIORIDAD) as cnt   from [SIGSALUD].[dbo].[EMERGENCIA] where  year(fecha) = @lnanio and month(fecha) = @lnmes 
group by PRIORIDAD
