
/*
select * from ATENCIONC where MEDICO = 'CMP' and month(FECHA) = 5 and YEAR(fecha) = 2017 order by FECHA desc
*/
select FECHA, COUNT(fecha) as citas from ATENCIONC where MEDICO = 'CMP' and month(FECHA) = 5 and YEAR(fecha) = 2017 
group by fecha order by COUNT(fecha) desc


select FECHA, COUNT(fecha) as citas from ATENCIONC where MEDICO = 'CMP' and month(FECHA) = 6 and YEAR(fecha) = 2017 
group by fecha order by COUNT(fecha) desc
