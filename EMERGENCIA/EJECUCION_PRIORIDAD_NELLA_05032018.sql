update [SIGSALUD].[dbo].[EMERGENCIA] set estado = '0' where emergencia_id = '18005748'
update [SIGSALUD].[dbo].[EMERGENCIA] set CIEX1 = CIEX4 where CIEX4 <> '' and PRIORIDAD = '' and 
 month(fecha) = 2 and year(fecha) = 2018
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 4'
WHERE month(fecha) = 2 and year(fecha) = 2018
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%' and CIEX1 not in ('J00', 'J04.1', 'J03.9')
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
WHERE month(fecha) = 2 and year(fecha) = 2018
and prioridad = '' and CIEX1 <> '0'  and CIEX1 like 'J0%'
update [SIGSALUD].[dbo].[EMERGENCIA] set prioridad = 'Prioridad 4' 
WHERE month(fecha) = 2 and year(fecha) = 2018
and prioridad = ''  AND  CIEX1 <> '0'  AND CIEX1 like 'R1%' 
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 3'
WHERE month(fecha) = 2 and year(fecha) = 2018
and prioridad = ''  AND  CIEX1 <> '0' AND SUBSTRING(CIEX1,1,1) NOT IN ('E', 'H', 'K', 'L', 'M') AND CIEX1 NOT IN ('J84', 'J98.9')
UPDATE [SIGSALUD].[dbo].[EMERGENCIA] SET PRIORIDAD = 'Prioridad 2'
WHERE month(fecha) = 2 and year(fecha) = 2018
and prioridad = ''  AND  CIEX1 <> '0'


declare @lnanio int = 2018
declare @lnmes  int = 2
select PRIORIDAD, COUNT(PRIORIDAD) as cnt   from [SIGSALUD].[dbo].[EMERGENCIA] where  year(fecha) = @lnanio and month(fecha) = @lnmes 
group by PRIORIDAD
