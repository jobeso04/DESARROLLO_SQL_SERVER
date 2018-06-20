use SIGSALUD 
go

select MEDICO,COUNT(MEDICO) AS MED 
  from EMERGENCIA 
   where fecha between CONVERT(datetime, '2015-09-01', 101) and CONVERT(datetime, '2015-09-30', 101) and CIEX4 = '0'  AND QUIEN_ATIENDE IS NULL 
 GROUP BY MEDICO order by MEDICO asc
 
 select MEDICO, QUIEN_ATIENDE
  from EMERGENCIA 
   where fecha between CONVERT(datetime, '2015-09-01', 101) and CONVERT(datetime, '2015-09-30', 101) and CIEX4 = '0'  and medico <> '0' AND QUIEN_ATIENDE IS NULL 
   
   